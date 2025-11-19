uint64_t sub_100D048E0()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1007134B0;
  }

  else
  {
    v4 = sub_10085FBEC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D04A3C()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100D04B98;
  }

  else
  {
    v4 = sub_100867724;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D04B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D04BFC(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10085E048;

  return v7(0, 3, ObjectType, a2);
}

uint64_t sub_100D04D4C(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100D04E9C;

  return v7(0, 2, ObjectType, a2);
}

uint64_t sub_100D04E9C()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10085FC50;
  }

  else
  {
    v4 = sub_100867724;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D05140(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController];
  v4 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v4)
  {
    if (*(v4 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1)
    {
      v5 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs;
      v6 = swift_beginAccess();
      v7 = *(v3 + v5);
      v12 = a1;
      __chkstk_darwin(v6);
      v11[2] = &v12;

      v8 = sub_100C33540(sub_100D160D0, v11, v7);

      if (v8)
      {
        return 1;
      }
    }
  }

  v10 = type metadata accessor for CRLUSDZRep(0);
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "directlyManagesVisibilityOfKnob:", a1);
}

void sub_100D052F0(char a1)
{
  v3 = [v1 interactiveCanvasController];
  if (v3)
  {
    v11 = v3;
    v4 = [v3 layerHost];
    if (v4)
    {
      v5 = [v4 miniFormatterPresenter];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = [v1 interactiveCanvasController];
        if (v6 && (v7 = v6, v8 = [v6 editorController], v7, v8) && (v9 = objc_msgSend(v8, "selectionPath"), v8, v9))
        {
          [v5 presentMiniFormatterForSelectionPath:v9];
          if (a1)
          {
            v10 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter;
            if (*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter) != 1)
            {
              [v1 performSelector:"hideMiniFormatterIfNecessary" withObject:0 afterDelay:3.25];
              swift_unknownObjectRelease();

              *(v1 + v10) = 1;
              return;
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_100D05494()
{
  v1 = [v0 interactiveCanvasController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layerHost];

    if (v3)
    {
      v4 = [v3 miniFormatterPresenter];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter;
        if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter) == 1)
        {
          [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:"hideMiniFormatterIfNecessary" object:0];
          *(v0 + v5) = 0;
        }

        v6 = [v0 interactiveCanvasController];
        if (!v6 || (v7 = v6, v8 = [v6 layerHost], v7, !v8) || (v9 = objc_msgSend(v8, "miniFormatterPresenter"), swift_unknownObjectRelease(), !v9) || (v10 = objc_msgSend(v9, "isPresentingSecondLayerPopover"), swift_unknownObjectRelease(), (v10 & 1) == 0))
        {
          [v4 dismissMiniFormatterForRep:v0];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_100D05668()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v23 - v5);
  v7 = type metadata accessor for URL();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v9, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  v10 = sub_1005B981C(&unk_101A1B808);
  v11 = *(v10 + 48);
  swift_unknownObjectRelease();
  v12 = (v6 + *(v10 + 80));
  v13 = *v12;
  v25 = v12[1];
  v26 = v13;
  v14 = v12[2];
  v23 = v12[3];
  v24 = v14;
  v15 = v12[4];
  v16 = v12[5];
  v17 = v6 + v11;
  v18 = v7;
  v19 = v27;
  (*(v28 + 32))(v27, v17, v18);
  if (v16 >> 62)
  {
    sub_100863E8C(v26, v25, v24, v23, v15, v16);
    return (*(v28 + 8))(v19, v18);
  }

  else
  {

    v20 = *(sub_1005B981C(&qword_101A1B820) + 64);
    *v3 = sub_100D0BB70();
    v3[8] = 0;
    v21 = v28;
    (*(v28 + 16))(&v3[v20], v19, v18);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100D15E6C(v3, v0 + v9, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    result = (*(v21 + 8))(v19, v18);
    *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended) = 1;
  }

  return result;
}

void sub_100D059F0()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v19 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended;
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended) == 1)
  {
    v12 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    sub_100D13C98(v0 + v12, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v8;
      v13 = *v6;
      v19 = sub_1005B981C(&qword_101A1B820);
      v20 = v0;
      v21 = *(v19 + 64);
      v14 = sub_100D0BB70();
      type metadata accessor for CRLAsset();
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = v22;
        (*(v22 + 32))(v10, v6 + v21, v7);
        v17 = v20;
        v18 = *(v19 + 64);
        *v3 = sub_100D0BB70();
        v3[8] = 1;
        (*(v16 + 16))(&v3[v18], v10, v7);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100D15E6C(v3, v17 + v12, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        swift_endAccess();
        sub_100CF8070();
        sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        (*(v16 + 8))(v10, v7);
        *(v17 + v11) = 0;
      }

      else
      {
        (*(v22 + 8))(v6 + v21, v7);
      }
    }

    else
    {
      sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }
  }
}

void sub_100D05DB0()
{
  if (v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] != 1)
  {
    return;
  }

  v1 = [v0 interactiveCanvasController];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [v1 editorController];
  if (!v3 || (v4 = v3, v5 = [v3 selectionPath], v4, !v5))
  {
    v5 = v2;
LABEL_11:

LABEL_12:
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      return;
    }

    goto LABEL_78;
  }

  v6 = [v2 selectionModelTranslator];
  if (!v6)
  {

    goto LABEL_11;
  }

  v7 = v6;
  v64 = v5;
  v8 = [v6 boardItemsForSelectionPath:v5];

  type metadata accessor for CRLBoardItem(0);
  sub_100D15398(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = v2;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_83;
  }

  v10 = _swiftEmptySetSingleton;
LABEL_8:
  v74 = v10;
  v11 = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v75;
    v12 = v76;
    v13 = v77;
    v14 = v78;
    v15 = v79;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v9 + 32);
    v12 = v9 + 56;
    v17 = ~v16;
    v18 = -v16;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(v9 + 56);
    v13 = v17;
  }

  v20 = (v13 + 64) >> 6;
  v21 = &selRef_rangeOfColumns_;
  v67 = v12;
  v68 = v11;
  v66 = v20;
  while (v11 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v25 = v73, v70 = v15, v71 = v14, !v73))
    {
LABEL_75:
      sub_100035F90();

      return;
    }

LABEL_31:
    v26 = [v2 v21[284]];
    if (v26)
    {
      sub_100E6CD10(&v73, v26);
    }

    type metadata accessor for CRLGroupItem();
    if (!swift_dynamicCastClass())
    {

      goto LABEL_21;
    }

    v27 = sub_1005F36D4();
    v9 = v27;
    if (!(v27 >> 62))
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_36;
      }

      goto LABEL_73;
    }

    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
LABEL_36:
      v65 = v25;
      if (v28 >= 1)
      {
        v29 = v28;
        v30 = 0;
        v72 = v28;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v9 + 32 + 8 * v30);
          }

          v32 = v31;
          v33 = [v2 v21[284]];
          if (v33)
          {
            v34 = v74;
            if ((v74 & 0xC000000000000001) == 0)
            {
              v49 = v33;
              sub_100006370(0, &qword_1019FB7A0);
              v50 = *(v34 + 40);
              v51 = v49;
              v52 = NSObject._rawHashValue(seed:)(v50);
              v53 = -1 << *(v34 + 32);
              v54 = v52 & ~v53;
              if ((*(v34 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
              {
                v55 = ~v53;
                while (1)
                {
                  v56 = *(*(v34 + 48) + 8 * v54);
                  v57 = static NSObject.== infix(_:_:)();

                  if (v57)
                  {
                    break;
                  }

                  v54 = (v54 + 1) & v55;
                  if (((*(v34 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                  {
                    v34 = v74;
                    v2 = v69;
                    goto LABEL_60;
                  }
                }

                v2 = v69;
                v21 = &selRef_rangeOfColumns_;
                v29 = v72;
              }

              else
              {
LABEL_60:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v73 = v34;
                v59 = v51;
                sub_100E7D93C(v59, v54, isUniquelyReferenced_nonNull_native);

                v74 = v73;
                v21 = &selRef_rangeOfColumns_;
                v29 = v72;
              }

              goto LABEL_40;
            }

            if (v74 < 0)
            {
              v35 = v74;
            }

            else
            {
              v35 = v74 & 0xFFFFFFFFFFFFFF8;
            }

            v36 = v33;

            v37 = __CocoaSet.member(for:)();

            if (!v37)
            {
              v38 = __CocoaSet.count.getter();
              if (__OFADD__(v38, 1))
              {
                goto LABEL_77;
              }

              v39 = sub_100E72F04(v35, v38 + 1);
              v73 = v39;
              v40 = v39[2];
              if (v39[3] <= v40)
              {
                sub_100E75374(v40 + 1);
                v39 = v73;
              }

              v41 = v39[5];
              v42 = v36;
              v43 = NSObject._rawHashValue(seed:)(v41);
              v44 = (v39 + 7);
              v45 = -1 << *(v39 + 32);
              v46 = v43 & ~v45;
              v47 = v46 >> 6;
              if (((-1 << v46) & ~v39[(v46 >> 6) + 7]) != 0)
              {
                v48 = __clz(__rbit64((-1 << v46) & ~v39[(v46 >> 6) + 7])) | v46 & 0x7FFFFFFFFFFFFFC0;
                v29 = v72;
              }

              else
              {
                v60 = 0;
                v61 = (63 - v45) >> 6;
                v29 = v72;
                do
                {
                  if (++v47 == v61 && (v60 & 1) != 0)
                  {
                    __break(1u);
                    goto LABEL_76;
                  }

                  v62 = v47 == v61;
                  if (v47 == v61)
                  {
                    v47 = 0;
                  }

                  v60 |= v62;
                  v63 = *&v44[8 * v47];
                }

                while (v63 == -1);
                v48 = __clz(__rbit64(~v63)) + (v47 << 6);
              }

              *&v44[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
              *(v39[6] + 8 * v48) = v42;
              ++v39[2];

              v74 = v39;
              goto LABEL_40;
            }

            sub_100006370(0, &qword_1019FB7A0);
            swift_dynamicCast();
          }

LABEL_40:
          if (++v30 == v29)
          {

            goto LABEL_74;
          }
        }
      }

      __break(1u);
LABEL_83:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1005BFCB4(_swiftEmptyArrayStorage);
      }

      else
      {
        v10 = _swiftEmptySetSingleton;
      }

      v2 = v69;
      goto LABEL_8;
    }

LABEL_73:

LABEL_74:

LABEL_21:
    v15 = v70;
    v14 = v71;
    v12 = v67;
    v11 = v68;
    v20 = v66;
  }

  v22 = v14;
  v23 = v15;
  v24 = v14;
  if (v15)
  {
LABEL_27:
    v70 = (v23 - 1) & v23;
    v71 = v24;
    v25 = *(*(v11 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v25)
    {
      goto LABEL_75;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      goto LABEL_75;
    }

    v23 = *(v12 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  if (_CocoaArrayWrapper.endIndex.getter())
  {

    sub_1005BFCB4(_swiftEmptyArrayStorage);
  }
}

void sub_100D0656C()
{
  v1 = [v0 repForSelecting];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isSelected];

    if (v3)
    {
      return;
    }
  }

  sub_100D05DB0();
  v5 = v4;
  v20 = v0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
  }

  v13 = (v7 + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100006370(0, &qword_1019FB7A0), swift_dynamicCast(), (v16 = v21) == 0))
      {
LABEL_24:
        sub_100035F90();
        return;
      }

      goto LABEL_21;
    }

    v14 = v8;
    v15 = v9;
    if (!v9)
    {
      break;
    }

LABEL_17:
    v9 = (v15 - 1) & v15;
    v16 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_21:
    v17 = [v16 repForSelecting];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for CRLUSDZRep(0);
      if (swift_dynamicCastClass())
      {

        goto LABEL_11;
      }

      [v18 frameInUnscaledCanvas];
      v19 = [v20 intersectsUnscaledRect:?];

      if (v19)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_11:
    }
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_24;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100D0686C()
{
  v1 = [v0 interactiveCanvasController];
  if (v1)
  {
    v2 = v1;
    if ([v1 isInDynamicOperation] && objc_msgSend(v0, "isSelected") && (v3 = objc_msgSend(v2, "tmCoordinator"), v4 = objc_msgSend(v3, "controllingTM"), v3, v4) && (v5 = objc_msgSend(v4, "tracker"), swift_unknownObjectRelease(), v5))
    {
      v6 = &OBJC_PROTOCOL___CRLCanvasRepRotateTracking;
      v7 = [v5 conformsToProtocol:v6];

      swift_unknownObjectRelease();
      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_100D069C8()
{
  v1 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView);
  v3 = v2;
  if (!v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState);
    v5 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8);
    v6 = v5 >> 6;
    if (v5 >> 6 > 1)
    {
      if (v6 == 2)
      {
        v20 = [objc_allocWithZone(UIImage) initWithCGImage:v4];
        v3 = [objc_allocWithZone(UIImageView) initWithImage:v20];

        [v3 setContentMode:2];
        if (v5)
        {
          v21 = sub_100D075C8();
          sub_100AC85E4();

          v22 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView;
          v23 = [*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView) superview];
          if (!v23 || (v24 = v23, sub_100006370(0, &qword_1019F6D00), v25 = v3, LODWORD(v53) = static NSObject.== infix(_:_:)(), v24, v25, (v53 & 1) == 0))
          {
            [*(v0 + v22) removeFromSuperview];
            [v3 addSubview:*(v0 + v22)];
            sub_100D07114();
          }

          [*(v0 + v22) setHidden:{0, v53}];
        }

        v26 = *(v0 + v1);
        *(v0 + v1) = v3;
        v27 = v3;

        goto LABEL_15;
      }

      if (v4 == 1 && v5 == 192)
      {
LABEL_21:
        v3 = 0;
        goto LABEL_22;
      }
    }

    else if (v6)
    {
      v3 = *(v4 + 32);
      v7 = *(v4 + 48);
      v8 = (v7 >> 4) & 3;
      if (!v8)
      {
        [v3 setAutoresizingMask:0];
        goto LABEL_22;
      }

      if (v8 == 1)
      {
        if ((v7 & 0xC0) == 0x80)
        {
          v9 = *(v4 + 40);

          [v3 frame];
          v11 = v10;
          v13 = v12;
          v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v10, v12}];
          v15 = [objc_allocWithZone(UIImage) initWithCGImage:v9];
          v16 = [objc_allocWithZone(UIImageView) initWithImage:v15];

          [v3 setAlpha:0.0];
          [v3 setFrame:{0.0, 0.0, v11, v13}];
          v17 = v16;
          [v17 setFrame:{0.0, 0.0, v11, v13}];
          [v14 addSubview:v3];
          [v14 addSubview:v17];
          [v3 setAutoresizingMask:18];
          [v17 setAutoresizingMask:18];

          v18 = *(v0 + v1);
          *(v0 + v1) = v14;
          v19 = v14;

          sub_100D15590(v4, v5);
          v3 = v14;
          goto LABEL_22;
        }

        sub_100D1548C(*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState), *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8));
        v52 = v3;
        [v52 setAlpha:0.0];
        [v52 setAutoresizingMask:0];
LABEL_15:
        sub_100D15590(v4, v5);
        goto LABEL_22;
      }
    }

    v54 = objc_opt_self();
    v28 = [v54 _atomicIncrementAssertCount];
    v55 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v55);
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v37 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v37;
    v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v38;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 1895;
    v40 = v55;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 192) = v40;
    v41 = v29;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "Unexpectedly returning nil from contentPlatformView.", 52, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    [v54 handleFailureInFunction:v47 file:v48 lineNumber:1895 isFatal:0 format:v49 args:v46];

    goto LABEL_21;
  }

LABEL_22:
  v50 = v2;
  return v3;
}

void sub_100D07114()
{
  v1 = sub_100D075C8();
  v37 = [v1 superview];

  if (v37)
  {
    v2 = [v0 canvas];
    if (v2)
    {
      v3 = v2;
      [v2 viewScale];
      v5 = v4;

      [v0 boundsForStandardKnobs];
      v10 = sub_100120414(v6, v7, v8, v9);
      v12 = sub_10011F340(v10, v11, v5);
      [*&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView] setFrame:{v12 + -25.0, v13 + -25.0, 50.0, 50.0}];
    }

    else
    {
      v14 = objc_opt_self();
      v15 = [v14 _atomicIncrementAssertCount];
      v38 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v38);
      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v17 lastPathComponent];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v15;
      v24 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v24;
      v25 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v25;
      *(inited + 72) = v16;
      *(inited + 136) = &type metadata for String;
      v26 = sub_1000053B0();
      *(inited + 112) = v19;
      *(inited + 120) = v21;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v26;
      *(inited + 152) = 2113;
      v27 = v38;
      *(inited + 216) = v24;
      *(inited + 224) = v25;
      *(inited + 192) = v27;
      v28 = v16;
      v29 = v27;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v32 = swift_allocObject();
      v32[2] = 8;
      v32[3] = 0;
      v32[4] = 0;
      v32[5] = 0;
      v33 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      [v14 handleFailureInFunction:v34 file:v35 lineNumber:2113 isFatal:0 format:v36 args:v33];
    }
  }
}

char *sub_100D075C8()
{
  v1 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView];
  }

  else
  {
    v4 = sub_10011ECB4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    objc_allocWithZone(type metadata accessor for CRLIndeterminateRoundSpinnerView());
    v11 = v0;
    v12 = sub_100AC7244(v0, "handleSpinnerTapWithSender:", v4, v6, v8, v10);
    [v12 setHidden:1];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = *&v0[v1];
    *&v11[v1] = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_100D07734()
{
  v1 = [v0 canvas];
  if (v1)
  {
    v2 = v1;
    [v1 viewScale];
    v4 = v3;

    [v0 boundsForStandardKnobs];
    if (v4 * CGRectGetWidth(v32) <= 60.0 || ([v0 boundsForStandardKnobs], v4 * CGRectGetHeight(v33) <= 60.0))
    {
      v5 = sub_100D075C8();
      [v5 setHidden:1];

      *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall) = 1;
    }

    else
    {
      sub_100D07114();
      if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall) == 1)
      {
        *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall) = 0;
        if ((*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isZooming) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isResizing) & 1) == 0)
        {
          v29 = sub_100D075C8();
          [v29 setHidden:0];
        }
      }
    }
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 2167;
    v19 = v30;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:2167 isFatal:0 format:v28 args:v25];
  }
}

void sub_100D07C80(_BYTE *a1, uint64_t a2, char a3, const char **a4, void (*a5)(id))
{
  a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isZooming] = a3;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CRLUSDZRep(0);
  v7 = *a4;
  v8 = v10.receiver;
  v9 = objc_msgSendSuper2(&v10, v7);
  a5(v9);
}

void sub_100D07CF8()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8) & 0xC0) == 0x80 && (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8))
  {
    v1 = sub_100D075C8();
    v2 = [v1 layer];

    if (v2)
    {
      v26 = v2;
      sub_100CE6920(0.15);
    }

    else
    {
      v3 = objc_opt_self();
      v4 = [v3 _atomicIncrementAssertCount];
      v27 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v27);
      StaticString.description.getter();
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = String._bridgeToObjectiveC()();

      v7 = [v6 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v13;
      v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 2223;
      v16 = v27;
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      [v3 handleFailureInFunction:v23 file:v24 lineNumber:2223 isFatal:0 format:v25 args:v22];
    }
  }
}

