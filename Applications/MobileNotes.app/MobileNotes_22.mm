void sub_10031F2AC(void *a1, void *a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  if (a1)
  {
    v9 = &v8[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    if (*&v8[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
    {
      v10 = *(v9 + 4);
      if (v10)
      {
        v12 = *(v9 + 3);
        v80[2] = *(v9 + 2);
        v80[3] = v12;
        v80[4] = *(v9 + 4);
        v13 = *(v9 + 1);
        v80[0] = *v9;
        v80[1] = v13;
        v15 = v10;
        v16 = a1;
        sub_100006038(v80, &v75, &unk_1006C4328);
        v17 = sub_1001F70FC(v16, v80);
        v71 = v18;
        sub_1000073B4(v80, &unk_1006C4328);
        if (!v17)
        {

          return;
        }

        v70 = v16;

        v74 = a2;
        v59 = v15;
        if (a2)
        {
          v19 = a2;
          v58 = 0;
        }

        else
        {
          v20 = swift_allocObject();
          v20[2] = v15;
          v20[3] = v16;
          v20[4] = v71;
          v20[5] = &v74;
          v21 = swift_allocObject();
          *(v21 + 16) = sub_10032D244;
          *(v21 + 24) = v20;
          *&v77 = sub_1001C71A8;
          *(&v77 + 1) = v21;
          *&v75 = _NSConcreteStackBlock;
          *(&v75 + 1) = 1107296256;
          *&v76 = sub_10000EAF8;
          *(&v76 + 1) = &unk_100657038;
          v22 = _Block_copy(&v75);
          v23 = v15;
          v24 = v16;
          v25 = v71;

          [v23 performBlockAndWait:v22];
          _Block_release(v22);
          LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

          if (v22)
          {
            goto LABEL_28;
          }

          v58 = sub_10032D244;
          v19 = v74;
        }

        v26 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
        v27 = objc_allocWithZone(v26);
        *&v27[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v19;
        v27[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = a3 & 1;
        v27[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = a4 & 1;
        v27[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = a5 & 1;
        v27[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = a6 & 1;
        v27[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = a7 & 1;
        v27[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = a8 & 1;
        v73.receiver = v27;
        v73.super_class = v26;
        v28 = a2;
        v29 = v19;
        v30 = objc_msgSendSuper2(&v73, "init");
        v31 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
        v32 = *&v8[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
        __chkstk_darwin(v30);
        type metadata accessor for ICSelectionStateModel(0);
        v33 = v32;
        v34 = v8;
        OS_dispatch_queue.sync<A>(execute:)();

        v35 = v75;
        v36 = v30;
        sub_1001BA988(v70, v71, v30);
        v67 = v36;

        v37 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
        v38 = *&v35[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
        *&v35[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;

        v64 = v31;
        v39 = v35;
        __chkstk_darwin(v40);
        v69 = v34;
        v42 = v41;
        OS_dispatch_queue.sync<A>(execute:)();

        v43 = v75;
        v44 = *(v9 + 3);
        v77 = *(v9 + 2);
        v78 = v44;
        v79 = *(v9 + 4);
        v45 = *(v9 + 1);
        v75 = *v9;
        v76 = v45;
        sub_100006038(&v75, v72, &unk_1006C4328);
        sub_1000108C4(v35, 0, &v75);
        sub_1000073B4(&v75, &unk_1006C4328);
        if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v35[v37])
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          v54 = v59;
          if (Strong)
          {
            v57 = Strong;
            v55 = v70;
            if ([Strong respondsToSelector:{"selectionStateController:didIgnoreDuplicateModel:", v58}])
            {
              [v57 selectionStateController:v69 didIgnoreDuplicateModel:v39];
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            goto LABEL_19;
          }

LABEL_18:
          v55 = v70;
LABEL_19:

          goto LABEL_20;
        }

        v46 = swift_unknownObjectWeakLoadStrong();
        if (v46)
        {
          [v46 willAdoptModelForSelectionStateController:v69 isNavigating:{0, v58}];
          swift_unknownObjectRelease();
        }

        v47 = *&v69[v64];
        v48 = swift_allocObject();
        *(v48 + 16) = v69;
        *(v48 + 24) = v35;
        *(v48 + 32) = 0;
        v49 = swift_allocObject();
        *(v49 + 16) = sub_10032D24C;
        *(v49 + 24) = v48;
        v72[4] = sub_10032D13C;
        v72[5] = v49;
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 1107296256;
        v72[2] = sub_10000EAF8;
        v72[3] = &unk_1006570B0;
        v50 = _Block_copy(v72);
        v51 = v47;
        v52 = v69;
        v65 = v35;

        dispatch_sync(v51, v50);

        _Block_release(v50);
        LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

        if ((v51 & 1) == 0)
        {
          v53 = swift_unknownObjectWeakLoadStrong();
          v54 = v59;
          if (v53)
          {
            [v53 selectionStateController:v52 didAdoptModelFromOldModel:v43 isNavigating:0];

            swift_unknownObjectRelease();

LABEL_20:
            sub_10000C840(v58);
            return;
          }

          goto LABEL_18;
        }

        __break(1u);
LABEL_28:
        __break(1u);
      }
    }
  }
}

void sub_10031FA1C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v39 - v7);
  if (a1)
  {
    v9 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = 0;
    v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
    v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
    v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
    v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
    v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = a2 & 1;
    v10[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
    v43.receiver = v10;
    v43.super_class = v9;
    v11 = a1;
    v12 = objc_msgSendSuper2(&v43, "init");
    v41 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v13 = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v12);
    *(&v39 - 2) = v3;
    type metadata accessor for ICSelectionStateModel(0);
    v14 = v13;
    OS_dispatch_queue.sync<A>(execute:)();

    v15 = *&v44[0];
    v16 = v12;
    v17 = v11;
    v18 = v16;
    if ([v17 ic_isInvitationType])
    {
      *v8 = a1;
      v8[1] = v18;
      v19 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
      v20 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      v21 = v17;
      sub_10000A49C(v8, &v15[v20], &unk_1006BFEA0);
      v22 = swift_endAccess();
    }

    else
    {
    }

    v23 = v41;
    __chkstk_darwin(v22);
    *(&v39 - 2) = v3;
    v25 = v24;
    OS_dispatch_queue.sync<A>(execute:)();

    v26 = *&v44[0];
    v27 = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v44[2] = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v44[3] = v27;
    v44[4] = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v28 = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v44[0] = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v44[1] = v28;
    sub_100006038(v44, aBlock, &unk_1006C4328);
    sub_1000108C4(v15, 0, v44);
    sub_1000073B4(v44, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) == 0 || *&v15[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
    {
      v39 = v18;
      v40 = v17;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong willAdoptModelForSelectionStateController:v3 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v30 = *&v3[v23];
      v31 = swift_allocObject();
      *(v31 + 16) = v3;
      *(v31 + 24) = v15;
      *(v31 + 32) = 0;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_10032D24C;
      *(v32 + 24) = v31;
      aBlock[4] = sub_10032D13C;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000EAF8;
      aBlock[3] = &unk_100656FC0;
      v33 = _Block_copy(aBlock);
      v34 = v30;
      v35 = v3;
      v15 = v15;

      dispatch_sync(v34, v33);

      _Block_release(v33);
      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if (v34)
      {
        __break(1u);
        return;
      }

      v36 = swift_unknownObjectWeakLoadStrong();
      if (v36)
      {
        [v36 selectionStateController:v35 didAdoptModelFromOldModel:v26 isNavigating:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v17 = v40;
      v18 = v39;
      goto LABEL_14;
    }

    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      v38 = v37;
      if (([v37 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_14;
      }

      [v38 selectionStateController:v3 didIgnoreDuplicateModel:v15];
      swift_unknownObjectRelease();
    }

LABEL_14:
  }
}

void sub_100320070(void *a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&unk_1006BFEA0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = (&v56 - v6);
  if (!a1)
  {
    v18 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v19 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v5);
    *(&v56 - 2) = v1;
    type metadata accessor for ICSelectionStateModel(0);
    v20 = v19;
    OS_dispatch_queue.sync<A>(execute:)();

    v14 = v66;
    v21 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_10000A49C(v7, &v14[v22], &unk_1006BFEA0);
    swift_endAccess();
    v23 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v24 = *&v14[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v14[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;

    __chkstk_darwin(v25);
    *(&v56 - 2) = v2;
    v27 = v26;
    OS_dispatch_queue.sync<A>(execute:)();

    v28 = v66;
    v29 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v68 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v69 = v29;
    v70 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v30 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v66 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v67 = v30;
    sub_100006038(&v66, &aBlock, &unk_1006C4328);
    sub_1000108C4(v14, 0, &v66);
    sub_1000073B4(&v66, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v14[v23])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v55 = Strong;
        if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_22;
        }

        [v55 selectionStateController:v2 didIgnoreDuplicateModel:v14];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        [v31 willAdoptModelForSelectionStateController:v2 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v32 = *&v2[v18];
      v33 = swift_allocObject();
      *(v33 + 16) = v2;
      *(v33 + 24) = v14;
      *(v33 + 32) = 0;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_10032D24C;
      *(v34 + 24) = v33;
      v64 = sub_10032D13C;
      v65 = v34;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_10000EAF8;
      v63 = &unk_100657218;
      v35 = _Block_copy(&aBlock);
      v36 = v2;
      v37 = v32;
      v14 = v14;

      dispatch_sync(v37, v35);

      _Block_release(v35);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if (v35)
      {
        __break(1u);
        return;
      }

      v38 = swift_unknownObjectWeakLoadStrong();
      if (!v38)
      {
        goto LABEL_20;
      }

      [v38 selectionStateController:v36 didAdoptModelFromOldModel:v28 isNavigating:0];

      swift_unknownObjectRelease();
    }

LABEL_21:

LABEL_22:
    return;
  }

  v58 = a1;
  if ([v58 ic_isNoteType])
  {
    v8 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = 0;
    v9[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
    v9[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
    v9[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 0;
    v9[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 0;
    v9[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = 0;
    v9[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 0;
    v59.receiver = v9;
    v59.super_class = v8;
    v10 = objc_msgSendSuper2(&v59, "init");
    v57 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v11 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v10);
    *(&v56 - 2) = v2;
    type metadata accessor for ICSelectionStateModel(0);
    v12 = v11;
    OS_dispatch_queue.sync<A>(execute:)();

    v13 = v66;
    v14 = v10;
    if ([v58 ic_isNoteType])
    {
      *v7 = a1;
      v7[1] = v14;
      v15 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
      v16 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      v17 = v58;
      sub_10000A49C(v7, &v13[v16], &unk_1006BFEA0);
      swift_endAccess();
    }

    else
    {
    }

    v40 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v41 = *&v13[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v13[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;

    __chkstk_darwin(v42);
    *(&v56 - 2) = v2;
    v44 = v43;
    OS_dispatch_queue.sync<A>(execute:)();

    v28 = v66;
    v45 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v68 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v69 = v45;
    v70 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v46 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v66 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v67 = v46;
    sub_100006038(&v66, &aBlock, &unk_1006C4328);
    sub_1000108C4(v13, 0, &v66);
    sub_1000073B4(&v66, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v13[v40])
    {

      return;
    }

    v47 = *&v2[v57];
    v48 = swift_allocObject();
    *(v48 + 16) = v2;
    *(v48 + 24) = v13;
    *(v48 + 32) = 1;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_10032D24C;
    *(v49 + 24) = v48;
    v64 = sub_10032D13C;
    v65 = v49;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10000EAF8;
    v63 = &unk_100657290;
    v50 = _Block_copy(&aBlock);
    v51 = v47;
    v52 = v2;
    v53 = v13;

    dispatch_sync(v51, v50);

    _Block_release(v50);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if (v53)
    {
      __break(1u);
LABEL_20:

      goto LABEL_21;
    }
  }

  else
  {
    v39 = v58;
  }
}

void sub_100320A64(void *a1, void *a2, char a3, char a4, char a5, char a6, char a7, int a8, void *a9)
{
  v10 = v9;
  v84 = a8;
  v18 = sub_10015DA04(&unk_1006BFEA0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = (&v82 - v20);
  if (!a1)
  {
    v34 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v35 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v19);
    *(&v82 - 2) = v10;
    type metadata accessor for ICSelectionStateModel(0);
    v36 = v35;
    OS_dispatch_queue.sync<A>(execute:)();

    v37 = v92;
    v38 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
    v39 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_10000A49C(v21, &v37[v39], &unk_1006BFEA0);
    swift_endAccess();
    v40 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v41 = *&v37[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v37[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = a9;
    v42 = a9;

    __chkstk_darwin(v43);
    *(&v82 - 2) = v10;
    v45 = v44;
    OS_dispatch_queue.sync<A>(execute:)();

    v46 = v92;
    v47 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v94 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v95 = v47;
    v96 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v48 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v92 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v93 = v48;
    sub_100006038(&v92, &aBlock, &unk_1006C4328);
    sub_1000108C4(v37, 0, &v92);
    sub_1000073B4(&v92, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v37[v40])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_29;
      }

      v79 = Strong;
      if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      [v79 selectionStateController:v10 didIgnoreDuplicateModel:v37];
    }

    else
    {
      v49 = swift_unknownObjectWeakLoadStrong();
      if (v49)
      {
        [v49 willAdoptModelForSelectionStateController:v10 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v50 = *&v10[v34];
      v51 = swift_allocObject();
      *(v51 + 16) = v10;
      *(v51 + 24) = v37;
      *(v51 + 32) = 0;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_10032D24C;
      *(v52 + 24) = v51;
      v90 = sub_10032D13C;
      v91 = v52;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = sub_10000EAF8;
      v89 = &unk_100656CF0;
      v53 = _Block_copy(&aBlock);
      v54 = v10;
      v55 = v50;
      v37 = v37;

      dispatch_sync(v55, v53);

      _Block_release(v53);
      LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

      if (v53)
      {
        __break(1u);
        goto LABEL_44;
      }

      v56 = swift_unknownObjectWeakLoadStrong();
      if (!v56)
      {

        goto LABEL_29;
      }

      [v56 selectionStateController:v54 didAdoptModelFromOldModel:v46 isNavigating:0];
    }

    swift_unknownObjectRelease();
LABEL_29:

LABEL_30:
    return;
  }

  v83 = a1;
  if ([v83 ic_isNoteType])
  {
    v82 = a9;
    v22 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = a2;
    v23[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = a3 & 1;
    v23[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = a4 & 1;
    v23[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = a5 & 1;
    v23[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = a6 & 1;
    v23[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = a7 & 1;
    v23[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = v84 & 1;
    v85.receiver = v23;
    v85.super_class = v22;
    v24 = a2;
    v25 = objc_msgSendSuper2(&v85, "init");
    v26 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v27 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v25);
    *(&v82 - 2) = v10;
    type metadata accessor for ICSelectionStateModel(0);
    v28 = v27;
    OS_dispatch_queue.sync<A>(execute:)();

    v29 = v92;
    v30 = v25;
    if ([v83 ic_isNoteType])
    {
      *v21 = a1;
      v21[1] = v30;
      v31 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
      v32 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      v33 = v83;
      sub_10000A49C(v21, &v29[v32], &unk_1006BFEA0);
      swift_endAccess();
    }

    else
    {
    }

    v58 = v82;
    v59 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v60 = *&v29[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v29[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = v82;
    v61 = v58;

    __chkstk_darwin(v62);
    *(&v82 - 2) = v10;
    v64 = v63;
    OS_dispatch_queue.sync<A>(execute:)();

    v65 = v92;
    v66 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v94 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v95 = v66;
    v96 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v67 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v92 = *&v10[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v93 = v67;
    sub_100006038(&v92, &aBlock, &unk_1006C4328);
    sub_1000108C4(v29, 0, &v92);
    sub_1000073B4(&v92, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) == 0 || *&v29[v59])
    {
      v68 = v84 ^ 1;
      if (v84)
      {
        v69 = swift_unknownObjectWeakLoadStrong();
        if (v69)
        {
          [v69 willAdoptModelForSelectionStateController:v10 isNavigating:0];
          swift_unknownObjectRelease();
        }
      }

      v70 = *&v10[v26];
      v71 = swift_allocObject();
      *(v71 + 16) = v10;
      *(v71 + 24) = v29;
      *(v71 + 32) = v68 & 1;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_10032D24C;
      *(v72 + 24) = v71;
      v90 = sub_10032D13C;
      v91 = v72;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = sub_10000EAF8;
      v89 = &unk_100656D68;
      v73 = _Block_copy(&aBlock);
      v74 = v70;
      v75 = v10;
      v76 = v29;

      dispatch_sync(v74, v73);

      _Block_release(v73);
      LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

      if ((v73 & 1) == 0)
      {
        if ((v84 & 1) != 0 && (v77 = swift_unknownObjectWeakLoadStrong()) != 0)
        {
          [v77 selectionStateController:v75 didAdoptModelFromOldModel:v65 isNavigating:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

LABEL_44:
      __break(1u);
      return;
    }

    if (v84)
    {
      v80 = swift_unknownObjectWeakLoadStrong();
      if (v80)
      {
        v81 = v80;
        if (([v80 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        [v81 selectionStateController:v10 didIgnoreDuplicateModel:v29];
        swift_unknownObjectRelease();
      }
    }

LABEL_40:
    return;
  }

  v57 = v83;
}

void sub_100321650(void *a1, void *a2, char a3, char a4, char a5, char a6, char a7, char a8, void *a9)
{
  if (a1)
  {
    v10 = &v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    if (*&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
    {
      v11 = *(v10 + 4);
      if (v11)
      {
        v13 = *(v10 + 3);
        v81[2] = *(v10 + 2);
        v81[3] = v13;
        v81[4] = *(v10 + 4);
        v14 = *(v10 + 1);
        v81[0] = *v10;
        v81[1] = v14;
        v16 = v11;
        v17 = a1;
        sub_100006038(v81, &v76, &unk_1006C4328);
        v18 = sub_1001F70FC(v17, v81);
        v72 = v19;
        sub_1000073B4(v81, &unk_1006C4328);
        if (!v18)
        {

          return;
        }

        v75 = a2;
        v71 = v17;
        if (a2)
        {
          v20 = a2;
          v60 = 0;
          v61 = 0;
        }

        else
        {
          v21 = swift_allocObject();
          v21[2] = v16;
          v21[3] = v17;
          v21[4] = v72;
          v21[5] = &v75;
          v22 = swift_allocObject();
          *(v22 + 16) = sub_10032D244;
          *(v22 + 24) = v21;
          v61 = v21;
          *&v78 = sub_1001C71A8;
          *(&v78 + 1) = v22;
          *&v76 = _NSConcreteStackBlock;
          *(&v76 + 1) = 1107296256;
          *&v77 = sub_10000EAF8;
          *(&v77 + 1) = &unk_100656DE0;
          v23 = _Block_copy(&v76);
          v24 = v16;
          v25 = v17;
          v26 = v24;
          v27 = v25;
          v28 = v72;

          [v26 performBlockAndWait:v23];
          _Block_release(v23);
          LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

          if (v23)
          {
            goto LABEL_27;
          }

          v60 = sub_10032D244;
          v20 = v75;
        }

        v29 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
        v30 = objc_allocWithZone(v29);
        *&v30[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v20;
        v30[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = a3 & 1;
        v30[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = a4 & 1;
        v30[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = a5 & 1;
        v30[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = a6 & 1;
        v30[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = a7 & 1;
        v30[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = a8 & 1;
        v74.receiver = v30;
        v74.super_class = v29;
        v31 = a2;
        v32 = v20;
        v33 = objc_msgSendSuper2(&v74, "init");
        v34 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
        v35 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
        __chkstk_darwin(v33);
        type metadata accessor for ICSelectionStateModel(0);
        v36 = v35;
        v37 = v9;
        OS_dispatch_queue.sync<A>(execute:)();

        v38 = v76;
        v39 = v33;
        sub_1001BA988(v71, v72, v33);
        v67 = v39;

        v40 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
        v41 = *&v38[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
        *&v38[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = a9;
        v42 = a9;

        __chkstk_darwin(v43);
        v70 = v37;
        v45 = v44;
        OS_dispatch_queue.sync<A>(execute:)();

        v46 = v76;
        v47 = *(v10 + 3);
        v78 = *(v10 + 2);
        v79 = v47;
        v80 = *(v10 + 4);
        v48 = *(v10 + 1);
        v76 = *v10;
        v77 = v48;
        sub_100006038(&v76, v73, &unk_1006C4328);
        sub_1000108C4(v38, 0, &v76);
        sub_1000073B4(&v76, &unk_1006C4328);
        if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v38[v40])
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v59 = Strong;
            v57 = v71;
            if ([Strong respondsToSelector:{"selectionStateController:didIgnoreDuplicateModel:", v60, v61}])
            {
              [v59 selectionStateController:v70 didIgnoreDuplicateModel:v38];
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }

          else
          {

            v57 = v71;
          }

          goto LABEL_18;
        }

        v49 = swift_unknownObjectWeakLoadStrong();
        if (v49)
        {
          [v49 willAdoptModelForSelectionStateController:v37 isNavigating:{0, v60, v61}];
          swift_unknownObjectRelease();
        }

        v50 = *&v37[v34];
        v51 = swift_allocObject();
        *(v51 + 16) = v37;
        *(v51 + 24) = v38;
        *(v51 + 32) = 0;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_10032D24C;
        *(v52 + 24) = v51;
        v73[4] = sub_10032D13C;
        v73[5] = v52;
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 1107296256;
        v73[2] = sub_10000EAF8;
        v73[3] = &unk_100656E58;
        v53 = _Block_copy(v73);
        v54 = v50;
        v55 = v37;
        v65 = v38;

        dispatch_sync(v54, v53);

        _Block_release(v53);
        LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

        if ((v54 & 1) == 0)
        {
          v56 = swift_unknownObjectWeakLoadStrong();
          v57 = v71;
          if (v56)
          {
            [v56 selectionStateController:v55 didAdoptModelFromOldModel:v46 isNavigating:0];

            swift_unknownObjectRelease();

LABEL_19:
            sub_10000C840(v60);
            return;
          }

LABEL_18:
          goto LABEL_19;
        }

        __break(1u);
LABEL_27:
        __break(1u);
      }
    }
  }
}

void sub_100321EA4(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v7 = [a1 ic_existingObjectWithID:a2];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9 && (v10 = v9, (v11 = [a1 ic_existingObjectWithID:a3]) != 0))
    {
      v15 = v11;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [objc_opt_self() scrollStateForAttachment:v10 inNote:v12];

        v14 = *a4;
        *a4 = v13;
      }

      else
      {

        v14 = v15;
      }
    }

    else
    {
      v14 = v8;
    }
  }
}

void sub_100322028(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, unsigned __int8 a10, void *a11, void (*a12)(void *, void *, uint64_t, void, void, void, void, void, void *))
{
  v16 = a3;
  v17 = a4;
  v18 = a11;
  v19 = a1;
  a12(a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_100322180(void *a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v62 - v5);
  v7 = &v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v8 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
  v68[2] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
  v68[3] = v8;
  v68[4] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
  v9 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
  v68[0] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v68[1] = v9;
  sub_100006038(v68, v67, &unk_1006C4328);
  v10 = sub_10000F864(a1, v68);
  sub_1000073B4(v68, &unk_1006C4328);
  if (v10)
  {
    v11 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    v12 = [v10 ic_isContainerType];
    v64 = v10;
    if (v12)
    {
      v13 = sub_10000FE7C(a1, 0);
LABEL_13:
      v23 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
      __chkstk_darwin(v13);
      *(&v62 - 2) = v2;
      v25 = v24;
      OS_dispatch_queue.sync<A>(execute:)();

      v26 = *&v66[0];
      v27 = *(v7 + 2);
      v28 = *(v7 + 4);
      v66[3] = *(v7 + 3);
      v66[4] = v28;
      v29 = *v7;
      v66[1] = *(v7 + 1);
      v66[2] = v27;
      v66[0] = v29;
      sub_100006038(v66, v65, &unk_1006C4328);
      sub_1000108C4(v11, 0, v66);
      sub_1000073B4(v66, &unk_1006C4328);
      v30 = v11;
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v11[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v41 = Strong;
          v42 = [Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"];
          v43 = v64;
          if (v42)
          {
            [v41 selectionStateController:v2 didIgnoreDuplicateModel:v30];
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          goto LABEL_22;
        }
      }

      else
      {
        v63 = v26;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          [v31 willAdoptModelForSelectionStateController:v2 isNavigating:0];
          swift_unknownObjectRelease();
        }

        v32 = *&v2[v23];
        v33 = swift_allocObject();
        *(v33 + 16) = v2;
        *(v33 + 24) = v30;
        *(v33 + 32) = 0;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_10032D24C;
        *(v34 + 24) = v33;
        v65[4] = sub_10032D13C;
        v65[5] = v34;
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 1107296256;
        v65[2] = sub_10000EAF8;
        v65[3] = &unk_100656F48;
        v35 = _Block_copy(v65);
        v36 = v32;
        v37 = v2;
        v30 = v30;

        dispatch_sync(v36, v35);

        _Block_release(v35);
        LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

        if (v36)
        {
          __break(1u);
          return;
        }

        v38 = swift_unknownObjectWeakLoadStrong();
        if (v38)
        {
          v39 = v63;
          [v38 selectionStateController:v37 didAdoptModelFromOldModel:v63 isNavigating:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

LABEL_22:
      return;
    }

    if ([v10 ic_isNoteType])
    {
      v14 = [v10 ic_isNoteType];
      if (v14)
      {
        *v6 = v10;
        v6[1] = 0;
        v15 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
        v16 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
        swift_beginAccess();
        v17 = v10;
        sub_10000A49C(v6, &v11[v16], &unk_1006BFEA0);
        v14 = swift_endAccess();
      }

LABEL_11:
      __chkstk_darwin(v14);
      *(&v62 - 2) = v2;
      v22 = v21;
      sub_10015DA04(&qword_1006C42D8);
      OS_dispatch_queue.sync<A>(execute:)();

      sub_10000FE7C(*&v67[0], 0);
LABEL_12:
      v13 = swift_unknownObjectRelease();
      goto LABEL_13;
    }

    if ([v10 ic_isInvitationType])
    {
      v14 = [v10 ic_isInvitationType];
      if (v14)
      {
        *v6 = v10;
        v6[1] = 0;
        v18 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
        v19 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
        swift_beginAccess();
        v20 = v10;
        sub_10000A49C(v6, &v11[v19], &unk_1006BFEA0);
        v14 = swift_endAccess();
      }

      goto LABEL_11;
    }

    if ([v10 ic_isBaseAttachmentType])
    {
      v44 = *(v7 + 3);
      v67[2] = *(v7 + 2);
      v67[3] = v44;
      v67[4] = *(v7 + 4);
      v45 = *(v7 + 1);
      v67[0] = *v7;
      v67[1] = v45;
      sub_100006038(v67, v66, &unk_1006C4328);
      v46 = sub_1001F70FC(v10, v67);
      v48 = v47;
      sub_1000073B4(v67, &unk_1006C4328);
      if (v46)
      {

        v49 = sub_1001BA988(v10, v48, 0);
        __chkstk_darwin(v49);
        *(&v62 - 2) = v2;
        v51 = v50;
        sub_10015DA04(&qword_1006C42D8);
        OS_dispatch_queue.sync<A>(execute:)();

        sub_10000FE7C(*&v66[0], 0);
        goto LABEL_12;
      }
    }

    v52 = a1;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v10;
      v57 = swift_slowAlloc();
      *&v66[0] = v57;
      *v55 = 136315138;
      v65[0] = a1;
      v58 = v52;
      sub_10015DA04(&unk_1006BFED0);
      v59 = String.init<A>(describing:)();
      v61 = sub_100009D88(v59, v60, v66);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "ICSelectionStateController::pushObject(with:): Could not resolve objectID %s", v55, 0xCu);
      sub_100009F60(v57);
    }

    else
    {
    }
  }
}

void sub_100322B58(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = sub_10015DA04(&unk_1006BFEA0);
  v9 = __chkstk_darwin(v8 - 8);
  v71[0] = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v71[1] = v71 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v71 - v14;
  __chkstk_darwin(v13);
  v17 = v71 - v16;
  v18 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v18 - 8);
  v20 = v71 - v19;
  v72 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  v21 = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v73 = v4;
  v22 = type metadata accessor for ICSelectionStateModel(0);
  v23 = v21;
  v71[2] = v22;
  OS_dispatch_queue.sync<A>(execute:)();

  v24 = *&v75[0];
  if (!a1)
  {
    if (a2)
    {
      v26 = a2;
      sub_10000FE7C(a2, 0);

      if ((a3 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v30 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
      (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
      v31 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
      swift_beginAccess();
      sub_10000A49C(v20, &v24[v31], &qword_1006BEF28);
      swift_endAccess();
      if ((a3 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_6:
    v27 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
    v28 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_10000A49C(v17, &v24[v28], &unk_1006BFEA0);
    swift_endAccess();
    v29 = v72;
LABEL_23:
    v55 = *&v24[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamSelection];
    *&v24[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamSelection] = 0;

    *&v24[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamViewMode] = 0;
    goto LABEL_24;
  }

  v25 = swift_unknownObjectRetain();
  sub_10000FE7C(v25, 0);
  swift_unknownObjectRelease();
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_8:
  v32 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(&v24[v32], v15, &unk_1006BFEA0);
  v33 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v15, 1, v33);
  v36 = sub_1000073B4(v15, &unk_1006BFEA0);
  if (v35 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v29 = v72;
    if (Strong && (v38 = [Strong shouldRevertToMostRecentlySelectedNonSearchObjectOnNavigationTransitionForSelectionStateController:v4], v39 = swift_unknownObjectRelease(), v38))
    {
      __chkstk_darwin(v39);
      v71[-2] = v4;
      v41 = v40;
      sub_10015DA04(&qword_1006BFF10);
      OS_dispatch_queue.sync<A>(execute:)();

      v42 = *&v75[0];
      if (*&v75[0])
      {
        v43 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
        swift_beginAccess();
        v44 = v42 + v43;
        v45 = &v76 + 8;
LABEL_18:
        v52 = *(v45 - 32);
        sub_100006038(v44, v52, &unk_1006BFEA0);

LABEL_22:
        swift_beginAccess();
        sub_10000A49C(v52, &v24[v32], &unk_1006BFEA0);
        swift_endAccess();
        goto LABEL_23;
      }

      v53 = *(v34 + 56);
      v54 = &v76 + 8;
    }

    else
    {
      v46 = swift_unknownObjectWeakLoadStrong();
      if (!v46)
      {
        goto LABEL_23;
      }

      v47 = [v46 shouldRevertToMostRecentlySelectedSearchResultOnNavigationTransitionForSelectionStateController:v4];
      v48 = swift_unknownObjectRelease();
      if (!v47)
      {
        goto LABEL_23;
      }

      __chkstk_darwin(v48);
      v71[-2] = v4;
      v50 = v49;
      sub_10015DA04(&qword_1006BFF10);
      OS_dispatch_queue.sync<A>(execute:)();

      v42 = *&v75[0];
      if (*&v75[0])
      {
        v51 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
        swift_beginAccess();
        v44 = v42 + v51;
        v45 = &v76;
        goto LABEL_18;
      }

      v53 = *(v34 + 56);
      v54 = &v76;
    }

    v52 = *(v54 - 32);
    v53(v52, 1, 1, v33);
    goto LABEL_22;
  }

  v29 = v72;
LABEL_24:
  __chkstk_darwin(v36);
  v71[-2] = v4;
  v57 = v56;
  OS_dispatch_queue.sync<A>(execute:)();

  v58 = *&v75[0];
  v59 = *&v4[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
  v75[2] = *&v4[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
  v75[3] = v59;
  v76 = *&v4[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
  v60 = *&v4[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
  v75[0] = *&v4[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v75[1] = v60;
  sub_100006038(v75, aBlock, &unk_1006C4328);
  sub_1000108C4(v24, 0, v75);
  sub_1000073B4(v75, &unk_1006C4328);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v24[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
  {
    v69 = swift_unknownObjectWeakLoadStrong();
    if (v69)
    {
      v70 = v69;
      if (([v69 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_33;
      }

      [v70 selectionStateController:v4 didIgnoreDuplicateModel:v24];
      swift_unknownObjectRelease();
    }

LABEL_32:

LABEL_33:
    return;
  }

  v61 = swift_unknownObjectWeakLoadStrong();
  if (v61)
  {
    [v61 willAdoptModelForSelectionStateController:v4 isNavigating:0];
    swift_unknownObjectRelease();
  }

  v62 = *&v4[v29];
  v63 = swift_allocObject();
  *(v63 + 16) = v4;
  *(v63 + 24) = v24;
  *(v63 + 32) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_10032D24C;
  *(v64 + 24) = v63;
  aBlock[4] = sub_10032D13C;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100656ED0;
  v65 = _Block_copy(aBlock);
  v66 = v62;
  v67 = v4;
  v24 = v24;

  dispatch_sync(v66, v65);

  _Block_release(v65);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if ((v65 & 1) == 0)
  {
    v68 = swift_unknownObjectWeakLoadStrong();
    if (v68)
    {
      [v68 selectionStateController:v67 didAdoptModelFromOldModel:v58 isNavigating:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_32;
  }

  __break(1u);
}

void sub_100323584(void *a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v5 - 8);
  v7 = (v188 - v6);
  v8 = [a1 object];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v8 objectID];
  v11 = [v10 ic_isNoteType];

  if (!v11)
  {
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (v68)
    {
      v69 = [v68 objectID];
      if (v69)
      {
        LODWORD(v196) = v3;
        v70 = &v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
        if (*&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
        {
          v71 = *(v70 + 4);
          if (v71)
          {
            v198 = v9;
            v72 = *(v70 + 3);
            v216 = *(v70 + 2);
            v217 = v72;
            v218 = *(v70 + 4);
            v73 = *(v70 + 1);
            v214 = *v70;
            v215 = v73;
            v74 = v69;
            v75 = v71;
            sub_100006038(&v214, &v209, &unk_1006C4328);
            v76 = sub_1001F70FC(v74, &v214);
            v78 = v77;
            sub_1000073B4(&v214, &unk_1006C4328);
            if (!v76)
            {

              swift_unknownObjectRelease();
              return;
            }

            v208 = 0;
            v79 = swift_allocObject();
            v80 = v78;
            v197 = v78;
            v81 = v75;
            v82 = v79;
            v79[2] = v81;
            v79[3] = v74;
            v79[4] = v80;
            v79[5] = &v208;
            v83 = swift_allocObject();
            *(v83 + 16) = sub_10032CAD8;
            *(v83 + 24) = v82;
            v192 = v82;
            *&v211 = sub_1001C71A8;
            *(&v211 + 1) = v83;
            *&v209 = _NSConcreteStackBlock;
            *(&v209 + 1) = 1107296256;
            *&v210 = sub_10000EAF8;
            *(&v210 + 1) = &unk_100656A98;
            v84 = _Block_copy(&v209);
            v194 = v74;
            v85 = v81;
            v195 = v197;

            v193 = v85;
            [v85 performBlockAndWait:v84];
            _Block_release(v84);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_85;
            }

            v87 = v208;
            v88 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
            v89 = objc_allocWithZone(v88);
            *&v89[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v87;
            v89[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
            v89[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
            v89[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
            v89[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 0;
            v89[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = v196 & 1;
            v89[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
            v207.receiver = v89;
            v207.super_class = v88;
            v90 = v87;
            v91 = objc_msgSendSuper2(&v207, "init");
            v92 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
            v93 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
            __chkstk_darwin(v91);
            v188[-2] = v2;
            v196 = type metadata accessor for ICSelectionStateModel(0);
            v94 = v93;
            v95 = v2;
            OS_dispatch_queue.sync<A>(execute:)();

            v96 = v209;
            v97 = v91;
            sub_1001BA988(v194, v195, v91);
            v191 = v97;

            v98 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
            v99 = *&v96[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
            *&v96[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = a1;
            v100 = a1;

            v190 = v92;
            __chkstk_darwin(v101);
            v197 = v95;
            v188[-2] = v95;
            v103 = v102;
            OS_dispatch_queue.sync<A>(execute:)();

            v104 = v209;
            v105 = *(v70 + 3);
            v211 = *(v70 + 2);
            v212 = v105;
            v213 = *(v70 + 4);
            v106 = *(v70 + 1);
            v209 = *v70;
            v210 = v106;
            sub_100006038(&v209, &v201, &unk_1006C4328);
            sub_1000108C4(v96, 0, &v209);
            sub_1000073B4(&v209, &unk_1006C4328);
            if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v96[v98])
            {
              v184 = v197;
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v186 = Strong;
                v187 = [Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"];
                v178 = v194;
                v117 = v195;
                v118 = v193;
                v179 = v191;
                if (v187)
                {
                  [v186 selectionStateController:v184 didIgnoreDuplicateModel:v96];
                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                goto LABEL_65;
              }

              v118 = v193;
              v178 = v194;
              v117 = v195;
            }

            else
            {
              v196 = v104;
              v107 = v197;
              v108 = swift_unknownObjectWeakLoadStrong();
              if (v108)
              {
                [v108 willAdoptModelForSelectionStateController:v107 isNavigating:0];
                swift_unknownObjectRelease();
              }

              v109 = *&v190[v107];
              v110 = swift_allocObject();
              *(v110 + 16) = v107;
              *(v110 + 24) = v96;
              *(v110 + 32) = 0;
              v111 = swift_allocObject();
              *(v111 + 16) = sub_10032D24C;
              *(v111 + 24) = v110;
              v205 = sub_10032D13C;
              v206 = v111;
              v201 = _NSConcreteStackBlock;
              v202 = 1107296256;
              v203 = sub_10000EAF8;
              v204 = &unk_100656B10;
              v112 = _Block_copy(&v201);
              v113 = v107;
              v114 = v109;
              v190 = v96;

              dispatch_sync(v114, v112);

              _Block_release(v112);
              v115 = swift_isEscapingClosureAtFileLocation();

              if (v115)
              {
                goto LABEL_87;
              }

              v116 = swift_unknownObjectWeakLoadStrong();
              v117 = v195;
              v118 = v193;
              if (v116)
              {
                v119 = v196;
                [v116 selectionStateController:v113 didAdoptModelFromOldModel:v196 isNavigating:0];

                swift_unknownObjectRelease();

                v120 = v194;
                swift_unknownObjectRelease();
                v67 = v208;
                goto LABEL_67;
              }

              v178 = v194;
            }

            v179 = v191;
LABEL_65:

            swift_unknownObjectRelease();
            goto LABEL_66;
          }
        }
      }
    }

LABEL_35:

    swift_unknownObjectRelease();
    return;
  }

  v12 = [a1 configuration];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 foundAttachmentObjectID];

    if (v14)
    {
      LODWORD(v196) = v3;
      v15 = &v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
      if (*&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
      {
        v16 = *(v15 + 4);
        if (v16)
        {
          v198 = v9;
          v17 = *(v15 + 3);
          v216 = *(v15 + 2);
          v217 = v17;
          v218 = *(v15 + 4);
          v18 = *(v15 + 1);
          v214 = *v15;
          v215 = v18;
          v19 = v14;
          v20 = v16;
          sub_100006038(&v214, &v209, &unk_1006C4328);
          v21 = sub_1001F70FC(v19, &v214);
          v23 = v22;
          sub_1000073B4(&v214, &unk_1006C4328);
          if (!v21)
          {

            swift_unknownObjectRelease();
            return;
          }

          v208 = 0;
          v24 = swift_allocObject();
          v25 = v23;
          v197 = v23;
          v26 = v20;
          v27 = v24;
          v24[2] = v26;
          v24[3] = v19;
          v24[4] = v25;
          v24[5] = &v208;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_10032D244;
          *(v28 + 24) = v27;
          v193 = v27;
          *&v211 = sub_1001C71A8;
          *(&v211 + 1) = v28;
          *&v209 = _NSConcreteStackBlock;
          *(&v209 + 1) = 1107296256;
          *&v210 = sub_10000EAF8;
          *(&v210 + 1) = &unk_100656C00;
          v29 = _Block_copy(&v209);
          v195 = v19;
          v30 = v26;
          v194 = v197;

          v192 = v30;
          [v30 performBlockAndWait:v29];
          _Block_release(v29);
          v31 = swift_isEscapingClosureAtFileLocation();

          if ((v31 & 1) == 0)
          {
            v32 = v208;
            v33 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
            v34 = objc_allocWithZone(v33);
            *&v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v32;
            v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
            v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
            v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
            v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 0;
            v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = v196 & 1;
            v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
            v199.receiver = v34;
            v199.super_class = v33;
            v35 = v32;
            v197 = objc_msgSendSuper2(&v199, "init");
            v36 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
            v37 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
            __chkstk_darwin(v197);
            v188[-2] = v2;
            v191 = type metadata accessor for ICSelectionStateModel(0);
            v38 = v37;
            v39 = v2;
            OS_dispatch_queue.sync<A>(execute:)();

            v40 = v209;
            v41 = v197;
            v42 = v197;
            sub_1001BA988(v195, v194, v41);
            v190 = v42;

            v43 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
            v44 = *&v40[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
            *&v40[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = a1;
            v45 = a1;

            v189 = v36;
            __chkstk_darwin(v46);
            v197 = v39;
            v188[-2] = v39;
            v48 = v47;
            OS_dispatch_queue.sync<A>(execute:)();

            v49 = v209;
            v50 = *(v15 + 3);
            v211 = *(v15 + 2);
            v212 = v50;
            v213 = *(v15 + 4);
            v51 = *(v15 + 1);
            v209 = *v15;
            v210 = v51;
            sub_100006038(&v209, &v201, &unk_1006C4328);
            sub_1000108C4(v40, 0, &v209);
            sub_1000073B4(&v209, &unk_1006C4328);
            v196 = v40;
            if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v196[v43])
            {
              v180 = v197;
              v181 = swift_unknownObjectWeakLoadStrong();
              if (v181)
              {
                v182 = v181;
                v183 = [v181 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"];
                v176 = v194;
                v64 = v195;
                v177 = v192;
                v66 = v190;
                if (v183)
                {
                  [v182 selectionStateController:v180 didIgnoreDuplicateModel:v196];
                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }
              }

              else
              {

                v176 = v194;
                v64 = v195;
                v177 = v192;
                v66 = v190;
              }

LABEL_62:

              swift_unknownObjectRelease();
LABEL_66:
              v67 = v208;
              goto LABEL_67;
            }

            v191 = v49;
            v52 = v197;
            v188[1] = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_delegate;
            v53 = swift_unknownObjectWeakLoadStrong();
            if (v53)
            {
              [v53 willAdoptModelForSelectionStateController:v52 isNavigating:0];
              swift_unknownObjectRelease();
            }

            v54 = *&v52[v189];
            v55 = swift_allocObject();
            v56 = v196;
            *(v55 + 16) = v52;
            *(v55 + 24) = v56;
            *(v55 + 32) = 0;
            v57 = swift_allocObject();
            *(v57 + 16) = sub_10032D24C;
            *(v57 + 24) = v55;
            v205 = sub_10032D13C;
            v206 = v57;
            v201 = _NSConcreteStackBlock;
            v202 = 1107296256;
            v203 = sub_10000EAF8;
            v204 = &unk_100656C78;
            v58 = _Block_copy(&v201);
            v59 = v54;
            v60 = v52;
            v61 = v56;

            dispatch_sync(v59, v58);

            _Block_release(v58);
            v62 = swift_isEscapingClosureAtFileLocation();

            if ((v62 & 1) == 0)
            {
              v63 = swift_unknownObjectWeakLoadStrong();
              v64 = v195;
              v66 = v190;
              v65 = v191;
              if (v63)
              {
                [v63 selectionStateController:v60 didAdoptModelFromOldModel:v191 isNavigating:0];

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                v67 = v208;
LABEL_67:

LABEL_68:

                return;
              }

              v176 = v194;
              v177 = v192;
              goto LABEL_62;
            }

            goto LABEL_86;
          }

          goto LABEL_84;
        }
      }

      goto LABEL_35;
    }
  }

  v121 = [v9 objectID];
  v122 = [v121 ic_isModernNoteType];

  if (v122)
  {
    objc_opt_self();
    v123 = swift_dynamicCastObjCClass();
    if (v123)
    {
      v124 = v123;
      swift_unknownObjectRetain();
      v125 = [a1 firstMatchingRangeInNote];
      if (v125)
      {
        v126 = v125;
        v127 = [v125 rangeValue];
        LODWORD(v196) = v3;
        v3 = v127;
        v198 = v9;
        v129 = v128;

        v130 = objc_opt_self();
        v131 = v3;
        LOBYTE(v3) = v196;
        v132 = v129;
        v9 = v198;
        v197 = [v130 scrollStateForRange:v131 inNote:{v132, v124}];
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      swift_unknownObjectRelease();
    }
  }

  v197 = 0;
LABEL_40:
  v133 = [v9 objectID];
  if ([v133 ic_isNoteType])
  {
    v198 = v9;
    v134 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
    v135 = objc_allocWithZone(v134);
    v136 = v197;
    *&v135[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v197;
    v135[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
    v135[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
    v135[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
    v135[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 0;
    v135[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = v3 & 1;
    v135[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
    v200.receiver = v135;
    v200.super_class = v134;
    v194 = v136;
    v137 = objc_msgSendSuper2(&v200, "init");
    v195 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v196 = v133;
    v138 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v137);
    v197 = v2;
    v188[-2] = v2;
    type metadata accessor for ICSelectionStateModel(0);
    v139 = v138;
    v140 = v196;
    v141 = v139;
    OS_dispatch_queue.sync<A>(execute:)();

    v142 = v214;
    v143 = v137;
    v144 = [v140 ic_isNoteType];
    v193 = v143;
    if (v144)
    {
      *v7 = v140;
      v7[1] = v143;
      v145 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v145 - 8) + 56))(v7, 0, 1, v145);
      v146 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      v147 = v140;
      sub_10000A49C(v7, &v142[v146], &unk_1006BFEA0);
      swift_endAccess();
    }

    else
    {
    }

    v149 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v150 = *&v142[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v142[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = a1;
    v151 = a1;

    v152 = v197;
    v153 = v195;
    __chkstk_darwin(v154);
    v188[-2] = v152;
    v156 = v155;
    OS_dispatch_queue.sync<A>(execute:)();

    v157 = v214;
    v158 = *&v152[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v216 = *&v152[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v217 = v158;
    v218 = *&v152[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v159 = *&v152[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v214 = *&v152[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v215 = v159;
    sub_100006038(&v214, &v209, &unk_1006C4328);
    sub_1000108C4(v142, 0, &v214);
    sub_1000073B4(&v214, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v142[v149])
    {
      v171 = v197;
      v172 = swift_unknownObjectWeakLoadStrong();
      if (!v172)
      {

        swift_unknownObjectRelease();
        v67 = v196;

        goto LABEL_68;
      }

      v173 = v172;
      v174 = [v172 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"];
      v175 = v196;
      if (v174)
      {
        [v173 selectionStateController:v171 didIgnoreDuplicateModel:v142];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v192 = v157;
      v160 = v197;
      v161 = swift_unknownObjectWeakLoadStrong();
      if (v161)
      {
        [v161 willAdoptModelForSelectionStateController:v160 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v162 = *&v153[v160];
      v163 = swift_allocObject();
      *(v163 + 16) = v160;
      *(v163 + 24) = v142;
      *(v163 + 32) = 0;
      v164 = swift_allocObject();
      *(v164 + 16) = sub_10032D24C;
      *(v164 + 24) = v163;
      *&v211 = sub_10032D13C;
      *(&v211 + 1) = v164;
      *&v209 = _NSConcreteStackBlock;
      *(&v209 + 1) = 1107296256;
      *&v210 = sub_10000EAF8;
      *(&v210 + 1) = &unk_100656B88;
      v165 = _Block_copy(&v209);
      v195 = v160;
      v166 = v162;
      v167 = v142;

      dispatch_sync(v166, v165);

      _Block_release(v165);
      LOBYTE(v165) = swift_isEscapingClosureAtFileLocation();

      v168 = v196;
      if (v165)
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v169 = swift_unknownObjectWeakLoadStrong();
      if (v169)
      {
        v170 = v192;
        [v169 selectionStateController:v195 didAdoptModelFromOldModel:v192 isNavigating:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();

    v148 = v197;
  }
}

void sub_100324D08(void *a1, char a2)
{
  if (a1)
  {
    v3 = v2;
    v6 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v7 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(a1);
    type metadata accessor for ICSelectionStateModel(0);
    v8 = a1;
    v9 = v7;
    OS_dispatch_queue.sync<A>(execute:)();

    v10 = *&v27[0];
    v11 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v12 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v27[3] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v27[4] = v12;
    v13 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v27[1] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v27[2] = v11;
    v27[0] = v13;
    sub_100006038(v27, aBlock, &unk_1006C4328);
    sub_1000108C4(v8, 0, v27);
    sub_1000073B4(v27, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v8[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_11;
      }

      v24 = Strong;
      if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      [v24 selectionStateController:v3 didIgnoreDuplicateModel:v8];
    }

    else
    {
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        [v14 willAdoptModelForSelectionStateController:v2 isNavigating:a2 & 1];
        swift_unknownObjectRelease();
      }

      v25 = a2;
      v15 = *&v2[v6];
      v16 = swift_allocObject();
      *(v16 + 16) = v3;
      *(v16 + 24) = v8;
      *(v16 + 32) = 0;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10032D24C;
      *(v17 + 24) = v16;
      aBlock[4] = sub_10032D13C;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000EAF8;
      aBlock[3] = &unk_100656A20;
      v18 = _Block_copy(aBlock);
      v19 = v8;
      v20 = v15;
      v21 = v3;

      dispatch_sync(v20, v18);

      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if (v18)
      {
        __break(1u);
        return;
      }

      v22 = swift_unknownObjectWeakLoadStrong();
      if (!v22)
      {

        goto LABEL_11;
      }

      [v22 selectionStateController:v21 didAdoptModelFromOldModel:v10 isNavigating:v25 & 1];
    }

    swift_unknownObjectRelease();
LABEL_11:

LABEL_12:
  }
}

void sub_100325104()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  v3 = *&v0[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  type metadata accessor for ICSelectionStateModel(0);
  v4 = v3;
  OS_dispatch_queue.sync<A>(execute:)();

  v5 = *&v24[0];
  v6 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
  v7 = *(*&v24[0] + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult);
  *(*&v24[0] + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult) = 0;

  v8 = *&v1[v2];
  OS_dispatch_queue.sync<A>(execute:)();

  v9 = *&v24[0];
  v10 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
  v24[2] = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
  v24[3] = v10;
  v24[4] = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
  v11 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
  v24[0] = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v24[1] = v11;
  sub_100006038(v24, aBlock, &unk_1006C4328);
  sub_1000108C4(v5, 0, v24);
  sub_1000073B4(v24, &unk_1006C4328);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v5[v6])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      [v22 selectionStateController:v1 didIgnoreDuplicateModel:v5];
      swift_unknownObjectRelease();
    }

LABEL_9:

LABEL_10:
    return;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    [v12 willAdoptModelForSelectionStateController:v1 isNavigating:0];
    swift_unknownObjectRelease();
  }

  v13 = *&v1[v2];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v5;
  *(v14 + 32) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10032D24C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10032D13C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_1006569A8;
  v16 = _Block_copy(aBlock);
  v17 = v13;
  v18 = v1;
  v19 = v5;

  dispatch_sync(v17, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      [v20 selectionStateController:v18 didAdoptModelFromOldModel:v9 isNavigating:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1003254C8@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v65 = sub_10015DA04(&qword_1006C4360);
  v70 = *(v65 - 8);
  v1 = __chkstk_darwin(v65);
  v56 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v57 = v46 - v3;
  v63 = sub_10015DA04(&qword_1006C4368);
  v68 = *(v63 - 8);
  v4 = __chkstk_darwin(v63);
  v53 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = v46 - v6;
  v52 = sub_10015DA04(&unk_1006C4340);
  v58 = *(v52 - 8);
  v7 = __chkstk_darwin(v52);
  v55 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v54 = v46 - v10;
  v11 = __chkstk_darwin(v9);
  v64 = v46 - v12;
  __chkstk_darwin(v11);
  v66 = v46 - v13;
  v14 = type metadata accessor for _RegexFactory();
  v15 = *(v14 - 8);
  v71 = v14;
  v72 = v15;
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10015DA04(&qword_1006C4370);
  __chkstk_darwin(v18 - 8);
  v20 = v46 - v19;
  v21 = type metadata accessor for CharacterClass();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10015DA04(&qword_1006C4378);
  v67 = *(v60 - 8);
  v25 = __chkstk_darwin(v60);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = v46 - v28;
  static RegexComponent<>.word.getter();
  v48 = type metadata accessor for RegexRepetitionBehavior();
  v29 = *(v48 - 8);
  v47 = *(v29 + 56);
  v49 = v29 + 56;
  v47(v20, 1, 1, v48);
  makeFactory()();
  sub_10000BF3C(&qword_1006C4380, &type metadata accessor for CharacterClass);
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v30 = *(v72 + 8);
  v72 += 8;
  v30(v17, v71);
  v61 = v30;
  sub_1000073B4(v20, &qword_1006C4370);
  (*(v22 + 8))(v24, v21);
  OneOrMore.init(_:)();
  v46[2] = sub_1000060B4(&qword_1006C4388, &qword_1006C4378);
  v31 = v60;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v32 = *(v67 + 8);
  v67 += 8;
  v51 = v32;
  v32(v27, v31);
  v73 = 58;
  v74 = 0xE100000000000000;
  sub_10032CA50();
  v33 = v53;
  One.init<A>(_:)();
  v46[1] = sub_1000060B4(&qword_1006C4398, &qword_1006C4368);
  v34 = v63;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v35 = *(v68 + 8);
  v68 += 8;
  v50 = v35;
  v35(v33, v34);
  v47(v20, 1, 1, v48);
  v73 = 47;
  v74 = 0xE100000000000000;
  makeFactory()();
  _RegexFactory.zeroOrMore<A, B>(_:_:)();
  v30(v17, v71);
  sub_1000073B4(v20, &qword_1006C4370);
  v36 = v56;
  ZeroOrMore.init(_:)();
  v49 = sub_1000060B4(&unk_1006C43A0, &qword_1006C4360);
  v37 = v57;
  v38 = v65;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v39 = *(v70 + 8);
  v70 += 8;
  v53 = v39;
  (v39)(v36, v38);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  sub_1000060B4(&qword_1006C4350, &unk_1006C4340);
  v40 = v54;
  v41 = v52;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v42 = v55;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v43 = *(v58 + 8);
  v43(v42, v41);
  v43(v40, v41);
  v61(v17, v71);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v44 = v65;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v43(v42, v41);
  v43(v40, v41);
  v61(v17, v71);
  v43(v64, v41);
  v43(v66, v41);
  (v53)(v37, v44);
  v50(v69, v63);
  return v51(v62, v60);
}

void sub_100325EE0(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = [a1 objectWithID:a2];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 isMathNote];

    *a3 = v5;
  }

  else
  {
  }
}

void sub_10032612C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  v3 = *&v0[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  sub_10015DA04(&unk_1006C4318);
  OS_dispatch_queue.sync<A>(execute:)();

  if ((v18 & 1) == 0)
  {
    v4 = aBlock;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong willAdoptModelForSelectionStateController:v1 isNavigating:1];
      swift_unknownObjectRelease();
    }

    v23 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    v6 = *&v1[v2];
    v7 = swift_allocObject();
    v7[2] = &v23;
    v7[3] = v1;
    v7[4] = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10032B2A8;
    *(v8 + 24) = v7;
    v21 = sub_10032D13C;
    v22 = v8;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10000EAF8;
    v20 = &unk_1006565C0;
    v9 = _Block_copy(&aBlock);
    v10 = v6;
    v11 = v1;

    dispatch_sync(v10, v9);

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      v13 = v23;
      if (v12)
      {
        v14 = v12;
        v15 = v23;
        [v14 selectionStateController:v11 didAdoptModelFromOldModel:v15 isNavigating:1];

        swift_unknownObjectRelease();
        v16 = v23;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1003263AC(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = v8;
  v29 = v5[2];
  v30 = v8;
  v31 = v5[4];
  v11 = *v5;
  v10 = v5[1];
  v28[0] = v6;
  v28[1] = v10;
  v24 = v29;
  v25 = v9;
  v26 = v5[4];
  v32 = *(v5 + 10);
  v27 = *(v5 + 10);
  aBlock = v11;
  v23 = v7;
  sub_100006038(v28, &v21, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v28, &qword_1006C42D0);
  v12 = v21;
  v13 = sub_10001566C(0, 1);

  v14 = *a1;
  *a1 = v13;

  swift_beginAccess();
  v15 = *v5;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10032D140;
  *(v17 + 24) = v16;
  *&v24 = sub_10032D13C;
  *(&v24 + 1) = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_10000EAF8;
  *(&v23 + 1) = &unk_100656638;
  v18 = _Block_copy(&aBlock);
  v19 = v15;

  dispatch_sync(v19, v18);

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

void sub_10032666C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  v3 = *&v0[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  sub_10015DA04(&unk_1006C4318);
  OS_dispatch_queue.sync<A>(execute:)();

  if ((v18 & 1) == 0)
  {
    v4 = aBlock;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong willAdoptModelForSelectionStateController:v1 isNavigating:1];
      swift_unknownObjectRelease();
    }

    v23 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    v6 = *&v1[v2];
    v7 = swift_allocObject();
    v7[2] = &v23;
    v7[3] = v1;
    v7[4] = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10032B1C8;
    *(v8 + 24) = v7;
    v21 = sub_10032D13C;
    v22 = v8;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10000EAF8;
    v20 = &unk_100656408;
    v9 = _Block_copy(&aBlock);
    v10 = v6;
    v11 = v1;

    dispatch_sync(v10, v9);

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      v13 = v23;
      if (v12)
      {
        v14 = v12;
        v15 = v23;
        [v14 selectionStateController:v11 didAdoptModelFromOldModel:v15 isNavigating:1];

        swift_unknownObjectRelease();
        v16 = v23;
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1003268EC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000054A4(0, &qword_1006C3F30);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v5 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = 0;
  swift_unknownObjectWeakAssign();
  v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = 1;
  v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = 1;
  *&v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = 0;
  v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = 1;
  *&v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = 0;
  *&v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = isa;
  v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = 1;
  *&v6[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = 0;
  v26.receiver = v6;
  v26.super_class = v5;
  v7 = objc_msgSendSuper2(&v26, "init");
  v8 = &a1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue];
  swift_beginAccess();
  v9 = *(v8 + 3);
  v27[2] = *(v8 + 2);
  v27[3] = v9;
  v27[4] = *(v8 + 4);
  v28 = *(v8 + 10);
  v10 = *(v8 + 1);
  v27[0] = *v8;
  v27[1] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v7;
  v12 = *(v8 + 3);
  v22 = *(v8 + 2);
  v23 = v12;
  v24 = *(v8 + 4);
  v25 = *(v8 + 10);
  v13 = *(v8 + 1);
  v20 = *v8;
  v21 = v13;
  sub_100006038(v27, &v18, &qword_1006C42D0);
  v14 = a1;
  v15 = v7;
  sub_10015DA04(&unk_1006C4318);
  OS_dispatch_queue.sync<A>(execute:)();

  result = sub_1000073B4(v27, &qword_1006C42D0);
  v17 = v19;
  *a2 = v18;
  *(a2 + 8) = v17;
  return result;
}

uint64_t sub_100326B70(void **a1, uint64_t a2, void *a3)
{
  v21 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16);
  v25 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration);
  v26 = v3;
  v4 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48);
  v27 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32);
  v28 = v4;
  v29 = *(a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64);
  v5 = variable initialization expression of AsyncChannel.Iterator.active;
  v6 = variable initialization expression of AsyncChannel.Iterator.active;
  if (v25)
  {
    v7 = *(&v25 + 1);
    v8 = *(&v26 + 1);
    v5 = v26;
    v9 = *(&v27 + 1);
    v10 = v27;
    v12 = *(&v28 + 1);
    v11 = v28;
    v14 = *(&v29 + 1);
    v13 = v29;
    v15 = *(&v27 + 1);

    v16 = v27;
    sub_100010854(v28);
    sub_100010854(v29);
    v6 = v25;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  v24[2] = v5;
  v24[3] = v8;
  v24[4] = v10;
  v24[5] = v9;
  v24[6] = v11;
  v24[7] = v12;
  v24[8] = v13;
  v24[9] = v14;
  sub_100006038(&v25, v23, &unk_1006C4328);
  v17 = v9;
  v18 = v21;

  v19 = v10;
  sub_100010854(v11);
  sub_100010854(v13);
  sub_1000108C4(v18, a3, v24);

  sub_10000C840(v11);
  sub_10000C840(v13);

  sub_10000C840(v11);
  sub_10000C840(v13);

  return sub_1000073B4(&v25, &unk_1006C4328);
}

uint64_t sub_100326D78(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = v8;
  v29 = v5[2];
  v30 = v8;
  v31 = v5[4];
  v11 = *v5;
  v10 = v5[1];
  v28[0] = v6;
  v28[1] = v10;
  v24 = v29;
  v25 = v9;
  v26 = v5[4];
  v32 = *(v5 + 10);
  v27 = *(v5 + 10);
  aBlock = v11;
  v23 = v7;
  sub_100006038(v28, &v21, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v28, &qword_1006C42D0);
  v12 = v21;
  v13 = sub_10001566C(0, 1);

  v14 = *a1;
  *a1 = v13;

  swift_beginAccess();
  v15 = *v5;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10032B1D4;
  *(v17 + 24) = v16;
  *&v24 = sub_10032D13C;
  *(&v24 + 1) = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_10000EAF8;
  *(&v23 + 1) = &unk_100656480;
  v18 = _Block_copy(&aBlock);
  v19 = v15;

  dispatch_sync(v19, v18);

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

void sub_10032708C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v20 = v3[2];
  v21 = v6;
  v22 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v19[0] = v4;
  v19[1] = v8;
  v15 = v20;
  v16 = v7;
  v17 = v3[4];
  v23 = *(v3 + 10);
  v18 = *(v3 + 10);
  v13 = v9;
  v14 = v5;
  sub_100006038(v19, &v12, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v19, &qword_1006C42D0);
  v10 = v12;
  v11 = sub_100013FA4();
  if (!v11)
  {
    v11 = sub_1001B9EA4();
  }

  *a2 = v11;
}

void sub_1003271E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v20 = v3[2];
  v21 = v6;
  v22 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v19[0] = v4;
  v19[1] = v8;
  v15 = v20;
  v16 = v7;
  v17 = v3[4];
  v23 = *(v3 + 10);
  v18 = *(v3 + 10);
  v13 = v9;
  v14 = v5;
  sub_100006038(v19, &v12, &qword_1006C42D0);
  sub_10015DA04(&qword_1006BFF10);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v19, &qword_1006C42D0);
  v10 = v12;
  if (v12)
  {
    v11 = sub_100013FA4();
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
}

BOOL sub_10032733C()
{
  v0 = sub_100013FA4();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

id sub_1003273C8(char *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *&a1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  a3(0);
  v5 = a1;
  v6 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  return v8;
}

void sub_100327468(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t *a3@<X8>)
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
  v12 = sub_1000073B4(v22, &qword_1006C42D0);
  v13 = v15;
  v14 = a2(v12);

  *a3 = v14;
}

void sub_1003275BC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v22 = v3[2];
  v23 = v6;
  v24 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v21[0] = v4;
  v21[1] = v8;
  v17 = v22;
  v18 = v7;
  v19 = v3[4];
  v25 = *(v3 + 10);
  v20 = *(v3 + 10);
  v15 = v9;
  v16 = v5;
  sub_100006038(v21, &v14, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v21, &qword_1006C42D0);
  v10 = v14;
  v11 = sub_1001BA5A4();

  v12 = *&v11[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState];
  v13 = v12;

  *a2 = v12;
}

uint64_t sub_100327724(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10032AFEC;
  *(v5 + 24) = v4;
  v12[4] = sub_10032D13C;
  v12[5] = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000EAF8;
  v12[3] = &unk_100656390;
  v6 = _Block_copy(v12);
  v7 = a1;

  v8 = v3;
  v9 = v1;

  dispatch_sync(v8, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100327984(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v19 = v3[2];
  v20 = v6;
  v21 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v18[0] = v4;
  v18[1] = v8;
  v14 = v19;
  v15 = v7;
  v16 = v3[4];
  v22 = *(v3 + 10);
  v17 = *(v3 + 10);
  v12 = v9;
  v13 = v5;
  sub_100006038(v18, &v11, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v18, &qword_1006C42D0);
  v10 = v11;
  *a2 = *&v11[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamViewMode];
}

uint64_t sub_100327AB4(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10032AFC8;
  *(v5 + 24) = v4;
  v11[4] = sub_10032D13C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000EAF8;
  v11[3] = &unk_100656318;
  v6 = _Block_copy(v11);
  v7 = v3;
  v8 = v1;

  dispatch_sync(v7, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100327C18(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v19 = v3[2];
  v20 = v6;
  v21 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v18[0] = v4;
  v18[1] = v8;
  v14 = v19;
  v15 = v7;
  v16 = v3[4];
  v22 = *(v3 + 10);
  v17 = *(v3 + 10);
  v12 = v9;
  v13 = v5;
  sub_100006038(v18, &v11, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v18, &qword_1006C42D0);
  v10 = v11;
  *&v11[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentActivityStreamViewMode] = a2;
}

uint64_t sub_100327DB4(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10032AF58;
  *(v5 + 24) = v4;
  v12[4] = sub_10000EFC4;
  v12[5] = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000EAF8;
  v12[3] = &unk_1006562A0;
  v6 = _Block_copy(v12);
  v7 = a1;

  v8 = v3;
  v9 = v1;

  dispatch_sync(v8, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100327F24(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v10 = v9;
  v24 = v6[2];
  v25 = v9;
  v26 = v6[4];
  v12 = *v6;
  v11 = v6[1];
  v23[0] = v7;
  v23[1] = v11;
  v19 = v24;
  v20 = v10;
  v21 = v6[4];
  v27 = *(v6 + 10);
  v22 = *(v6 + 10);
  v17 = v12;
  v18 = v8;
  sub_100006038(v23, &v16, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v23, &qword_1006C42D0);
  v13 = v16;
  v14 = *&v16[*a4];
  *&v16[*a4] = a2;
  v15 = a2;
}

void sub_1003280DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v28 = v3[2];
  v29 = v6;
  v30 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v27[0] = v4;
  v27[1] = v8;
  v23 = v28;
  v24 = v7;
  v25 = v3[4];
  v31 = *(v3 + 10);
  v26 = *(v3 + 10);
  v21 = v9;
  v22 = v5;
  sub_100006038(v27, v19, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v27, &qword_1006C42D0);
  v10 = *&v19[0];
  if (sub_1000167F8())
  {
    swift_unknownObjectRelease();
    v11 = sub_1000167F8();

    *a2 = v11;
  }

  else
  {
    v12 = v3[3];
    v13 = v3[1];
    v23 = v3[2];
    v24 = v12;
    v14 = v3[3];
    v25 = v3[4];
    v15 = v3[1];
    v21 = *v3;
    v22 = v15;
    v19[2] = v23;
    v19[3] = v14;
    v19[4] = v3[4];
    v26 = *(v3 + 10);
    v20 = *(v3 + 10);
    v19[0] = v21;
    v19[1] = v13;
    __chkstk_darwin(0);
    sub_100006038(&v21, &v18, &qword_1006C42D0);
    sub_10015DA04(&qword_1006BFF10);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_1000073B4(&v21, &qword_1006C42D0);
    v16 = v18;
    if (v18)
    {
      v17 = sub_1000167F8();

      *a2 = v17;
    }

    else
    {

      *a2 = 0;
    }
  }
}

uint64_t sub_100328354(void *a1)
{
  if (*(*a1 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult))
  {
    return 0;
  }

  result = sub_1000167F8();
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

void sub_1003283C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v33 = v3[2];
  v34 = v6;
  v35 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v32[0] = v4;
  v32[1] = v8;
  v28 = v33;
  v29 = v7;
  v30 = v3[4];
  v36 = *(v3 + 10);
  v31 = *(v3 + 10);
  v26 = v9;
  v27 = v5;
  sub_100006038(v32, v24, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v32, &qword_1006C42D0);
  v10 = *&v24[0];
  if (sub_1000167F8())
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
LABEL_6:
      v12 = v11;

      *a2 = v12;
      return;
    }

    swift_unknownObjectRelease();
  }

  if (sub_1000167F8())
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v13 = sub_100016590();
  if (v13)
  {
    goto LABEL_9;
  }

  v15 = *v3;
  v16 = v3[1];
  v17 = v3[3];
  v18 = v17;
  v28 = v3[2];
  v29 = v17;
  v30 = v3[4];
  v20 = *v3;
  v19 = v3[1];
  v26 = v15;
  v27 = v19;
  v24[2] = v28;
  v24[3] = v18;
  v24[4] = v3[4];
  v31 = *(v3 + 10);
  v25 = *(v3 + 10);
  v24[0] = v20;
  v24[1] = v16;
  __chkstk_darwin(v21);
  sub_100006038(&v26, &v23, &qword_1006C42D0);
  sub_10015DA04(&qword_1006BFF10);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(&v26, &qword_1006C42D0);
  v10 = v23;
  if (!v23)
  {
    goto LABEL_19;
  }

  if (sub_1000167F8())
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  if (!sub_1000167F8())
  {
    goto LABEL_17;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
LABEL_9:
    v14 = v13;

    *a2 = v14;
    return;
  }

  swift_unknownObjectRelease();
LABEL_17:
  v22 = sub_100016590();

  if (v22)
  {
    *a2 = v22;
    return;
  }

LABEL_19:
  *a2 = 0;
}

uint64_t sub_1003286F8()
{
  if (!sub_1000167F8() || (objc_opt_self(), v0 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), !v0))
  {
    if (!sub_1000167F8() || (objc_opt_self(), v1 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), !v1))
    {
      result = sub_100016590();
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

void sub_1003287C0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v30 = v3[2];
  v31 = v6;
  v32 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v29[0] = v4;
  v29[1] = v8;
  v25 = v30;
  v26 = v7;
  v27 = v3[4];
  v33 = *(v3 + 10);
  v28 = *(v3 + 10);
  v23 = v9;
  v24 = v5;
  sub_100006038(v29, v21, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v29, &qword_1006C42D0);
  v10 = *&v21[0];
  v11 = sub_100013FA4();
  if (v11)
  {
    v12 = v11;

LABEL_4:
    *a2 = v12;
    return;
  }

  v12 = sub_1001B9EA4();

  if (v12)
  {
    goto LABEL_4;
  }

  v14 = v3[3];
  v15 = v3[1];
  v25 = v3[2];
  v26 = v14;
  v16 = v3[3];
  v27 = v3[4];
  v17 = v3[1];
  v23 = *v3;
  v24 = v17;
  v21[2] = v25;
  v21[3] = v16;
  v21[4] = v3[4];
  v28 = *(v3 + 10);
  v22 = *(v3 + 10);
  v21[0] = v23;
  v21[1] = v15;
  __chkstk_darwin(v13);
  sub_100006038(&v23, &v20, &qword_1006C42D0);
  sub_10015DA04(&qword_1006BFF10);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(&v23, &qword_1006C42D0);
  v18 = v20;
  if (v20)
  {
    v19 = sub_100013FA4();
    if (!v19)
    {
      v19 = sub_1001B9EA4();
    }

    *a2 = v19;
  }

  else
  {
    *a2 = 0;
  }
}

BOOL sub_100328A38(uint64_t *a1)
{
  v2 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v5 + v6, v4, &unk_1006BFEA0);
  v7 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1000073B4(v4, &unk_1006BFEA0);
  return v8;
}

uint64_t sub_100328B84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v19 = v3[2];
  v20 = v6;
  v21 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v18[0] = v4;
  v18[1] = v8;
  v14 = v19;
  v15 = v7;
  v16 = v3[4];
  v22 = *(v3 + 10);
  v17 = *(v3 + 10);
  v12 = v9;
  v13 = v5;
  sub_100006038(v18, v11, &qword_1006C42D0);
  OS_dispatch_queue.sync<A>(execute:)();
  result = sub_1000073B4(v18, &qword_1006C42D0);
  *a2 = v11[0];
  return result;
}

uint64_t sub_100328CB8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v2 = a1;
  v3 = v1;
  OS_dispatch_queue.sync<A>(execute:)();

  return v5;
}

uint64_t sub_100328D30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v19 = v3[2];
  v20 = v6;
  v21 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v18[0] = v4;
  v18[1] = v8;
  v14 = v19;
  v15 = v7;
  v16 = v3[4];
  v22 = *(v3 + 10);
  v17 = *(v3 + 10);
  v12 = v9;
  v13 = v5;
  sub_100006038(v18, v11, &qword_1006C42D0);
  OS_dispatch_queue.sync<A>(execute:)();
  result = sub_1000073B4(v18, &qword_1006C42D0);
  *a2 = v11[0];
  return result;
}

void sub_100328E48(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_getObjectType();
  v6 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v10 = v9;
  v42 = v6[2];
  v43 = v9;
  v44 = v6[4];
  v12 = *v6;
  v11 = v6[1];
  v41[0] = v7;
  v41[1] = v11;
  v37 = v42;
  v38 = v10;
  v39 = v6[4];
  v45 = *(v6 + 10);
  v40 = *(v6 + 10);
  v35 = v12;
  v36 = v8;
  sub_100006038(v41, v33, &qword_1006C42D0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v41, &qword_1006C42D0);
  v13 = *&v33[0];
  v14 = sub_100013FA4();
  v46 = a2;
  if (v14)
  {
    v15 = v14;
    v16 = a3;

    goto LABEL_8;
  }

  v15 = sub_1001B9EA4();

  if (v15)
  {
LABEL_7:
    v16 = a3;
LABEL_8:

    v18 = *v6;
    v19 = v6[1];
    v20 = v6[3];
    v21 = v20;
    v37 = v6[2];
    v38 = v20;
    v39 = v6[4];
    v23 = *v6;
    v22 = v6[1];
    v35 = v18;
    v36 = v22;
    v33[2] = v37;
    v33[3] = v21;
    v33[4] = v6[4];
    v40 = *(v6 + 10);
    v34 = *(v6 + 10);
    v33[0] = v23;
    v33[1] = v19;
    __chkstk_darwin(v24);
    sub_100006038(&v35, &v32, &qword_1006C42D0);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_1000073B4(&v35, &qword_1006C42D0);
    v25 = v32;
    v26 = sub_100013FA4();
    if (v26)
    {
      v27 = v26;

      v28 = v16;
    }

    else
    {
      v27 = sub_1001B9EA4();

      v28 = v16;
      if (!v27)
      {
        v31 = 1;
LABEL_14:
        *v28 = v31;
        return;
      }
    }

    v29 = sub_100013FA4();
    if (!v29)
    {
      v29 = sub_1001B9EA4();
    }

    v30 = [v27 isEqual:v29];

    v31 = v30 ^ 1;
    goto LABEL_14;
  }

  v17 = sub_100013FA4();
  if (v17 || (v17 = sub_1001B9EA4()) != 0)
  {
    v15 = v17;
    goto LABEL_7;
  }

  *a3 = 0;
}

void sub_1003291B0(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = v8;
  v29 = v5[2];
  v30 = v8;
  v31 = v5[4];
  v11 = *v5;
  v10 = v5[1];
  v28[0] = v6;
  v28[1] = v10;
  v24 = v29;
  v25 = v9;
  v26 = v5[4];
  v32 = *(v5 + 10);
  v27 = *(v5 + 10);
  v22 = v11;
  v23 = v7;
  sub_100006038(v28, &v21, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v28, &qword_1006C42D0);
  v12 = v21;
  if (a2)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    swift_unknownObjectRetain();
    if (v13)
    {
      swift_unknownObjectRetain();
      if (sub_1000167F8())
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (v14)
        {
          v15 = [v13 isEqual:v14];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_13:

          goto LABEL_19;
        }
      }

      swift_unknownObjectRelease();
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      if (!sub_1000167F8())
      {
        swift_unknownObjectRelease();

LABEL_18:
        v15 = 0;
        goto LABEL_19;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        swift_unknownObjectRetain();
        v15 = [v18 isEqual:v20];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v16 = sub_1000167F8();

  v15 = v16 == 0;
  if (v16)
  {
    swift_unknownObjectRelease();
  }

LABEL_19:
  *a3 = v15;
}

uint64_t sub_100329550()
{
  v3 = (v0 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  sub_10015DA04(&unk_1006C42C0);
  OS_dispatch_queue.sync<A>(execute:)();

  v5 = v15;
  swift_endAccess();
  v6 = v15 >> 62;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0xAuLL)
    {
      return v5;
    }

    goto LABEL_3;
  }

  if (v15 < 0)
  {
    v7 = v15;
  }

  else
  {
    v7 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 11)
  {
    return v5;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 10)
    {
      __break(1u);
      goto LABEL_25;
    }

LABEL_3:
    if ((v15 & 0xC000000000000001) != 0)
    {
      type metadata accessor for ICSelectionStateModel(0);

      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      _ArrayBuffer._typeCheckSlowPath(_:)(2);
      _ArrayBuffer._typeCheckSlowPath(_:)(3);
      _ArrayBuffer._typeCheckSlowPath(_:)(4);
      _ArrayBuffer._typeCheckSlowPath(_:)(5);
      _ArrayBuffer._typeCheckSlowPath(_:)(6);
      _ArrayBuffer._typeCheckSlowPath(_:)(7);
      _ArrayBuffer._typeCheckSlowPath(_:)(8);
      _ArrayBuffer._typeCheckSlowPath(_:)(9);
    }

    else
    {
    }

    if (v6)
    {
      v7 = _CocoaArrayWrapper.subscript.getter();
      v1 = v8;
      v6 = v9;
      v2 = v10;

      if ((v2 & 1) == 0)
      {
LABEL_9:
        sub_100374ECC(v7, v1, v6, v2);
        v5 = v11;
LABEL_16:
        swift_unknownObjectRelease();
        return v5;
      }
    }

    else
    {
      v7 = v15 & 0xFFFFFFFFFFFFFF8;
      v1 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
      v2 = 21;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
      v12 = _swiftEmptyArrayStorage;
    }

    v13 = v12[2];

    if (!__OFSUB__(v2 >> 1, v6))
    {
      if (v13 == (v2 >> 1) - v6)
      {
        v5 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v5)
        {
          v5 = _swiftEmptyArrayStorage;
          goto LABEL_16;
        }

        return v5;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease_n();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_10032981C(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [a1 objectWithID:a2];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 rootObject];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 objectID];

      if (v8)
      {
        v9 = v8;
        v10 = sub_100013FA4();
        if (v10 || (v10 = sub_1001B9EA4()) != 0)
        {
          v11 = v10;
          sub_1000054A4(0, &qword_1006BFEC0);
          v12 = v9;
          v13 = static NSObject.== infix(_:_:)();

          if (v13)
          {

            v14 = 1;
LABEL_15:

            v15 = v14 & 1;
            goto LABEL_16;
          }
        }

        if (sub_1000167F8())
        {
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          v14 = v16;
          if (v16)
          {
            sub_1000054A4(0, &qword_1006BFEC0);
            v14 = static NSObject.== infix(_:_:)();
            swift_unknownObjectRelease();

            goto LABEL_15;
          }

          swift_unknownObjectRelease();
        }

        else
        {

          v14 = 0;
        }

        v4 = v9;
        goto LABEL_15;
      }
    }
  }

  v15 = 0;
LABEL_16:
  *a3 = v15;
}

uint64_t sub_1003299F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v10 = v9;
  v32 = v6[2];
  v33 = v9;
  v34 = v6[4];
  v12 = *v6;
  v11 = v6[1];
  v31[0] = v7;
  v31[1] = v11;
  v27 = v32;
  v28 = v10;
  v29 = v6[4];
  v35 = *(v6 + 10);
  v30 = *(v6 + 10);
  v25 = v12;
  v26 = v8;
  v21[2] = &v25;
  sub_100006038(v31, v23, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v31, &qword_1006C42D0);
  v13 = *&v23[0];
  v14 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(&v13[v14], v5, &unk_1006BFEA0);
  v15 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  LODWORD(v14) = (*(*(v15 - 8) + 48))(v5, 1, v15);
  result = sub_1000073B4(v5, &unk_1006BFEA0);
  if (v14 == 1 || *&v13[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
  {
    v17 = v6[3];
    v18 = v6[1];
    v27 = v6[2];
    v28 = v17;
    v19 = v6[3];
    v29 = v6[4];
    v20 = v6[1];
    v25 = *v6;
    v26 = v20;
    v23[2] = v27;
    v23[3] = v19;
    v23[4] = v6[4];
    v30 = *(v6 + 10);
    v24 = *(v6 + 10);
    v23[0] = v25;
    v23[1] = v18;
    __chkstk_darwin(result);
    v21[-4] = v23;
    v21[-3] = sub_100329D30;
    v21[-2] = 0;
    sub_100006038(&v25, v22, &qword_1006C42D0);
    sub_10015DA04(&qword_1006BFF10);
    OS_dispatch_queue.sync<A>(execute:)();

    result = sub_1000073B4(&v25, &qword_1006C42D0);
    *v36 = v22[0];
  }

  else
  {
    *v36 = v13;
  }

  return result;
}

BOOL sub_100329D30(uint64_t *a1)
{
  v2 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v5 + v6, v4, &unk_1006BFEA0);
  v7 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_1000073B4(v4, &unk_1006BFEA0);
  return v6 != 1 && *(v5 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult) == 0;
}

uint64_t sub_100329E6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v10 = v9;
  v32 = v6[2];
  v33 = v9;
  v34 = v6[4];
  v12 = *v6;
  v11 = v6[1];
  v31[0] = v7;
  v31[1] = v11;
  v27 = v32;
  v28 = v10;
  v29 = v6[4];
  v35 = *(v6 + 10);
  v30 = *(v6 + 10);
  v25 = v12;
  v26 = v8;
  v21[2] = &v25;
  sub_100006038(v31, v23, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v31, &qword_1006C42D0);
  v13 = *&v23[0];
  v14 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(&v13[v14], v5, &unk_1006BFEA0);
  v15 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  LODWORD(v14) = (*(*(v15 - 8) + 48))(v5, 1, v15);
  result = sub_1000073B4(v5, &unk_1006BFEA0);
  if (v14 == 1 || !*&v13[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
  {
    v17 = v6[3];
    v18 = v6[1];
    v27 = v6[2];
    v28 = v17;
    v19 = v6[3];
    v29 = v6[4];
    v20 = v6[1];
    v25 = *v6;
    v26 = v20;
    v23[2] = v27;
    v23[3] = v19;
    v23[4] = v6[4];
    v30 = *(v6 + 10);
    v24 = *(v6 + 10);
    v23[0] = v25;
    v23[1] = v18;
    __chkstk_darwin(result);
    v21[-4] = v23;
    v21[-3] = sub_10032A1A8;
    v21[-2] = 0;
    sub_100006038(&v25, v22, &qword_1006C42D0);
    sub_10015DA04(&qword_1006BFF10);
    OS_dispatch_queue.sync<A>(execute:)();

    result = sub_1000073B4(&v25, &qword_1006C42D0);
    *v36 = v22[0];
  }

  else
  {
    *v36 = v13;
  }

  return result;
}

BOOL sub_10032A1A8(uint64_t *a1)
{
  v2 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v5 + v6, v4, &unk_1006BFEA0);
  v7 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_1000073B4(v4, &unk_1006BFEA0);
  return v6 != 1 && *(v5 + OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult) != 0;
}

void sub_10032A314(unint64_t *a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BFEA0);
  v5 = __chkstk_darwin(v4 - 8);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v43 - v7;
  v44 = a1;
  v8 = *a1;
  v43 = *a1 >> 62;
  if (v43)
  {
LABEL_70:
    v49 = v8 & 0xFFFFFFFFFFFFFF8;
    v41 = v8;
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v41;
    v50 = v42;
  }

  else
  {
    v49 = v8 & 0xFFFFFFFFFFFFFF8;
    v50 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v48 = (v8 & 0xC000000000000001);
  v51 = a2;
  v46 = v8;
  while (1)
  {
    if (v50 == v9)
    {
      if (v43)
      {
        goto LABEL_58;
      }

      return;
    }

    if (v48)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v49 + 16))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v10 = *(v8 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = *(a2 + 24);
    if (v12)
    {
      v52[0] = v10;
      sub_100010854(v12);
      v13 = v11;
      v12(v52);
      sub_10000C840(v12);
    }

    v14 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    v15 = v47;
    sub_100006038(v11 + v14, v47, &unk_1006BFEA0);
    a2 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    v16 = *(a2 - 8);
    v17 = *(v16 + 48);
    v18 = v16 + 48;
    v19 = v17(v15, 1, a2);
    sub_1000073B4(v15, &unk_1006BFEA0);

    v20 = v9 + 1;
    v21 = __OFADD__(v9, 1);
    if (v19 == 1)
    {
      break;
    }

    ++v9;
    a2 = v51;
    v8 = v46;
    if (v21)
    {
      goto LABEL_61;
    }
  }

  v49 = v18;
  v22 = v46;
  if (v21)
  {
    __break(1u);
    return;
  }

  v23 = v51;
  v47 = a2;
  v48 = v17;
  while (1)
  {
    if (v22 >> 62)
    {
      if (v20 == _CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (v20 == *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v50 = v22 & 0xC000000000000001;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v20 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v25 = *(v22 + 8 * v20 + 32);
    }

    v26 = v25;
    v27 = *(v23 + 24);
    if (v27)
    {
      v53 = v25;
      sub_100010854(v27);
      v28 = v26;
      v27(&v53);
      v23 = v51;
      sub_10000C840(v27);
    }

    a2 = v23;
    v29 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    v30 = v45;
    sub_100006038(v26 + v29, v45, &unk_1006BFEA0);
    LODWORD(v29) = v48(v30, 1, v47);
    sub_1000073B4(v30, &unk_1006BFEA0);

    if (v29 == 1)
    {
      goto LABEL_21;
    }

    if (v9 == v20)
    {
      v24 = __OFADD__(v9++, 1);
      if (v24)
      {
        goto LABEL_65;
      }

      goto LABEL_21;
    }

    if (v50)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      v33 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v33)
      {
        goto LABEL_68;
      }

      if (v20 >= v33)
      {
        goto LABEL_69;
      }

      v34 = *(v22 + 32 + 8 * v20);
      v31 = *(v22 + 32 + 8 * v9);
      v32 = v34;
    }

    v35 = v32;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
    {
      v22 = sub_10030FFBC(v22);
      v36 = (v22 >> 62) & 1;
    }

    else
    {
      LODWORD(v36) = 0;
    }

    v37 = v22 & 0xFFFFFFFFFFFFFF8;
    v38 = *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
    *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v35;

    if ((v22 & 0x8000000000000000) == 0 && !v36)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_49;
    }

    v22 = sub_10030FFBC(v22);
    v37 = v22 & 0xFFFFFFFFFFFFFF8;
    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_49:
    if (v20 >= *(v37 + 16))
    {
      goto LABEL_66;
    }

    v39 = v37 + 8 * v20;
    v40 = *(v39 + 32);
    *(v39 + 32) = v31;

    *v44 = v22;
    v23 = v51;
    v24 = __OFADD__(v9++, 1);
    if (v24)
    {
      goto LABEL_65;
    }

LABEL_21:
    v24 = __OFADD__(v20++, 1);
    if (v24)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_58:
  _CocoaArrayWrapper.endIndex.getter();
}

BOOL sub_10032A858(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *a2;
  v7 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v6 + v7, v5, &unk_1006BFEA0);
  v8 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) == 1;
  sub_1000073B4(v5, &unk_1006BFEA0);
  return v9;
}

BOOL sub_10032A974(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *a2;
  v7 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(v6 + v7, v5, &unk_1006BFEA0);
  v8 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000073B4(v5, &unk_1006BFEA0);
  return v9;
}

uint64_t sub_10032AA90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  result = sub_100318910(v7);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10032AAE8(void **a1, uint64_t a2, uint64_t (*a3)(void **))
{
  v4 = *a1;
  v5 = *(a2 + 24);
  v9 = *a1;
  if (v5)
  {
    v8 = v4;
    v6 = v4;
    v5(&v8);
  }

  return a3(&v9) & 1;
}

unint64_t sub_10032AB64@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  result = sub_100018040(v7);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10032ABBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v3;
  result = v3;
  if (v4)
  {
    result = v4(&v6);
  }

  *a2 = v3;
  return result;
}

void sub_10032AC20(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10032A314((a1 + 80), a1);
  v5 = *(a1 + 80);
  if (v5 >> 62)
  {
    v7 = v4;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v7;
    if (v6 >= v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
LABEL_3:
      sub_100017154(v4, v6);
      *a2 = *(a1 + 80);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_10032AE00@<X0>(uint64_t (*a1)(_OWORD *, uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v5 + 48);
  v10[2] = *(v5 + 32);
  v10[3] = v7;
  v10[4] = *(v5 + 64);
  v11 = *(v5 + 80);
  v8 = *(v5 + 16);
  v10[0] = *v5;
  v10[1] = v8;
  result = a1(v10, v6);
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10032AE6C(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v5;
  v8[4] = *(v2 + 64);
  v9 = *(v2 + 80);
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  return sub_100317FCC(v4, v8, v3) & 1;
}

uint64_t sub_10032B2E0@<X0>(uint64_t (*a1)(uint64_t, uint64_t, _OWORD *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v8 + 48);
  v14[2] = *(v8 + 32);
  v14[3] = v10;
  v14[4] = *(v8 + 64);
  v15 = *(v8 + 80);
  v11 = *(v8 + 16);
  v14[0] = *v8;
  v14[1] = v11;
  result = a1(v6, v7, v14, v9);
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v13 & 1;
  }

  return result;
}

uint64_t sub_10032B354(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *a1;
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v11[4] = *(v6 + 64);
  v12 = *(v6 + 80);
  v9 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v9;
  return sub_10031866C(v7, v2, v3, v4, v11, v5) & 1;
}

void sub_10032B3AC(id *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = v4;
  v2(&v4);
}

uint64_t sub_10032B404(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_10032B440(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

void sub_10032B47C(uint64_t a1, id (*a2)(), void (*a3)(uint64_t), uint64_t a4)
{
  v166 = a4;
  v157 = a2;
  v6 = sub_10015DA04(&qword_1006C4338);
  __chkstk_darwin(v6 - 8);
  v156 = &v137 - v7;
  v8 = sub_10015DA04(&unk_1006C4340);
  v162 = *(v8 - 1);
  v163 = v8;
  v9 = __chkstk_darwin(v8);
  v155 = (&v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v161 = &v137 - v11;
  v12 = sub_10015DA04(&qword_1006BEF28);
  v13 = __chkstk_darwin(v12 - 8);
  v160 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v158 = &v137 - v16;
  __chkstk_darwin(v15);
  v165 = &v137 - v17;
  v18 = sub_10015DA04(&unk_1006BFEA0);
  v19 = __chkstk_darwin(v18 - 8);
  v159 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v164 = &v137 - v21;
  v22 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v22 - 8);
  v24 = &v137 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v137 - v30;
  sub_100006038(a1, v24, &qword_1006BCC20);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1000073B4(v24, &qword_1006BCC20);
    if (a3)
    {
      a3(1);
    }

    return;
  }

  v151 = a3;
  (*(v26 + 32))(v31, v24, v25);
  sub_1000054A4(0, &qword_1006C3F30);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v33 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
  v34 = objc_allocWithZone(v33);
  swift_unknownObjectWeakInit();
  v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = 0;
  swift_unknownObjectWeakAssign();
  v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = 1;
  v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = 1;
  *&v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = 0;
  v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = 1;
  *&v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = 0;
  *&v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = isa;
  v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = 1;
  *&v34[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = 0;
  v169.receiver = v34;
  v169.super_class = v33;
  v35 = objc_msgSendSuper2(&v169, "init");
  v36 = type metadata accessor for ICSelectionStateModel(0);
  v153 = v25;
  v154 = v26;
  v37 = *(v26 + 16);
  v152 = v31;
  v37(v29, v31, v25);
  v38 = v35;
  v147 = v35;
  v143 = v36;
  v39 = sub_1001BB394(v29, v35, 0);
  v40 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  v41 = v164;
  sub_100006038(&v39[v40], v164, &unk_1006BFEA0);
  v42 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v145 = v43 + 48;
  v146 = v44;
  v45 = v44(v41, 1, v42);
  sub_1000073B4(v41, &unk_1006BFEA0);
  v46 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  v164 = v39;
  v47 = v46;
  v48 = &v39[v46];
  v49 = v165;
  sub_100006038(v48, v165, &qword_1006BEF28);
  v50 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v148 = v50;
  v149 = v51 + 48;
  v150 = v52;
  LODWORD(v39) = (v52)(v49, 1);
  sub_1000073B4(v49, &qword_1006BEF28);
  LODWORD(v165) = v39;
  if (v39 != 1 || v45 != 1)
  {
    v156 = v42;
    v161 = v40;
    v64 = sub_100013FA4();
    if (v64)
    {
      v65 = v64;
      v66 = v167;
      v67 = v47;
    }

    else
    {
      v68 = sub_1001B9EA4();
      v66 = v167;
      v67 = v47;
      if (!v68)
      {
        goto LABEL_22;
      }

      v65 = v68;
    }

    if ([v65 ic_isModernNoteType] && v157 && objc_msgSend(v157, "ic_behavior") == 1 && *&v66[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
    {
      v69 = *&v66[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
      if (v69)
      {
        LOBYTE(v170[0]) = 0;
        v70 = swift_allocObject();
        v70[2] = v69;
        v70[3] = v65;
        v70[4] = v170;
        v71 = swift_allocObject();
        *(v71 + 16) = sub_10032CA44;
        *(v71 + 24) = v70;
        v162 = v70;
        v175 = sub_10000EFBC;
        v176 = v71;
        aBlock = _NSConcreteStackBlock;
        v172 = 1107296256;
        v173 = sub_10000EAF8;
        v174 = &unk_1006568B8;
        v72 = _Block_copy(&aBlock);
        v73 = v69;
        v74 = v65;

        [v73 performBlockAndWait:v72];
        _Block_release(v72);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_72;
        }

        if ((v170[0] & 1) == 0)
        {

          if (v151)
          {
            v151(2);

            (*(v154 + 8))(v152, v153);
          }

          else
          {
            (*(v154 + 8))(v152, v153);
          }

          return;
        }

        v155 = sub_10032CA44;
        v66 = v167;
      }

      else
      {

        v155 = 0;
        v162 = 0;
        v66 = v167;
      }

LABEL_23:
      v76 = v158;
      sub_100006038(&v164[v67], v158, &qword_1006BEF28);
      v77 = v150(v76, 1, v148);
      v78 = sub_1000073B4(v76, &qword_1006BEF28);
      v144 = v38;
      if (v77 == 1)
      {
        __chkstk_darwin(v78);
        *(&v137 - 2) = v66;
        v80 = v79;
        sub_10015DA04(&qword_1006C42D8);
        OS_dispatch_queue.sync<A>(execute:)();
        v137 = 0;
        v66 = v167;

        sub_10000FE7C(aBlock, v147);
        swift_unknownObjectRelease();
      }

      else
      {
        v137 = 0;
      }

      v81 = &v66[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
      if (*&v66[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
      {
        v82 = *(v81 + 4);
        v83 = *(v81 + 5);
        v84 = v83;
        v85 = v82;
      }

      else
      {
        v83 = 0;
        v82 = 0;
      }

      v86 = *&v66[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_persistenceConfiguration];
      v87 = [v86 makeModernBackgroundContext];
      if (v87)
      {
        v88 = swift_allocObject();
        *(v88 + 16) = v87;
        v87 = v88;
        v163 = sub_10000F860;
      }

      else
      {
        v163 = 0;
      }

      v158 = v67;
      v89 = [v86 makeLegacyBackgroundContext];
      if (v89)
      {
        v90 = v89;
        v91 = swift_allocObject();
        v91[2] = v90;
        v92 = sub_10000F828;
      }

      else
      {
        v92 = 0;
        v91 = 0;
      }

      v93 = v164;
      v138 = v165 != 1;
      LODWORD(v165) = v45 != 1;
      v94 = swift_allocObject();
      *(v94 + 16) = 1;
      v95 = swift_allocObject();
      *(v95 + 16) = 1;
      aBlock = sub_10032C9FC;
      v172 = v94;
      v141 = v95;
      v142 = v94;
      v173 = sub_10032C9FC;
      v174 = v95;
      v175 = v82;
      v176 = v83;
      v96 = v163;
      v177 = v163;
      v178 = v87;
      v179 = v92;
      v180 = v91;
      v97 = v83;
      v98 = v82;
      sub_100010854(v96);
      sub_100010854(v92);
      sub_1000108C4(v93, v147, &aBlock);
      v139 = v97;

      v140 = v98;
      v147 = v87;
      sub_10000C840(v96);
      v157 = v92;
      v164 = v91;
      sub_10000C840(v92);

      v99 = v159;
      sub_100006038(&v161[v93], v159, &unk_1006BFEA0);
      LODWORD(v98) = v146(v99, 1, v156);
      sub_1000073B4(v99, &unk_1006BFEA0);
      v100 = v160;
      sub_100006038(&v93[v158], v160, &qword_1006BEF28);
      v101 = v150(v100, 1, v148);
      v102 = sub_1000073B4(v100, &qword_1006BEF28);
      if (((v165 ^ (v98 == 1)) & 1) == 0 && v138 == (v101 == 1))
      {
        if (v151)
        {
          v151(1);

          sub_10000C840(v163);
          sub_10000C840(v157);

          (*(v154 + 8))(v152, v153);
        }

        else
        {
          (*(v154 + 8))(v152, v153);

          sub_10000C840(v163);
          sub_10000C840(v157);
        }

        v124 = v155;
        goto LABEL_63;
      }

      v93[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_selectionReason] = 1;
      v103 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
      __chkstk_darwin(v102);
      *(&v137 - 2) = v104;
      v106 = v105;
      OS_dispatch_queue.sync<A>(execute:)();

      v107 = *&v170[0];
      v108 = *(v81 + 3);
      v170[2] = *(v81 + 2);
      v170[3] = v108;
      v170[4] = *(v81 + 4);
      v109 = *(v81 + 1);
      v170[0] = *v81;
      v170[1] = v109;
      sub_100006038(v170, v168, &unk_1006C4328);
      sub_1000108C4(v93, 0, v170);
      sub_1000073B4(v170, &unk_1006C4328);
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v93[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v122 = v152;
        v126 = v157;
        if (Strong)
        {
          v135 = Strong;
          v136 = [Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"];
          v121 = v151;
          v125 = v144;
          if (v136)
          {
            [v135 selectionStateController:v167 didIgnoreDuplicateModel:v93];
            swift_unknownObjectRelease();

            if (!v121)
            {
              goto LABEL_61;
            }
          }

          else
          {

            swift_unknownObjectRelease();
            if (!v121)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {

          v121 = v151;
          v125 = v144;
          if (!v151)
          {
            goto LABEL_61;
          }
        }

LABEL_52:
        v121(0);

        sub_10000C840(v163);
        sub_10000C840(v126);

        (*(v154 + 8))(v122, v153);
LABEL_62:
        v124 = v155;
LABEL_63:
        sub_10000C840(v124);
        return;
      }

      v165 = v107;
      v110 = v167;
      v111 = swift_unknownObjectWeakLoadStrong();
      if (v111)
      {
        [v111 willAdoptModelForSelectionStateController:v110 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v112 = *&v110[v103];
      v113 = swift_allocObject();
      *(v113 + 16) = v110;
      *(v113 + 24) = v93;
      *(v113 + 32) = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_10032CA38;
      *(v114 + 24) = v113;
      v168[4] = sub_10032D13C;
      v168[5] = v114;
      v168[0] = _NSConcreteStackBlock;
      v168[1] = 1107296256;
      v168[2] = sub_10000EAF8;
      v168[3] = &unk_1006567F0;
      v115 = _Block_copy(v168);
      v116 = v112;
      v117 = v110;
      v118 = v93;

      dispatch_sync(v116, v115);

      _Block_release(v115);
      v119 = swift_isEscapingClosureAtFileLocation();

      if ((v119 & 1) == 0)
      {
        v120 = swift_unknownObjectWeakLoadStrong();
        v121 = v151;
        v122 = v152;
        if (v120)
        {
          v123 = v165;
          [v120 selectionStateController:v117 didAdoptModelFromOldModel:v165 isNavigating:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v125 = v144;
        v126 = v157;
        if (v121)
        {
          goto LABEL_52;
        }

LABEL_61:
        (*(v154 + 8))(v122, v153);

        sub_10000C840(v163);
        sub_10000C840(v126);

        goto LABEL_62;
      }

      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

LABEL_22:
    v155 = 0;
    v162 = 0;
    goto LABEL_23;
  }

  v53 = v38;

  sub_1000060B4(&qword_1006C4350, &unk_1006C4340);
  v54 = v161;
  v55 = v163;
  Regex.init<A>(_:)();
  v56 = v152;
  URL.scheme.getter();
  if (v57)
  {
    v58 = String._bridgeToObjectiveC()();

    v59 = ICIsNotesURLScheme();

    v60 = v164;
    if (v59)
    {
      v61 = v53;
      URL.absoluteString.getter();
      v62 = v155;
      dispatch thunk of RegexComponent.regex.getter();
      String.subscript.getter();

      v63 = v156;
      v55 = v163;
      Regex.wholeMatch(in:)();
      (v162[1])(v62, v55);

      v127 = sub_10015DA04(&qword_1006C4358);
      v128 = (*(*(v127 - 8) + 48))(v63, 1, v127) == 1;
      sub_1000073B4(v63, &qword_1006C4338);
      v53 = v61;
      v54 = v161;
    }

    else
    {
      v128 = 1;
    }
  }

  else
  {
    v128 = 1;
    v60 = v164;
  }

  v129 = objc_opt_self();
  URL._bridgeToObjectiveC()(v130);
  v132 = v131;
  v133 = [v129 isShowFolderListURL:v131];

  if (v151)
  {
    v151(v128 & (v133 ^ 1));
  }

  (v162[1])(v54, v55);
  (*(v154 + 8))(v56, v153);
}

unint64_t sub_10032CA50()
{
  result = qword_1006C4390;
  if (!qword_1006C4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4390);
  }

  return result;
}

uint64_t sub_10032CB1C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10032CB70@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v4 + 48);
  v8[2] = *(v4 + 32);
  v8[3] = v5;
  v8[4] = *(v4 + 64);
  v9 = *(v4 + 80);
  v6 = *(v4 + 16);
  v8[0] = *v4;
  v8[1] = v6;
  result = sub_100318910(v8);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10032CBD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032CC3C()
{
  v1 = *(v0 + 16);
  *(v1 + 56) = _swiftEmptyArrayStorage;

  *(v1 + 80) = _swiftEmptyArrayStorage;
}

uint64_t sub_10032CC88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16) + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v15 = *(v3 + 80);
  v14[3] = v6;
  v14[4] = v7;
  v14[2] = v5;
  v8 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v8;
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v11 = *(v3 + 64);
  *(a1 + 80) = *(v3 + 80);
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 32) = v9;
  return sub_100006038(v14, &v13, &qword_1006C42D0);
}

uint64_t sub_10032CD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032CF1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {

    sub_10000C840(a7);

    return sub_10000C840(a9);
  }

  return result;
}

void sub_10032D250()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010056CFE0;
  v1._countAndFlagsBits = 0x4E20746E65636552;
  v1._object = 0xEC0000007365746FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000039;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1006EF6C0 = v3;
}

uint64_t sub_10032D308@<X0>(uint64_t a1@<X4>, uint64_t a2@<X6>, uint64_t *a3@<X8>)
{
  v6 = sub_10001566C(1, 1);
  if (a1)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:v7];
  }

  sub_1000054A4(0, &unk_1006BD380);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v6;

  result = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  *a3 = result;
  return result;
}

void sub_10032D440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong selectModel:a3];
  }
}

uint64_t sub_10032D4A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = _swiftEmptyArrayStorage;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = &v15;
  v8[5] = a3;
  v8[6] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10032E884;
  *(v9 + 24) = v8;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100657EE8;
  v10 = _Block_copy(aBlock);

  v11 = a2;

  [v11 performBlockAndWait:v10];
  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

void sub_10032D674(unint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *__return_ptr, void *, uint64_t, uint64_t, unint64_t, unint64_t, void), uint64_t a5)
{
  v108 = a5;
  v107 = a4;
  v109 = a3;
  v113 = a2;
  v6 = sub_10015DA04(&unk_1006BFEA0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v123 = &v107 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v107 - v13;
  __chkstk_darwin(v12);
  v16 = &v107 - v15;
  v17 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v119 = (&v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v114 = &v107 - v22;
  v23 = __chkstk_darwin(v21);
  v122 = (&v107 - v24);
  v25 = __chkstk_darwin(v23);
  v116 = &v107 - v26;
  v27 = __chkstk_darwin(v25);
  v117 = (&v107 - v28);
  v29 = __chkstk_darwin(v27);
  v112 = &v107 - v30;
  v31 = __chkstk_darwin(v29);
  v120 = &v107 - v32;
  __chkstk_darwin(v31);
  v115 = &v107 - v33;
  v127 = a1;
  if (a1 >> 62)
  {
    goto LABEL_110;
  }

  v34 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v35 = v112;
  if (!v34)
  {
    return;
  }

  v36 = 0;
  v118 = v127 & 0xFFFFFFFFFFFFFF8;
  v18 += 6;
  v121 = v9;
  v125 = v18;
  v126 = v127 & 0xC000000000000001;
  v124 = v34;
  v110 = v14;
  while (1)
  {
    if (v126)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v118 + 16))
      {
        goto LABEL_109;
      }

      v37 = *(v127 + 8 * v36 + 32);
    }

    v38 = v37;
    v9 = (v36 + 1);
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      v34 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v39 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_10032E894(v38 + v39, v16);
    v40 = *v18;
    v41 = (*v18)(v16, 1, v17) == 1;
    v128 = v40;
    if (v41)
    {
      sub_10032E904(v16);
      goto LABEL_22;
    }

    v42 = v115;
    sub_10032E96C(v16, v115);
    sub_10032E96C(v42, v120);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v45 = *v120;
        v44 = *(v120 + 8);
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
LABEL_18:
          sub_100013E2C(v120);
          goto LABEL_22;
        }

        v44 = *v120;
        v45 = *(v120 + 8);
      }

      v40 = v128;
      if (v44)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_18;
      }

      v111 = *(sub_10015DA04(&unk_1006C43C0) + 48);
      v46 = type metadata accessor for URL();
      v47 = *(*(v46 - 8) + 8);
      v48 = v17;
      v49 = v120;
      v47(v120 + v111, v46);
      v50 = v49;
      v17 = v48;
      v14 = v110;
      v47(v50, v46);
      v35 = v112;
      v40 = v128;
    }

LABEL_22:
    sub_10032E894(v38 + v39, v14);
    v18 = v125;
    if (v40(v14, 1, v17) == 1)
    {
      sub_10032E904(v14);
      goto LABEL_24;
    }

    sub_10032E96C(v14, v35);
    sub_10032E96C(v35, v117);
    v52 = swift_getEnumCaseMultiPayload();
    v51 = v124;
    if (v52 > 2)
    {
      break;
    }

    if (v52)
    {
      goto LABEL_30;
    }

    v111 = *(sub_10015DA04(&unk_1006C43C0) + 48);
    v53 = type metadata accessor for URL();
    v54 = *(*(v53 - 8) + 8);
    v55 = v117;
    v54(v117 + v111, v53);
    v56 = v55;
    v35 = v112;
    v57 = v53;
    v18 = v125;
    v54(v56, v57);
LABEL_24:
    v51 = v124;
LABEL_41:

LABEL_42:
    ++v36;
    v106 = v121;
    if (v9 == v51)
    {
      LODWORD(v120) = 0;
      goto LABEL_45;
    }
  }

  if (v52 == 3 || v52 == 4)
  {
LABEL_30:
    sub_100013E2C(v117);
    goto LABEL_41;
  }

  v44 = *v117;

  if (!v44)
  {
LABEL_40:
    v51 = v124;
    v18 = v125;
    goto LABEL_41;
  }

LABEL_33:
  v58 = [v113 ic_existingObjectWithID:{v44, v107, v108}];
  if (!v58)
  {

    goto LABEL_40;
  }

  v59 = v58;
  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (!v60)
  {

    v38 = v59;
    goto LABEL_40;
  }

  v61 = v60;
  if (([v60 isSharedViaICloud] & 1) == 0)
  {
    v62 = [v61 isPasswordProtected];

    v51 = v124;
    v18 = v125;
    if (v62)
    {
      LODWORD(v120) = 1;
      v106 = v121;
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  LODWORD(v120) = 1;
  v106 = v121;
  v51 = v124;
LABEL_45:
  if (v51 >= 1)
  {
    v63 = 0;
    v118 = 0x8000000100568B00;
    v64 = v128;
    while (1)
    {
      if (v126)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v65 = *(v127 + 8 * v63 + 32);
      }

      v66 = v65;
      v67 = v123;
      v68 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      sub_10032E894(v66 + v68, v67);
      if (v64(v67, 1, v17) == 1)
      {
        sub_10032E904(v67);
        goto LABEL_65;
      }

      v69 = v67;
      v70 = v116;
      sub_10032E96C(v69, v116);
      sub_10032E96C(v70, v122);
      v71 = swift_getEnumCaseMultiPayload();
      if (v71 > 2)
      {
        if (v71 == 3)
        {
          v77 = *v122;
          v72 = v122[1];

          if (v72)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v71 != 4)
          {
LABEL_62:
            sub_100013E2C(v122);
            goto LABEL_65;
          }

          v72 = *v122;

          if (v72)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        if (v71)
        {
          goto LABEL_62;
        }

        v73 = *(sub_10015DA04(&unk_1006C43C0) + 48);
        v74 = type metadata accessor for URL();
        v75 = *(*(v74 - 8) + 8);
        v76 = v122;
        v75(v122 + v73, v74);
        v75(v76, v74);
        v51 = v124;
      }

LABEL_65:
      sub_10032E894(v66 + v68, v106);
      v64 = v128;
      if (v128(v106, 1, v17) == 1)
      {
        sub_10032E904(v106);
      }

      else
      {
        v78 = v114;
        sub_10032E96C(v106, v114);
        sub_10032E96C(v78, v119);
        v79 = swift_getEnumCaseMultiPayload();
        if (v79 > 2)
        {
          if (v79 != 3 && v79 != 4)
          {
            v72 = *v119;

            if (v72)
            {
LABEL_74:
              v85 = [v113 ic_existingObjectWithID:{v72, v107}];
              if (v85)
              {
                v86 = v85;
                objc_opt_self();
                v87 = swift_dynamicCastObjCClass();
                if (!v87)
                {
                  goto LABEL_78;
                }

                v88 = v87;
                v89 = v86;
                if ([v88 markedForDeletion])
                {

LABEL_78:
                  objc_opt_self();
                  v90 = swift_dynamicCastObjCClass();
                  v106 = v121;
                  if (v90)
                  {
                    v91 = v90;
                    v92 = v86;
                    v93 = [v91 title];
                    if (v93)
                    {
                      v94 = v93;
                      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v97 = v96;

                      v98 = 0;
                      v99 = 0;
                      goto LABEL_90;
                    }
                  }

                  else
                  {
                  }

LABEL_105:
                  v64 = v128;
                  goto LABEL_49;
                }

                v100 = [v88 title];
                if (v100)
                {
                  v101 = v100;
                  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v97 = v102;
                }

                else
                {
                  v95 = 0;
                  v97 = 0;
                }

                if ([v88 isSharedViaICloud])
                {

                  v98 = 0xD000000000000012;
                  v99 = v118;

                  if (v97)
                  {
                    goto LABEL_90;
                  }

LABEL_103:
                }

                else
                {
                  v104 = [v88 isPasswordProtectedAndLocked];

                  if (v104)
                  {
                    v99 = 0xE400000000000000;
                    v98 = 1801678700;

                    if (!v97)
                    {
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v105 = [v88 isPasswordProtected];
                    if (v105)
                    {
                      v98 = 0x65706F2E6B636F6CLL;
                    }

                    else
                    {
                      v98 = 0x7865742E65746F6ELL;
                    }

                    if (v105)
                    {
                      v99 = 0xE90000000000006ELL;
                    }

                    else
                    {
                      v99 = 0xE900000000000074;
                    }

                    if (!v97)
                    {
                      goto LABEL_103;
                    }
                  }

LABEL_90:
                  v107(&v129, v66, v95, v97, v98, v99, v120);

                  v103 = v109;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                }

                v106 = v121;
                v51 = v124;
                goto LABEL_105;
              }
            }

            goto LABEL_105;
          }
        }

        else if (!v79)
        {
          v80 = *(sub_10015DA04(&unk_1006C43C0) + 48);
          v81 = type metadata accessor for URL();
          v82 = *(*(v81 - 8) + 8);
          v83 = v119;
          v82(v119 + v80, v81);
          v84 = v83;
          v51 = v124;
          v82(v84, v81);
          goto LABEL_48;
        }

        sub_100013E2C(v119);
      }

LABEL_48:

LABEL_49:
      if (v51 == ++v63)
      {
        return;
      }
    }
  }

  __break(1u);
}

Class sub_10032E384(void *a1)
{
  result = [objc_opt_self() sharedContext];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [(objc_class *)result workerManagedObjectContext];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 mostRecentSelections];
  type metadata accessor for ICSelectionStateModel(0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_10032D4A4(v6, v4, sub_10032E86C, v7);

  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1000054A4(0, &qword_1006C6400);

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_1000054A4(0, &qword_1006C6400);
LABEL_6:

  v9 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 ic_inlineMenuWithChildren:isa];

  v12 = objc_opt_self();
  v13 = [objc_opt_self() mainBundle];
  swift__string._object = 0x800000010056CF70;
  v14._countAndFlagsBits = 0x654D207261656C43;
  swift__string._countAndFlagsBits = 0xD00000000000003ALL;
  v14._object = 0xEA0000000000756ELL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, swift__string);

  v16 = String._bridgeToObjectiveC()();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_10032E874;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002DEFE0;
  aBlock[3] = &unk_100657E70;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  v20 = [v12 ic_actionWithTitle:v16 handler:v18];
  _Block_release(v18);

  sub_10015DA04(&unk_1006BD390);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  *(preferredElementSize + 32) = v11;
  *(preferredElementSize + 40) = v20;
  sub_1000054A4(0, &unk_1006C6410);
  v22 = qword_1006BC780;
  v23 = v11;
  v24 = v20;
  if (v22 != -1)
  {
    swift_once();
  }

  v25 = xmmword_1006EF6C0;
  v26 = objc_opt_self();

  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 __systemImageNamedSwift:v27];

  v32.is_nil = String._bridgeToObjectiveC()();
  v32.value.super.isa = v28;
  v29 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v30).super.super.isa;

  return v29;
}

uint64_t sub_10032E894(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006BFEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032E904(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BFEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032E96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032E9D0(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t RenameFolderIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for FolderEntity();
  __chkstk_darwin(v2 - 8);
  sub_10028671C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100286780(a1);
}

uint64_t sub_10032EAF0()
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
  sub_100025918(v6, static RenameFolderIntent.title);
  sub_10002597C(v6, static RenameFolderIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t RenameFolderIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC788 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static RenameFolderIntent.title);
}

uint64_t static RenameFolderIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static RenameFolderIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static RenameFolderIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static RenameFolderIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C4410);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C4418);
  __chkstk_darwin(v1);
  sub_10021B524();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20656D616E6552;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4420);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4428);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*RenameFolderIntent.entity.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*RenameFolderIntent.name.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*RenameFolderIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t RenameFolderIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_10015DA04(&unk_1006BE0D0);
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for Locale();
  v5[16] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for FolderEntity();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[26] = v9;
  v5[27] = v8;

  return _swift_task_switch(sub_10032F658, v9, v8);
}

uint64_t sub_10032F658()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[2];
  v2 = v0[3];

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];
    v9 = v0[14];
    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[13];
    v23 = v0[18];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v9 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v8 + 16))(v7, v6, v23);
    IntentDialog.init(_:)();
    v13 = type metadata accessor for IntentDialog();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    type metadata accessor for AppIntentError();
    sub_100330EC4(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v11, &unk_1006BE0D0);
    swift_willThrow();
    (*(v8 + 8))(v6, v23);
    goto LABEL_7;
  }

  IntentParameter.wrappedValue.getter();
  v4 = String.count.getter();

  if (ICFolderNameMaxLength < v4)
  {

    sub_100197CCC();
    swift_allocError();
    *v5 = 19;
    swift_willThrow();
LABEL_7:

    v14 = v0[1];

    return v14();
  }

  v17 = v0[10];
  v16 = v0[11];
  v19 = v0[8];
  v18 = v0[9];
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v20 = v0[6];
  v0[28] = v20;
  v21 = swift_allocObject();
  v0[29] = v21;
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v17;
  v21[5] = v16;

  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = sub_10032FA9C;

  return sub_1001AA4CC(v20, sub_100330D94, v21);
}

uint64_t sub_10032FA9C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[31] = a1;
  v5[32] = a2;
  v5[33] = v2;

  v6 = v4[28];
  sub_100286780(v4[24]);

  v7 = v4[27];
  v8 = v4[26];
  if (v2)
  {
    v9 = sub_10032FF60;
  }

  else
  {
    v9 = sub_10032FC38;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10032FC38()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *v4 = v0;
  v4[1] = sub_10032FCE4;
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 184);

  return FolderEntity.init(for:in:)(v7, v5, v6);
}

uint64_t sub_10032FCE4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_10033002C;
  }

  else
  {
    v5 = sub_10032FE20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10032FE20()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[23];

  sub_100330EC4(&qword_1006C5420, type metadata accessor for FolderEntity);
  static IntentResult.result<A>(value:)();

  sub_100286780(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10032FF60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033002C()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100330108(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    sub_100330F0C(v6);
    v9 = v8;
    v11 = v10;

    if (v2)
    {
      return;
    }

LABEL_6:
    *a2 = v9;
    a2[1] = v11;
    return;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    sub_1003313D4(v13);
    v9 = v15;
    v11 = v16;

    if (v2)
    {
      return;
    }

    goto LABEL_6;
  }

  type metadata accessor for ICError(0);
  sub_10015DA04(&qword_1006BFBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  v19 = [objc_opt_self() mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  sub_10018F334(inited);
  swift_setDeallocating();
  sub_1000073B4(inited + 32, &unk_1006BFA10);
  sub_100330EC4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
}

uint64_t sub_100330374(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return RenameFolderIntent.perform()(a1, v4, v5, v7, v6);
}

_BYTE *sub_100330434@<X0>(void *a1@<X8>)
{
  result = _s11MobileNotes18RenameFolderIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

_BYTE *_s11MobileNotes18RenameFolderIntentVACycfC_0()
{
  v0 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v0 - 8);
  v59 = &v42[-v1];
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  __chkstk_darwin(v2);
  v62 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10015DA04(&unk_1006BE0D0);
  v6 = __chkstk_darwin(v5 - 8);
  v58 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v61 = &v42[-v8];
  v9 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v57 = &v42[-v10];
  v11 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v11 - 8);
  v60 = &v42[-v12];
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  v55 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v45 = &v42[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_10015DA04(&unk_1006BCC30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v14 + 104);
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v48 = v13;
  v23(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  v46 = v23;
  v49 = v14 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v16, v22, v13);
  v24 = v60;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25 = *(v20 + 56);
  v54 = v20 + 56;
  v56 = v25;
  v25(v24, 0, 1, v19);
  v26 = type metadata accessor for FolderEntity();
  (*(*(v26 - 8) + 56))(v57, 1, 1, v26);
  v27 = type metadata accessor for IntentDialog();
  v50 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v51 = v29;
  v52 = v28 + 56;
  v29(v61, 1, 1, v27);
  v29(v58, 1, 1, v27);
  v67 = VisibleAccountsQuery.init(requireFolderCreationSupport:)();
  v68 = v30;
  v69 = v31 & 1;
  v70 = v32 & 1;
  v71 = v33 & 1;
  v72 = v34 & 1;
  v43 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v64 + 104);
  v64 += 104;
  v44 = v35;
  v35(v62);
  sub_100179874();
  v36 = v60;
  v58 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&unk_1006BCB70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37 = v47;
  v38 = v48;
  v39 = v46;
  v46(v16, v47, v48);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39(v16, v37, v38);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v56(v36, 0, 1, v55);
  v40 = type metadata accessor for String.IntentInputOptions();
  v67 = 0;
  v68 = 0;
  (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
  v51(v61, 1, 1, v50);
  v44(v62, v43, v63);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCA40);
  v65 = 0xD000000000000024;
  v66 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v65 = 0xD000000000000021;
  v66 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v58;
}

unint64_t sub_100330DB8()
{
  result = qword_1006C4430;
  if (!qword_1006C4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4430);
  }

  return result;
}

unint64_t sub_100330E10()
{
  result = qword_1006C4438;
  if (!qword_1006C4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4438);
  }

  return result;
}

uint64_t sub_100330EC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100330F0C(void *a1)
{
  v2 = [a1 managedObjectContext];
  if (v2)
  {
    v3 = v2;
    if ([a1 isSystemFolder])
    {
      sub_100197CCC();
      swift_allocError();
      v5 = 20;
LABEL_4:
      *v4 = v5;
LABEL_5:
      swift_willThrow();

      return;
    }

    v6 = [a1 title];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    IntentParameter.wrappedValue.getter();
    if (v7 == v27 && v9 == v28)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v12 = objc_opt_self();
        IntentParameter.wrappedValue.getter();
        v13 = String._bridgeToObjectiveC()();

        v14 = [a1 parent];
        v15 = [v12 deduplicatingTitle:v13 forFolder:a1 forNewFolderParent:v14 ofAccount:0];

        if (!v15)
        {
          type metadata accessor for ICError(0);
          v29 = 233;
          sub_10015DA04(&qword_1006BFBE0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100531E30;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = v21;
          *(inited + 48) = 0xD000000000000020;
          *(inited + 56) = 0x800000010056D0E0;
          sub_10018F334(inited);
          swift_setDeallocating();
          sub_1000073B4(inited + 32, &unk_1006BFA10);
          sub_100330EC4(&qword_1006BE4D0, type metadata accessor for ICError);
          _BridgedStoredNSError.init(_:userInfo:)();
          goto LABEL_5;
        }

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        IntentParameter.wrappedValue.getter();
        if (v16 == v27 && v18 == v28)
        {
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            sub_100197CCC();
            swift_allocError();
            v5 = 18;
            goto LABEL_4;
          }
        }

        IntentParameter.wrappedValue.getter();
        v23 = String._bridgeToObjectiveC()();

        [a1 setTitle:v23];

        v24 = String._bridgeToObjectiveC()();
        [a1 updateChangeCountWithReason:v24];

        v27 = 0;
        if (![v3 save:&v27])
        {
          v26 = v27;
          _convertNSErrorToError(_:)();

          goto LABEL_5;
        }

        v25 = v27;
      }
    }

    v19 = [a1 objectID];
  }

  else
  {
    type metadata accessor for ICError(0);
    v29 = 225;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100330EC4(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1003313D4(void *a1)
{
  v1 = [a1 managedObjectContext];
  if (v1)
  {
    v2 = v1;
    sub_100197CCC();
    swift_allocError();
    *v3 = 21;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100330EC4(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

id sub_1003314F4()
{
  result = [swift_getObjCClassFromMetadata() sharedContext];
  if (!result)
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v2;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x800000010056D160;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_1003319A8();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_10033162C()
{
  if (sub_1000DC72C())
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ICError(0);
  sub_10015DA04(&qword_1006BFBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v2;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000010056D140;
  sub_10018F334(inited);
  swift_setDeallocating();
  sub_1000073B4(inited + 32, &unk_1006BFA10);
  sub_1003319A8();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

id _sSo20ICUnifiedNoteContextC11MobileNotesE08__sharedC0ABSgvgZ_0()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  v1 = objc_allocWithZone(ICUnifiedNoteContext);
  sub_100331A00();
  v2 = sub_1003314F4();
  v3 = sub_10033162C();
  v4 = [v1 initWithModernNoteContext:v2 htmlNoteContext:v3 options:0];

  return v4;
}

unint64_t sub_1003319A8()
{
  result = qword_1006BE4D0;
  if (!qword_1006BE4D0)
  {
    type metadata accessor for ICError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE4D0);
  }

  return result;
}

unint64_t sub_100331A00()
{
  result = qword_1006C4458;
  if (!qword_1006C4458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C4458);
  }

  return result;
}

uint64_t sub_100331A78()
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
  sub_100025918(v6, static DeleteTablesIntent.title);
  sub_10002597C(v6, static DeleteTablesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t DeleteTablesIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC790 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static DeleteTablesIntent.title);
}

uint64_t static DeleteTablesIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC790 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static DeleteTablesIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteTablesIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static DeleteTablesIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C4468);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C4470);
  __chkstk_darwin(v1);
  sub_10021B3D4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4480);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x73656C62617420;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*DeleteTablesIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t (*DeleteTablesIntent.entities.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_100332300()
{
  v0 = sub_10015DA04(&qword_1006C4468);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C4470);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4480);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x73656C62617420;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1003324AC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return DeleteTablesIntent.perform()(a1, v4, v5, v6);
}

uint64_t DeleteTablesIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *(type metadata accessor for TableEntity() - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100332620, 0, 0);
}

uint64_t sub_100332620()
{
  IntentParameter.wrappedValue.getter();
  v4 = v0[2];
  v0[11] = v4;
  v5 = v4[2];
  v0[12] = v5;
  if (!v5)
  {
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];

    AppDependency.wrappedValue.getter();
    v12 = v0[4];
    v0[17] = [v12 modernManagedObjectContext];

    v13 = swift_allocObject();
    v0[18] = v13;
    v13[2] = v11;
    v13[3] = v10;
    v13[4] = v9;

    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_100311198;
    v1 = sub_1001A1CC8;
    v3 = &type metadata for () + 8;
    v2 = v13;

    return NSManagedObjectContext.perform<A>(_:)(v4, v1, v2, v3);
  }

  v6 = v0[9];
  v0[13] = 0;
  if (!v4[2])
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(_:)(v4, v1, v2, v3);
  }

  sub_1002EE314(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v0[10]);
  AppDependency.wrappedValue.getter();
  v0[14] = v0[3];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_10033286C;

  return (sub_1001AAC00)();
}

uint64_t sub_10033286C()
{
  v2 = *v1;
  v2[16] = v0;

  v3 = v2[14];
  sub_1002EE378(v2[10]);
  if (v0)
  {

    v4 = sub_100311328;
  }

  else
  {

    v4 = sub_1003329BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003329BC(void *a1, id (*a2)(), void *a3, char *a4)
{
  v5 = v4[13] + 1;
  if (v5 == v4[12])
  {
    v7 = v4[7];
    v6 = v4[8];
    v8 = v4[6];

    AppDependency.wrappedValue.getter();
    v9 = v4[4];
    v4[17] = [v9 modernManagedObjectContext];

    v10 = swift_allocObject();
    v4[18] = v10;
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v6;

    a1 = swift_task_alloc();
    v4[19] = a1;
    *a1 = v4;
    a1[1] = sub_100311198;
    a2 = sub_1001A1CC8;
    a4 = &type metadata for () + 8;
    a3 = v10;

    return NSManagedObjectContext.perform<A>(_:)(a1, a2, a3, a4);
  }

  v4[13] = v5;
  v11 = v4[11];
  if (v5 >= *(v11 + 16))
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(_:)(a1, a2, a3, a4);
  }

  sub_1002EE314(v11 + ((*(v4[9] + 80) + 32) & ~*(v4[9] + 80)) + *(v4[9] + 72) * v5, v4[10]);
  AppDependency.wrappedValue.getter();
  v4[14] = v4[3];
  v12 = swift_task_alloc();
  v4[15] = v12;
  *v12 = v4;
  v12[1] = sub_10033286C;

  return (sub_1001AAC00)();
}

uint64_t sub_100332C08@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes18DeleteTablesIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_100332C34(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 note];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v6;
      v11[4] = sub_100311E70;
      v11[5] = v7;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_100249504;
      v11[3] = &unk_1006580E0;
      v8 = _Block_copy(v11);
      v9 = v4;
      v10 = v6;

      [v10 enumerateAttachmentsInOrderUsingBlock:v8];
      _Block_release(v8);
      [v10 updateModificationDateAndChangeCountAndSaveImmediately];
      sub_1000054A4(0, &unk_1006C2C90);
      [swift_getObjCClassFromMetadata() deleteAttachment:v3];
    }

    else
    {
    }
  }
}

uint64_t _s11MobileNotes18DeleteTablesIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v29 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v21 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v26 = &v21 - v7;
  v25 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v24 = type metadata accessor for LocalizedStringResource();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C34B0);
  v32 = 0xD000000000000021;
  v33 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v23 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v32 = 0xD000000000000024;
  v33 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006C44C0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = *(v8 + 104);
  v16 = v25;
  v15(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v25);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15(v10, v14, v16);
  v17 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v22 + 56))(v17, 0, 1, v24);
  v34 = 0;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v27, 1, 1, v18);
  v19(v28, 1, 1, v18);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_1003333EC();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  return v23;
}

unint64_t sub_100333394()
{
  result = qword_1006C4488;
  if (!qword_1006C4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4488);
  }

  return result;
}

unint64_t sub_1003333EC()
{
  result = qword_1006BCCE0;
  if (!qword_1006BCCE0)
  {
    type metadata accessor for TableEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCCE0);
  }

  return result;
}

unint64_t sub_10033344C()
{
  result = qword_1006C4498;
  if (!qword_1006C4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4498);
  }

  return result;
}

unint64_t sub_1003334A4()
{
  result = qword_1006C44A0;
  if (!qword_1006C44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C44A0);
  }

  return result;
}

char *sub_100333540(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a3;
  ObjectType = swift_getObjectType();
  v15 = [objc_opt_self() sharedContext];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 managedObjectContext];
  }

  else
  {
    v17 = 0;
  }

  *&v8[OBJC_IVAR___ICFolderComposerViewController_context] = v17;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_folder] = 0;
  v18 = OBJC_IVAR___ICFolderComposerViewController_smartFolderQuery;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_smartFolderQuery] = 0;
  v19 = OBJC_IVAR___ICFolderComposerViewController_account;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_account] = a1;
  *&v8[v18] = a4;
  v8[OBJC_IVAR___ICFolderComposerViewController_showFilters] = a5 & 1;
  v20 = &v8[OBJC_IVAR___ICFolderComposerViewController_completion];
  *v20 = a6;
  v20[1] = a7;
  v21 = objc_allocWithZone(type metadata accessor for FolderComposerCollectionView());
  v22 = a4;

  v23 = a1;
  v24 = [v21 init];
  *&v8[OBJC_IVAR___ICFolderComposerViewController_collectionView] = v24;
  type metadata accessor for FolderComposerDataSource();
  swift_allocObject();
  v25 = v23;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource] = sub_10017EBBC(v24, v25, a2, v36);
  v26 = *&v8[v19];
  v27 = objc_allocWithZone(type metadata accessor for FolderComposerFilterViewController());
  *&v8[OBJC_IVAR___ICFolderComposerViewController_filterViewController] = sub_1002B1FD0(v26);
  v8[OBJC_IVAR___ICFolderComposerViewController_folderTitleDidAppear] = 0;
  v38.receiver = v8;
  v38.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  v29 = *&v28[OBJC_IVAR___ICFolderComposerViewController_collectionView];
  v30 = v28;
  [v29 setDelegate:v30];
  sub_1003337D8(a4);

  v31 = *&v30[OBJC_IVAR___ICFolderComposerViewController_filterViewController];

  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  v33 = &v31[OBJC_IVAR___ICFolderComposerFilterViewController_completion];
  v34 = *&v31[OBJC_IVAR___ICFolderComposerFilterViewController_completion];
  *v33 = sub_100335588;
  *(v33 + 1) = v32;
  sub_10000C840(v34);

  return v30;
}

void sub_1003337D8(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = *(v1 + OBJC_IVAR___ICFolderComposerViewController_context);
    if (v3)
    {
      v5 = *(v2 + OBJC_IVAR___ICFolderComposerViewController_account);
      v6 = v3;
      v20 = a1;
      v7 = [v5 objectID];
      v8 = [v20 filterSelectionWithManagedObjectContext:v6 account:v7];

      v9 = v8;
      v10 = sub_1002B29E0();
      v11 = *&v10[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];
      *&v10[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] = v9;
      v12 = v9;

      sub_100303670(0, 0, 0);
      v13 = *(v2 + OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource);
      v14 = *(v13 + 56);
      *(v13 + 56) = v12;
      v15 = v12;

      sub_10017FF00();
      v16 = OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection;
      if (*(v2 + OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection))
      {
      }

      else
      {
        [v15 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        sub_1000054A4(0, &unk_1006C4550);
        v17 = swift_dynamicCast();
        v18 = v21;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = *(v2 + v16);
        *(v2 + v16) = v18;
      }
    }
  }
}

void sub_1003339D4(void *a1, uint64_t a2)
{
  v4 = sub_1002B29E0();
  v5 = *&v4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];
  *&v4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] = a1;
  v6 = a1;

  sub_100303670(0, 0, 0);
  v7 = *(a2 + OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource);
  v8 = sub_1002B29E0();
  v9 = *&v8[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];

  v10 = *(v7 + 56);
  *(v7 + 56) = v9;
  v11 = v9;

  sub_10017FF00();
  sub_100333B30();
}

void sub_100333AA4(void *a1)
{
  v2 = sub_1002B29E0();
  v3 = *&v2[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];
  *&v2[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] = a1;
  v4 = a1;

  sub_100303670(0, 0, 0);
}

void sub_100333B30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___ICFolderComposerViewController_folder];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 navigationItem];
    [v3 isSmartFolder];
    v6 = [objc_opt_self() mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    [v4 setTitle:v12];
  }

  else
  {
    v4 = [v0 navigationItem];
    v5 = *(*&v0[OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource] + 56);
    if (v5)
    {
      [v5 isEmpty];
    }

    v9 = [objc_opt_self() mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 localizedStringForKey:v10 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    [v4 setTitle:v12];
  }
}

void sub_100333EC0(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

void sub_100333F24(void *a1)
{
  v2 = [objc_opt_self() sharedContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 managedObjectContext];
  }

  else
  {
    v4 = 0;
  }

  *(v1 + OBJC_IVAR___ICFolderComposerViewController_context) = v4;
  *(v1 + OBJC_IVAR___ICFolderComposerViewController_folder) = 0;
  *(v1 + OBJC_IVAR___ICFolderComposerViewController_smartFolderQuery) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100334018()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR___ICFolderComposerViewController_collectionView];
    [v2 addSubview:v4];

    [v4 ic_addAnchorsToFillSuperview];
    sub_10017FF00();
    sub_100333B30();
    v5 = [v1 navigationItem];
    v6 = sub_1004C81B4();
    [v5 setLeftBarButtonItem:v6];

    v7 = [v1 navigationItem];
    v8 = sub_1004C81CC();
    [v7 setRightBarButtonItem:v8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100334198()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection);
  if (v1)
  {
    if (*(*(v0 + OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource) + 72))
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v2 = v1;
      v3 = sub_1002B29E0();
      v4 = *&v3[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];

      sub_1000054A4(0, &unk_1006C4550);
      LOBYTE(v3) = static NSObject.== infix(_:_:)();

      LOBYTE(v1) = v3 ^ 1;
    }
  }

  return v1 & 1;
}

uint64_t sub_100334260()
{
  v1 = *&v0[OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource];
  if (!*(v1 + 48))
  {
    return 0;
  }

  v2 = *&v0[OBJC_IVAR___ICFolderComposerViewController_folder];
  if (!v2)
  {

    goto LABEL_16;
  }

  v3 = [v2 title];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v1 + 48);
  if (!v6)
  {
    if (v7)
    {
      goto LABEL_16;
    }

LABEL_29:

    return 1;
  }

  if (!v7)
  {

    goto LABEL_16;
  }

  if (v4 == *(v1 + 40) && v7 == v6)
  {

    goto LABEL_29;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_16:
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();

  v13 = *&v0[OBJC_IVAR___ICFolderComposerViewController_account];
  v32[0] = 0;
  LODWORD(v11) = [v11 isTitleValid:v12 account:v13 parentFolder:0 error:v32];

  if (!v11)
  {
    v15 = v32[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10015DA04(&unk_1006C9B40);
    sub_1000054A4(0, &unk_1006C4560);
    swift_dynamicCast();
    v16 = [v31 userInfo];
    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      v20 = v0;
      v21 = sub_1002DF11C(v18, v19);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_10000A2A0(*(v17 + 56) + 32 * v21, v32);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_26;
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v17 + 16))
      {
        v26 = sub_1002DF11C(v24, v25);
        v28 = v27;

        if (v28)
        {
          sub_10000A2A0(*(v17 + 56) + 32 * v26, v32);

          if (swift_dynamicCast())
          {
            v29 = String._bridgeToObjectiveC()();

            v30 = String._bridgeToObjectiveC()();

            [v20 ic_showSingleButtonAlertWithTitle:v29 message:v30];

LABEL_27:

            return 0;
          }

LABEL_26:

          goto LABEL_27;
        }
      }

      else
      {
      }

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v14 = v32[0];
  return 1;
}

void sub_100334648(uint64_t a1)
{
  v2 = sub_1002B29E0();
  v3 = *&v2[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];

  [v3 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000054A4(0, &unk_1006C4550);
  v4 = swift_dynamicCast();
  v5 = v12;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(a1 + OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection);
  *(a1 + OBJC_IVAR____TtC11MobileNotes32FolderComposerBaseViewController_initialFilterSelection) = v5;

  v7 = *(a1 + OBJC_IVAR___ICFolderComposerViewController_completion);
  v8 = *(a1 + OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource);
  v9 = *(v8 + 40);
  v10 = *(v8 + 48);

  v11 = v3;
  v7(v9, v10, v3);
}

void sub_1003349EC(char *a1, uint64_t a2)
{
  if (a1[OBJC_IVAR___ICFolderComposerViewController_showFilters] == 1)
  {
    v3 = [*&a1[OBJC_IVAR___ICFolderComposerViewController_filterViewController] ic_embedInNavigationControllerForModalPresentation];
    [a1 presentViewController:v3 animated:1 completion:0];
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v10[4] = sub_100335578;
    v10[5] = v4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10028DCE8;
    v10[3] = &unk_1006581D0;
    v5 = _Block_copy(v10);
    v6 = a1;

    [v6 ic_performBlockAfterActiveTransition:v5];
    _Block_release(v5);
  }

  else
  {
    v8 = sub_100435D90();
    [v8 becomeFirstResponder];

    v9 = *(a2 + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField);

    [v9 selectAll:0];
  }
}

void sub_100334CC0()
{

  v1 = *(v0 + OBJC_IVAR___ICFolderComposerViewController_filterViewController);
}

char *sub_100334EA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 account];
  v7 = type metadata accessor for FolderComposerViewController();
  v8 = objc_allocWithZone(v7);
  v9 = objc_opt_self();

  v10 = [v9 sharedContext];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 managedObjectContext];
  }

  else
  {
    v12 = 0;
  }

  *&v8[OBJC_IVAR___ICFolderComposerViewController_context] = v12;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_folder] = 0;
  v13 = OBJC_IVAR___ICFolderComposerViewController_smartFolderQuery;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_smartFolderQuery] = 0;
  v14 = OBJC_IVAR___ICFolderComposerViewController_account;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_account] = v6;
  *&v8[v13] = 0;
  v8[OBJC_IVAR___ICFolderComposerViewController_showFilters] = 0;
  v15 = &v8[OBJC_IVAR___ICFolderComposerViewController_completion];
  *v15 = a2;
  v15[1] = a3;
  v16 = objc_allocWithZone(type metadata accessor for FolderComposerCollectionView());

  v17 = v6;
  v18 = [v16 init];
  *&v8[OBJC_IVAR___ICFolderComposerViewController_collectionView] = v18;
  type metadata accessor for FolderComposerDataSource();
  swift_allocObject();
  v19 = v17;
  *&v8[OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource] = sub_10017EBBC(v18, v19, 0, 0);
  v20 = *&v8[v14];
  v21 = objc_allocWithZone(type metadata accessor for FolderComposerFilterViewController());
  *&v8[OBJC_IVAR___ICFolderComposerViewController_filterViewController] = sub_1002B1FD0(v20);
  v8[OBJC_IVAR___ICFolderComposerViewController_folderTitleDidAppear] = 0;
  v38.receiver = v8;
  v38.super_class = v7;
  v22 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  v23 = *&v22[OBJC_IVAR___ICFolderComposerViewController_collectionView];
  v24 = v22;
  [v23 setDelegate:v24];

  v25 = *&v24[OBJC_IVAR___ICFolderComposerViewController_filterViewController];
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = &v25[OBJC_IVAR___ICFolderComposerFilterViewController_completion];
  v28 = *&v25[OBJC_IVAR___ICFolderComposerFilterViewController_completion];
  *v27 = sub_1003351A4;
  v27[1] = v26;
  v29 = v25;
  sub_10000C840(v28);

  v30 = *&v24[OBJC_IVAR___ICFolderComposerViewController_folder];
  *&v24[OBJC_IVAR___ICFolderComposerViewController_folder] = a1;
  v31 = a1;
  v32 = v24;
  v33 = v31;

  v34 = *&v32[OBJC_IVAR___ICFolderComposerViewController_folderComposerDataSource];
  v35 = *(v34 + 24);
  *(v34 + 24) = a1;

  v36 = [v33 smartFolderQueryObjC];
  sub_1003337D8(v36);

  return v32;
}

void sub_1003351AC()
{
  if (sub_100334260())
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = swift_allocObject();
      *(v3 + 16) = v0;
      v6[4] = sub_10033555C;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_10028DCE8;
      v6[3] = &unk_100658270;
      v4 = _Block_copy(v6);
      v5 = v0;

      [v2 dismissViewControllerAnimated:1 completion:v4];
      _Block_release(v4);
    }
  }
}

void sub_1003352B0()
{
  v1 = v0;
  v2 = sub_10017E644();
  if (v2)
  {
    v3 = v2;
    [v2 endEditing:0];
  }

  v4 = [*&v1[OBJC_IVAR___ICFolderComposerViewController_filterViewController] ic_embedInNavigationControllerForModalPresentation];
  [v1 presentViewController:v4 animated:1 completion:0];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v8[4] = sub_100335540;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10028DCE8;
  v8[3] = &unk_100658220;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v7 ic_performBlockAfterActiveTransition:v6];
  _Block_release(v6);
}

void sub_1003353FC(void *a1)
{
  type metadata accessor for SmartFolderComposerTextFieldCell();
  v3 = swift_dynamicCastClass();
  if (v3 && !*&v1[OBJC_IVAR___ICFolderComposerViewController_folder])
  {
    v4 = OBJC_IVAR___ICFolderComposerViewController_folderTitleDidAppear;
    if ((v1[OBJC_IVAR___ICFolderComposerViewController_folderTitleDidAppear] & 1) == 0)
    {
      v5 = v3;
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      *(v6 + 24) = v5;
      v10[4] = sub_100335538;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10028DCE8;
      v10[3] = &unk_100658180;
      v7 = _Block_copy(v10);
      v8 = a1;
      v9 = v1;

      [v9 ic_performBlockAfterActiveTransition:v7];

      _Block_release(v7);
      v1[v4] = 1;
    }
  }
}

uint64_t CreateFolderIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v5 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v5 - 8);
  v34 = &v32 - v6;
  v7 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v7 - 8);
  v33 = &v32 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v32 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v10 + 104);
  v18(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18(v12, v17, v9);
  v19 = v33;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v16 + 56))(v19, 0, 1, v15);
  v20 = type metadata accessor for String.IntentInputOptions();
  v42 = 0;
  v43 = 0;
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  (*(v37 + 104))(v36, enum case for InputConnectionBehavior.default(_:), v38);
  v22 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v23 = v39;
  *v39 = v22;
  FolderIntent = type metadata accessor for CreateFolderIntent();
  v25 = FolderIntent[5];
  v26 = type metadata accessor for AccountEntity();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  v27 = FolderIntent[6];
  v28 = type metadata accessor for FolderEntity();
  (*(*(v28 - 8) + 56))(v23 + v27, 1, 1, v28);
  v29 = FolderIntent[7];
  sub_10015DA04(&unk_1006BCA40);
  v40 = 0xD000000000000024;
  v41 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  *(v23 + v29) = AppDependency.__allocating_init(key:manager:)();
  v30 = FolderIntent[8];
  sub_10015DA04(&qword_1006C34B0);
  v40 = 0xD000000000000021;
  v41 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  *(v23 + v30) = result;
  return result;
}

uint64_t type metadata accessor for CreateFolderIntent()
{
  result = qword_1006C4610;
  if (!qword_1006C4610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100335CA0()
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
  sub_100025918(v6, static CreateFolderIntent.title);
  sub_10002597C(v6, static CreateFolderIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t CreateFolderIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC798 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static CreateFolderIntent.title);
}

uint64_t static CreateFolderIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static CreateFolderIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateFolderIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static CreateFolderIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C4570);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C4578);
  __chkstk_darwin(v1);
  type metadata accessor for CreateFolderIntent();
  sub_10001DBBC(&qword_1006C4580, type metadata accessor for CreateFolderIntent);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6120657461657243;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4588);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7265646C6F6620;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*CreateFolderIntent.name.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateFolderIntent.loggingConfiguration.getter()
{
  type metadata accessor for CreateFolderIntent();
  AppDependency.wrappedValue.getter();
  return v1;
}

uint64_t (*CreateFolderIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CreateFolderIntent();
  *(v3 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateFolderIntent.perform()(uint64_t a1)
{
  v2[66] = v1;
  v2[65] = a1;
  v3 = type metadata accessor for Logger();
  v2[67] = v3;
  v2[68] = *(v3 - 8);
  v2[69] = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0D0);
  v2[70] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[71] = v4;
  v2[72] = *(v4 - 8);
  v2[73] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[74] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[75] = swift_task_alloc();
  v5 = type metadata accessor for LocalizedStringResource();
  v2[76] = v5;
  v2[77] = *(v5 - 8);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v6 = type metadata accessor for FolderEntity();
  v2[80] = v6;
  v2[81] = *(v6 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v7 = type metadata accessor for AccountID();
  v2[87] = v7;
  v2[88] = *(v7 - 8);
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v8 = type metadata accessor for FolderID();
  v2[91] = v8;
  v2[92] = *(v8 - 8);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  sub_10015DA04(&unk_1006BF9D0);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCA20);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();

  return _swift_task_switch(sub_100336BEC, 0, 0);
}

uint64_t sub_100336BEC()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 528);
  FolderIntent = type metadata accessor for CreateFolderIntent();
  *(v0 + 792) = FolderIntent;
  v4 = FolderIntent[5];
  *(v0 + 952) = v4;
  sub_100006038(v2 + v4, v1, &unk_1006BCA20);
  v5 = type metadata accessor for AccountEntity();
  *(v0 + 800) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  *(v0 + 808) = v7;
  *(v0 + 816) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v7(v1, 1, v5);
  sub_1000073B4(v1, &unk_1006BCA20);
  if (v2 != 1)
  {
    v8 = *(v0 + 768);
    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    sub_100006038(*(v0 + 528) + FolderIntent[6], v8, &unk_1006BF9D0);
    LODWORD(v10) = (*(v9 + 48))(v8, 1, v10);
    sub_1000073B4(v8, &unk_1006BF9D0);
    if (v10 != 1)
    {
      type metadata accessor for ICError(0);
      *(v0 + 512) = 219;
      sub_10015DA04(&qword_1006BFBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v30;
      *(inited + 48) = 0xD000000000000021;
      *(inited + 56) = 0x800000010056D3E0;
      sub_10018F334(inited);
      swift_setDeallocating();
      sub_1000073B4(inited + 32, &unk_1006BFA10);
      sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
LABEL_31:
      AppDependency.wrappedValue.getter();
      Logger.init(subsystem:category:)();
      swift_errorRetain();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        swift_errorRetain();
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 4) = v66;
        *v65 = v66;
        _os_log_impl(&_mh_execute_header, v62, v63, "Folder creation failed with error: %@", v64, 0xCu);
        sub_1000073B4(v65, &qword_1006C1440);
      }

      v67 = *(v0 + 552);
      v68 = *(v0 + 544);
      v69 = *(v0 + 536);

      (*(v68 + 8))(v67, v69);
      swift_willThrow();
      sub_10000C840(0);

      v70 = *(v0 + 8);

      return v70();
    }
  }

  v11 = *(v0 + 760);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v14 = *(v0 + 528);
  *(v0 + 424) = 0;
  sub_100006038(v14 + FolderIntent[6], v11, &unk_1006BF9D0);
  if ((*(v12 + 48))(v11, 1, v13) != 1)
  {
    v20 = *(v0 + 760);
    v21 = *(v0 + 752);
    v22 = *(v0 + 744);
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = *(v0 + 528);
    (*(v23 + 16))(v22, v20, v24);
    sub_10019E4D0(v20, type metadata accessor for FolderEntity);
    (*(v23 + 32))(v21, v22, v24);
    *(v0 + 824) = *(v25 + FolderIntent[8]);
    AppDependency.wrappedValue.getter();
    v26 = *(v0 + 488);
    *(v0 + 832) = v26;
    v77 = sub_100473598;
    v27 = swift_task_alloc();
    *(v0 + 840) = v27;
    *v27 = v0;
    v27[1] = sub_100337A94;
    v28 = *(v0 + 752);
LABEL_10:

    return v77(v28, v26);
  }

  sub_1000073B4(*(v0 + 760), &unk_1006BF9D0);
  *(v0 + 856) = 0;
  v15 = *(v0 + 808);
  v16 = *(v0 + 800);
  v17 = *(v0 + 776);
  sub_100006038(*(v0 + 528) + *(v0 + 952), v17, &unk_1006BCA20);
  if (v15(v17, 1, v16) != 1)
  {
    v31 = *(v0 + 776);
    v32 = *(v0 + 720);
    v33 = *(v0 + 712);
    v34 = *(v0 + 704);
    v35 = *(v0 + 696);
    (*(v34 + 16))(v33, v31, v35);
    sub_10019E4D0(v31, type metadata accessor for AccountEntity);
    (*(v34 + 32))(v32, v33, v35);
    AppDependency.wrappedValue.getter();
    v26 = *(v0 + 480);
    *(v0 + 864) = v26;
    v77 = sub_100314C68;
    v36 = swift_task_alloc();
    *(v0 + 872) = v36;
    *v36 = v0;
    v36[1] = sub_1003388BC;
    v28 = *(v0 + 720);
    goto LABEL_10;
  }

  sub_1000073B4(*(v0 + 776), &unk_1006BCA20);
  v18 = *(v0 + 424);
  if (v18)
  {
    v19 = *(v0 + 856);
  }

  else
  {
    AppDependency.wrappedValue.getter();
    v38 = *(v0 + 432);
    v18 = [v38 defaultAccountObjectID];

    *(v0 + 424) = v18;
    v19 = *(v0 + 856);
    if (!v18)
    {
      type metadata accessor for ICError(0);
      *(v0 + 448) = 219;
      sub_10015DA04(&qword_1006BFBE0);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_100531E30;
      *(v60 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v60 + 72) = &type metadata for String;
      *(v60 + 40) = v61;
      *(v60 + 48) = 0xD00000000000001DLL;
      *(v60 + 56) = 0x800000010056D390;
      sub_10018F334(v60);
      swift_setDeallocating();
      sub_1000073B4(v60 + 32, &unk_1006BFA10);
      sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      goto LABEL_29;
    }
  }

  *(v0 + 912) = v18;
  *(v0 + 896) = 0u;
  *(v0 + 888) = v19;
  v39 = v18;
  IntentParameter.wrappedValue.getter();
  v40 = *(v0 + 416);
  if (!v40)
  {
LABEL_23:
    v45 = *(v0 + 632);
    v46 = *(v0 + 624);
    v74 = *(v0 + 616);
    v75 = *(v0 + 608);
    v47 = *(v0 + 584);
    v48 = *(v0 + 576);
    v76 = v39;
    v49 = *(v0 + 568);
    v50 = *(v0 + 560);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v48 + 104))(v47, enum case for LocalizedStringResource.BundleDescription.main(_:), v49);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v74 + 16))(v46, v45, v75);
    IntentDialog.init(_:)();
    v51 = type metadata accessor for IntentDialog();
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    type metadata accessor for AppIntentError();
    sub_10001DBBC(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v50, &unk_1006BE0D0);
    swift_willThrow();

    (*(v74 + 8))(v45, v75);
LABEL_30:

    goto LABEL_31;
  }

  v41 = *(v0 + 408);
  v42 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v42 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

    goto LABEL_23;
  }

  if (ICFolderNameMaxLength < String.count.getter())
  {

    sub_100197CCC();
    swift_allocError();
    v44 = 7;
    goto LABEL_20;
  }

  if (![v39 ic_isModernAccountType])
  {

    if (![v39 ic_isLegacyAccountType])
    {
      type metadata accessor for ICError(0);
      *(v0 + 464) = 219;
      sub_10015DA04(&qword_1006BFBE0);
      v71 = swift_initStackObject();
      *(v71 + 16) = xmmword_100535E30;
      *(v71 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v71 + 72) = &type metadata for String;
      *(v71 + 40) = v72;
      *(v71 + 48) = 0xD00000000000002DLL;
      *(v71 + 56) = 0x800000010056D3B0;
      *(v71 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v71 + 88) = v73;
      *(v71 + 120) = sub_1000054A4(0, &qword_1006BFEC0);
      *(v71 + 96) = v39;
      v39 = v39;
      sub_10018F334(v71);
      swift_setDeallocating();
      sub_10015DA04(&unk_1006BFA10);
      swift_arrayDestroy();
      sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      goto LABEL_21;
    }

    sub_100197CCC();
    swift_allocError();
    v44 = 6;
LABEL_20:
    *v43 = v44;
LABEL_21:
    swift_willThrow();

LABEL_29:
    goto LABEL_30;
  }

  AppDependency.wrappedValue.getter();
  v52 = *(v0 + 472);
  v53 = [v52 modernManagedObjectContext];
  *(v0 + 920) = v53;

  v54 = swift_allocObject();
  *(v0 + 928) = v54;
  v54[2] = v53;
  v54[3] = v39;
  v54[4] = v41;
  v54[5] = v40;
  v54[6] = v19;
  v55 = v39;
  v53;
  v56 = v19;
  v57 = swift_task_alloc();
  *(v0 + 936) = v57;
  *v57 = v0;
  v57[1] = sub_100339398;
  v58 = *(v0 + 680);
  v59 = *(v0 + 640);

  return NSManagedObjectContext.perform<A>(_:)(v58, sub_10033A1E4, v54, v59);
}

uint64_t sub_100337A94(uint64_t a1)
{
  v2 = *(*v1 + 832);
  *(*v1 + 848) = a1;

  return _swift_task_switch(sub_100337BB0, 0, 0);
}

uint64_t sub_100337BB0()
{
  v1 = *(v0 + 848);
  (*(*(v0 + 736) + 8))(*(v0 + 752), *(v0 + 728));
  if (v1)
  {
    v2 = (v0 + 848);
    v3 = *(v0 + 848);
    AppDependency.wrappedValue.getter();
    v4 = *(v0 + 496);
    v5 = [v4 managedObjectContextForObjectID:v3];

    if (v5)
    {
      v6 = (v0 + 424);
      v7 = swift_allocObject();
      v7[2] = v5;
      v7[3] = v3;
      v7[4] = v0 + 424;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10033A208;
      *(v8 + 24) = v7;
      *(v0 + 336) = sub_10000EFC4;
      *(v0 + 344) = v8;
      *(v0 + 304) = _NSConcreteStackBlock;
      *(v0 + 312) = 1107296256;
      *(v0 + 320) = sub_10000EAF8;
      *(v0 + 328) = &unk_100658348;
      v9 = _Block_copy((v0 + 304));
      v10 = v3;
      v11 = v5;

      [v11 performBlockAndWait:v9];

      _Block_release(v9);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if (v11)
      {
        __break(1u);
        return NSManagedObjectContext.perform<A>(_:)(v12, v13, v14, v15);
      }

      v16 = *v6;
      v17 = sub_10033A208;
      v18 = *v2;
      if (!*v6)
      {
        goto LABEL_22;
      }

LABEL_15:
      *(v0 + 912) = v16;
      *(v0 + 904) = v17;
      *(v0 + 896) = v7;
      *(v0 + 888) = v18;
      v34 = v16;
      IntentParameter.wrappedValue.getter();
      v35 = *(v0 + 416);
      v71 = v17;
      if (v35)
      {
        v36 = *(v0 + 408);
        v37 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v37 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          if (ICFolderNameMaxLength < String.count.getter())
          {

            sub_100197CCC();
            swift_allocError();
            v39 = 7;
LABEL_21:
            *v38 = v39;
            swift_willThrow();

LABEL_23:
LABEL_26:

            AppDependency.wrappedValue.getter();
            Logger.init(subsystem:category:)();
            swift_errorRetain();
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = 138412290;
              swift_errorRetain();
              v53 = _swift_stdlib_bridgeErrorToNSError();
              *(v51 + 4) = v53;
              *v52 = v53;
              _os_log_impl(&_mh_execute_header, v49, v50, "Folder creation failed with error: %@", v51, 0xCu);
              sub_1000073B4(v52, &qword_1006C1440);
            }

            v54 = *(v0 + 552);
            v55 = *(v0 + 544);
            v56 = *(v0 + 536);

            (*(v55 + 8))(v54, v56);
            swift_willThrow();
            sub_10000C840(v71);

            v57 = *(v0 + 8);

            return v57();
          }

          if (![v34 ic_isModernAccountType])
          {

            if (![v34 ic_isLegacyAccountType])
            {
              type metadata accessor for ICError(0);
              *(v0 + 464) = 219;
              sub_10015DA04(&qword_1006BFBE0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_100535E30;
              *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(inited + 72) = &type metadata for String;
              *(inited + 40) = v65;
              *(inited + 48) = 0xD00000000000002DLL;
              *(inited + 56) = 0x800000010056D3B0;
              *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(inited + 88) = v66;
              *(inited + 120) = sub_1000054A4(0, &qword_1006BFEC0);
              *(inited + 96) = v34;
              v67 = v34;
              sub_10018F334(inited);
              swift_setDeallocating();
              sub_10015DA04(&unk_1006BFA10);
              swift_arrayDestroy();
              sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
              _BridgedStoredNSError.init(_:userInfo:)();
              swift_willThrow();

              goto LABEL_23;
            }

            sub_100197CCC();
            swift_allocError();
            v39 = 6;
            goto LABEL_21;
          }

          AppDependency.wrappedValue.getter();
          v58 = *(v0 + 472);
          v59 = [v58 modernManagedObjectContext];
          *(v0 + 920) = v59;

          v60 = swift_allocObject();
          *(v0 + 928) = v60;
          v60[2] = v59;
          v60[3] = v34;
          v60[4] = v36;
          v60[5] = v35;
          v60[6] = v18;
          v61 = v34;
          v59;
          v62 = v18;
          v63 = swift_task_alloc();
          *(v0 + 936) = v63;
          *v63 = v0;
          v63[1] = sub_100339398;
          v12 = *(v0 + 680);
          v15 = *(v0 + 640);
          v13 = sub_10033A1E4;
          v14 = v60;

          return NSManagedObjectContext.perform<A>(_:)(v12, v13, v14, v15);
        }
      }

      v42 = *(v0 + 632);
      v43 = *(v0 + 624);
      v68 = *(v0 + 616);
      v69 = *(v0 + 608);
      v70 = v34;
      v44 = *(v0 + 584);
      v45 = *(v0 + 576);
      v46 = *(v0 + 568);
      v47 = *(v0 + 560);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v45 + 104))(v44, enum case for LocalizedStringResource.BundleDescription.main(_:), v46);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentParameter.projectedValue.getter();
      (*(v68 + 16))(v43, v42, v69);
      IntentDialog.init(_:)();
      v48 = type metadata accessor for IntentDialog();
      (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      type metadata accessor for AppIntentError();
      sub_10001DBBC(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_1000073B4(v47, &unk_1006BE0D0);
      swift_willThrow();

      (*(v68 + 8))(v42, v69);
      goto LABEL_26;
    }

    v19 = *v2;
  }

  else
  {
    v19 = 0;
  }

  *(v0 + 856) = v19;
  v20 = *(v0 + 808);
  v21 = *(v0 + 800);
  v22 = *(v0 + 776);
  sub_100006038(*(v0 + 528) + *(v0 + 952), v22, &unk_1006BCA20);
  if (v20(v22, 1, v21) == 1)
  {
    v23 = (v0 + 856);
    sub_1000073B4(*(v0 + 776), &unk_1006BCA20);
    v16 = *(v0 + 424);
    if (v16)
    {
      v7 = 0;
      v17 = 0;
      v18 = *v23;
    }

    else
    {
      AppDependency.wrappedValue.getter();
      v33 = *(v0 + 432);
      v16 = [v33 defaultAccountObjectID];

      v17 = 0;
      v7 = 0;
      *(v0 + 424) = v16;
      v18 = *v23;
      if (!v16)
      {
LABEL_22:
        v71 = v17;
        type metadata accessor for ICError(0);
        *(v0 + 448) = 219;
        sub_10015DA04(&qword_1006BFBE0);
        v40 = swift_initStackObject();
        *(v40 + 16) = xmmword_100531E30;
        *(v40 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v40 + 72) = &type metadata for String;
        *(v40 + 40) = v41;
        *(v40 + 48) = 0xD00000000000001DLL;
        *(v40 + 56) = 0x800000010056D390;
        sub_10018F334(v40);
        swift_setDeallocating();
        sub_1000073B4(v40 + 32, &unk_1006BFA10);
        sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
        goto LABEL_23;
      }
    }

    goto LABEL_15;
  }

  v24 = *(v0 + 776);
  v25 = *(v0 + 720);
  v26 = *(v0 + 712);
  v27 = *(v0 + 704);
  v28 = *(v0 + 696);
  (*(v27 + 16))(v26, v24, v28);
  sub_10019E4D0(v24, type metadata accessor for AccountEntity);
  (*(v27 + 32))(v25, v26, v28);
  AppDependency.wrappedValue.getter();
  v29 = *(v0 + 480);
  *(v0 + 864) = v29;
  v30 = swift_task_alloc();
  *(v0 + 872) = v30;
  *v30 = v0;
  v30[1] = sub_1003388BC;
  v31 = *(v0 + 720);

  return (sub_100314C68)(v31, v29);
}

uint64_t sub_1003388BC(uint64_t a1)
{
  v2 = *(*v1 + 864);
  *(*v1 + 880) = a1;

  return _swift_task_switch(sub_1003389D8, 0, 0);
}

uint64_t sub_1003389D8()
{
  v1 = *(v0 + 880);
  (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
  v2 = *(v0 + 424);
  *(v0 + 424) = v1;

  v3 = *(v0 + 880);
  if (v3)
  {
    v4 = *(v0 + 856);
  }

  else
  {
    AppDependency.wrappedValue.getter();
    v5 = *(v0 + 432);
    v3 = [v5 defaultAccountObjectID];

    *(v0 + 424) = v3;
    v4 = *(v0 + 856);
    if (!v3)
    {
      type metadata accessor for ICError(0);
      *(v0 + 448) = 219;
      sub_10015DA04(&qword_1006BFBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v28;
      *(inited + 48) = 0xD00000000000001DLL;
      *(inited + 56) = 0x800000010056D390;
      sub_10018F334(inited);
      swift_setDeallocating();
      sub_1000073B4(inited + 32, &unk_1006BFA10);
      sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      goto LABEL_19;
    }
  }

  *(v0 + 912) = v3;
  *(v0 + 896) = 0u;
  *(v0 + 888) = v4;
  v6 = v3;
  IntentParameter.wrappedValue.getter();
  v7 = *(v0 + 416);
  if (!v7)
  {
LABEL_13:
    v12 = *(v0 + 632);
    v13 = *(v0 + 624);
    v42 = *(v0 + 616);
    v43 = *(v0 + 608);
    v14 = *(v0 + 584);
    v15 = *(v0 + 576);
    v44 = v6;
    v16 = *(v0 + 568);
    v17 = *(v0 + 560);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v15 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v42 + 16))(v13, v12, v43);
    IntentDialog.init(_:)();
    v18 = type metadata accessor for IntentDialog();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    type metadata accessor for AppIntentError();
    sub_10001DBBC(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v17, &unk_1006BE0D0);
    swift_willThrow();

    (*(v42 + 8))(v12, v43);
LABEL_20:

    AppDependency.wrappedValue.getter();
    Logger.init(subsystem:category:)();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Folder creation failed with error: %@", v31, 0xCu);
      sub_1000073B4(v32, &qword_1006C1440);
    }

    v34 = *(v0 + 552);
    v35 = *(v0 + 544);
    v36 = *(v0 + 536);

    (*(v35 + 8))(v34, v36);
    swift_willThrow();
    sub_10000C840(0);

    v37 = *(v0 + 8);

    return v37();
  }

  v8 = *(v0 + 408);
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_13;
  }

  if (ICFolderNameMaxLength < String.count.getter())
  {

    sub_100197CCC();
    swift_allocError();
    v11 = 7;
    goto LABEL_10;
  }

  if (![v6 ic_isModernAccountType])
  {

    if (![v6 ic_isLegacyAccountType])
    {
      type metadata accessor for ICError(0);
      *(v0 + 464) = 219;
      sub_10015DA04(&qword_1006BFBE0);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_100535E30;
      *(v38 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v38 + 72) = &type metadata for String;
      *(v38 + 40) = v39;
      *(v38 + 48) = 0xD00000000000002DLL;
      *(v38 + 56) = 0x800000010056D3B0;
      *(v38 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v38 + 88) = v40;
      *(v38 + 120) = sub_1000054A4(0, &qword_1006BFEC0);
      *(v38 + 96) = v6;
      v6 = v6;
      sub_10018F334(v38);
      swift_setDeallocating();
      sub_10015DA04(&unk_1006BFA10);
      swift_arrayDestroy();
      sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      goto LABEL_11;
    }

    sub_100197CCC();
    swift_allocError();
    v11 = 6;
LABEL_10:
    *v10 = v11;
LABEL_11:
    swift_willThrow();

LABEL_19:
    goto LABEL_20;
  }

  AppDependency.wrappedValue.getter();
  v19 = *(v0 + 472);
  v20 = [v19 modernManagedObjectContext];
  *(v0 + 920) = v20;

  v21 = swift_allocObject();
  *(v0 + 928) = v21;
  v21[2] = v20;
  v21[3] = v6;
  v21[4] = v8;
  v21[5] = v7;
  v21[6] = v4;
  v22 = v6;
  v20;
  v23 = v4;
  v24 = swift_task_alloc();
  *(v0 + 936) = v24;
  *v24 = v0;
  v24[1] = sub_100339398;
  v25 = *(v0 + 680);
  v26 = *(v0 + 640);

  return NSManagedObjectContext.perform<A>(_:)(v25, sub_10033A1E4, v21, v26);
}

uint64_t sub_100339398()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_1003397A8;
  }

  else
  {
    v2 = sub_1003394CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003394CC()
{
  v15 = *(v0 + 904);
  v13 = *(v0 + 888);
  v14 = *(v0 + 912);
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);

  sub_1002C3358(v2, v1);
  sub_10028671C(v1, v3);
  v6 = _s11MobileNotes16OpenFolderIntentVACycfC_0();
  v8 = v7;
  v10 = v9;
  sub_10028671C(v3, v4);
  sub_10028671C(v4, v5);
  IntentParameter.wrappedValue.setter();
  sub_10019E4D0(v4, type metadata accessor for FolderEntity);
  sub_10019E4D0(v3, type metadata accessor for FolderEntity);
  *(v0 + 384) = v6;
  *(v0 + 392) = v8;
  *(v0 + 400) = v10;
  sub_10001DBBC(&qword_1006C5420, type metadata accessor for FolderEntity);
  sub_10002116C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_10019E4D0(v1, type metadata accessor for FolderEntity);

  sub_10000C840(v15);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003397A8()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);

  v13 = *(v0 + 904);
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Folder creation failed with error: %@", v5, 0xCu);
    sub_1000073B4(v6, &qword_1006C1440);
  }

  v8 = *(v0 + 552);
  v9 = *(v0 + 544);
  v10 = *(v0 + 536);

  (*(v9 + 8))(v8, v10);
  swift_willThrow();
  sub_10000C840(v13);

  v11 = *(v0 + 8);

  return v11();
}