void sub_100D08168()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8) & 0xC0) == 0x80 && (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8))
  {
    v50 = v0;
    v1 = sub_100D075C8();
    v2 = [v1 isHidden];

    if (v2)
    {
      v3 = objc_opt_self();
      v4 = [v3 _atomicIncrementAssertCount];
      v51[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v51);
      StaticString.description.getter();
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = String._bridgeToObjectiveC()();

      v7 = [v6 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v13;
      v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 2231;
      v16 = v51[0];
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Trying to fade out while spinner view is hidden.", 48, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      [v3 handleFailureInFunction:v23 file:v24 lineNumber:2231 isFatal:0 format:v25 args:v22];
    }

    v26 = [*(v50 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView) layer];
    if (v26)
    {
      v27 = v26;
      sub_100CE67E4(0.15);
      v28 = v27;
    }

    else
    {
      v29 = objc_opt_self();
      v30 = [v29 _atomicIncrementAssertCount];
      v51[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v51);
      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v32 lastPathComponent];

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_10146CA70;
      *(v38 + 56) = &type metadata for Int32;
      *(v38 + 64) = &protocol witness table for Int32;
      *(v38 + 32) = v30;
      v39 = sub_100006370(0, &qword_1019F4D30);
      *(v38 + 96) = v39;
      v40 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v38 + 104) = v40;
      *(v38 + 72) = v31;
      *(v38 + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(v38 + 112) = v34;
      *(v38 + 120) = v36;
      *(v38 + 176) = &type metadata for UInt;
      *(v38 + 184) = &protocol witness table for UInt;
      *(v38 + 144) = v41;
      *(v38 + 152) = 2233;
      v42 = v51[0];
      *(v38 + 216) = v39;
      *(v38 + 224) = v40;
      *(v38 + 192) = v42;
      v43 = v31;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      [v29 handleFailureInFunction:v49 file:v27 lineNumber:2233 isFatal:0 format:v28 args:v48];
    }
  }
}

void *sub_100D08A40()
{
  result = _swiftEmptyArrayStorage;
  v2 = v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8);
  if ((v3 & 0xC0) == 0x40)
  {
    v4 = *v2;
    v5 = *(*v2 + 48);
    if ((v5 & 0x30) == 0x20)
    {
      v6 = v4[4];
      v7 = v4[5];
      sub_100D1548C(v4, v3);
      sub_100D15ED4(v6, v7, v5);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100D15590(v4, v3);
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_100D08B34(uint64_t a1)
{
  v3 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLUSDZRep(0);
  v17.receiver = v1;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, "processChangedProperty:", a1);
  if (a1 == 19)
  {
    swift_storeEnumTagMultiPayload();
    v10 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    sub_100D15E6C(v5, v1 + v10, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    sub_100D13C38(v5, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  else if (a1 == 44)
  {
    swift_storeEnumTagMultiPayload();
    sub_100CF729C(v8);
  }

  v11 = [v1 layout];
  [v11 invalidateFrame];

  v12 = [v1 layout];
  [v12 invalidateExteriorWrap];

  [v1 invalidateKnobPositions];
  [v1 setNeedsDisplay];
  v13 = [v1 canvas];
  if (v13)
  {
    v14 = v13;
    v15 = [v1 layout];
    [v14 canvasInvalidatedForLayout:v15];
  }
}

void sub_100D08DE0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for CRLUSDZRep(0);
  v33.receiver = v1;
  v33.super_class = v6;
  objc_msgSendSuper2(&v33, "updateRenderableGeometryFromLayout:", a1);
  if ((v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isResizing] & 1) == 0)
  {
    v7 = sub_100D075C8();
    v8 = [v7 isHidden];

    if ((v8 & 1) == 0)
    {
      sub_100D07114();
    }
  }

  v9 = &v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  v10 = v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
  if ((v10 & 0xC0) == 0x40)
  {
    v11 = *v9;
    v31 = *(*v9 + 16);
    if ((*(v11 + 48) & 0x30) == 0x20)
    {
      v12 = *(v11 + 32);

      [v1 layerFrameInScaledCanvasRelativeToParent];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [v1 i_layerTransform];
      [v12 setIfDifferentFrame:&v32 orTransform:{v14, v16, v18, v20}];
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      type metadata accessor for MainActor();
      v23 = v1;
      v24 = &unk_1014AC430;
      v25 = &unk_1014AC428;
    }

    else
    {
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
      type metadata accessor for MainActor();
      v27 = v1;
      sub_100D1548C(v11, v10);
      v24 = &unk_1014AC420;
      v25 = &unk_1014AC418;
    }

    v28 = v1;
    swift_unknownObjectRetain();

    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    *(v30 + 32) = v28;
    *(v30 + 40) = v31;
    *(v30 + 56) = v25;
    *(v30 + 64) = v21;
    sub_10064191C(0, 0, v5, v24, v30);

    sub_100D15590(v11, v10);
  }
}

uint64_t sub_100D09150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_100D091EC, v5, v4);
}

uint64_t sub_100D091EC()
{
  v1 = *(v0 + 104);
  v2 = [v1 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B7648();
  v20 = v3;

  [v1 layerFrameInScaledCanvas];
  v25 = CGRectIntegral(v24);
  width = v25.size.width;
  height = v25.size.height;
  [v1 layerFrameInScaledCanvas];
  sub_100D0C010(v6, v7);
  v9 = v8;
  v11 = v10;
  v12 = [v1 canvas];
  if (v12)
  {
    v13 = v12;
    [v12 contentsScale];
    v15 = v14;
  }

  else
  {
    v15 = 2.0;
  }

  v22 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = 1103626240;
  *(v0 + 32) = v20;
  *(v0 + 48) = width;
  *(v0 + 56) = height;
  *(v0 + 64) = v9;
  *(v0 + 72) = v11;
  *(v0 + 80) = v15;
  v21 = (*(v22 + 24) + **(v22 + 24));
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_100D09418;
  v18 = *(v0 + 96);

  return v21(v0 + 16, ObjectType, v18);
}

uint64_t sub_100D09418()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_100D1642C;
  }

  else
  {
    v5 = sub_100D16430;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_100D09678(double *a1)
{
  v16 = *(a1 + 1);
  v18 = *a1;
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v1 layout];
  v5 = [v4 originalPureGeometry];

  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  [v5 fullTransform];
  v14 = *&t1.c;
  v15 = *&t1.a;
  v13 = *&t1.tx;

  *&t1.a = v15;
  *&t1.c = v14;
  *&t1.tx = v13;
  *&t2.a = v18;
  *&t2.c = v16;
  t2.tx = v2;
  t2.ty = v3;
  CGAffineTransformConcat(&v20, &t1, &t2);
  tx = v20.tx;
  ty = v20.ty;
  v17 = *&v20.c;
  v19 = *&v20.a;
  v8 = [v1 layout];
  type metadata accessor for CRLUSDZLayout();
  v9 = swift_dynamicCastClassUnconditional();
  v10 = objc_opt_self();
  *&t1.a = v19;
  *&t1.c = v17;
  t1.tx = tx;
  t1.ty = ty;
  v11 = [v10 geometryFromFullTransform:&t1];
  v12 = [v9 computeInfoGeometryFromPureLayoutGeometry:v11];

  if (!v12)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_100D098D4()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v29 = type metadata accessor for URL();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLUSDZRep(0);
  v30.receiver = v0;
  v30.super_class = v9;
  objc_msgSendSuper2(&v30, "becameSelected");
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v12 = [v0 debugDescription];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v16 = static os_log_type_t.debug.getter();
  sub_100005404(v10, &_mh_execute_header, v16, "(USDZRep) [%{public}@] becameSelected()", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v17 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v17, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    goto LABEL_7;
  }

  v18 = *v6;
  v19 = v6[8];
  v20 = sub_1005B981C(&qword_101A1B820);
  v21 = *(v20 + 64);
  if (v19 == 1)
  {

    (*(v7 + 8))(&v6[v21], v29);
LABEL_7:
    sub_100CF8070();
    return;
  }

  v22 = v20;
  v23 = &v6[v21];
  v25 = v28;
  v24 = v29;
  (*(v7 + 32))(v28, v23, v29);
  v26 = *(v22 + 64);
  *v3 = v18;
  v3[8] = 1;
  (*(v7 + 16))(&v3[v26], v25, v24);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v27 = v18;
  sub_100D15E6C(v3, v0 + v17, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  swift_endAccess();
  sub_100CF8070();

  sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  (*(v7 + 8))(v25, v24);
}

void sub_100D09CF8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v2);
  v29 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = (&v29 - v5);
  v30 = type metadata accessor for URL();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLUSDZRep(0);
  v31.receiver = v0;
  v31.super_class = v10;
  objc_msgSendSuper2(&v31, "becameNotSelected");
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v13 = [v1 debugDescription];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  v17 = static os_log_type_t.debug.getter();
  sub_100005404(v11, &_mh_execute_header, v17, "(USDZRep) [%{public}@] becameNotSelected()", 42, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100D0450C(1);
  sub_100F97B24(0);
  v18 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v1 + v18, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    goto LABEL_8;
  }

  v19 = *v6;
  v20 = sub_1005B981C(&unk_101A1B808);
  v21 = *(v20 + 48);
  swift_unknownObjectRelease();
  v22 = (v6 + *(v20 + 80));
  sub_100863E8C(*v22, v22[1], v22[2], v22[3], v22[4], v22[5]);
  v23 = v6 + v21;
  v24 = v30;
  (*(v7 + 32))(v9, v23, v30);
  if (byte_1019F2C48 != 1 || (sub_100D0D22C() & 1) != 0)
  {

    (*(v7 + 8))(v9, v24);
LABEL_8:
    sub_100CF8070();
    goto LABEL_9;
  }

  v26 = *(sub_1005B981C(&qword_101A1B820) + 64);
  v27 = v29;
  *v29 = v19;
  *(v27 + 8) = 0;
  (*(v7 + 16))(v27 + v26, v9, v24);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v28 = v19;
  sub_100D15E6C(v27, v1 + v18, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  swift_endAccess();
  sub_100CF8070();
  sub_100D13C38(v27, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  sub_100CF979C();

  (*(v7 + 8))(v9, v24);
LABEL_9:
  *(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_animationIsPaused) = 0;
  v25 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter;
  if (*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter) == 1)
  {
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"hideMiniFormatterIfNecessary" object:0];
    *(v1 + v25) = 0;
  }
}

void sub_100D0A1E4()
{
  v1 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v1);
  v3 = &v35[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for CRLUSDZRep(0);
  v36.receiver = v0;
  v36.super_class = v4;
  objc_msgSendSuper2(&v36, "prepareForPencilKitSnapshotting");
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = [v0 debugDescription];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v5, &_mh_execute_header, v11, "(USDZRep) [%{public}@] prepareForPencilKitSnapshotting()", 56, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  if (v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy] != 4)
  {
    v12 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
    swift_beginAccess();
    sub_100D13C98(&v0[v12], v3, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *(v3 + 1);

      v14 = &v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
      v15 = v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
      if ((v15 & 0xC0) == 0x40)
      {
        v16 = *v14;
        v17 = *(*v14 + 48);
        if ((v17 & 0x30) == 0)
        {
          v19 = *(v16 + 32);
          v18 = *(v16 + 40);
          v20 = swift_allocObject();
          *(v20 + 16) = *(v16 + 16);
          *(v20 + 32) = v19;
          *(v20 + 40) = v13;
          *(v20 + 48) = -112;
          *v14 = v20;
          v14[8] = 64;
          swift_unknownObjectRetain();
          sub_100D15ED4(v19, v18, v17);
          v21 = v13;

          sub_100CF749C();

          sub_100D15590(v16, v15);
        }
      }

      v22 = [v0 layout];
      [v22 invalidateFrame];

      v23 = [v0 layout];
      [v23 invalidateExteriorWrap];

      [v0 invalidateKnobPositions];
      [v0 setNeedsDisplay];
      v24 = [v0 canvas];
      if (v24)
      {
        v25 = v24;
        v26 = [v0 layout];
        [v25 canvasInvalidatedForLayout:v26];
      }

      v27 = [v0 interactiveCanvasController];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 layerHost];

        if (v29)
        {
          v30 = [v29 canvasLayer];
          swift_unknownObjectRelease();
          if (v30)
          {
            [v30 setNeedsLayout];
          }
        }
      }

      v31 = [v0 interactiveCanvasController];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 layerHost];

        if (v33)
        {
          v34 = [v33 canvasLayer];
          swift_unknownObjectRelease();
          if (v34)
          {
            [v34 layoutIfNeeded];
          }
        }
      }
    }

    else
    {
      sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    }
  }
}

id sub_100D0A6B4(char a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v8 = [v3 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  v9 = sub_1008BA188();
  v10 = v9;

  if (v9)
  {
    v11 = [v10 containsPoint:a1 & 1 withPrecision:{a2, a3}];

    return v11;
  }

  else
  {
    v13 = [v4 info];
    type metadata accessor for CRLUSDZItem();
    swift_dynamicCastClassUnconditional();
    sub_1007FE430(&v24);
    swift_unknownObjectRelease();
    if ((v27 & 1) != 0 || (v15 = v25, v14 = v26, v16 = v24, v29.origin = v24, v29.size.width = v25, v29.size.height = v26, CGRectIsEmpty(v29)))
    {
      v23.receiver = v4;
      v23.super_class = type metadata accessor for CRLUSDZRep(0);
      return objc_msgSendSuper2(&v23, "containsPoint:withPrecision:", a1 & 1, a2, a3);
    }

    else
    {
      v17 = [v4 layout];
      result = [swift_dynamicCastClassUnconditional() geometry];
      if (result)
      {
        v18 = result;
        [result size];

        v19 = sub_10011ECB4();
        sub_100121740(v19, v20, v21, v22, v16.x, v16.y, v15, v14);
        v28.x = a2;
        v28.y = a3;
        return CGRectContainsPoint(v30, v28);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

id sub_100D0A958(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for CRLUSDZRep(0);
  v25.receiver = v1;
  v25.super_class = v6;
  result = objc_msgSendSuper2(&v25, "didUpdateRenderable:", a1);
  if ((v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8] & 0xC0) == 0x40)
  {
    v8 = *&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v9 = *(v8 + 48);
    if ((v9 & 0x30) == 0x10)
    {
      v10 = *(v8 + 32);
      v11 = *(v8 + 40);
      v24 = *(v8 + 16);
      swift_unknownObjectRetain();
      sub_100D15ED4(v10, v11, v9);
      sub_100D15590(v11, v9 & 0xCF);
      if (qword_1019F21E0 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v14 = [v1 debugDescription];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v15;
      *(inited + 40) = v17;
      v18 = static os_log_type_t.debug.getter();
      sub_100005404(v12, &_mh_execute_header, v18, "(USDZRep) [%{public}@] showing pending view content, triggering another canvas layout...", 88, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v20 = v10;
      v21 = v1;
      v22 = static MainActor.shared.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = &protocol witness table for MainActor;
      *(v23 + 32) = v20;
      *(v23 + 40) = v21;
      *(v23 + 48) = v24;
      sub_10064191C(0, 0, v5, &unk_1014AC408, v23);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100D0AC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  v7[10] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[15] = v10;
  v7[16] = v9;

  return _swift_task_switch(sub_100D0AD5C, v10, v9);
}

uint64_t sub_100D0AD5C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100D0AE28;

  return sub_100061EEC(50000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100D0AE28()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100D16428;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[15];
    v8 = v3[16];
    v9 = sub_100D0AFBC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100D0AFBC()
{
  v1 = v0[6];

  v2 = v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8);
  if ((v3 & 0xC0) == 0x40)
  {
    v4 = *v2;
    v5 = *(*v2 + 48);
    if ((v5 & 0x30) == 0x10)
    {
      v6 = v4[2];
      v8 = v4[4];
      v7 = v4[5];
      sub_100D1548C(*v2, v3);
      swift_unknownObjectRetain();
      sub_100D15ED4(v8, v7, v5);
      sub_100D15590(v7, v5 & 0xCF);
      sub_100006370(0, &qword_1019F6D00);
      v9 = static NSObject.== infix(_:_:)();

      sub_100D15590(v4, v3);
      if ((v9 & 1) == 0)
      {
LABEL_8:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      v10 = v0[10];
      v11 = v0[6];
      v12 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
      swift_beginAccess();
      sub_100D13C98(v11 + v12, v10, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = v0[10];
      if (EnumCaseMultiPayload == 2)
      {

        v15 = sub_1005B981C(&unk_101A1B808);
        v16 = *(v15 + 48);
        swift_unknownObjectRelease();
        v17 = (v14 + *(v15 + 80));
        v18 = v17[5];
        if (!(v18 >> 62))
        {
          v19 = v0[7];

          v20 = type metadata accessor for URL();
          (*(*(v20 - 8) + 8))(v14 + v16, v20);
          if (v6 == v19)
          {
            v22 = v0[5];
            v21 = v0[6];
            v23 = swift_allocObject();
            *(v23 + 16) = *(v0 + 7);
            *(v23 + 32) = v22;
            *(v23 + 40) = 0;
            *(v23 + 48) = 0;
            v24 = *v2;
            *v2 = v23;
            v25 = *(v2 + 8);
            *(v2 + 8) = 64;
            swift_unknownObjectRetain();
            v26 = v22;

            sub_100D15590(v24, v25);
            sub_100CF749C();

            [v26 setAlpha:*(v21 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_externallySetAlpha)];
          }

          goto LABEL_8;
        }

        sub_100863E8C(*v17, v17[1], v17[2], v17[3], v17[4], v18);
        swift_unknownObjectRelease();
        v27 = type metadata accessor for URL();
        (*(*(v27 - 8) + 8))(v14 + v16, v27);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_100D13C38(v14, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      }
    }
  }

LABEL_11:

  v28 = v0[1];

  return v28();
}

id sub_100D0B4B0()
{
  v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isResizing] = 1;
  v1 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController];
  v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobsWereVisibleBeforeDynamicOperation] = (*(v1 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) & 0xFB) != 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CRLUSDZRep(0);
  v2 = objc_msgSendSuper2(&v5, "dynamicResizeDidBegin");
  sub_100CF979C();
  sub_100D08168();
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v3 && *(v3 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1)
  {
    sub_100F97F98(0);
  }

  return v2;
}

void sub_100D0B5D0(uint64_t a1)
{
  v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isResizing] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLUSDZRep(0);
  objc_msgSendSuper2(&v5, "dynamicResizeDidEndWithTracker:", a1);
  v3 = [v1 layout];
  [v3 invalidateExteriorWrap];

  sub_100CF979C();
  sub_100D07CF8();
  v4 = *(*&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController] + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v4 && *(v4 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1 && v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobsWereVisibleBeforeDynamicOperation] == 1)
  {
    sub_100F97EA4(1);
  }
}

void sub_100D0B71C()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLUSDZRep(0);
  objc_msgSendSuper2(&v4, "willBeginZooming");
  v2 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController];
  v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobsWereVisibleBeforeDynamicOperation] = (*(v2 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) & 0xFB) != 0;
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v3)
  {
    if (*(v3 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1)
    {
      sub_100F97F98(0);
    }
  }
}

void sub_100D0B810()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZRep(0);
  objc_msgSendSuper2(&v2, "didEndZooming");
  v1 = *(*&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController] + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v1 && *(v1 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1 && v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobsWereVisibleBeforeDynamicOperation] == 1)
  {
    sub_100F97EA4(1);
  }
}

void sub_100D0B978(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for CRLUSDZRep(0);
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

uint64_t sub_100D0B9E4(void *a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  sub_100CF979C();

  return (*(v3 + 8))(v5, v2);
}

id sub_100D0BB08(void *a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v5 = [a1 *a3];
  a4(0);
  v6 = swift_dynamicCastClassUnconditional();

  return v6;
}

uint64_t sub_100D0BB70()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v1 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetData();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 info];
  type metadata accessor for CRLUSDZItem();
  v8 = swift_dynamicCastClassUnconditional();
  v9 = [v0 info];
  result = swift_dynamicCastClassUnconditional();
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    swift_unknownObjectRelease();
    sub_100D13C98(v3, v7, type metadata accessor for CRLAssetData);
    sub_100D13C38(v3, type metadata accessor for CRLUSDZAssetDataStruct);
    v11 = [v8 store];
    v12 = *&v11[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v12 + 16));
    v13 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v14 = *&v11[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    if (v14)
    {
      v15 = *&v11[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      v28 = type metadata accessor for CRLAssetManager();
      v16 = objc_allocWithZone(v28);
      v27[1] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
      swift_unknownObjectWeakInit();
      v17 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v18 = swift_allocObject();
      v19 = v11;
      v20 = swift_slowAlloc();
      *v20 = 0;
      *(v18 + 16) = v20;
      atomic_thread_fence(memory_order_acq_rel);
      *&v16[v17] = v18;
      *&v16[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v21 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v16[v21] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v16[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      swift_unknownObjectWeakAssign();
      v29.receiver = v16;
      v29.super_class = v28;
      v22 = objc_msgSendSuper2(&v29, "init");

      v23 = *&v11[v13];
      *&v11[v13] = v22;
      v15 = v22;

      v14 = 0;
    }

    v24 = *(v12 + 16);
    v25 = v14;
    os_unfair_lock_unlock(v24);

    v26 = sub_1011255E0(v7, v8, v15);
    swift_unknownObjectRelease();

    sub_100D13C38(v7, type metadata accessor for CRLAssetData);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100D0BF4C()
{
  result = [v0 interactiveCanvasController];
  if (result)
  {
    v2 = result;
    v3 = [result editorController];

    if (!v3)
    {
      return 0;
    }

    if (type metadata accessor for CRLUSDZEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v5 = [v3 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_100D0C010(double a1, double a2)
{
  v5 = [v2 canvas];
  v6 = 1.0;
  v7 = 1.0;
  if (v5)
  {
    v8 = v5;
    [v5 viewScale];
    v7 = v9;
  }

  v10 = 1.0 / v7 * a1;
  v11 = [v2 canvas];
  if (v11)
  {
    v12 = v11;
    [v11 viewScale];
    v6 = v13;
  }

  v14 = 1.0 / v6 * a2;
  if (v10 * v14 >= 262144.0)
  {
    v16 = sub_100121ED4(v10, v14, 4194304.0);
    sub_100120068(v16);
  }

  else
  {
    v15 = sub_100121E58(v10, v14, 512.0, 512.0);
    sub_10012211C(v15);
  }
}

uint64_t sub_100D0C174()
{
  v1 = v0;
  v98 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v98);
  v3 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v87 - v5;
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v96 = &v87 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v97 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = &v87 - v13;
  v95 = v14;
  __chkstk_darwin(v15);
  v17 = (&v87 - v16);
  v18 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v18);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v87 - v22;
  v24 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v1 + v24, v23, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  sub_100CF6DD0(v20);
  sub_100D13C38(v23, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v99 = v10;
  if (EnumCaseMultiPayload)
  {
    sub_100D13C38(v20, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  else
  {

    v26 = sub_1005B981C(&qword_101A1B828);
    v27 = *(v10 + 32);
    v28 = &v20[*(v26 + 48)];
    v93 = v9;
    v90 = v27;
    v91 = v10 + 32;
    v27(v17, v28, v9);
    v29 = [v1 info];
    type metadata accessor for CRLUSDZItem();
    v30 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    swift_unknownObjectRelease();
    v31 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v31 + 16));
    v32 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v33 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    v92 = v17;
    if (v33)
    {
      v34 = v17;
      v35 = v33;
    }

    else
    {
      v36 = type metadata accessor for CRLAssetManager();
      v37 = objc_allocWithZone(v36);
      v89 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
      swift_unknownObjectWeakInit();
      v88 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v38 = swift_allocObject();
      v39 = v30;
      v40 = swift_slowAlloc();
      *v40 = 0;
      *(v38 + 16) = v40;
      atomic_thread_fence(memory_order_acq_rel);
      *&v37[v88] = v38;
      *&v37[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v41 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v37[v41] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v37[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      swift_unknownObjectWeakAssign();
      v100.receiver = v37;
      v100.super_class = v36;
      v42 = objc_msgSendSuper2(&v100, "init");

      v43 = *&v30[v32];
      *&v30[v32] = v42;
      v44 = v42;
      v34 = v92;
      v35 = v44;

      v33 = 0;
    }

    v45 = *(v31 + 16);
    v46 = v33;
    os_unfair_lock_unlock(v45);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v48 = Strong;
      v49 = type metadata accessor for TaskPriority();
      v50 = v96;
      (*(*(v49 - 8) + 56))(v96, 1, 1, v49);
      v51 = v34;
      v52 = v99;
      v9 = v93;
      v53 = v94;
      (*(v99 + 16))(v94, v51, v93);
      v54 = *(v52 + 80);
      v89 = v35;
      v55 = (v54 + 40) & ~v54;
      v56 = swift_allocObject();
      *(v56 + 2) = 0;
      *(v56 + 3) = 0;
      *(v56 + 4) = v48;
      v90(&v56[v55], v53, v9);
      v57 = v48;
      sub_10064191C(0, 0, v50, &unk_1014AC360, v56);

      (*(v52 + 8))(v92, v9);
    }

    else
    {

      v9 = v93;
      (*(v99 + 8))(v34, v93);
    }
  }

  v58 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
  swift_beginAccess();
  sub_100D13C98(v1 + v58, v6, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  sub_100CF6B5C(v3);
  sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  }

  v60 = &v3[*(sub_1005B981C(&qword_101A1B828) + 48)];
  v98 = *(v99 + 32);
  v98(v97, v60, v9);
  v61 = [v1 info];
  type metadata accessor for CRLUSDZItem();
  v62 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  swift_unknownObjectRelease();
  v63 = *&v62[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v63 + 16));
  v64 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v65 = *&v62[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v65)
  {
    v66 = *&v62[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v92 = type metadata accessor for CRLAssetManager();
    v67 = objc_allocWithZone(v92);
    v93 = v9;
    swift_unknownObjectWeakInit();
    v68 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v69 = swift_allocObject();
    v70 = v62;
    v71 = swift_slowAlloc();
    *v71 = 0;
    *(v69 + 16) = v71;
    atomic_thread_fence(memory_order_acq_rel);
    *&v67[v68] = v69;
    *&v67[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v72 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v67[v72] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v67[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v9 = v93;
    swift_unknownObjectWeakAssign();
    v101.receiver = v67;
    v101.super_class = v92;
    v73 = objc_msgSendSuper2(&v101, "init");

    v74 = *&v62[v64];
    *&v62[v64] = v73;
    v66 = v73;

    v65 = 0;
  }

  v75 = *(v63 + 16);
  v76 = v65;
  os_unfair_lock_unlock(v75);

  v77 = swift_unknownObjectWeakLoadStrong();
  v78 = v99;
  if (v77)
  {
    v79 = v77;
    v80 = type metadata accessor for TaskPriority();
    v81 = v96;
    (*(*(v80 - 8) + 56))(v96, 1, 1, v80);
    v82 = v94;
    v83 = v97;
    (*(v78 + 16))(v94, v97, v9);
    v84 = (*(v78 + 80) + 40) & ~*(v78 + 80);
    v85 = swift_allocObject();
    *(v85 + 2) = 0;
    *(v85 + 3) = 0;
    *(v85 + 4) = v79;
    v98(&v85[v84], v82, v9);
    v86 = v79;
    sub_10064191C(0, 0, v81, &unk_1014773B0, v85);

    return (*(v78 + 8))(v83, v9);
  }

  else
  {

    return (*(v78 + 8))(v97, v9);
  }
}

void sub_100D0CB5C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive) == 1)
  {
    v1 = [v0 interactiveCanvasController];
    if (v1)
    {
      v2 = v1;
      *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_didAddNotificationCenterAddObservers) = 1;
      v4 = [objc_opt_self() defaultCenter];
      [v4 addObserver:v0 selector:"canvasWillScroll:" name:@"CRLCanvasWillScrollNotification" object:v2];
      [v4 addObserver:v0 selector:"canvasDidScroll:" name:@"CRLCanvasDidScrollNotification" object:v2];
      [v4 addObserver:v0 selector:"canvasWillScroll:" name:@"CRLCanvasWillZoomNotification" object:v2];
      v3 = [v2 editorController];
      [v4 addObserver:v0 selector:"selectionPathDidChangeWithNotification:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v3];

      [v4 addObserver:v0 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
      [v4 addObserver:v0 selector:"resumeRendering" name:UIApplicationWillEnterForegroundNotification object:0];
      [v4 addObserver:v0 selector:"interruptRendering" name:UIApplicationProtectedDataWillBecomeUnavailable object:0];
    }
  }
}

void sub_100D0CD68()
{
  if (v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_didAddNotificationCenterAddObservers] == 1)
  {
    v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_didAddNotificationCenterAddObservers] = 0;
    v1 = [objc_opt_self() defaultCenter];
    v2 = [v0 interactiveCanvasController];
    [v1 removeObserver:v0 name:@"CRLCanvasWillScrollNotification" object:v2];
    [v1 removeObserver:v0 name:@"CRLCanvasDidScrollNotification" object:v2];
    [v1 removeObserver:v0 name:@"CRLCanvasWillZoomNotification" object:v2];

    if (v2 && (v3 = [v2 editorController]) != 0)
    {
      v5 = v3;
      sub_100006370(0, &unk_101A1B848);
      v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v4 = 0;
    }

    [v1 removeObserver:v0 name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v4];
    swift_unknownObjectRelease();
    [v1 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];
    [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
    [v1 removeObserver:v0 name:UIApplicationProtectedDataDidBecomeAvailable object:0];
  }
}

uint64_t sub_100D0CF54()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v19 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v11, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  v20 = *v6;
  v12 = sub_1005B981C(&unk_101A1B808);
  v13 = *(v12 + 48);
  swift_unknownObjectRelease();
  v14 = (v6 + *(v12 + 80));
  sub_100863E8C(*v14, v14[1], v14[2], v14[3], v14[4], v14[5]);
  (*(v8 + 32))(v10, v6 + v13, v7);
  v15 = *(sub_1005B981C(&qword_101A1B820) + 64);
  v16 = v20;
  *v3 = v20;
  v3[8] = 0;
  (*(v8 + 16))(&v3[v15], v10, v7);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v17 = v16;
  sub_100D15E6C(v3, v0 + v11, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  swift_endAccess();
  sub_100CF8070();

  sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100D0D22C()
{
  v1 = v0;
  if (![v0 isSelectedIgnoringLocking])
  {
    goto LABEL_6;
  }

  v2 = [v0 interactiveCanvasController];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 infosForCurrentSelectionPath];
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v5 + 16) != 1)
  {

LABEL_6:
    v7 = 0;
    return v7 & 1;
  }

  v6 = [v1 info];
  type metadata accessor for CRLUSDZItem();
  swift_dynamicCastClassUnconditional();
  sub_100D15398(&qword_101A1B840, type metadata accessor for CRLUSDZItem);
  AnyHashable.init<A>(_:)();
  v7 = sub_10079EAA0(v9, v5);

  sub_100064234(v9);
  return v7 & 1;
}

void sub_100D0D3F0(CGContext *a1)
{
  v37.receiver = v1;
  v37.super_class = type metadata accessor for CRLUSDZRep(0);
  [(CGContext *)&v37 drawInContext:a1];
  if (([v1 directlyManagesContentPlatformView] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v4 = v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
    sub_100D1548C(v3, v4);
    v5 = sub_100D14B34(v3, v4);
    v7 = v6;
    sub_100D1548C(v5, v6);
    sub_100D15590(v3, v4);
    if (v7 >> 6)
    {
      if (v7 >> 6 != 2)
      {
LABEL_12:
        sub_100D15590(v5, v7);
        return;
      }

      if (v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive])
      {
        v8 = objc_opt_self();
        v9 = v5;
        v35 = v8;
        v10 = [v8 _atomicIncrementAssertCount];
        v36 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v36);
        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v11 = String._bridgeToObjectiveC()();

        v12 = [v11 lastPathComponent];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v14;
        v33 = v13;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v15 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v10;
        v17 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v17;
        v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v18;
        *(inited + 72) = v34;
        *(inited + 136) = &type metadata for String;
        v19 = sub_1000053B0();
        *(inited + 112) = v33;
        *(inited + 120) = v32;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v19;
        *(inited + 152) = 2878;
        v20 = v36;
        *(inited + 216) = v17;
        *(inited + 224) = v18;
        *(inited + 192) = v20;
        v21 = v34;
        v22 = v20;
        v23 = static os_log_type_t.error.getter();
        sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v24 = static os_log_type_t.error.getter();
        sub_100005404(v15, &_mh_execute_header, v24, "Should only try to draw the poster image if canvas is not interactive.", 70, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v25 = swift_allocObject();
        v25[2] = 8;
        v25[3] = 0;
        v25[4] = 0;
        v25[5] = 0;
        v26 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v27 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v28 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v29 = String._bridgeToObjectiveC()();

        [v35 handleFailureInFunction:v27 file:v28 lineNumber:2878 isFatal:0 format:v29 args:v26];
      }

      else
      {
        v31 = v5;
      }

      sub_100D0D90C(v5, a1);
    }

    else
    {
      v30 = v5;
      sub_101251240(a1);
    }

    sub_100D15590(v5, v7);
    goto LABEL_12;
  }
}

void sub_100D0D90C(CGImage *a1, CGContextRef c)
{
  v3 = v2;
  CGContextSaveGState(c);
  [v3 naturalBounds];
  Height = CGRectGetHeight(v18);
  CGContextTranslateCTM(c, 0.0, Height);
  CGContextScaleCTM(c, 1.0, -1.0);
  [v3 naturalBounds];
  v8 = v7;
  [v3 naturalBounds];
  v10 = v9;
  Width = CGImageGetWidth(a1);
  v12 = CGImageGetHeight(a1);
  [v3 naturalBounds];
  v13 = CGRectGetWidth(v19);
  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = Width;
  v20.size.height = v12;
  v14 = v13 / CGRectGetWidth(v20);
  [v3 naturalBounds];
  v15 = CGRectGetHeight(v21);
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = Width;
  v22.size.height = v12;
  v16 = v15 / CGRectGetHeight(v22);
  CGContextSaveGState(c);
  CGContextScaleCTM(c, v14, v16);
  CGContextRef.draw(_:in:byTiling:)();
  CGContextRestoreGState(c);

  CGContextRestoreGState(c);
}

uint64_t sub_100D0DA70()
{
  v1[37] = v0;
  v1[38] = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[41] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[42] = v3;
  v1[43] = v2;

  return _swift_task_switch(sub_100D0DB44, v3, v2);
}

uint64_t sub_100D0DB44()
{
  v42 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  v0[44] = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v2 + v3, v1, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = v0[40];
    v0[45] = *v4;
    v5 = sub_1005B981C(&unk_101A1B808);
    v6 = v5[12];
    v7 = &v4[v5[16]];
    v0[46] = *v7;
    v8 = *(v7 + 1);
    v9 = &v4[v5[20]];
    sub_100863E8C(*v9, v9[1], v9[2], v9[3], v9[4], v9[5]);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(&v4[v6], v10);
    ObjectType = swift_getObjectType();
    v39 = (*(v8 + 48) + **(v8 + 48));
    v12 = swift_task_alloc();
    v0[47] = v12;
    *v12 = v0;
    v12[1] = sub_100D0E160;
    v13.n128_u32[0] = 1.0;

    return v39(ObjectType, v8, v13);
  }

  else
  {
    v15 = v0[40];

    sub_100D13C38(v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v40 = objc_opt_self();
    v16 = [v40 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v25;
    v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 2929;
    v28 = v41;
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "Attempted to generate poster image with invalid rendering state.", 64, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v40 handleFailureInFunction:v35 file:v36 lineNumber:2929 isFatal:0 format:v37 args:v34];

    v38 = v0[1];

    return v38(0, 0, 1);
  }
}

uint64_t sub_100D0E160(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 384) = v3;

  if (v3)
  {
    v9 = *(v8 + 336);
    v10 = *(v8 + 344);
    v11 = sub_100D0E338;
  }

  else
  {
    *(v8 + 408) = a3;
    *(v8 + 392) = a2;
    *(v8 + 400) = a1;
    v9 = *(v8 + 336);
    v10 = *(v8 + 344);
    v11 = sub_100D0E29C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100D0E29C()
{
  v1 = *(v0 + 360);

  swift_unknownObjectRelease();

  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);

  v5 = *(v0 + 8);

  return v5(v3, v2, v4 & 1);
}

uint64_t sub_100D0E338()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[44];
  v4 = v0[39];
  v5 = v0[37];

  v6 = *(sub_1005B981C(&qword_101A1B818) + 48);
  *v4 = v2;
  *(v4 + v6) = v1;
  type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v7 = v2;
  swift_errorRetain();
  sub_100D15E6C(v4, v5 + v3, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  swift_endAccess();
  sub_100CF8070();
  swift_unknownObjectRelease();

  sub_100D13C38(v4, type metadata accessor for CRLUSDZRep.AssetLoadingState);

  v8 = v0[1];

  return v8(0, 0, 1);
}

id sub_100D0E4A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZRep(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D0E5E4()
{
  result = type metadata accessor for CRLUSDZRep.PosterLoadingState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLUSDZRep.AssetLoadingState(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100D0E764(void *a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  v65 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v63 = v4;
  v64 = v5;
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v66 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v55 - v15);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  v60 = v20;
  v61 = v3;
  sub_100D13C98(v3 + v20, v19, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  v59 = v11;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v56 = v13;
    v58 = v19;
    sub_100D13C98(v19, v16, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v57 = *v16;
    v21 = sub_1005B981C(&unk_101A1B808);
    v22 = v8;
    v23 = v21[12];
    v24 = (v16 + v21[16]);
    v26 = *v24;
    v25 = v24[1];
    v27 = (v16 + v21[20]);
    sub_100863E8C(*v27, v27[1], v27[2], v27[3], v27[4], v27[5]);
    v28 = v16 + v23;
    v29 = v22;
    (*(v66 + 32))(v10, v28, v22);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    v31 = static UUID.== infix(_:_:)();
    (*(v64 + 8))(v7, v63);
    v32 = v10;
    if (v31)
    {
      v33 = v21[12];
      v34 = v56;
      v35 = v57;
      v36 = (v56 + v21[16]);
      v37 = v56 + v21[20];
      *v56 = v57;
      v38 = *(v66 + 16);
      v55 = v32;
      v38(v34 + v33, v32, v29);
      *v36 = v26;
      v36[1] = v25;
      v39 = v62;
      *(v37 + 6) = *(v62 + 48);
      v40 = *(v39 + 32);
      *(v37 + 1) = *(v39 + 16);
      *(v37 + 2) = v40;
      *v37 = *v39;
      swift_storeEnumTagMultiPayload();
      v41 = v60;
      v42 = v61;
      swift_beginAccess();
      v65 = v35;
      swift_unknownObjectRetain();
      sub_100863F4C(v39, v68);
      sub_100D15E6C(v34, v42 + v41, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      swift_endAccess();
      sub_100CF8070();
      sub_100D13C38(v34, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      v64 = v29;
      if (qword_1019F21E0 != -1)
      {
        swift_once();
      }

      v43 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v45 = [v42 debugDescription];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      *(inited + 56) = &type metadata for String;
      v49 = sub_1000053B0();
      *(inited + 64) = v49;
      *(inited + 32) = v46;
      *(inited + 40) = v48;
      v50 = *(v39 + 16);
      v68[0] = *v39;
      v68[1] = v50;
      v68[2] = *(v39 + 32);
      v69 = *(v39 + 48);
      sub_100863F4C(v39, &v67);
      v51 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v49;
      *(inited + 72) = v51;
      *(inited + 80) = v52;
      v53 = static os_log_type_t.debug.getter();
      sub_100005404(v43, &_mh_execute_header, v53, "(USDZRep) [%{public}@] renderer state changed %{public}@", 56, 2, inited);
      swift_unknownObjectRelease();

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      (*(v66 + 8))(v55, v64);
    }

    else
    {
      (*(v66 + 8))(v10, v22);
      swift_unknownObjectRelease();
    }

    v19 = v58;
  }

  return sub_100D13C38(v19, type metadata accessor for CRLUSDZRep.AssetLoadingState);
}

uint64_t sub_100D0ED40(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D0EDDC, v5, v4);
}

uint64_t sub_100D0EDDC()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100D0E764(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100D0EE58(void *a1)
{
  v3 = type metadata accessor for UTType();
  v85 = *(v3 - 1);
  __chkstk_darwin(v3);
  v82 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A07810);
  __chkstk_darwin(v5);
  v7 = &v70[-v6];
  v8 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v8 - 8);
  v84 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v70[-v11];
  __chkstk_darwin(v13);
  v15 = &v70[-v14];
  v16 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v16);
  v83 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v70[-v19];
  __chkstk_darwin(v21);
  v23 = &v70[-v22];
  v24 = type metadata accessor for CRLUSDZRep(0);
  v86.receiver = v1;
  v86.super_class = v24;
  objc_msgSendSuper2(&v86, "addKnobsToArray:", a1);
  if (*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy) != 3)
  {
    v81 = v3;
    v25 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v80 = v25;
    sub_100D13C98(v1 + v25, v23, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100D13C38(v23, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      return;
    }

    v78 = v20;
    v79 = a1;

    v26 = sub_1005B981C(&unk_101A1B808);
    v27 = *(v26 + 48);
    swift_unknownObjectRelease();
    v28 = (v23 + *(v26 + 80));
    v29 = v28[5];
    if (v29 >> 62)
    {
      sub_100863E8C(*v28, v28[1], v28[2], v28[3], v28[4], v29);
      v34 = type metadata accessor for URL();
      (*(*(v34 - 8) + 8))(v23 + v27, v34);
      return;
    }

    v72 = v26;

    v30 = type metadata accessor for URL();
    v31 = *(v30 - 8);
    v74 = *(v31 + 8);
    v75 = v30;
    v73 = v31 + 8;
    v74(v23 + v27);
    v32 = [v1 interactiveCanvasController];
    if (v32)
    {
      v33 = v32;
      v76 = [v32 documentIsSharedReadOnly];
    }

    else
    {
      v76 = 0;
    }

    v35 = v81;
    v81 = v1;
    if ((sub_100D0D22C() & 1) == 0)
    {
      v77 = 0;
      goto LABEL_18;
    }

    v36 = [v81 interactiveCanvasController];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 layerHost];

      if (v38)
      {
        if ([v38 respondsToSelector:"asiOSCVC"])
        {
          v39 = [v38 asiOSCVC];
          v40 = [v39 isCurrentlyInQuickSelectMode];
          swift_unknownObjectRelease();

          v41 = v40 ^ 1;
LABEL_17:
          v77 = v41;
LABEL_18:
          v42 = sub_100D0BB70();
          v44 = *&v42[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
          v43 = *&v42[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
          sub_100020E58(&v42[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v44);
          (*(v43 + 16))(v44, v43);
          v45 = String._bridgeToObjectiveC()();

          v46 = [v45 crl_pathUTI];

          if (v46)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            UTType.init(_:)();
            v47 = v85;
          }

          else
          {

            v47 = v85;
            (*(v85 + 56))(v15, 1, 1, v35);
          }

          static UTType.realityFile.getter();
          (*(v47 + 56))(v12, 0, 1, v35);
          v48 = *(v5 + 48);
          sub_10000BE14(v15, v7, &unk_1019F8DB0);
          sub_10000BE14(v12, &v7[v48], &unk_1019F8DB0);
          v49 = *(v47 + 48);
          if (v49(v7, 1, v35) == 1)
          {
            sub_10000CAAC(v12, &unk_1019F8DB0);
            sub_10000CAAC(v15, &unk_1019F8DB0);
            v50 = v49(&v7[v48], 1, v35);
            v51 = v78;
            if (v50 == 1)
            {
              sub_10000CAAC(v7, &unk_1019F8DB0);
              v52 = 1;
              v53 = v79;
              goto LABEL_29;
            }
          }

          else
          {
            v54 = v84;
            sub_10000BE14(v7, v84, &unk_1019F8DB0);
            if (v49(&v7[v48], 1, v35) != 1)
            {
              v55 = v85;
              v56 = v82;
              (*(v85 + 32))(v82, &v7[v48], v35);
              sub_100D15398(&qword_101A07820, &type metadata accessor for UTType);
              v71 = dispatch thunk of static Equatable.== infix(_:_:)();
              v57 = *(v55 + 8);
              v57(v56, v35);
              sub_10000CAAC(v12, &unk_1019F8DB0);
              sub_10000CAAC(v15, &unk_1019F8DB0);
              v58 = v54;
              v52 = v71;
              v57(v58, v35);
              sub_10000CAAC(v7, &unk_1019F8DB0);
              v51 = v78;
              v53 = v79;
LABEL_29:
              if ((v77 & 1) == 0)
              {
                return;
              }

LABEL_30:
              if (v76)
              {
                v59 = 0;
              }

              else
              {
                v59 = [v81 isLocked] ^ 1;
              }

              sub_100D13C98(v81 + v80, v51, type metadata accessor for CRLUSDZRep.AssetLoadingState);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v60 = v83;
                sub_100D13C98(v51, v83, type metadata accessor for CRLUSDZRep.AssetLoadingState);

                v61 = v72;
                v62 = *(v72 + 48);
                swift_unknownObjectRelease();
                v63 = (v60 + *(v61 + 80));
                v64 = v63[5];
                if (!(v64 >> 62))
                {
                  v65 = v60;
                  v66 = *(v63[4] + 16);

                  (v74)(v65 + v62, v75);
                  sub_100D13C38(v51, type metadata accessor for CRLUSDZRep.AssetLoadingState);
                  if (!((v66 == 0) | v52 & 1))
                  {
                    if (v59)
                    {
                      v67 = 2;
                    }

                    else
                    {
                      v67 = 1;
                    }

LABEL_43:
                    sub_100F98AE0(v81, v67);

                    sub_1006412EC(v68);

                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v53 addObjectsFromArray:isa];

                    return;
                  }

LABEL_41:
                  if (!v59)
                  {
                    return;
                  }

                  v67 = 0;
                  goto LABEL_43;
                }

                sub_100863E8C(*v63, v63[1], v63[2], v63[3], v63[4], v64);
                (v74)(v60 + v62, v75);
              }

              sub_100D13C38(v51, type metadata accessor for CRLUSDZRep.AssetLoadingState);
              goto LABEL_41;
            }

            sub_10000CAAC(v12, &unk_1019F8DB0);
            sub_10000CAAC(v15, &unk_1019F8DB0);
            (*(v85 + 8))(v54, v35);
            v51 = v78;
          }

          sub_10000CAAC(v7, &unk_101A07810);
          v53 = v79;
          if ((v77 & 1) == 0)
          {
            return;
          }

          v52 = 0;
          goto LABEL_30;
        }

        swift_unknownObjectRelease();
      }
    }

    v41 = 1;
    goto LABEL_17;
  }
}

uint64_t sub_100D0F988(char *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  sub_100006370(0, &qword_1019F54D0);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    v32 = *&a1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_currentOrientationForRotateSession];
    v8 = [objc_opt_self() mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate] = 1;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = v2;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = v17;
    *(v19 + 48) = v32;
    *(v19 + 64) = v13;
    *(v19 + 72) = v15;
    sub_10064191C(0, 0, v6, &unk_1014AC4A0, v19);

    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v22 = [v17 debugDescription];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(inited + 56) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 64) = v26;
    *(inited + 32) = v23;
    *(inited + 40) = v25;
    v27 = [a1 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v26;
    *(inited + 72) = v28;
    *(inited + 80) = v30;
    v31 = static os_log_type_t.debug.getter();
    sub_100005404(v20, &_mh_execute_header, v31, "(USDZRep) [%{public}@] committed rotation (%@)", 46, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    return swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_100D0FD3C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v7[15] = type metadata accessor for MainActor();
  v7[16] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v7[17] = v10;
  *v10 = v7;
  v10[1] = sub_100D0FE14;

  return sub_100D10134(a6, a7, 0, a1);
}

uint64_t sub_100D0FE14()
{
  *(*v1 + 144) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100D0FFD0;
  }

  else
  {
    v4 = sub_100D0FF70;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D0FF70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D0FFD0()
{

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "saveNewOrientation failed with: %{public}@", 42, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100D10134(unint64_t a1, unint64_t a2, unsigned __int8 a3, __n128 a4)
{
  v5[8].n128_u64[1] = a2;
  v5[9].n128_u64[0] = v4;
  v5[15].n128_u8[8] = a3;
  v5[8].n128_u64[0] = a1;
  v5[1] = a4;
  v5[9].n128_u64[1] = type metadata accessor for CRLUSDZAssetDataStruct(0);
  v5[10].n128_u64[0] = swift_task_alloc();
  sub_1005B981C(&qword_101A1B870);
  v5[10].n128_u64[1] = swift_task_alloc();
  v6 = type metadata accessor for CRLAssetData();
  v5[11].n128_u64[0] = v6;
  v5[11].n128_u64[1] = *(v6 - 8);
  v5[12].n128_u64[0] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12].n128_u64[1] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13].n128_u64[0] = v8;
  v5[13].n128_u64[1] = v7;

  return _swift_task_switch(sub_100D1029C, v8, v7);
}

uint64_t sub_100D1029C()
{
  v1 = sub_100D0BF4C();
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 232) = v2;
    *v2 = v0;
    v2[1] = sub_100D103A0;
    v3 = *(v0 + 168);
    v4 = *(v0 + 248);

    return sub_100D10B04(v3, v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100D103A0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_100D10A74;
  }

  else
  {
    v5 = sub_100D104DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D104DC()
{
  v1 = *(v0 + 168);

  v2 = sub_1005B981C(&qword_101A1B878);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 168);
  if (v3 == 1)
  {

    sub_10000CAAC(v4, &qword_101A1B870);
    goto LABEL_16;
  }

  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = (v4 + *(v2 + 48));
  v55 = *v7;
  v54 = v7[1];
  v52 = v7[2];
  v53 = v7[3];
  v8 = v4 + *(v2 + 64);
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_100D15784(v4, *(v0 + 192), type metadata accessor for CRLAssetData);
  [v5 info];
  type metadata accessor for CRLUSDZItem();
  v11 = swift_dynamicCastClassUnconditional();
  if (**(v11 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    v50 = v11;
    v51 = v6;
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v49 = *(v0 + 16);
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    *(v16 + v15[6]) = v49;
    v17 = v15[5];
    sub_10000CAAC(v16 + v17, &unk_101A1B880);
    sub_100D13C98(v12, v16 + v17, type metadata accessor for CRLAssetData);
    (*(v13 + 56))(v16 + v17, 0, 1, v14);
    v18 = v15[8];
    v19 = *(v0 + 160);
    if (v10)
    {
      v9 = *(v19 + v18);
      v20 = *(v19 + v18 + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v0 + 152);
    v22 = v19 + v18;
    *v22 = v9;
    *(v22 + 8) = v20;
    v23.f64[0] = v55;
    v23.f64[1] = v52;
    v24.f64[0] = v54;
    v24.f64[1] = v53;
    *&v23.f64[0] = vcvt_f32_f64(v23);
    v25 = (v19 + *(v21 + 28));
    v26.i64[0] = LODWORD(v23.f64[0]);
    v26.i64[1] = HIDWORD(v23.f64[0]);
    *v25 = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v24), 0x20uLL), v26);
    v25[1].i8[0] = 0;
    if (qword_1019F22C0 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_8:
  v27 = *(v0 + 160);
  v28 = *(v0 + 128);
  v29 = static OS_os_log.assetManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v31 = UUID.uuidString.getter();
  v33 = v32;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v31;
  *(inited + 40) = v33;
  v34 = static os_log_type_t.info.getter();
  sub_100005404(v29, &_mh_execute_header, v34, "Setting new poster asset with UUID %{public}@", 45, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_1008EA100();
  v35 = sub_100C9C32C(v27, v50, v28, v51);

  if (v35)
  {
    v36 = [*(v0 + 224) interactiveCanvasController];
    v37 = [v36 commandController];

    if (v37)
    {
      sub_100888700(v35, 0, 0, 4, 0);
    }
  }

  v38 = *(v0 + 160);
  v39 = *(v0 + 144);
  swift_unknownObjectRelease();
  sub_100D13C38(v38, type metadata accessor for CRLUSDZAssetDataStruct);
  v40 = [v39 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B9C14();

  v41 = *&v39[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController];
  sub_100F97BFC();
  v42 = *(v41 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v42)
  {
    v43 = *(v42 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying);
  }

  else
  {
    v43 = 0;
  }

  v44 = *(v0 + 224);
  v45 = *(v0 + 192);
  v46 = *(v0 + 144);
  sub_100F97EA4(v43);

  sub_100D13C38(v45, type metadata accessor for CRLAssetData);
  *(v46 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate) = 0;
LABEL_16:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100D10A74()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D10B04(uint64_t a1, char a2)
{
  *(v3 + 736) = v2;
  *(v3 + 665) = a2;
  *(v3 + 728) = a1;
  *(v3 + 744) = type metadata accessor for CRLUSDZAssetDataStruct(0);
  *(v3 + 752) = swift_task_alloc();
  sub_1005B981C(&unk_101A1B880);
  *(v3 + 760) = swift_task_alloc();
  v4 = type metadata accessor for CRLAssetData();
  *(v3 + 768) = v4;
  *(v3 + 776) = *(v4 - 8);
  *(v3 + 784) = swift_task_alloc();
  *(v3 + 792) = swift_task_alloc();
  *(v3 + 800) = swift_task_alloc();
  sub_1005B981C(&qword_101A1B870);
  *(v3 + 808) = swift_task_alloc();
  *(v3 + 816) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 824) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 832) = v6;
  *(v3 + 840) = v5;

  return _swift_task_switch(sub_100D10CC8, v6, v5);
}

uint64_t sub_100D10CC8()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 816);
  v2 = *(v0 + 736);
  v3 = *(v0 + 665);
  v4 = static OS_os_log.crlThreeDimensionalObjects;
  *(v0 + 848) = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = [v2 debugDescription];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(v0 + 856) = v10;
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 96) = &type metadata for Bool;
  *(inited + 104) = &protocol witness table for Bool;
  *(inited + 72) = v3;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v4, &_mh_execute_header, v11, "(USDZRep) [%{public}@] calculatePosterImageAndBoundingRect(%{public}i)", 70, 2, inited);
  swift_setDeallocating();
  *(v0 + 864) = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = sub_1005B981C(&qword_101A1B878);
  *(v0 + 872) = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  *(v0 + 880) = v14;
  *(v0 + 888) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v1, 1, 1, v12);
  v15 = [v2 info];
  *(v0 + 896) = type metadata accessor for CRLUSDZItem();
  result = swift_dynamicCastClassUnconditional();
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_17;
  }

  v43 = v14;
  v44 = v12;
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v19 = *(v0 + 760);
  v20 = *(v0 + 752);
  v21 = *(v0 + 744);
  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  swift_unknownObjectRelease();

  sub_10000BE14(v20 + *(v21 + 20), v19, &unk_101A1B880);
  sub_100D13C38(v20, type metadata accessor for CRLUSDZAssetDataStruct);
  if ((*(v17 + 48))(v19, 1, v18) == 1)
  {
    sub_10000CAAC(*(v0 + 760), &unk_101A1B880);
LABEL_13:
    v41 = swift_task_alloc();
    *(v0 + 904) = v41;
    *v41 = v0;
    v41[1] = sub_100D113A4;

    return sub_100D0DA70();
  }

  v22 = *(v0 + 736);
  sub_100D15784(*(v0 + 760), *(v0 + 800), type metadata accessor for CRLAssetData);
  v23 = [v22 info];
  swift_dynamicCastClassUnconditional();
  sub_1007FE430((v0 + 632));
  swift_unknownObjectRelease();
  if (*(v0 + 664))
  {
    sub_100D13C38(*(v0 + 800), type metadata accessor for CRLAssetData);
    goto LABEL_13;
  }

  v24 = *(v0 + 808);
  v25 = *(v0 + 736);
  v26 = (v24 + *(v44 + 48));
  v27 = *(v44 + 64);
  sub_100D13C98(*(v0 + 800), v24, type metadata accessor for CRLAssetData);
  v28 = *(v0 + 648);
  *v26 = *(v0 + 632);
  v26[1] = v28;
  v29 = [v25 info];
  result = swift_dynamicCastClassUnconditional();
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v30 = *(v0 + 816);
  v31 = *(v0 + 808);
  v32 = *(v0 + 800);
  v33 = *(v0 + 752);
  v34 = *(v0 + 744);
  v42 = *(v0 + 665);
  v35 = v31 + v27;
  swift_beginAccess();

  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C38(v32, type metadata accessor for CRLAssetData);
  sub_10000CAAC(v30, &qword_101A1B870);
  v36 = v33 + *(v34 + 32);
  v37 = *v36;
  LOBYTE(v34) = *(v36 + 8);
  sub_100D13C38(v33, type metadata accessor for CRLUSDZAssetDataStruct);
  *v35 = v37;
  *(v35 + 8) = v34;
  v43(v31, 0, 1, v44);
  sub_100D1621C(v31, v30);
  if (v42 != 1)
  {
    goto LABEL_13;
  }

  v38 = *(v0 + 816);
  v39 = *(v0 + 728);

  sub_100D1621C(v38, v39);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100D113A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 912) = a1;
  *(v5 + 920) = a2;
  *(v5 + 666) = a3;

  v6 = *(v4 + 840);
  v7 = *(v4 + 832);

  return _swift_task_switch(sub_100D114D4, v7, v6);
}