void sub_100339A98(void *a1, uint64_t a2, void **a3)
{
  v4 = [a1 ic_existingObjectWithID:a2];
  if (v4)
  {
    v5 = v4;
    v6 = [swift_dynamicCastObjCProtocolUnconditional() account];
    v7 = [v6 objectID];

    v8 = *a3;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_100339B54(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v30 = 0;
  v7 = [a1 existingObjectWithID:a2 error:&v30];
  v8 = v30;
  if (!v7)
  {
    v23 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v9 = v7;
  v28 = a4;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = objc_opt_self();
  v12 = v8;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 deduplicatingTitle:v13 account:v10];

  if (v14)
  {
    v15 = [v11 newFolderInAccount:v10];
    [v15 setTitle:v14];

    if (!a3)
    {
      goto LABEL_6;
    }

    v30 = 0;
    v16 = a3;
    v17 = [a1 existingObjectWithID:v16 error:{&v30, v28}];
    v18 = v30;
    if (v17)
    {
      v19 = v17;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClassUnconditional();
      v21 = v18;
      [v15 setParent:v20];

LABEL_6:
      v30 = 0;
      if ([a1 save:{&v30, v28}])
      {
        v22 = v30;
        sub_1004B1448(v15, v29);
      }

      else
      {
        v26 = v30;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      goto LABEL_12;
    }

    v27 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v25;
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x800000010056D0E0;
    sub_10018F334(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_10001DBBC(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

LABEL_12:
}

uint64_t (*sub_100339EF0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_100339FA0()
{
  v0 = sub_10015DA04(&qword_1006C4570);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C4578);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6120657461657243;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4588);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x7265646C6F6620;
  v3._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10033A148(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A600;

  return CreateFolderIntent.perform()(a1);
}

void sub_10033A3F4()
{
  sub_10033A4F8();
  if (v0 <= 0x3F)
  {
    sub_10033A5EC(319, &unk_1006C4640, type metadata accessor for AccountEntity);
    if (v1 <= 0x3F)
    {
      sub_10033A5EC(319, &qword_1006C1670, type metadata accessor for FolderEntity);
      if (v2 <= 0x3F)
      {
        sub_10033A640();
        if (v3 <= 0x3F)
        {
          sub_10033A690();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10033A4F8()
{
  if (!qword_1006C4620)
  {
    sub_10017992C(&qword_1006C0318);
    sub_10033A568();
    v0 = type metadata accessor for IntentParameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C4620);
    }
  }
}

unint64_t sub_10033A568()
{
  result = qword_1006C4630;
  if (!qword_1006C4630)
  {
    sub_10017992C(&qword_1006C0318);
    sub_10001CAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4630);
  }

  return result;
}

void sub_10033A5EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10033A640()
{
  if (!qword_1006C4650)
  {
    v0 = type metadata accessor for AppDependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C4650);
    }
  }
}

void sub_10033A690()
{
  if (!qword_1006C4658)
  {
    sub_1000054A4(255, &qword_1006C4660);
    v0 = type metadata accessor for AppDependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C4658);
    }
  }
}

void *sub_10033A6F8(uint64_t a1)
{
  v35 = type metadata accessor for Participant();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_100189444(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = Participant.handle.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_100189444((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000153F8(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000153F8(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10033AA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  v7 = v6;
  v11 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v11 - 8);
  v13 = v23 - v12;
  sub_100006038(a1, v23 - v12, &qword_1006C2170);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000073B4(v13, &qword_1006C2170);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v7;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}