uint64_t sub_100D114D4()
{
  v32 = v0;
  v1 = *(v0 + 912);
  if (v1)
  {
    *(v0 + 928) = [*(v0 + 736) info];
    v2 = swift_dynamicCastClassUnconditional();
    v3 = swift_task_alloc();
    *(v0 + 936) = v3;
    *v3 = v0;
    v3[1] = sub_100D119EC;

    return sub_100C9C834(v1, v2);
  }

  else
  {

    v30 = objc_opt_self();
    v5 = [v30 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 856);
    v28 = *(v0 + 728);
    v29 = *(v0 + 816);
    v12 = static OS_os_log.crlAssert;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 72) = v27;
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v11;
    *(inited + 104) = v15;
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 152) = 3173;
    v16 = v31;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v16;
    v17 = v27;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "Unable to generate poster image.", 32, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v23 file:v24 lineNumber:3173 isFatal:0 format:v25 args:v22];

    sub_100D1621C(v29, v28);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_100D119EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 944) = a1;
  *(v4 + 952) = v1;

  swift_unknownObjectRelease();
  v5 = *(v3 + 840);
  v6 = *(v3 + 832);
  if (v1)
  {
    v7 = sub_100D12324;
  }

  else
  {
    v7 = sub_100D11B50;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100D11B50()
{
  v76 = v0;
  v1 = *(v0 + 944);

  sub_10000630C(v1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v0 + 592);
  sub_1005B981C(&qword_1019FF208);
  type metadata accessor for CRLAssetBackedAssetStorage();
  v2 = swift_dynamicCast();
  v3 = *(v0 + 944);
  if (v2)
  {
    v4 = *(v0 + 792);
    v5 = *(v0 + 784);
    v6 = *(v0 + 736);
    sub_100D13C98(*(v0 + 720) + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v5, type metadata accessor for CRLAssetData);

    sub_100D15784(v5, v4, type metadata accessor for CRLAssetData);
    v7 = [v6 layout];
    type metadata accessor for CRLUSDZLayout();
    swift_dynamicCastClassUnconditional();
    v8 = sub_1008B78D4(v3);

    if (v8)
    {
      [v8 visibleBounds];
      x = v78.origin.x;
      y = v78.origin.y;
      width = v78.size.width;
      height = v78.size.height;
      v79.origin.x = CGRectNull.origin.x;
      v79.origin.y = CGRectNull.origin.y;
      v79.size.width = CGRectNull.size.width;
      v79.size.height = CGRectNull.size.height;
      if (CGRectEqualToRect(v78, v79))
      {
        v74 = objc_opt_self();
        v13 = [v74 _atomicIncrementAssertCount];
        v75 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v75);
        StaticString.description.getter();
        v65 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v14 = String._bridgeToObjectiveC()();

        v15 = [v14 lastPathComponent];

        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 880);
        v18 = *(v0 + 856);
        v68 = *(v0 + 944);
        v69 = *(v0 + 816);
        v66 = *(v0 + 912);
        v67 = *(v0 + 792);
        v70 = *(v0 + 728);
        v71 = *(v0 + 872);
        v19 = static OS_os_log.crlAssert;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v13;
        v21 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v21;
        v22 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 72) = v65;
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v18;
        *(inited + 104) = v22;
        *(inited + 112) = v64;
        *(inited + 120) = v17;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 152) = 3188;
        v23 = v75;
        *(inited + 216) = v21;
        *(inited + 224) = v22;
        *(inited + 192) = v23;
        v24 = v65;
        v25 = v23;
        v26 = static os_log_type_t.error.getter();
        sub_100005404(v19, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v27 = static os_log_type_t.error.getter();
        sub_100005404(v19, &_mh_execute_header, v27, "Unable to calculate bounding rect of object from given pose values.", 67, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v28 = swift_allocObject();
        v28[2] = 8;
        v28[3] = 0;
        v28[4] = 0;
        v28[5] = 0;
        v29 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v30 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v31 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v32 = String._bridgeToObjectiveC()();

        [v74 handleFailureInFunction:v30 file:v31 lineNumber:3188 isFatal:0 format:v32 args:v29];

        sub_100D13C38(v67, type metadata accessor for CRLAssetData);
        sub_10000CAAC(v69, &qword_101A1B870);
        v72(v70, 1, 1, v71);
      }

      else
      {
        v46 = *(v0 + 944);
        v47 = *(v0 + 666);
        v48 = *(v0 + 920);
        v49 = *(v0 + 912);
        v73 = *(v0 + 880);
        v50 = *(v0 + 872);
        v51 = *(v0 + 816);
        v52 = *(v0 + 792);
        v53 = *(v0 + 728);
        [*(v0 + 736) naturalBounds];
        sub_1001217FC(x, y, width, height);
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;

        sub_10000CAAC(v51, &qword_101A1B870);
        v62 = (v53 + *(v50 + 48));
        v63 = v53 + *(v50 + 64);
        sub_100D15784(v52, v53, type metadata accessor for CRLAssetData);
        *v62 = v55;
        v62[1] = v57;
        v62[2] = v59;
        v62[3] = v61;
        *v63 = v48;
        *(v63 + 8) = v47 & 1;
        v73(v53, 0, 1, v50);
      }
    }

    else
    {
      v38 = *(v0 + 912);
      v39 = *(v0 + 880);
      v40 = *(v0 + 872);
      v41 = *(v0 + 816);
      v42 = *(v0 + 792);
      v43 = *(v0 + 728);

      sub_100D13C38(v42, type metadata accessor for CRLAssetData);
      sub_10000CAAC(v41, &qword_101A1B870);
      v39(v43, 1, 1, v40);
    }
  }

  else
  {
    v33 = *(v0 + 912);
    v34 = *(v0 + 880);
    v35 = *(v0 + 872);
    v36 = *(v0 + 816);
    v37 = *(v0 + 728);

    sub_10000CAAC(v36, &qword_101A1B870);
    v34(v37, 1, 1, v35);
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_100D12324()
{
  v1 = v0[114];
  v2 = v0[102];

  sub_10000CAAC(v2, &qword_101A1B870);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D1248C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for CRLAssetData();
  *&v5 = __chkstk_darwin(v35).n128_u64[0];
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 info];
  type metadata accessor for CRLUSDZItem();
  v9 = **(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  (*(v9 + 464))();
  v10 = sub_1009B6B8C();
  v12 = v11;
  swift_unknownObjectRelease();
  v13 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_100024CBC((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = v10;
  *(v16 + 5) = v12;
  v17 = [v1 info];
  v18 = *(**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 416);

  v20 = v18(v19);
  v22 = v21;
  swift_unknownObjectRelease();

  if (String.count.getter() < 1)
  {

    v25 = &selRef_ignoreUrl_;
  }

  else
  {
    v24 = *(v13 + 2);
    v23 = *(v13 + 3);
    if (v24 >= v23 >> 1)
    {
      v13 = sub_100024CBC((v23 > 1), v24 + 1, 1, v13);
    }

    v25 = &selRef_ignoreUrl_;
    *(v13 + 2) = v24 + 1;
    v26 = &v13[16 * v24];
    *(v26 + 4) = v20;
    *(v26 + 5) = v22;
  }

  v27 = [v1 v25[130]];
  v28 = **(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v29 = &off_101A2E658;
  if (v28 != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v4, v7, type metadata accessor for CRLAssetData);
  sub_100D13C38(v4, type metadata accessor for CRLUSDZAssetDataStruct);
  v30 = v7 + *(v35 + 20);
  v18 = *v30;
  v4 = *(v30 + 8);

  sub_100D13C38(v7, type metadata accessor for CRLAssetData);
  v7 = *(v13 + 2);
  v29 = *(v13 + 3);
  v22 = v7 + 1;
  if (v7 >= v29 >> 1)
  {
LABEL_12:
    v13 = sub_100024CBC((v29 > 1), v22, 1, v13);
  }

  *(v13 + 2) = v22;
  v31 = &v13[16 * v7];
  *(v31 + 4) = v18;
  *(v31 + 5) = v4;
  v36 = v13;
  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  v32 = BidirectionalCollection<>.joined(separator:)();

  return v32;
}

uint64_t sub_100D129C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100D129E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100D12A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100D12A88(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDZRep.RenderingStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLUSDZRep.RenderingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100D12C18(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100D12C2C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

void sub_100D12C4C()
{
  sub_100D12ECC(319, &qword_101A1B5A8, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_100D12D30();
    if (v1 <= 0x3F)
    {
      sub_100D12DAC(319);
      if (v2 <= 0x3F)
      {
        sub_100D12ECC(319, &unk_101A1B5C8, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100D12D30()
{
  if (!qword_101A1B5B0)
  {
    type metadata accessor for CRLAsset();
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_101A1B5B0);
    }
  }
}

void sub_100D12DAC(uint64_t a1)
{
  if (!qword_101A1B5B8)
  {
    __chkstk_darwin(a1);
    type metadata accessor for CRLAsset();
    type metadata accessor for URL();
    sub_1005C4E5C(&qword_101A1B5C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_101A1B5B8);
    }
  }
}

void sub_100D12ECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CRLAsset();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_100D12F70()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100D12FE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100D12FE4()
{
  result = qword_101A1B678;
  if (!qword_101A1B678)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_101A1B678);
  }

  return result;
}

void sub_100D13048()
{
  sub_100D12ECC(319, &qword_101A1B5A8, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_100D12ECC(319, &qword_101A1B728, type metadata accessor for CGImage);
    if (v1 <= 0x3F)
    {
      sub_100D12ECC(319, &unk_101A1B730, type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_100D1315C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100D12FE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100D131D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v5);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  v9 = v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
  v10 = v9 >> 6;
  if (v9 >> 6 > 1)
  {
    if (v10 == 2)
    {
      v11 = 0xE100000000000000;
      v12 = 80;
    }

    else
    {
      if (v8 | v9 ^ 0xC0)
      {
        v12 = 17516;
      }

      else
      {
        v12 = 110;
      }

      if (v8 | v9 ^ 0xC0)
      {
        v11 = 0xE200000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }
    }
  }

  else if (v10)
  {
    v13 = (*(v8 + 48) >> 4) & 3;
    v14 = 0xE200000000000000;
    v15 = 22128;
    if (v13 != 1)
    {
      v15 = 77;
      v14 = 0xE100000000000000;
    }

    if (v13)
    {
      v12 = v15;
    }

    else
    {
      v12 = 86;
    }

    if (v13)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0xE100000000000000;
    }
  }

  else
  {
    v11 = 0xE100000000000000;
    v12 = 117;
  }

  v16 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(&v0[v16], v7, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v47 = *v7;
      v106 = *(sub_1005B981C(&qword_101A1B818) + 48);
      v107 = v12;
      v108 = v11;
      v48._countAndFlagsBits = 3825967;
      v48._object = 0xE300000000000000;
      String.append(_:)(v48);
      v49 = &v47[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
      v50 = v47;
      v51 = *&v47[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
      v52 = *(v49 + 4);
      sub_100020E58(v49, v51);
      (*(v52 + 24))(v51, v52);
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v53 = static String._fromSubstring(_:)();
      v55 = v54;

      (*(v2 + 8))(v4, v1);
      v56._countAndFlagsBits = v53;
      v56._object = v55;
      String.append(_:)(v56);

      v57._countAndFlagsBits = 1920099631;
      v57._object = 0xE400000000000000;
      String.append(_:)(v57);

      v34 = v107;
      sub_100D13C38(v106 + v7, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
    }

    else
    {

      sub_1005B981C(&qword_1019F54E0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10146C6B0;
      *(v32 + 56) = type metadata accessor for CRLUSDZRep(0);
      *(v32 + 64) = sub_100D15398(&unk_101A1B830, type metadata accessor for CRLUSDZRep);
      *(v32 + 32) = v0;
      v33 = v0;
      return String.init(format:_:)();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v18 = *v7;
        LODWORD(v106) = v7[8];
        v107 = 0;
        v108 = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        v107 = v12;
        v108 = v11;
        v19._countAndFlagsBits = 3825967;
        v19._object = 0xE300000000000000;
        String.append(_:)(v19);
        v20 = &v18[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
        v21 = v18;
        v22 = *&v18[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
        v23 = *(v20 + 4);
        sub_100020E58(v20, v22);
        (*(v23 + 24))(v22, v23);
        UUID.uuidString.getter();
        String.index(_:offsetBy:)();
        String.subscript.getter();

        v24 = static String._fromSubstring(_:)();
        v26 = v25;

        (*(v2 + 8))(v4, v1);
        v27._countAndFlagsBits = v24;
        v27._object = v26;
        String.append(_:)(v27);

        v28._countAndFlagsBits = 0x526C2F64276C642FLL;
        v28._object = 0xE90000000000003ALL;
        String.append(_:)(v28);
        if (v106)
        {
          v29 = 89;
        }

        else
        {
          v29 = 78;
        }

        v30 = *(sub_1005B981C(&qword_101A1B820) + 64);
        v31._countAndFlagsBits = v29;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);

        goto LABEL_37;
      }

      v58 = *v7;
      v59 = sub_1005B981C(&unk_101A1B808);
      v60 = &v7[*(v59 + 64)];
      v62 = *v60;
      v61 = *(v60 + 1);
      v63 = &v7[*(v59 + 80)];
      v64 = *v63;
      v99 = v63[1];
      v98 = v63[2];
      v103 = v63[3];
      v104 = v59;
      v101 = v63[4];
      v102 = v64;
      v66 = v63[5];
      v65 = v63[6];
      v96 = v61;
      v97 = v66;
      v100 = v65;
      v107 = v12;
      v108 = v11;
      v67._countAndFlagsBits = 3825967;
      v67._object = 0xE300000000000000;
      String.append(_:)(v67);
      v106 = v58;
      v69 = *&v58[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
      v68 = *&v58[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
      sub_100020E58(&v58[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v69);
      (*(v68 + 24))(v69, v68);
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v70 = static String._fromSubstring(_:)();
      v72 = v71;

      v73 = *(v2 + 8);
      v73(v4, v1);
      v74._countAndFlagsBits = v70;
      v74._object = v72;
      String.append(_:)(v74);

      v75._countAndFlagsBits = 3830319;
      v75._object = 0xE300000000000000;
      String.append(_:)(v75);
      ObjectType = swift_getObjectType();
      v77 = *(v96 + 8);
      v105 = v62;
      v77(ObjectType);
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v78 = static String._fromSubstring(_:)();
      v80 = v79;

      v73(v4, v1);
      v81._countAndFlagsBits = v78;
      v81._object = v80;
      String.append(_:)(v81);

      v82._countAndFlagsBits = 47;
      v82._object = 0xE100000000000000;
      String.append(_:)(v82);
      if (v97 >> 62)
      {
        if (v97 >> 62 != 1)
        {
          v85 = v106;
          v90 = v98 | v99;
          v91 = v101 | v100;
          v83 = 0xE300000000000000;
          v86 = v104;
          if (v97 != 0x8000000000000000 || v90 | v102 | v103 | v91)
          {
            v92 = v97 == 0x8000000000000000;
            v93 = v90 | v103 | v91;
            v95 = v102 == 1 && v93 == 0;
            if (v92 && v95)
            {
              v84 = 7431538;
            }

            else
            {
              v84 = 1684107116;
            }

            if (!v92 || !v95)
            {
              v83 = 0xE400000000000000;
            }
          }

          else
          {
            v84 = 7563620;
          }

          goto LABEL_36;
        }

        sub_100863E8C(v102, v99, v98, v103, v101, v97);
        v83 = 0xE300000000000000;
        v84 = 7500389;
      }

      else
      {
        sub_100863E8C(v102, v99, v98, v103, v101, v97);
        v83 = 0xE400000000000000;
        v84 = 1684956530;
      }

      v85 = v106;
      v86 = v104;
LABEL_36:
      v30 = *(v86 + 48);
      v87 = v83;
      String.append(_:)(*&v84);

      swift_unknownObjectRelease();
LABEL_37:

      v34 = v107;
      v88 = type metadata accessor for URL();
      (*(*(v88 - 8) + 8))(&v7[v30], v88);
      return v34;
    }

    v35 = *v7;
    v106 = *(sub_1005B981C(&qword_101A1B828) + 48);
    v107 = v12;
    v108 = v11;
    v36._countAndFlagsBits = 3825967;
    v36._object = 0xE300000000000000;
    String.append(_:)(v36);
    v37 = &v35[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
    v38 = v35;
    v39 = *&v35[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v40 = *(v37 + 4);
    sub_100020E58(v37, v39);
    (*(v40 + 24))(v39, v40);
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v41 = static String._fromSubstring(_:)();
    v43 = v42;

    v44 = *(v2 + 8);
    v44(v4, v1);
    v45._countAndFlagsBits = v41;
    v45._object = v43;
    String.append(_:)(v45);

    v46._countAndFlagsBits = 7103535;
    v46._object = 0xE300000000000000;
    String.append(_:)(v46);

    v34 = v107;
    v44(v106 + v7, v1);
  }

  return v34;
}

uint64_t sub_100D13C38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D13C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D13D00(void *a1, id a2, uint64_t a3, char a4)
{
  if ((a4 & 0xC0) == 0x40 && (v6 = a3, (*(a3 + 48) & 0x30) == 0x20) && *(a3 + 16) == a1 && (v7 = [*(a3 + 32) layer], v7, v7 == a2))
  {
  }

  else
  {
    v8 = [objc_allocWithZone(CRLCanvasRenderable) initWithCALayer:a2];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = &off_1018897F8;
    *(v6 + 32) = v8;
    *(v6 + 40) = 0;
    *(v6 + 48) = 32;
    v9 = a1;
  }

  return v6;
}

uint64_t sub_100D13DF8(uint64_t a1, id a2, uint64_t a3, char a4)
{
  if ((a4 & 0xC0) == 0x40 && (v6 = a3, (*(a3 + 48) & 0x30) == 0x20) && *(a3 + 16) == a1 && (v7 = [*(a3 + 32) layer], v7, v7 == a2))
  {
  }

  else
  {
    v8 = [objc_allocWithZone(CRLCanvasRenderable) initWithCALayer:a2];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = &off_101889DF8;
    *(v6 + 32) = v8;
    *(v6 + 40) = 0;
    *(v6 + 48) = 32;
  }

  return v6;
}

uint64_t sub_100D13EF4(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 & 0xC0) != 0x40 || (v8 = *(a3 + 16), ((*(a3 + 48) >> 4) & 3u) > 1) || (sub_100006370(0, &qword_1019F6D00), (static NSObject.== infix(_:_:)() & 1) == 0) || (v9 = a3, v8 != a1))
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = &off_1018B9FF0;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    *(v9 + 48) = a4 | 0x10;

    v10 = a2;
  }

  sub_100D1548C(a3, a4);
  return v9;
}

id sub_100D13FF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v5)
  {
    sub_100006370(0, &qword_1019F54D0);
    v6 = v5;
    if (static NSObject.== infix(_:_:)())
    {
      v7 = type metadata accessor for CRLUSDZPlayPauseKnobTracker();
      v8 = objc_allocWithZone(v7);
      ObjectType = swift_getObjectType();
      v10 = &v8[OBJC_IVAR____TtC8Freeform27CRLUSDZPlayPauseKnobTracker_delegate];
      *(v10 + 3) = ObjectType;
      *(v10 + 4) = &off_1018A11D0;
      *v10 = a2;
      v11 = objc_msgSendSuper2(&v22, "initWithRep:knob:", a2, v6, v8, v7, v23.receiver, v23.super_class);
LABEL_8:
      v20 = v11;

      return v20;
    }
  }

  v12 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_rotationKnob);
  if (v12)
  {
    sub_100006370(0, &qword_1019F54D0);
    v6 = v12;
    if (static NSObject.== infix(_:_:)())
    {
      v13 = type metadata accessor for CRLUSDZRotationKnobTracker();
      v14 = objc_allocWithZone(v13);
      v15 = &v14[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_startingUnscaledCanvasPosition];
      *v15 = 0;
      *(v15 + 1) = 0;
      v16 = &v14[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_lastUnscaledCanvasPosition];
      *v16 = 0;
      *(v16 + 1) = 0;
      v17 = &v14[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_totalRotationDeltaForRotateSession];
      *v17 = 0;
      *(v17 + 1) = 0;
      *&v14[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_startingOrientationForRotateSession] = xmmword_10146E840;
      *&v14[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_currentOrientationForRotateSession] = xmmword_10146E840;
      v18 = swift_getObjectType();
      v19 = &v14[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate];
      *(v19 + 3) = v18;
      *(v19 + 4) = &off_1018A11A8;
      *v19 = a2;
      v11 = objc_msgSendSuper2(&v23, "initWithRep:knob:", a2, v6, v22.receiver, v22.super_class, v14, v13);
      goto LABEL_8;
    }
  }

  return 0;
}

void sub_100D141E0(void *a1)
{
  v2 = v1;
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = [v2 debugDescription];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v11 = [a1 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  *(inited + 72) = v12;
  *(inited + 80) = v14;
  v15 = static os_log_type_t.debug.getter();
  sub_100005404(v4, &_mh_execute_header, v15, "(USDZRep) [%{public}@] begin rotation (%@)", 42, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v16 = [v2 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B9664();

  v17 = *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController];
  v18 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState;
  v19 = *(v17 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState);
  if ((v19 | 4) == 4)
  {
    v20 = *(v17 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
    if (v20 && *(v20 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1)
    {
      sub_100F97EA4(1);
      sub_100D052F0(1);
      return;
    }

    if (*(v17 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) > 2u)
    {
      if (v19 == 3)
      {
        [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v17 selector:"hideWithImmediately:" object:0];
        *(v17 + v18) = 2;
        return;
      }
    }

    else if ((v19 - 1) < 2)
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v17 selector:"hideWithImmediately:" object:0];
      return;
    }

    sub_100F984C4(0);
  }
}

void sub_100D144A8(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B9810(*(a1 + OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_currentOrientationForRotateSession));

  v5 = *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController];
  if ((*(v5 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) | 4) != 4)
  {
    sub_100F97F98(1);
    v6 = *(v5 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
    if (v6)
    {
      if (*(v6 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1)
      {
        sub_100D05494();
      }
    }
  }

  v7 = [v2 interactiveCanvasController];
  [v7 layoutIfNeeded];
}

void sub_100D145D4(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  if (a1)
  {
    v7 = &v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_animationIsPaused];
    v8 = &v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v9 = v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
    v10 = v9 & 0xC0;
    if (v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_animationIsPaused] == 1)
    {
      if (v10 == 64)
      {
        v11 = *v8;
        v12 = type metadata accessor for TaskPriority();
        v13 = *(*(v12 - 8) + 56);
        v37 = v11[1];
        v13(v6, 1, 1, v12);
        type metadata accessor for MainActor();
        sub_100D1548C(v11, v9);
        v14 = v1;
        swift_unknownObjectRetain();
        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = &protocol witness table for MainActor;
        *(v16 + 32) = v14;
        *(v16 + 40) = v37;
        *(v16 + 56) = &unk_1014AC460;
        *(v16 + 64) = 0;
        v17 = &unk_1014AC468;
LABEL_9:
        sub_10064191C(0, 0, v6, v17, v16);

        sub_100D15590(v11, v9);
        goto LABEL_16;
      }

      sub_100006370(0, &qword_1019F6EE0);
      v31 = static OS_os_log.default.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = "Incorrect renderingState to resume playback.";
      v34 = v31;
      v35 = 44;
    }

    else
    {
      if (v10 == 64)
      {
        v11 = *v8;
        v25 = type metadata accessor for TaskPriority();
        v26 = *(*(v25 - 8) + 56);
        v37 = v11[1];
        v26(v6, 1, 1, v25);
        type metadata accessor for MainActor();
        v27 = v1;
        sub_100D1548C(v11, v9);
        swift_unknownObjectRetain();
        v28 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        *(v16 + 16) = v28;
        *(v16 + 24) = &protocol witness table for MainActor;
        *(v16 + 32) = v27;
        *(v16 + 40) = v37;
        *(v16 + 56) = &unk_1014AC450;
        *(v16 + 64) = 0;
        v17 = &unk_1014AC458;
        goto LABEL_9;
      }

      sub_100006370(0, &qword_1019F6EE0);
      v31 = static OS_os_log.default.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = "Incorrect renderingState to start playback.";
      v34 = v31;
      v35 = 43;
    }

    sub_100005404(v34, &_mh_execute_header, v32, v33, v35, 2, _swiftEmptyArrayStorage);

LABEL_16:
    v36 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter;
    if ((v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter] & 1) == 0)
    {
      [v2 performSelector:"hideMiniFormatterIfNecessary" withObject:0 afterDelay:3.25];
      v2[v36] = 1;
    }

    goto LABEL_18;
  }

  v18 = v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
  if ((v18 & 0xC0) == 0x40)
  {
    v19 = *&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v20 = type metadata accessor for TaskPriority();
    v21 = *(*(v20 - 8) + 56);
    v37 = v19[1];
    v21(v6, 1, 1, v20);
    type metadata accessor for MainActor();
    v22 = v1;
    sub_100D1548C(v19, v18);
    swift_unknownObjectRetain();
    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = &protocol witness table for MainActor;
    *(v24 + 32) = v22;
    *(v24 + 40) = v37;
    *(v24 + 56) = &unk_1014AC440;
    *(v24 + 64) = 0;
    sub_10064191C(0, 0, v6, &unk_1014AC448, v24);

    sub_100D15590(v19, v18);
  }

  else
  {
    sub_100006370(0, &qword_1019F6EE0);
    v29 = static OS_os_log.default.getter();
    v30 = static os_log_type_t.default.getter();
    sub_100005404(v29, &_mh_execute_header, v30, "Incorrect renderingState to pause playback.", 43, 2, _swiftEmptyArrayStorage);
  }

  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_animationIsPaused] = 1;
  v7 = &v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter];
  if (v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter] == 1)
  {
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v2 selector:"hideMiniFormatterIfNecessary" object:0];
LABEL_18:
    *v7 = 0;
  }

  sub_100F97EA4(a1 & 1);
}

uint64_t sub_100D14B34(uint64_t result, char a2)
{
  if ((a2 & 0xC0) == 0x40)
  {
    v2 = *(result + 48);
    if ((v2 & 0x30) == 0x10)
    {
      return sub_100D14B34(*(result + 40), v2 & 0xFFFFFFCF);
    }
  }

  return result;
}

void sub_100D14F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = objc_opt_self();
  v4 = [v26 _atomicIncrementAssertCount];
  v28 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v28);
  StaticString.description.getter();
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v4;
  v13 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v13;
  v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v14;
  *(inited + 72) = v5;
  *(inited + 136) = &type metadata for String;
  v15 = sub_1000053B0();
  *(inited + 112) = v8;
  *(inited + 120) = v10;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v15;
  *(inited + 152) = a3;
  v16 = v28;
  *(inited + 216) = v13;
  *(inited + 224) = v14;
  *(inited + 192) = v16;
  v17 = v5;
  v18 = v16;
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v11, &_mh_execute_header, v20, a1, 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v21 = swift_allocObject();
  v21[2] = 8;
  v21[3] = 0;
  v21[4] = 0;
  v21[5] = 0;
  v22 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  [v26 handleFailureInFunction:v23 file:v24 lineNumber:a3 isFatal:0 format:v25 args:v22];
}

uint64_t sub_100D152F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (!v2 || *(v2 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) != 1)
  {
    return 0;
  }

  if ((*(v1 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) | 4) == 4)
  {
    sub_100F97EA4(1);
    sub_100D052F0(1);
  }

  else
  {
    sub_100F97F98(0);
    sub_100D05494();
  }

  return 1;
}

uint64_t sub_100D15398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D153E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002D3D4;

  return sub_100D04764(a1, a2, v6);
}

id sub_100D1548C(id result, unsigned __int8 a2)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 2)
    {
      return result;
    }
  }

  else
  {
    if (!(a2 >> 6))
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100D154B4(uint64_t a1)
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
  v11[1] = sub_10002D4C8;

  return sub_100D039C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100D15590(id a1, unsigned __int8 a2)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (!(a2 >> 6))
    {
LABEL_3:

      return;
    }
  }
}

uint64_t sub_100D155B8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002D4C8;

  return sub_100D02490(a1, a2, v8, v2 + v7);
}

uint64_t sub_100D156A8(uint64_t a1)
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
  v11[1] = sub_10002D3D4;

  return sub_100D039C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100D15784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D1580C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100CFE9C4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100D15910()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100D15A74()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100D15B40(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100CFC64C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100D15C44(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 == 2)
    {

      return sub_10086756C(result, a2, a3);
    }
  }

  else if (v5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_100D15CC4(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 == 2)
    {

      return sub_100863EEC(result, a2, a3);
    }
  }

  else if (v5)
  {
  }

  else
  {
  }

  return result;
}

void sub_100D15D44(void *a1, void *a2, unsigned int a3)
{
  v4 = (a3 >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {

      goto LABEL_5;
    }
  }

  else
  {
    if (!v4)
    {

LABEL_5:

      return;
    }

    v6 = a3;

    sub_100D15590(a2, v6 & 0xCF);
  }
}

uint64_t sub_100D15DC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002D4C8;

  return sub_100D02F1C(a1, a2, v6);
}

uint64_t sub_100D15E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

id sub_100D15ED4(id result, void *a2, unsigned int a3)
{
  v4 = (a3 >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {

      return result;
    }
  }

  else
  {
    if (!v4)
    {

      return result;
    }

    v6 = a3;
    v7 = result;

    return sub_100D1548C(a2, v6 & 0xCF);
  }

  return result;
}

uint64_t sub_100D15F50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100D0AC34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100D16024(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002D4C8;

  return sub_100D09150(a1, a2, v6);
}

uint64_t sub_100D160F0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100D16140(uint64_t a1)
{
  v4 = v1[1].n128_i64[0];
  v5 = v1[1].n128_i64[1];
  v6 = v1[2].n128_i64[0];
  v11 = v1[3];
  v8 = v1[4].n128_u64[0];
  v7 = v1[4].n128_u64[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100D0FD3C(v11, a1, v4, v5, v6, v8, v7);
}

uint64_t sub_100D1621C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1B870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D1628C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 15);
}

uint64_t sub_100D162E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 17))
  {
    return (*a1 + 30);
  }

  v3 = ((2 * *(a1 + 16)) & 0x1C | (*(a1 + 16) >> 4) & 3) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100D16334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
    }
  }

  return result;
}

unint64_t sub_100D163D4()
{
  result = qword_101A1B890;
  if (!qword_101A1B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1B890);
  }

  return result;
}

uint64_t sub_100D1643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  sub_1005B981C(&qword_1019FB750);
  v7[30] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v7[31] = swift_task_alloc();
  v7[32] = type metadata accessor for CRLPreviewImages.Item(0);
  v7[33] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[34] = v8;
  v9 = *(v8 - 8);
  v7[35] = v9;
  v7[36] = *(v9 + 64);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();

  return _swift_task_switch(sub_100D165C8, 0, 0);
}

uint64_t sub_100D165C8()
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = static OS_os_log.shareState;
  v0[40] = static OS_os_log.shareState;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "No share existed. Preparing a new share.", 40, 2, _swiftEmptyArrayStorage);
  if (v1 >> 60 == 15)
  {
    type metadata accessor for MainActor();
    v0[41] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100D16740;
  }

  else
  {
    v8 = v0[23];
    v9 = v0[24];
    v0[45] = v8;
    v0[46] = v9;
    v0[47] = type metadata accessor for MainActor();
    sub_100024E84(v8, v9);
    v0[48] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v10;
    v7 = sub_100D16B60;
  }

  return _swift_task_switch(v7, v4, v6);
}

void sub_100D16740()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager);

  swift_unknownObjectRelease();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *(v3 + 16);
  v0[42] = v4;
  v4;

  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_100D168A0;
  v6 = v0[25];
  v7.n128_u64[0] = 2.0;

  (sub_1006ED3F8)(v6, v7);
}

uint64_t sub_100D168A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 352) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100D16A4C, 0, 0);
  }
}

uint64_t sub_100D16A4C()
{
  v1 = [*(v0 + 352) UIImage];
  v2 = UIImagePNGRepresentation(v1);

  v3 = *(v0 + 352);
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *(v0 + 360) = v4;
  *(v0 + 368) = v6;
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 376) = type metadata accessor for MainActor();
  sub_100024E84(v7, v8);
  *(v0 + 384) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D16B60, v10, v9);
}

uint64_t sub_100D16B60()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharedBoardThumbnailManager);

  v3 = swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v7 = *(v6 + 16);
  v0[49] = v7;
  v8 = v7;

  v0[50] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5 = v10;
  v0[51] = v9;
  v0[52] = v10;
  v3 = sub_100D16CA0;
  v4 = v9;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100D16CA0()
{
  v1 = *(v0 + 264);
  sub_10000C7D4(*(v0 + 200), v1, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for CRLPreviewImages.LookupKey(0);
  v3 = objc_allocWithZone(v2);
  sub_10000C7D4(v1, &v3[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], type metadata accessor for CRLPreviewImages.Item);
  v4 = &v3[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v3[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = 0x4000000000000000;
  *(v0 + 168) = v3;
  *(v0 + 176) = v2;
  v5 = objc_msgSendSuper2((v0 + 168), "init");
  *(v0 + 424) = v5;
  sub_100D19D04(v1);
  v6 = swift_task_alloc();
  *(v0 + 432) = v6;
  *v6 = v0;
  v6[1] = sub_100D16E08;

  return sub_1006DA940(v5);
}

uint64_t sub_100D16E08(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  v5 = *(v3 + 416);
  v6 = *(v3 + 408);
  if (v1)
  {
    v7 = sub_100D17268;
  }

  else
  {
    v7 = sub_100D16F4C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100D16F4C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[31];
  sub_1006DA498(v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[55];
  v6 = v0[53];
  if (v4 == 1)
  {
    v7 = v0[49];
    v8 = v0[31];

    sub_100686028(v8);
    type metadata accessor for CRLPreviewImages.CacheError(0);
    sub_100D19D60();
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v0[66] = v9;

    return _swift_task_switch(sub_100D17870, 0, 0);
  }

  else
  {
    v10 = v0[53];
    v12 = v0[37];
    v11 = v0[38];
    v29 = v12;
    v14 = v0[35];
    v13 = v0[36];
    v15 = v0[34];
    v16 = v0[30];
    v30 = *(v14 + 32);
    v30(v11, v0[31], v15);
    static TaskPriority.background.getter();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    (*(v14 + 16))(v12, v11, v15);
    v18 = v10;

    v19 = static MainActor.shared.getter();
    v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 2) = v19;
    *(v22 + 3) = &protocol witness table for MainActor;
    *(v22 + 4) = v18;
    v30(&v22[v20], v29, v15);
    *&v22[v21] = v5;
    v23 = sub_100796D9C(0, 0, v16, &unk_1014AC6D8, v22);
    v0[57] = v23;
    v24 = swift_task_alloc();
    v0[58] = v24;
    v25 = sub_1005B981C(&unk_1019F6B40);
    *v24 = v0;
    v24[1] = sub_100D172E8;
    v26 = v0[39];
    v27 = v0[34];

    return Task.value.getter(v26, v23, v27, v25, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100D17268()
{
  v1 = *(v0 + 424);

  *(v0 + 528) = *(v0 + 448);

  return _swift_task_switch(sub_100D17870, 0, 0);
}

uint64_t sub_100D172E8()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_100D177B8;
  }

  else
  {
    v5 = sub_100D1743C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D1743C()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[35];

  v6 = *(v5 + 8);
  v0[60] = v6;
  v0[61] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return _swift_task_switch(sub_100D174F8, 0, 0);
}

uint64_t sub_100D174F8()
{
  v1 = v0[60];
  v2 = v0[39];
  v3 = v0[34];
  v4 = v0[28];
  v5 = objc_allocWithZone(CKAsset);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v0[62] = [v5 initWithFileURL:v7];

  v1(v2, v3);

  return _swift_task_switch(sub_100D175C0, v4, 0);
}

uint64_t sub_100D175C0()
{
  v1 = v0[27];
  v2 = sub_100EFF9E4(v0[25]);
  v0[63] = v2;
  v3 = swift_task_alloc();
  v0[64] = v3;
  *v3 = v0;
  v3[1] = sub_100D1767C;
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[26];

  return sub_1008421B0(v2, v6, v1, v4, v5);
}

uint64_t sub_100D1767C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v5 = *(v4 + 224);
    v6 = sub_100D17920;
  }

  else
  {

    *(v4 + 536) = a1;
    v6 = sub_100D17A48;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D177B8()
{
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[35];

  (*(v5 + 8))(v3, v4);
  v0[66] = v0[59];

  return _swift_task_switch(sub_100D17870, 0, 0);
}

uint64_t sub_100D17870()
{
  sub_100025870(v0[45], v0[46]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100D17920()
{

  return _swift_task_switch(sub_100D17988, 0, 0);
}

uint64_t sub_100D17988()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  sub_100025870(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100D17A48()
{
  v1 = v0[67];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[40];
  v16 = v0[62];
  v5 = v0[29];
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 56) = sub_100006370(0, &qword_1019F52C0);
  *(inited + 64) = sub_10000FE24(&qword_101A1BA40, &qword_1019F52C0);
  *(inited + 32) = v1;
  v7 = v1;
  v8 = UUID.uuidString.getter();
  v10 = v9;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v8;
  *(inited + 80) = v10;
  *(inited + 136) = sub_100006370(0, &qword_1019F82F8);
  *(inited + 144) = sub_10000FE24(&qword_101A1BA50, &qword_1019F82F8);
  *(inited + 112) = v5;
  v11 = v5;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v12, "New share: %@ for boardID: %@ in container %@.", 46, 2, inited);
  sub_100025870(v3, v2);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();

  v13 = v0[1];
  v14 = v0[67];

  return v13(v14);
}

id sub_100D17C74(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a2;
  v36 = a4;
  v37 = a1;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - v13;
  type metadata accessor for CRLSendACopyHelper();
  v15 = swift_allocObject();
  v15[2] = a3;
  v16 = *&a3[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store];
  v17 = qword_1019F1588;
  v18 = a3;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = qword_101AD6518;
  type metadata accessor for CRLPublicCloudRecordProvider();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v19;

  v23 = [v20 publicCloudDatabase];

  v15[3] = v22;
  v15[4] = v22;
  v15[5] = v21;
  v15[6] = &off_101891C08;
  v15[7] = v23;
  v15[8] = v21;
  v24 = [objc_allocWithZone(NSProgress) init];
  [v24 setCancellable:0];
  [v24 publish];
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  sub_10000C7D4(v36, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  v26 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v15;
  sub_1005EB270(v11, v29 + v26);
  v30 = (v29 + v27);
  v31 = v37;
  *v30 = v38;
  v30[1] = a6;
  v32 = (v29 + v28);
  v33 = v39;
  *v32 = v31;
  v32[1] = v33;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v34 = v24;

  sub_10064191C(0, 0, v14, &unk_1014AC6C0, v29);

  return v24;
}

id sub_100D17FB0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_100AF4958, v4);

  return v5;
}

uint64_t sub_100D1808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v19;
  v8[3] = v20;
  ObjectType = swift_getObjectType();
  v17 = (*(a8 + 8) + **(a8 + 8));
  v14 = swift_task_alloc();
  v8[4] = v14;
  *v14 = v8;
  v14[1] = sub_100D181E8;
  v15.n128_u64[0] = 2.0;

  return v17(a4, a5, a6, ObjectType, a8, v15);
}

uint64_t sub_100D181E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100D19EF4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100D19EF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D1834C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a7;
  v37 = a8;
  v33 = a4;
  v34 = a1;
  v35 = a2;
  v38 = a10;
  v32[1] = a9;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v17 - 8);
  v19 = v32 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_10000C7D4(a3, v16, type metadata accessor for CRLBoardIdentifier);
  v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1005EB270(v16, v25 + v21);
  v26 = (v25 + v22);
  *v26 = v33;
  v26[1] = a5;
  v27 = (v25 + v23);
  v29 = v35;
  v28 = v36;
  *v27 = a6;
  v27[1] = v28;
  v30 = (v25 + v24);
  *v30 = v34;
  v30[1] = v29;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;

  swift_unknownObjectRetain();

  sub_10064191C(0, 0, v19, v38, v25);

  return 0;
}

uint64_t sub_100D18588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v19;
  v8[3] = v20;
  ObjectType = swift_getObjectType();
  v17 = (*(a8 + 8) + **(a8 + 8));
  v14 = swift_task_alloc();
  v8[4] = v14;
  *v14 = v8;
  v14[1] = sub_100D186E4;
  v15.n128_u64[0] = 2.0;

  return v17(a4, a5, a6, ObjectType, a8, v15);
}

uint64_t sub_100D186E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100D188CC;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100D1880C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D1880C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = [v1 PNGRepresentation];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v2(v4, v6, 0);
  sub_10002640C(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D188CC()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

id sub_100D18984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v53 = a5;
  v51 = a4;
  v49 = a3;
  v44 = a1;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v9 - 8);
  v50 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UTType();
  v46 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(LPLinkMetadata) init];
  v48 = v15;
  v42 = a2;
  v16 = String._bridgeToObjectiveC()();
  [v15 setTitle:v16];

  v40[0] = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  v17 = *(v12 + 8);
  v45 = v12 + 8;
  v47 = v17;
  v17(v14, v11);
  v18 = String._bridgeToObjectiveC()();

  v43 = type metadata accessor for CRLBoardIdentifier;
  v19 = v50;
  sub_10000C7D4(a1, v50, type metadata accessor for CRLBoardIdentifier);
  v20 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1005EB270(v19, v23 + v20);
  v24 = (v23 + v21);
  *v24 = a2;
  v24[1] = v49;
  v25 = (v23 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  v26 = v52;
  *v25 = v51;
  v25[1] = v26;
  *(v23 + v22) = v53;
  v58 = sub_100D18E8C;
  v59 = v23;
  aBlock = _NSConcreteStackBlock;
  v55 = *"";
  v40[1] = &v56;
  v56 = sub_100648E30;
  v57 = &unk_1018A1708;
  v27 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  v28 = v40[0];
  [v40[0] registerDataRepresentationForTypeIdentifier:v18 visibility:0 loadHandler:v27];
  _Block_release(v27);

  v29 = v48;
  [v48 setImageProvider:v28];
  v30 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  v47(v14, v46);
  v31 = String._bridgeToObjectiveC()();

  v32 = v50;
  sub_10000C7D4(v44, v50, v43);
  v33 = swift_allocObject();
  sub_1005EB270(v32, v33 + v20);
  v34 = (v33 + v21);
  v35 = v49;
  *v34 = v42;
  v34[1] = v35;
  v36 = (v33 + v41);
  v37 = v52;
  *v36 = v51;
  v36[1] = v37;
  *(v33 + v22) = v53;
  v58 = sub_100D18EAC;
  v59 = v33;
  aBlock = _NSConcreteStackBlock;
  v55 = *"";
  v56 = sub_100648E30;
  v57 = &unk_1018A1758;
  v38 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v30 registerDataRepresentationForTypeIdentifier:v31 visibility:0 loadHandler:v38];
  _Block_release(v38);

  [v29 setIconProvider:v30];
  return v29;
}

uint64_t sub_100D18ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D1834C(a1, a2, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t sub_100D18FA8(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002D4C8;

  return sub_100D18588(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_100D19124()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100D19268(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002D4C8;

  return sub_100D1808C(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

id sub_100D193E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v50 = a7;
  v48 = a4;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController);
  v16 = *(*(v47 + 112) + 112);
  v17 = objc_allocWithZone(NSItemProvider);
  v18 = v16;
  v19 = [v17 init];
  v20 = [objc_opt_self() standardOptions];
  [v20 setSupportAllowingAddedParticipantsToInviteOthers:1];
  if (a1)
  {
    v21 = qword_1019F22C8;
    v22 = a1;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v25 = [v22 recordChangeTag];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    v40 = 7104878;
    if (v29)
    {
      v40 = v27;
    }

    v41 = 0xE300000000000000;
    if (v29)
    {
      v41 = v29;
    }

    *(inited + 32) = v40;
    *(inited + 40) = v41;
    v42 = static os_log_type_t.default.getter();
    sub_100005404(v23, &_mh_execute_header, v42, "A share already exists. Creating item provider with existing share. e-tag:%{public}@", 84, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    NSItemProvider.registerCKShare(_:container:allowedSharingOptions:)(v22, v18, v20);
  }

  else
  {
    sub_10000C7D4(a3, &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
    v30 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = a5;
    v46 = v20;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = a6;
    v44 = a6;
    v35 = v50;
    *(v34 + 24) = v50;
    sub_1005EB270(v15, v34 + v30);
    v36 = (v34 + v31);
    v37 = v47;
    v38 = v45;
    *v36 = v48;
    v36[1] = v38;
    *(v34 + v32) = v37;
    *(v34 + v33) = v18;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
    v20 = v46;
    v39 = v18;
    sub_100024E84(v44, v35);

    NSItemProvider.registerCKShare(container:allowedSharingOptions:preparationHandler:)();
  }

  return v19;
}

id sub_100D1977C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = [objc_allocWithZone(NSItemProvider) init];
  sub_100006370(0, &qword_101A1B9D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10000C7D4(a2, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_1005EB270(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a3;
  v15[1] = a4;
  aBlock[4] = sub_100D19988;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100D17FB0;
  aBlock[3] = &unk_1018A17F8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v11 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v16];
  _Block_release(v16);
  return v11;
}

id sub_100D19988(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_100D17C74(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_100D19A3C(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v15 = v1[2];
  v8 = v1[4];
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002D3D4;

  return sub_100B70BC8(a1, v15, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t sub_100D19BA8()
{
  v2 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v0 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v5);
  v12 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1008E6B18;

  return sub_100D1643C(v6, v7, v0 + v3, v9, v10, v11, v12);
}

uint64_t sub_100D19D04(uint64_t a1)
{
  v2 = type metadata accessor for CRLPreviewImages.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100D19D60()
{
  result = qword_1019FB760;
  if (!qword_1019FB760)
  {
    type metadata accessor for CRLPreviewImages.CacheError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB760);
  }

  return result;
}

uint64_t sub_100D19DB8(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1006DAE8C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t *sub_100D19F00(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1005B981C(&qword_101A128E8);
  __chkstk_darwin(v5 - 8);
  v64 = &v59 - v6;
  v7 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v7);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v65 = &v59 - v14;
  v66 = v11;
  if (a1)
  {
    v61 = v13;
    v62 = v4;
    v60 = objc_opt_self();
    v16 = [v60 _atomicIncrementAssertCount];
    *&v67[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v67);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_1005CF000();
    *(inited + 96) = v25;
    v26 = sub_1005CF04C();
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 53;
    v28 = v17;
    v29 = *&v67[0];
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v29;
    v30 = v28;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v33, "Cannot clear CRDT metadata for unknown item's specific data.", 60, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v36 file:v37 lineNumber:53 isFatal:0 format:v38 args:v35];

    v39 = *(*v2 + 736);
    swift_beginAccess();
    v11 = v66;
    sub_10000BE14(v2 + v39, v66, &unk_101A226A0);
    sub_100AE4280();
    v15 = v65;
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v11, &unk_101A226A0);
  }

  else
  {
    v40 = *(v4 + 736);
    swift_beginAccess();
    sub_10000BE14(v2 + v40, v15, &unk_101A226A0);
  }

  sub_10000BE14(v15, v11, &unk_101A226A0);
  v41 = *(v2 + qword_101A1BA58);
  v61 = *(v2 + qword_101A1BA58 + 8);
  v62 = v41;
  v42 = *(v2 + qword_101A1BA58 + 16);
  v43 = *(v2 + qword_101A1BA58 + 17);
  v44 = *(v2 + qword_101A1BA60);
  v45 = *(v2 + qword_101A1BA60 + 8);
  v46 = qword_101AD7B90;
  swift_beginAccess();
  v47 = v64;
  sub_10000BE14(v2 + v46, v64, &qword_101A128E8);
  v48 = *(v2 + 5);
  v67[0] = *(v2 + 3);
  v67[1] = v48;
  v68 = *(v2 + 56);
  v49 = v2[2];
  v50 = swift_allocObject();
  v51 = qword_101AD7B90;
  v52 = sub_1005B981C(&qword_101A12928);
  (*(*(v52 - 8) + 56))(v50 + v51, 1, 1, v52);
  v53 = v50 + qword_101A1BA58;
  v54 = v61;
  *v53 = v62;
  *(v53 + 8) = v54;
  *(v53 + 16) = v42;
  *(v53 + 17) = v43;
  v55 = (v50 + qword_101A1BA60);
  *v55 = v44;
  v55[1] = v45;
  swift_beginAccess();
  sub_100024E98(v44, v45);
  sub_100B6D33C(v47, v50 + v51);
  swift_endAccess();
  v56 = v66;
  v57 = v63;
  sub_10000BE14(v66, v63, &unk_101A226A0);
  sub_10000BE14(v57, v50 + *(*v50 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v57, &unk_101A226A0);
  sub_10000CAAC(v47, &qword_101A128E8);
  sub_10000CAAC(v56, &unk_101A226A0);
  sub_10000CAAC(v65, &unk_101A226A0);
  return sub_100747AF0(v67, v49);
}

uint64_t sub_100D1A6AC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17[-v10];
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1 && (v1[16] & 4) != 0 || (v12 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap, swift_beginAccess(), *(*(a1 + v12) + 16)) && (v3[16] & 2) != 0)
  {
    sub_1006B305C();
    swift_allocError();
    *v16 = 14;
    return swift_willThrow();
  }

  else
  {
    v13 = *(*v3 + 736);
    swift_beginAccess();
    sub_10124DE14(a1);
    result = swift_endAccess();
    if (!v2)
    {
      sub_10000BE14(&v3[v13], v11, &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v11, &unk_101A226A0);
      v15 = *(*v3 + 744);
      swift_beginAccess();
      (*(v6 + 40))(&v3[v15], v8, v5);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100D1A978(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  if (*a1 != &off_101A1BAC0)
  {
    goto LABEL_111;
  }

  v17 = *(v1 + qword_101A1BA58);
  v16 = *(v1 + qword_101A1BA58 + 8);
  v18 = *(v1 + qword_101A1BA58 + 16);
  v20 = *(a1 + qword_101A1BA58);
  v19 = *(a1 + qword_101A1BA58 + 8);
  v21 = *(a1 + qword_101A1BA58 + 16);
  if (*(v1 + qword_101A1BA58 + 17) == 1)
  {
    if (v16 | v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = v18 == 0;
    }

    if (v22)
    {
      if (!*(a1 + qword_101A1BA58 + 17))
      {
        goto LABEL_111;
      }

      if (v19 | v20)
      {
        v31 = 0;
      }

      else
      {
        v31 = v21 == 0;
      }

      if (v31)
      {
        goto LABEL_106;
      }

      if (v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16))
      {
        goto LABEL_111;
      }
    }

    else
    {
      if (v17 != 1 || v16 != 0 || v18 != 0)
      {
        if (v17 != 2 || v16 != 0 || v18 != 0)
        {
          if (v17 == 3 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            if (v20 != 3 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_55;
            }

LABEL_106:
            v32 = *(*v1 + 736);
            swift_beginAccess();
            v42 = v1;
            sub_10000BE14(v1 + v32, v15, &unk_101A226A0);
            v33 = *(*a1 + 736);
            swift_beginAccess();
            sub_10000BE14(a1 + v33, v12, &unk_101A226A0);

            sub_1005B981C(&unk_1019F5250);
            CRRegister.wrappedValue.getter();
            CRRegister.wrappedValue.getter();
            LOBYTE(v33) = static UUID.== infix(_:_:)();
            v34 = *(v4 + 8);
            v34(v6, v3);
            v34(v9, v3);
            if (v33)
            {
              v35 = sub_101279020();
              sub_10000CAAC(v12, &unk_101A226A0);
              sub_10000CAAC(v15, &unk_101A226A0);
              if (v35)
              {
                v36 = *(v42 + qword_101A1BA60);
                v37 = *(v42 + qword_101A1BA60 + 8);
                v38 = *(a1 + qword_101A1BA60);
                v39 = *(a1 + qword_101A1BA60 + 8);
                sub_100024E98(v38, v39);
                v30 = sub_1009F9488(v36, v37, v38, v39);
                sub_10002640C(v38, v39);

                return v30 & 1;
              }
            }

            else
            {
              sub_10000CAAC(v12, &unk_101A226A0);
              sub_10000CAAC(v15, &unk_101A226A0);
            }

            goto LABEL_111;
          }

          if (v17 == 4 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            if (v20 != 4 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_58;
            }

            goto LABEL_106;
          }

          if (v17 == 5 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            if (v20 != 5 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_61;
            }

            goto LABEL_106;
          }

          if (v17 == 6 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            if (v20 != 6 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_64;
            }

            goto LABEL_106;
          }

          if (v17 == 7 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 6 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            if (v20 != 7 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_67;
            }

            goto LABEL_106;
          }

          if (v17 == 8 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 6 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 7 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            if (v20 != 8 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
LABEL_70:
              if (v20 != 9 || v19 || *(a1 + qword_101A1BA58 + 16))
              {
LABEL_73:
                v30 = 0;
                return v30 & 1;
              }

LABEL_111:
              v30 = 0;
              return v30 & 1;
            }

            goto LABEL_106;
          }

          if (v17 == 9 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 6 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 7 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 8 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            if (v20 != 9 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_73;
            }

            goto LABEL_106;
          }

          if (v17 == 10 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 6 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 7 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 8 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 9 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 != 10 || v19 || *(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            goto LABEL_106;
          }

          if (v17 == 11 && !v16 && !*(v1 + qword_101A1BA58 + 16))
          {
            if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 6 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 7 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 8 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 9 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 10 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_111;
            }

            v30 = 0;
            if (v20 == 11 && !v19 && !*(a1 + qword_101A1BA58 + 16))
            {
              goto LABEL_106;
            }

            return v30 & 1;
          }

          if ((*(a1 + qword_101A1BA58 + 17) & 1) == 0 || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 6 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 7 && !v19 && !*(a1 + qword_101A1BA58 + 16) || v20 == 8 && !v19 && !*(a1 + qword_101A1BA58 + 16))
          {
            goto LABEL_111;
          }

          if ((v20 != 9 || v19 || *(a1 + qword_101A1BA58 + 16)) && (v20 != 10 || v19 || *(a1 + qword_101A1BA58 + 16)) && (v20 != 11 || v19 || *(a1 + qword_101A1BA58 + 16)))
          {
            goto LABEL_106;
          }

LABEL_86:
          v30 = 0;
          return v30 & 1;
        }

        if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16) || v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_111;
        }

        if (v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_106;
        }

LABEL_52:
        if (v20 == 3 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_111;
        }

LABEL_55:
        if (v20 == 4 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_111;
        }

LABEL_58:
        if (v20 == 5 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_111;
        }

LABEL_61:
        if (v20 == 6 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_111;
        }

LABEL_64:
        if (v20 == 7 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_111;
        }

LABEL_67:
        if (v20 == 8 && !v19 && !*(a1 + qword_101A1BA58 + 16))
        {
          goto LABEL_111;
        }

        goto LABEL_70;
      }

      if (!*(a1 + qword_101A1BA58 + 17) || !(v19 | v20) && !*(a1 + qword_101A1BA58 + 16))
      {
        goto LABEL_111;
      }

      if (v20 == 1 && !v19 && !*(a1 + qword_101A1BA58 + 16))
      {
        goto LABEL_106;
      }
    }

LABEL_49:
    if (v20 == 2 && !v19 && !*(a1 + qword_101A1BA58 + 16))
    {
      goto LABEL_111;
    }

    goto LABEL_52;
  }

  if (*(a1 + qword_101A1BA58 + 17))
  {
    if (v19 | v20)
    {
      v27 = 0;
    }

    else
    {
      v27 = v21 == 0;
    }

    if (v27)
    {
      goto LABEL_111;
    }

    v28 = v20 == 1 && v19 == 0;
    if (v28 && v21 == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_49;
  }

  if (v17 != v20)
  {
    goto LABEL_111;
  }

  if (v18)
  {
    if (v21)
    {
      goto LABEL_106;
    }

    goto LABEL_86;
  }

  v30 = 0;
  if ((v21 & 1) == 0 && v16 == v19)
  {
    goto LABEL_106;
  }

  return v30 & 1;
}

void sub_100D1B49C(_UNKNOWN ****a1)
{
  v3 = sub_1005B981C(&qword_101A128E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_1005B981C(&qword_101A12928);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-v8];
  if (*a1 == &off_101A1BAC0)
  {
    v10 = qword_101AD7B90;
    swift_beginAccess();
    sub_10000BE14(a1 + v10, v5, &qword_101A128E8);
    v11 = *(v7 + 48);
    if (v11(v5, 1, v6) == 1)
    {
      sub_10000CAAC(v5, &qword_101A128E8);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v12 = qword_101AD7B90;
      swift_beginAccess();
      if (v11(v1 + v12, 1, v6))
      {
      }

      else
      {
        sub_100B6D3AC();

        Capsule.merge<A>(_:)();
      }

      swift_endAccess();

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_100D1B714(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v28 = objc_opt_self();
    v4 = [v28 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_1005CF000();
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 81;
    v16 = v29;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Cannot clear CRDT metadata for unknown item's specific data.", 60, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v28 handleFailureInFunction:v23 file:v24 lineNumber:81 isFatal:0 format:v25 args:v22];
  }

  v26 = *(v3 + qword_101A1BA60);
  sub_100024E98(v26, *(v3 + qword_101A1BA60 + 8));
  return v26;
}

uint64_t sub_100D1BAD4(uint64_t a1)
{
  v15[5] = a1;
  v3 = sub_1005B981C(&qword_101A128E8);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  v6 = sub_1005B981C(&qword_101A12928);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = qword_101AD7B90;
  swift_beginAccess();
  sub_10000BE14(v1 + v10, v5, &qword_101A128E8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CAAC(v5, &qword_101A128E8);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (qword_1019F1520 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for CRCodableVersion();
    sub_1005EB3DC(v12, qword_101AD6348);
    v13 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
    if (v2)
    {
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      v14 = v13;
      (*(v7 + 8))(v9, v6);
      return v14;
    }
  }
}

uint64_t sub_100D1BD90()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_101A1BA60);
  v4 = *(v0 + qword_101A1BA60 + 8);

  sub_10002640C(v3, v4);
  sub_10000CAAC(v0 + qword_101AD7B90, &qword_101A128E8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLUnknownItemData()
{
  result = qword_101A1BA90;
  if (!qword_101A1BA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D1BF04()
{
  sub_100D1BFA8();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100D1BFA8()
{
  if (!qword_101A1BAA0)
  {
    sub_1005C4E5C(&qword_101A12928);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A1BAA0);
    }
  }
}

uint64_t sub_100D1C010@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for CRKeyPath();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1005B981C(&qword_101A128E8);
  __chkstk_darwin(v8 - 8);
  v10 = v17 - v9;
  v11 = qword_101AD7B90;
  swift_beginAccess();
  sub_10000BE14(v1 + v11, v10, &qword_101A128E8);
  v12 = sub_1005B981C(&qword_101A12928);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  v17[4] = _swiftEmptyDictionarySingleton;
  v15 = *(*v1 + 736);
  swift_beginAccess();
  v17[0] = a1;
  sub_10000BE14(v1 + v15, v6, &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v6, &unk_101A226A0);
  CRKeyPath.init(_:)();
  sub_100B6D3AC();
  Capsule.init(_:id:)();
  result = (v14)(v10, 1, v12);
  if (result != 1)
  {
    return sub_10000CAAC(v10, &qword_101A128E8);
  }

  return result;
}

uint64_t sub_100D1C34C(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A128E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = sub_1005B981C(&qword_101A12928);
  v8 = *(v7 - 8);
  (*(v8 + 32))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = qword_101AD7B90;
  swift_beginAccess();
  sub_100D1C724(v5, v6 + v9);
  return swift_endAccess();
}

void (*sub_100D1C484(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(*(sub_1005B981C(&qword_101A128E8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[6] = v6;
  v7 = sub_1005B981C(&qword_101A12928);
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[9] = v9;
  v4[10] = *v1;
  sub_100D1C010(v9);
  return sub_100D1C5B4;
}

void sub_100D1C5B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  if (a2)
  {
    (*(v3 + 16))(v2[6], v2[9], v2[7]);
    (*(v3 + 56))(v6, 0, 1, v7);
    v8 = qword_101AD7B90;
    swift_beginAccess();
    sub_100D1C724(v6, v5 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v7);
  }

  else
  {
    (*(v3 + 32))(v2[6], v2[9], v2[7]);
    (*(v3 + 56))(v6, 0, 1, v7);
    v9 = qword_101AD7B90;
    swift_beginAccess();
    sub_100D1C724(v6, v5 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_100D1C724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A128E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100D1C7BC(double a1, double a2)
{
  v4 = [objc_allocWithZone(UIBezierPath) init];
  v5 = a1 + -5.75;
  v6 = a2 + -5.75;
  v7 = a1 + 5.75;
  v8 = a2 + 5.75;
  [v4 moveToPoint:{v5, v6}];
  [v4 addLineToPoint:{v7, v8}];
  [v4 moveToPoint:{v5, v8}];
  [v4 addLineToPoint:{v7, v6}];
  [v4 closePath];
  v9 = [v4 CGPath];
  v10 = [objc_opt_self() bezierPathWithCGPath:v9];

  if (v10)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D1C8E8(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = swift_getObjectType();
  *(v3 + 40) = type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return _swift_task_switch(sub_100D1C994, v5, v4);
}

uint64_t sub_100D1C994()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 112);
  v3 = *(v0 + 16);
  v4 = static MainActor.shared.getter();
  *(v0 + 72) = v4;
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_100D1CAE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v4, &protocol witness table for MainActor, 0xD00000000000001DLL, 0x800000010159C150, sub_100D1D81C, v6, &type metadata for () + 8);
}

uint64_t sub_100D1CAE0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100D1CC18;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1006DB154;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100D1CC18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D1CCA4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  *(v2 + 24) = swift_getObjectType();
  *(v2 + 32) = type metadata accessor for MainActor();
  *(v2 + 40) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return _swift_task_switch(sub_100D1CD50, v4, v3);
}

uint64_t sub_100D1CD50()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 112);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = static MainActor.shared.getter();
  *(v0 + 72) = v4;
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_100D1CEBC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v4, &protocol witness table for MainActor, 0xD00000000000001BLL, 0x800000010159C410, sub_100D1EEB0, v6, &type metadata for () + 8);
}

uint64_t sub_100D1CEBC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100D1D064;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100D1CFF4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100D1CFF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D1D064()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100D1D100()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100D1D100();

    return v3;
  }

  else
  {

    return v5;
  }
}

void sub_100D1D17C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v55) = a4;
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(v7 + 16))(v9, a1, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = a1;
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    (*(v7 + 32))(v15 + v13, v9, v6);
    v58 = sub_100D1EE98;
    v59 = v15;
    *&v56 = _NSConcreteStackBlock;
    *(&v56 + 1) = *"";
    *&v57 = sub_100007638;
    *(&v57 + 1) = &unk_1018A1948;
    v16 = _Block_copy(&v56);

    v17 = a3;
    [v12 presentViewController:a3 animated:v55 & 1 completion:v16];
    _Block_release(v16);
    v18 = [a3 presentationController];
    if (v18)
    {
      v19 = v18;

      return;
    }

    v47 = v12;
    sub_100D1ED3C(v12, v17, &v56);

    sub_100C2E7E0();
    v48 = swift_allocError();
    v49 = v58;
    v50 = v57;
    *v51 = v56;
    *(v51 + 16) = v50;
    *(v51 + 32) = v49;
    sub_100D1D82C(v14, v48, 1, v10);
  }

  else
  {
    v53 = v10;
    v54 = a3;
    v55 = a1;
    v52 = objc_opt_self();
    v20 = [v52 _atomicIncrementAssertCount];
    *&v56 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v56);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v20;
    v29 = sub_1005CF000();
    *(inited + 96) = v29;
    v30 = sub_1005CF04C();
    *(inited + 104) = v30;
    *(inited + 72) = v21;
    *(inited + 136) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 112) = v24;
    *(inited + 120) = v26;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v31;
    *(inited + 152) = 87;
    v32 = v56;
    *(inited + 216) = v29;
    *(inited + 224) = v30;
    *(inited + 192) = v32;
    v33 = v21;
    v34 = v32;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v36, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v37 = swift_allocObject();
    v37[2] = 8;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
    v38 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    [v52 handleFailureInFunction:v39 file:v40 lineNumber:87 isFatal:0 format:v41 args:v38];

    swift_beginAccess();
    v42 = swift_unknownObjectWeakLoadStrong();
    sub_100D1ED3C(v42, v54, &v56);

    sub_100C2E7E0();
    v43 = swift_allocError();
    v44 = v58;
    v45 = v57;
    *v46 = v56;
    *(v46 + 16) = v45;
    *(v46 + 32) = v44;
    sub_100D1D82C(v55, v43, 1, v53);
  }
}

uint64_t sub_100D1D82C(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a4 + 24))
  {
    v62[2] = 0;
    v62[3] = 0xE000000000000000;
    _StringGuts.grow(_:)(328);
    v62[1] = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD000000000000101;
    v7._object = 0x800000010159C1D0;
    String.append(_:)(v7);
    swift_beginAccess();

    sub_1005B981C(&unk_1019F6C70);
    v8._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v8);

    v9._object = 0x800000010159C2E0;
    v9._countAndFlagsBits = 0xD000000000000043;
    String.append(_:)(v9);
    v19 = objc_opt_self();
    v10 = [v19 packedBacktraceString];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 32) = 0;
    v17 = inited + 32;
    *(inited + 64) = v16;
    *(inited + 40) = 0xE000000000000000;
    v18 = inited;
    v61 = v19;
    LODWORD(v19) = [v19 _atomicIncrementAssertCount];
    v62[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v62);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v26 = static OS_os_log.crlAssert;
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_10146CA70;
      *(v27 + 56) = &type metadata for Int32;
      *(v27 + 64) = &protocol witness table for Int32;
      *(v27 + 32) = v19;
      v28 = sub_1005CF000();
      *(v27 + 96) = v28;
      v29 = sub_1005CF04C();
      *(v27 + 72) = v20;
      *(v27 + 136) = &type metadata for String;
      *(v27 + 144) = v16;
      *(v27 + 104) = v29;
      *(v27 + 112) = v23;
      *(v27 + 120) = v25;
      *(v27 + 176) = &type metadata for UInt;
      *(v27 + 184) = &protocol witness table for UInt;
      *(v27 + 152) = 83;
      v30 = v62[0];
      *(v27 + 216) = v28;
      *(v27 + 224) = v29;
      *(v27 + 192) = v30;
      v31 = v20;
      v32 = v30;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v27);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v34, "%@", 2, 2, v18);

      type metadata accessor for __VaListBuilder();
      v20 = swift_allocObject();
      v20[2] = 8;
      v20[3] = 0;
      v35 = v20 + 3;
      v20[4] = 0;
      v20[5] = 0;
      v19 = *(v18 + 16);
      if (!v19)
      {
LABEL_28:
        v52 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v53 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v55 = String._bridgeToObjectiveC()();

        [v61 handleFailureInFunction:v53 file:v54 lineNumber:83 isFatal:0 format:v55 args:v52];

        swift_setDeallocating();
        return swift_arrayDestroy();
      }

      v23 = 0;
      while (1)
      {
        v36 = (v17 + 40 * v23);
        v25 = v36[3];
        v16 = sub_100020E58(v36, v25);
        v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v38 = *v35;
        v39 = *(v37 + 16);
        v40 = __OFADD__(*v35, v39);
        v41 = *v35 + v39;
        if (v40)
        {
          break;
        }

        v25 = v20[4];
        if (v25 >= v41)
        {
          goto LABEL_20;
        }

        if (v25 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        v16 = v20[5];
        if (2 * v25 > v41)
        {
          v41 = 2 * v25;
        }

        v20[4] = v41;
        if ((v41 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_35;
        }

        v42 = v17;
        v43 = v18;
        v44 = v37;
        v45 = swift_slowAlloc();
        v46 = v45;
        v20[5] = v45;
        if (v16)
        {
          if (v45 != v16 || v45 >= &v16[8 * v38])
          {
            memmove(v45, v16, 8 * v38);
          }

          v16 = v20;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v37 = v44;
          v18 = v43;
          v17 = v42;
LABEL_20:
          v46 = v20[5];
          if (!v46)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v37 = v44;
        v18 = v43;
        v17 = v42;
        if (!v46)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v48 = *(v37 + 16);
        if (v48)
        {
          v49 = (v37 + 32);
          v50 = *v35;
          while (1)
          {
            v51 = *v49++;
            *&v46[8 * v50] = v51;
            v50 = *v35 + 1;
            if (__OFADD__(*v35, 1))
            {
              break;
            }

            *v35 = v50;
            if (!--v48)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v23 == v19)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  v57 = [objc_opt_self() packedBacktraceString];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  swift_beginAccess();
  *(a4 + 16) = v58;
  *(a4 + 24) = v60;

  if (a3)
  {
    v62[0] = a2;
    swift_errorRetain();
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100D1DF34(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a4 + 24))
  {
    v62[2] = 0;
    v62[3] = 0xE000000000000000;
    _StringGuts.grow(_:)(328);
    v62[1] = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD000000000000101;
    v7._object = 0x800000010159C500;
    String.append(_:)(v7);
    swift_beginAccess();

    sub_1005B981C(&unk_1019F6C70);
    v8._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v8);

    v9._object = 0x800000010159C2E0;
    v9._countAndFlagsBits = 0xD000000000000043;
    String.append(_:)(v9);
    v19 = objc_opt_self();
    v10 = [v19 packedBacktraceString];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 32) = 0;
    v17 = inited + 32;
    *(inited + 64) = v16;
    *(inited + 40) = 0xE000000000000000;
    v18 = inited;
    v61 = v19;
    LODWORD(v19) = [v19 _atomicIncrementAssertCount];
    v62[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v62);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v26 = static OS_os_log.crlAssert;
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_10146CA70;
      *(v27 + 56) = &type metadata for Int32;
      *(v27 + 64) = &protocol witness table for Int32;
      *(v27 + 32) = v19;
      v28 = sub_1005CF000();
      *(v27 + 96) = v28;
      v29 = sub_1005CF04C();
      *(v27 + 72) = v20;
      *(v27 + 136) = &type metadata for String;
      *(v27 + 144) = v16;
      *(v27 + 104) = v29;
      *(v27 + 112) = v23;
      *(v27 + 120) = v25;
      *(v27 + 176) = &type metadata for UInt;
      *(v27 + 184) = &protocol witness table for UInt;
      *(v27 + 152) = 142;
      v30 = v62[0];
      *(v27 + 216) = v28;
      *(v27 + 224) = v29;
      *(v27 + 192) = v30;
      v31 = v20;
      v32 = v30;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v27);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v34, "%@", 2, 2, v18);

      type metadata accessor for __VaListBuilder();
      v20 = swift_allocObject();
      v20[2] = 8;
      v20[3] = 0;
      v35 = v20 + 3;
      v20[4] = 0;
      v20[5] = 0;
      v19 = *(v18 + 16);
      if (!v19)
      {
LABEL_28:
        v52 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v53 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v55 = String._bridgeToObjectiveC()();

        [v61 handleFailureInFunction:v53 file:v54 lineNumber:142 isFatal:0 format:v55 args:v52];

        swift_setDeallocating();
        return swift_arrayDestroy();
      }

      v23 = 0;
      while (1)
      {
        v36 = (v17 + 40 * v23);
        v25 = v36[3];
        v16 = sub_100020E58(v36, v25);
        v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v38 = *v35;
        v39 = *(v37 + 16);
        v40 = __OFADD__(*v35, v39);
        v41 = *v35 + v39;
        if (v40)
        {
          break;
        }

        v25 = v20[4];
        if (v25 >= v41)
        {
          goto LABEL_20;
        }

        if (v25 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        v16 = v20[5];
        if (2 * v25 > v41)
        {
          v41 = 2 * v25;
        }

        v20[4] = v41;
        if ((v41 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_35;
        }

        v42 = v17;
        v43 = v18;
        v44 = v37;
        v45 = swift_slowAlloc();
        v46 = v45;
        v20[5] = v45;
        if (v16)
        {
          if (v45 != v16 || v45 >= &v16[8 * v38])
          {
            memmove(v45, v16, 8 * v38);
          }

          v16 = v20;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v37 = v44;
          v18 = v43;
          v17 = v42;
LABEL_20:
          v46 = v20[5];
          if (!v46)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v37 = v44;
        v18 = v43;
        v17 = v42;
        if (!v46)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v48 = *(v37 + 16);
        if (v48)
        {
          v49 = (v37 + 32);
          v50 = *v35;
          while (1)
          {
            v51 = *v49++;
            *&v46[8 * v50] = v51;
            v50 = *v35 + 1;
            if (__OFADD__(*v35, 1))
            {
              break;
            }

            *v35 = v50;
            if (!--v48)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v23 == v19)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  v57 = [objc_opt_self() packedBacktraceString];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  swift_beginAccess();
  *(a4 + 16) = v58;
  *(a4 + 24) = v60;

  if (a3)
  {
    v62[0] = a2;
    swift_errorRetain();
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&unk_101A050F0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100D1E63C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1005B981C(&unk_101A050F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong presentationController];
    if (v13)
    {

      (*(v8 + 16))(v10, a1, v7);
      v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = a3;
      (*(v8 + 32))(v15 + v14, v10, v7);
      v63 = sub_100D1F0B8;
      v64 = v15;
      *&v61 = _NSConcreteStackBlock;
      *(&v61 + 1) = *"";
      *&v62 = sub_100007638;
      *(&v62 + 1) = &unk_1018A1998;
      v16 = _Block_copy(&v61);

      [v12 dismissViewControllerAnimated:a4 & 1 completion:v16];
      _Block_release(v16);
    }

    else
    {
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      v44 = a1;
      v45 = v12;
      _StringGuts.grow(_:)(89);
      v46._countAndFlagsBits = 0xD00000000000002FLL;
      v46._object = 0x800000010159C430;
      String.append(_:)(v46);
      v47 = v45;
      v48 = [v47 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52._countAndFlagsBits = v49;
      v52._object = v51;
      String.append(_:)(v52);

      v53._object = 0x800000010159C460;
      v53._countAndFlagsBits = 0xD000000000000028;
      String.append(_:)(v53);
      v54 = v61;

      sub_100C2E7E0();
      v55 = swift_allocError();
      *v56 = v54;
      *(v56 + 16) = 0xD000000000000065;
      *(v56 + 24) = 0x800000010159C490;
      *(v56 + 32) = 1;
      sub_100D1DF34(v44, v55, 1, a3);
    }
  }

  else
  {
    v59 = a1;
    v60 = a3;
    v58 = objc_opt_self();
    v17 = [v58 _atomicIncrementAssertCount];
    *&v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v61);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_1005CF000();
    *(inited + 96) = v26;
    v27 = sub_1005CF04C();
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 147;
    v29 = v61;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v58 handleFailureInFunction:v36 file:v37 lineNumber:147 isFatal:0 format:v38 args:v35];

    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    sub_100D1EEC0(v39, &v61);

    sub_100C2E7E0();
    v40 = swift_allocError();
    v41 = v63;
    v42 = v62;
    *v43 = v61;
    *(v43 + 16) = v42;
    *(v43 + 32) = v41;
    sub_100D1DF34(v59, v40, 1, v60);
  }
}

uint64_t sub_100D1ED3C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  _StringGuts.grow(_:)(42);

  v6 = [a2 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 544108320;
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);
  if (a1)
  {
    v12 = a1;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE500000000000000;
    v14 = 0x3E6C696E3CLL;
  }

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  *a3 = 0xD000000000000022;
  *(a3 + 8) = 0x800000010159C360;
  *(a3 + 16) = 0xD000000000000078;
  *(a3 + 24) = 0x800000010159C390;
  *(a3 + 32) = 0;
  return result;
}

void sub_100D1EEC0(void *a1@<X0>, uint64_t a2@<X8>)
{
  _StringGuts.grow(_:)(89);
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v4._object = 0x800000010159C430;
  String.append(_:)(v4);
  if (a1)
  {
    v5 = a1;
    v6 = [v5 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE500000000000000;
    v7 = 0x3E6C696E3CLL;
  }

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x800000010159C460;
  v11._countAndFlagsBits = 0xD000000000000028;
  String.append(_:)(v11);
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0xD000000000000065;
  *(a2 + 24) = 0x800000010159C490;
  *(a2 + 32) = 1;
}

uint64_t sub_100D1EFE8()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100D1F0D0(uint64_t (*a1)(uint64_t, void, void, uint64_t))
{
  v2 = *(sub_1005B981C(&unk_101A050F0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v4, 0, 0, v3);
}

uint64_t sub_100D1F178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100D1F1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_100D1F224()
{
  result = qword_101A1BE40;
  if (!qword_101A1BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1BE40);
  }

  return result;
}

uint64_t sub_100D1F280()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLBoardCloudFetchSyncObserver_syncObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  sub_100D1FB18(v0 + OBJC_IVAR____TtC8Freeform30CRLBoardCloudFetchSyncObserver_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100D1F3AC()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_100D1F49C()
{
  sub_100D1F4F4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100D1F4F4()
{
  if (!qword_101A1BFA0)
  {
    sub_10000D990();
    if (!v1)
    {
      atomic_store(v0, &qword_101A1BFA0);
    }
  }
}

uint64_t sub_100D1F53C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_1005B981C(&qword_101A1BFC8);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  Sync = type metadata accessor for CRLBoardCloudFetchSyncObserver.Result(0);
  __chkstk_darwin(Sync - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&qword_101A1BFD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - v17;
  v20 = *(v19 + 56);
  sub_100D1FA5C(a1, &v32 - v17);
  sub_100D1FA5C(a2, &v18[v20]);
  v21 = sub_1005B981C(&qword_101A1BF18);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v18, 4, v21);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (v22(&v18[v20], 4, v21) != 2)
      {
        goto LABEL_15;
      }
    }

    else if (v23 == 3)
    {
      if (v22(&v18[v20], 4, v21) != 3)
      {
        goto LABEL_15;
      }
    }

    else if (v22(&v18[v20], 4, v21) != 4)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_100D1FB18(v18, type metadata accessor for CRLBoardCloudFetchSyncObserver.Result);
    return 1;
  }

  v33 = v6;
  v24 = v35;
  if (!v23)
  {
    sub_100D1FA5C(v18, v15);
    if (v22(&v18[v20], 4, v21))
    {
      sub_10000CAAC(v15, &qword_101A0A320);
      goto LABEL_15;
    }

    v26 = *(v10 + 48);
    sub_1007F5AF8(v15, v12);
    sub_1007F5AF8(&v18[v20], &v12[v26]);
    v27 = v34;
    v28 = *(v34 + 48);
    if (v28(v12, 1, v24) == 1)
    {
      if (v28(&v12[v26], 1, v24) == 1)
      {
        sub_10000CAAC(v12, &qword_101A0A320);
        goto LABEL_14;
      }
    }

    else
    {
      sub_10005F954(v12, v9);
      if (v28(&v12[v26], 1, v24) != 1)
      {
        v29 = v33;
        (*(v27 + 32))(v33, &v12[v26], v24);
        sub_100D1FAC0();
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v27 + 8);
        v31(v29, v24);
        v31(v9, v24);
        sub_10000CAAC(v12, &qword_101A0A320);
        if (v30)
        {
          goto LABEL_14;
        }

LABEL_23:
        sub_100D1FB18(v18, type metadata accessor for CRLBoardCloudFetchSyncObserver.Result);
        return 0;
      }

      (*(v27 + 8))(v9, v24);
    }

    sub_10000CAAC(v12, &qword_101A1BFC8);
    goto LABEL_23;
  }

  if (v22(&v18[v20], 4, v21) == 1)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_10000CAAC(v18, &qword_101A1BFD0);
  return 0;
}