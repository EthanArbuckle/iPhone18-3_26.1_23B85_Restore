void sub_100603878()
{
  if (v1[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange])
  {
    return;
  }

  v4 = &selRef_allowResizeDelegate;
  v5 = [v1 boardViewController];
  if (!v5)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosing) == 1)
  {
LABEL_5:

    return;
  }

  v6 = *(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosed);

  if (v6)
  {
    return;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if ([Strong textGesturesInFlight])
  {

    v1[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_endModeCheckQueuedAfterTextGestures] = 1;
    return;
  }

  v7 = [Strong layerHost];
  if (!v7)
  {
LABEL_16:
    v9 = objc_opt_self();
    v10 = [v9 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v10;
    v19 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v19;
    v20 = sub_100604A48(&qword_1019F52E0);
    *(inited + 104) = v20;
    *(inited + 72) = v11;
    *(inited + 136) = &type metadata for String;
    v21 = sub_1000053B0();
    *(inited + 112) = v14;
    *(inited + 120) = v16;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v21;
    *(inited + 152) = 241;
    v22 = v64;
    *(inited + 216) = v19;
    *(inited + 224) = v20;
    *(inited + 192) = v22;
    v23 = v11;
    v24 = v22;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0;
    v28 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    [v9 handleFailureInFunction:v29 file:v30 lineNumber:241 isFatal:0 format:v31 args:v28];

    return;
  }

  v8 = v7;
  if (([v7 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v62 = [v8 asiOSCVC];
  swift_unknownObjectRelease();
  if ([v62 isHandlingScribbleWriting])
  {

    v5 = Strong;
    goto LABEL_5;
  }

  if ([v62 isShowingRadialPalette])
  {
    v32 = Strong;
LABEL_22:

    v5 = v62;
    goto LABEL_5;
  }

  v32 = Strong;
  if (v1[OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_currentlyChangingModes])
  {
    goto LABEL_22;
  }

  v33 = [Strong textInputResponder];
  if (!v33)
  {
    v0 = objc_opt_self();
    v2 = [v0 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v40;

    if (qword_1019F20A0 == -1)
    {
LABEL_28:
      v41 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_10146CA70;
      *(v42 + 56) = &type metadata for Int32;
      *(v42 + 64) = &protocol witness table for Int32;
      *(v42 + 32) = v2;
      v43 = sub_100006370(0, &qword_1019F4D30);
      *(v42 + 96) = v43;
      v44 = sub_100604A48(&qword_1019F52E0);
      *(v42 + 104) = v44;
      *(v42 + 72) = v1;
      *(v42 + 136) = &type metadata for String;
      v45 = sub_1000053B0();
      *(v42 + 112) = v4;
      *(v42 + 120) = v3;
      *(v42 + 176) = &type metadata for UInt;
      *(v42 + 184) = &protocol witness table for UInt;
      *(v42 + 144) = v45;
      *(v42 + 152) = 255;
      v46 = v64;
      *(v42 + 216) = v43;
      *(v42 + 224) = v44;
      *(v42 + 192) = v46;
      v47 = v1;
      v48 = v46;
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v42);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v41, &_mh_execute_header, v50, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v51 = swift_allocObject();
      v51[2] = 8;
      v51[3] = 0;
      v51[4] = 0;
      v51[5] = 0;
      v52 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v53 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v54 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v55 = String._bridgeToObjectiveC()();

      [v0 handleFailureInFunction:v53 file:v54 lineNumber:255 isFatal:0 format:v55 args:v52];

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_28;
  }

  v34 = v33;
  if (*&v33[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor])
  {
    swift_unknownObjectRetain();
    v35 = [v34 inputView];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() isNullInputView:v35];
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 1;
  }

  v56 = swift_unknownObjectUnownedLoadStrong();
  v57 = [v56 textInputResponder];

  if (v57 && (v58 = [v57 isFirstResponder], v57, !(v37 & 1 | ((v58 & 1) == 0))))
  {
  }

  else
  {
    v59 = [v1 boardViewController];
    if (!v59)
    {
      __break(1u);
      return;
    }

    v60 = v59;
    v61 = sub_101012FD4();

    [v61 resetToDefaultModeAnimated:1];
  }

  swift_unknownObjectRelease();
}

uint64_t CRLiOSDocumentModeHandwriting.performBlockIgnoringSelectionChanges(toExitHandwritingMode:)(uint64_t (*a1)(void))
{
  v2 = OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange;
  *(v1 + OBJC_IVAR____TtC8Freeform29CRLiOSDocumentModeHandwriting_stayInHandwritingModeForSelectionChange) = 1;
  result = a1();
  *(v1 + v2) = 0;
  return result;
}

id CRLiOSDocumentModeHandwriting.handleTapOnCanvasBackground(atUnscaledPoint:)()
{
  result = [v0 boardViewController];
  if (result)
  {
    v2 = result;
    v3 = sub_101012FD4();

    [v3 resetToDefaultModeAnimated:1];
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CRLiOSDocumentModeHandwriting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSDocumentModeHandwriting();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100604538(uint64_t a1, id *a2)
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [objc_opt_self() crl_redactedStringWithFormat:v24 arguments:v23];

    v26 = *a2;
    *a2 = v25;

    return;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    sub_100020E58((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    v8 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v9 = *v4;
    v10 = *(v8 + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v15 = v8;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v8 = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v8 = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(v8 + 16);
    if (v19)
    {
      v20 = (v8 + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_100604780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for __VaListBuilder();
  v9 = swift_allocObject();
  v9[2] = 8;
  v9[3] = 0;
  v10 = v9 + 3;
  v9[4] = 0;
  v9[5] = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 32;
    while (1)
    {
      sub_100020E58((v13 + 40 * v12), *(v13 + 40 * v12 + 24));
      v14 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v15 = *v10;
      v16 = *(v14 + 16);
      v17 = __OFADD__(*v10, v16);
      v18 = *v10 + v16;
      if (v17)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v19 = v14;
      v20 = v9[4];
      if (v20 >= v18)
      {
        goto LABEL_18;
      }

      if (v20 + 0x4000000000000000 < 0)
      {
        goto LABEL_31;
      }

      v21 = v9[5];
      if (2 * v20 > v18)
      {
        v18 = 2 * v20;
      }

      v9[4] = v18;
      if ((v18 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_32;
      }

      v22 = swift_slowAlloc();
      v9[5] = v22;
      if (v21)
      {
        break;
      }

LABEL_19:
      if (!v22)
      {
        goto LABEL_34;
      }

      v24 = *(v19 + 16);
      if (v24)
      {
        v25 = (v19 + 32);
        v26 = *v10;
        while (1)
        {
          v27 = *v25++;
          *&v22[8 * v26] = v27;
          v26 = *v10 + 1;
          if (__OFADD__(*v10, 1))
          {
            break;
          }

          *v10 = v26;
          if (!--v24)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_3:

      if (++v12 == v11)
      {
        goto LABEL_25;
      }
    }

    if (v22 != v21 || v22 >= &v21[8 * v15])
    {
      memmove(v22, v21, 8 * v15);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_18:
    v22 = v9[5];
    goto LABEL_19;
  }

LABEL_25:
  v28 = __VaListBuilder.va_list()();
  v29 = objc_opt_self();
  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  if (a8 < 0)
  {
    goto LABEL_33;
  }

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  [v29 handleFailureInFunction:v30 file:v31 lineNumber:a8 isFatal:0 format:v33 args:v28];
}

uint64_t sub_100604A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100006370(255, &qword_1019F4D30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100604A9C()
{
  result = qword_1019FB850;
  if (!qword_1019FB850)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB850);
  }

  return result;
}

void sub_100604BB8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for CRLUSDZRotationKnobTracker();
  objc_msgSendSuper2(&v23, "beginMovingKnob");
  v2 = [v0 knob];
  type metadata accessor for CRLUSDZRotationKnob();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    if ((*(v3 + OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isError) & 1) == 0)
    {
      v5 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isBeingTracked);
      *(v3 + OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isBeingTracked) = 1;
      if ((v5 & 1) == 0)
      {
        sub_10100209C();
      }

      v6 = [v1 rep];
      [v4 position];
      [v6 convertNaturalPointToUnscaledCanvas:?];
      v8 = v7;
      v10 = v9;

      v11 = &v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_startingUnscaledCanvasPosition];
      *v11 = v8;
      *(v11 + 1) = v10;
      v12 = &v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_lastUnscaledCanvasPosition];
      *v12 = v8;
      *(v12 + 1) = v10;
      v13 = [v1 rep];
      v14 = [v13 layout];

      type metadata accessor for CRLUSDZLayout();
      if (swift_dynamicCastClass())
      {
        sub_1008B7648();
      }

      else
      {
        v15 = matrix_identity_float4x4.columns[3];
      }

      v22 = v15;

      v16 = vmulq_f32(v22, v22);
      v17 = vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (vaddv_f32(v17) == 0.0)
      {
        v18 = xmmword_10146E840;
      }

      else
      {
        v19 = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
        v20 = vrsqrte_f32(v19);
        v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
        v18 = vmulq_n_f32(v22, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
      }

      *&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_startingOrientationForRotateSession] = v18;
      *&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_currentOrientationForRotateSession] = v18;
      sub_100020E58(&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate], *&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate + 24]);
      sub_100D141E0(v1);
    }
  }
}

void sub_100604E40()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_totalRotationDeltaForRotateSession] != 0.0 || *&v0[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_totalRotationDeltaForRotateSession + 8] != 0.0)
  {
    sub_10000630C(&v0[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate], v5);
    sub_100020E58(v5, v5[3]);
    v2 = [v0 rep];
    sub_100D0F988(v0);

    sub_100005070(v5);
  }

  sub_1006055C8();
  sub_100605614();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CRLUSDZRotationKnobTracker();
  objc_msgSendSuper2(&v4, "commitChangesForReps:", isa);
}

void sub_100604FB0(double a1, double a2)
{
  v3 = v2;
  v36 = [v2 knob];
  type metadata accessor for CRLUSDZRotationKnob();
  v6 = swift_dynamicCastClass();
  if (!v6 || (*(v6 + OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isError) & 1) != 0 || (v7 = [v2 rep], objc_msgSend(v7, "convertNaturalPointToUnscaledCanvas:", a1, a2), v9 = v8, v11 = v10, v7, v12 = &v2[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_lastUnscaledCanvasPosition], v13 = *&v2[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_lastUnscaledCanvasPosition], sub_100120090(v9, v11, v13, *&v2[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_lastUnscaledCanvasPosition + 8]) <= 1.0))
  {
  }

  else
  {
    v14 = sub_10011F31C(v9, v11, v13);
    v16 = sub_10011F340(v14, v15, 0.5);
    v18 = sub_10011F340(v16, v17, 0.0174532925);
    v19 = &v2[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_totalRotationDeltaForRotateSession];
    v20 = sub_10011F334(*(v3 + OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_totalRotationDeltaForRotateSession), *(v3 + OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_totalRotationDeltaForRotateSession + 8), v18);
    *v19 = v20;
    v19[1] = v21;
    *&v21 = v21;
    *&v22 = v20;
    *v23.i64 = sub_100605204(__PAIR64__(v22, LODWORD(v21)));
    v24 = *(v3 + OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_startingOrientationForRotateSession);
    v25 = vnegq_f32(v24);
    v26 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
    v27 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v23.f32, 1), vextq_s8(v26, v26, 8uLL), v23.f32[0]);
    v28 = vrev64q_s32(v24);
    v28.i32[0] = v25.i32[1];
    v28.i32[3] = v25.i32[2];
    v29 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v23, 3), v28, v23, 2), v27);
    v30 = vmulq_f32(v29, v29);
    v31 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
    if (vaddv_f32(v31) == 0.0)
    {
      v32 = xmmword_10146E840;
    }

    else
    {
      v33 = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
      v34 = vrsqrte_f32(v33);
      v35 = vmul_f32(v34, vrsqrts_f32(v33, vmul_f32(v34, v34)));
      v32 = vmulq_n_f32(v29, vmul_f32(v35, vrsqrts_f32(v33, vmul_f32(v35, v35))).f32[0]);
    }

    *(v3 + OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_currentOrientationForRotateSession) = v32;
    sub_100020E58((v3 + OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate), *(v3 + OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate + 24));
    sub_100D144A8(v3);

    *v12 = v9;
    v12[1] = v11;
  }
}

double sub_100605204(float32x4_t a1)
{
  v1 = __sincosf_stret(0.5 * a1.f32[0]);
  v2 = __sincosf_stret(vmuls_lane_f32(0.5, *a1.f32, 1));
  v3 = __sincosf_stret(vmuls_lane_f32(0.5, a1, 2));
  *&v4 = (v1.__sinval * (v2.__cosval * v3.__cosval)) - (v1.__cosval * (v2.__sinval * v3.__sinval));
  *(&v4 + 1) = (v3.__cosval * (v1.__cosval * v2.__sinval)) + (v3.__sinval * (v1.__sinval * v2.__cosval));
  return v4;
}

void sub_100605328()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CRLUSDZRotationKnobTracker();
  objc_msgSendSuper2(&v11, "endMovingKnob");
  v2 = [v0 knob];
  type metadata accessor for CRLUSDZRotationKnob();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    if ((*(v3 + OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isError) & 1) == 0)
    {
      v5 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isBeingTracked);
      *(v3 + OBJC_IVAR____TtC8Freeform19CRLUSDZRotationKnob_isBeingTracked) = 0;
      if (v5 == 1)
      {
        sub_10100209C();
      }

      v6 = [v4 renderable];
      [v6 setHidden:0];

      v7 = &v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_startingUnscaledCanvasPosition];
      *v7 = 0;
      *(v7 + 1) = 0;
      v8 = &v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_lastUnscaledCanvasPosition];
      *v8 = 0;
      *(v8 + 1) = 0;
      v9 = &v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_totalRotationDeltaForRotateSession];
      *v9 = 0;
      *(v9 + 1) = 0;
      *&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_startingOrientationForRotateSession] = xmmword_10146E840;
      *&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_currentOrientationForRotateSession] = xmmword_10146E840;
      v10 = *(*(*sub_100020E58(&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate], *&v1[OBJC_IVAR____TtC8Freeform26CRLUSDZRotationKnobTracker_delegate + 24]) + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController) + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
      if (v10 && *(v10 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1)
      {
        sub_100D052F0(1);
      }
    }
  }
}

id sub_100605560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZRotationKnobTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1006055C8()
{
  result = qword_1019FB7A0;
  if (!qword_1019FB7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FB7A0);
  }

  return result;
}

unint64_t sub_100605614()
{
  result = qword_1019F5048;
  if (!qword_1019F5048)
  {
    sub_1006055C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5048);
  }

  return result;
}

uint64_t sub_10060566C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if (([v1 options] & 0x100000) != 0)
  {
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    sub_10060B4B0(1, 0, 1, 34.0);
    type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
    if (!swift_dynamicCastClass())
    {
      v32 = objc_opt_self();
      v4 = [v32 _atomicIncrementAssertCount];
      v33 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v33);
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
      *(inited + 152) = 36;
      v16 = v33;
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
      sub_100005404(v11, &_mh_execute_header, v20, "There is no situation where this should not be a CRLiOSMiniFormatterBaseLayerButton", 83, 2, _swiftEmptyArrayStorage);

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

      [v32 handleFailureInFunction:v23 file:v24 lineNumber:36 isFatal:0 format:v25 args:v22];
    }

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    if (([v1 options] & 0x100000) != 0)
    {
      v27 = [v1 tintColor];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 UIColor];
      }

      else
      {
        v29 = 0;
      }

      v30 = v0;
      v3 = sub_1005D10E8(0, v29, 0, 0);

      v31 = [v1 action];
      if (v31)
      {
        [v3 addTarget:*(v30 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController) action:v31 forControlEvents:64];
      }
    }

    else
    {
      sub_100006370(0, &qword_1019F6190);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v2 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v3 = sub_1005D10E8(v2, 0, 0, 0);
    }

    return v3;
  }
}

id sub_100605C10()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_showHeaderView) == 1)
  {
    v2 = sub_100606384();
    v3 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedStackView) == 1)
  {
    sub_100606678(44.0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = sub_100606824(1, 0x4030000000000000, 0, 44.0);
    v5 = v4;
    if (v4[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showHeaderView] == 1)
    {
      sub_1005B981C(&unk_1019F4D60);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10146CE00;
      *(v6 + 32) = sub_100C61968();
      v7 = [*&v5[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] options];
      v8 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette;
      if ((v7 & 0x1000) != 0)
      {
        v8 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette;
      }

      v9 = &v5[*v8];
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];

      v13 = sub_100C624E4(v10, v11, v12, 34.0);

      *(v6 + 40) = v13;
      v14 = objc_allocWithZone(UIStackView);
      sub_100006370(0, &qword_1019F6D00);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = [v14 initWithArrangedSubviews:isa];

      [v16 setAxis:1];
      [v16 setSpacing:12.0];
    }

    else
    {
      v21 = [*&v4[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] options];
      v22 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette;
      if ((v21 & 0x1000) != 0)
      {
        v22 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette;
      }

      v23 = &v5[*v22];
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];

      v16 = sub_100C624E4(v24, v25, v26, 34.0);
    }

    v27 = v16;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v20 = 16.0;
    goto LABEL_30;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedLandscapeStackView) != 1)
  {
    v28 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
    if (([*(v1 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) options] & 0x2000) != 0)
    {
      sub_1005B981C(&unk_1019F4D60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CE00;
      *(inited + 32) = sub_100610F98();
      v31 = sub_100611128();
    }

    else
    {
      v29 = [v28 options];
      sub_1005B981C(&unk_1019F4D60);
      if ((v29 & 0x20000) == 0)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146E8A0;
        *(inited + 32) = sub_100606DCC();
        *(inited + 40) = sub_10060A2CC();
        *(inited + 48) = sub_10060D2C0();
LABEL_29:
        sub_1007993B0(inited);
        v20 = 12.0;
        goto LABEL_30;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CE00;
      *(inited + 32) = sub_1006112F8();
      v31 = sub_100611464();
    }

    *(inited + 40) = v31;
    goto LABEL_29;
  }

  sub_1005B981C(&unk_1019F4D60);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_10146CE00;
  *(v17 + 32) = sub_100606688(44.0);
  v18 = sub_100606824(0, 0, 1, 34.0);
  v19 = sub_100C624E4(*&v18[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_singleRowPalette], *&v18[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_singleRowPalette + 8], *&v18[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_singleRowPalette + 16], 44.0);

  *(v17 + 40) = v19;
  sub_1007993B0(v17);
  [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = 20.0;
LABEL_30:
  v32 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  v34 = [v32 initWithArrangedSubviews:v33];

  [v34 setAxis:1];
  [v34 setSpacing:v20];
  [v34 setAlignment:0];
  if (v2)
  {
    [v34 setCustomSpacing:v2 afterView:0.0];
  }

  return v34;
}

uint64_t sub_1006062B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100606384()
{
  v1 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String._bridgeToObjectiveC()();

  [v1 setText:v6];

  [v1 setTextAlignment:1];
  v7 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightSemibold];
  [v1 setFont:v7];

  v8 = v1;
  [v8 sizeToFit];
  sub_1005B981C(&unk_1019F4D60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101465920;
  *(v9 + 32) = v8;
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_headerViewHeight);
  v11 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithArrangedSubviews:isa];

  [v13 setAxis:0];
  [v13 setAlignment:3];
  [v13 setDistribution:0];
  [v13 setSpacing:12.0];
  v14 = [v13 heightAnchor];
  v15 = [v14 constraintGreaterThanOrEqualToConstant:v10];

  [v15 setActive:1];
  return v13;
}

id sub_100606694(double a1, double a2)
{
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146CE00;
  *(v4 + 32) = sub_10060AB10();
  *(v4 + 40) = sub_10060B4B0(0, 1, 0, a2);
  v5 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithArrangedSubviews:isa];

  [v7 setAxis:0];
  [v7 setAlignment:0];
  [v7 setDistribution:0];
  [v7 setSpacing:8.0];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintGreaterThanOrEqualToConstant:a1];

  [v9 setActive:1];
  return v7;
}

id sub_100606824(char a1, uint64_t a2, char a3, double a4)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v11;
  v54 = v10;

  v12 = v4 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  swift_unknownObjectWeakLoadStrong();
  v55 = *(v12 + 8);
  v13 = *(v4 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  v14 = *(v4 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController);
  v15 = *(v4 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController);
  v52 = *(v4 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_isEditingText);
  v16 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterColorPaletteBuilder());
  v17 = &v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette];
  if (qword_1019F1F70 != -1)
  {
    swift_once();
  }

  v18 = qword_101AD79A0;
  *v17 = xmmword_101AD7990;
  *(v17 + 2) = v18;
  v19 = &v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette];
  v20 = qword_1019F1F78;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_101AD79C0;
  *v19 = xmmword_101AD79B0;
  *(v19 + 2) = v21;
  v22 = &v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_singleRowPalette];
  v23 = qword_1019F1F80;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_101AD79E0;
  *v22 = xmmword_101AD79D0;
  *(v22 + 2) = v24;
  v25 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterShapeFillDataProvider());
  *&v25[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v14;
  v26 = type metadata accessor for CRLMiniFormatterDataProvider();
  v65.receiver = v25;
  v65.super_class = v26;

  v27 = v14;
  *&v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_shapeFillDataProvider] = objc_msgSendSuper2(&v65, "init");
  v28 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterStrokeDataProvider());
  v29 = &v28[OBJC_IVAR____TtC8Freeform34CRLMiniFormatterStrokeDataProvider_strokeChangingState];
  *v29 = 0;
  v29[8] = 1;
  *&v28[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v27;
  v64.receiver = v28;
  v64.super_class = v26;
  v30 = v27;
  *&v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_strokeDataProvider] = objc_msgSendSuper2(&v64, "init");
  v31 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTextDataProvider());
  *&v31[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v30;
  v63.receiver = v31;
  v63.super_class = v26;
  v32 = v30;
  *&v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_textDataProvider] = objc_msgSendSuper2(&v63, "init");
  v33 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTableDataProvider());
  *&v33[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v32;
  v62.receiver = v33;
  v62.super_class = v26;
  v34 = v32;
  *&v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tableDataProvider] = objc_msgSendSuper2(&v62, "init");
  v35 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterCellDataProvider());
  *&v35[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v34;
  v61.receiver = v35;
  v61.super_class = v26;
  v36 = v34;
  *&v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_cellDataProvider] = objc_msgSendSuper2(&v61, "init");
  v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showMoreOptionsButton] = a1 & 1;
  v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showHeaderView] = 0;
  v37 = &v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_headerTitle];
  *v37 = v54;
  v37[1] = v53;
  *&v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_buttonSize] = a4;
  v38 = *&a2;
  if (a3)
  {
    v38 = 12.0;
  }

  *&v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_rowSpacing] = v38;
  v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_isEditingText] = v52;
  v16[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tablePaletteType] = 2;
  v39 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v40 = &v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
  *v40 = 0;
  v40[1] = 0;
  *(v39 + 8) = v55;
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v13;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v36;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v15;
  v41 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
  *&v41[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v36;
  v60.receiver = v41;
  v60.super_class = v26;
  v42 = v36;
  v43 = v13;
  v44 = v15;
  *&v16[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v60, "init");
  v45 = [v43 crlaxLabel];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  *v40 = v47;
  v40[1] = v49;

  v59.receiver = v16;
  v59.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
  v50 = objc_msgSendSuper2(&v59, "init");
  swift_unknownObjectRelease();
  return v50;
}

id sub_100606DCC()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101465920;
  sub_100606FA4();
  *(v0 + 32) = v1;
  v10 = v0;
  v2 = sub_100609968();
  if (v2)
  {
    v3 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v4 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithArrangedSubviews:isa];

  [v6 setAxis:0];
  [v6 setAlignment:0];
  [v6 setDistribution:0];
  [v6 setSpacing:12.0];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintGreaterThanOrEqualToConstant:34.0];

  [v8 setActive:1];
  return v6;
}

void sub_100606FA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CF0);
  __chkstk_darwin(v2 - 8);
  v94 = &v82 - v3;
  v4 = type metadata accessor for IndexSet();
  v88 = *(v4 - 8);
  __chkstk_darwin(v4);
  v89 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  if (!v8)
  {
    __break(1u);
    goto LABEL_36;
  }

  v87 = v1;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 systemImageNamed:v9];

  if (!v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v7 systemImageNamed:v11];

  if (v12)
  {
    sub_1005B981C(&unk_1019F4D60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10146E8A0;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    v93 = v13;
    *(v13 + 48) = v12;
    sub_1005B981C(&unk_1019F61D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    v15 = objc_opt_self();
    v85 = v12;
    v84 = v10;
    v83 = v8;
    v16 = [v15 mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(inited + 32) = v20;
    *(inited + 40) = v22;
    v23 = [v15 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(inited + 48) = v27;
    *(inited + 56) = v29;
    v30 = [v15 mainBundle];
    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(inited + 64) = v34;
    *(inited + 72) = v36;
    v92 = inited;
    IndexSet.init()();
    v37 = v87;
    v38 = *&v87[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider];
    v39 = OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController;
    v40 = *(v38 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    *(v41 + 16) = 0;
    v101 = sub_10061344C;
    v102 = v41;
    aBlock = _NSConcreteStackBlock;
    v98 = *"";
    v99 = sub_10066C70C;
    v100 = &unk_10187D7B8;
    v42 = _Block_copy(&aBlock);

    [v40 enumerateEditorsOnStackUsingBlock:v42];
    _Block_release(v42);
    swift_beginAccess();
    v43 = *(v41 + 16);
    v44 = *(v41 + 24);
    swift_unknownObjectRetain();

    if (v43)
    {
      v45 = swift_getObjectType();
      v42 = (*(v44 + 72))(v45, v44);
      swift_unknownObjectRelease();
      if (v42 != 2)
      {
        v91 = *(v38 + v39);
        v46 = swift_allocObject();
        *(v46 + 24) = 0;
        *(v46 + 16) = 0;
        v101 = sub_10061344C;
        v102 = v46;
        aBlock = _NSConcreteStackBlock;
        v98 = *"";
        v99 = sub_10066C70C;
        v100 = &unk_10187D808;
        v47 = _Block_copy(&aBlock);

        [v91 enumerateEditorsOnStackUsingBlock:v47];
        _Block_release(v47);
        swift_beginAccess();
        v48 = *(v46 + 16);
        v49 = *(v46 + 24);
        swift_unknownObjectRetain();

        if (v48)
        {
          v50 = swift_getObjectType();
          v51 = (*(v49 + 88))(v50, v49);
          swift_unknownObjectRelease();
          if (v51 != 2)
          {
            v52 = *(v38 + v39);
            v53 = swift_allocObject();
            *(v53 + 24) = 0;
            *(v53 + 16) = 0;
            v101 = sub_10061344C;
            v102 = v53;
            aBlock = _NSConcreteStackBlock;
            v98 = *"";
            v99 = sub_10066C70C;
            v100 = &unk_10187D830;
            v54 = _Block_copy(&aBlock);

            [v52 enumerateEditorsOnStackUsingBlock:v54];
            _Block_release(v54);
            swift_beginAccess();
            v55 = *(v53 + 16);
            v56 = *(v53 + 24);
            swift_unknownObjectRetain();

            if (v55)
            {
              v57 = swift_getObjectType();
              v58 = (*(v56 + 104))(v57, v56);
              swift_unknownObjectRelease();
              if (v58 != 2)
              {
                if (v42 & 0x100) == 0 && (v42)
                {
                  IndexSet.insert(_:)(0);
                }

                if (v51 & 0x100) == 0 && (v51)
                {
                  IndexSet.insert(_:)(1);
                }

                if (v58 & 0x100) == 0 && (v58)
                {
                  IndexSet.insert(_:)(2);
                }
              }
            }
          }
        }
      }
    }

    v91 = swift_allocObject();
    *(v91 + 2) = v37;
    v59 = v88;
    v60 = v94;
    (*(v88 + 16))(v94, v89, v4);
    v61 = *(v59 + 56);
    v86 = v4;
    v61(v60, 0, 1, v4);
    v96 = 1;
    v62 = v93;
    v63 = v93 & 0xFFFFFFFFFFFFFF8;
    v64 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v64)
    {
      v95 = _swiftEmptyArrayStorage;
      v65 = v37;
      specialized ContiguousArray.reserveCapacity(_:)();
      v66 = 0;
      v67 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v68 = v62 & 0xC000000000000001;
      while (v67 != v66)
      {
        if (v68)
        {
          v69 = v93;
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v69 = v93;
          if (v66 >= *(v63 + 16))
          {
            goto LABEL_33;
          }

          v70 = *(v93 + 8 * v66 + 32);
        }

        v71 = v70;
        v42 = v66 + 1;
        sub_1005D2FA4(v66, v70, v69, v94, &v96, v65, 1, sub_1006132C8, v91, 1u, v92, ObjectType);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v66 = v42;
        if (v64 == v42)
        {

          v72 = v95;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    else
    {
      v73 = v37;

      v72 = _swiftEmptyArrayStorage;
LABEL_29:
      v42 = v86;
      if (!(v72 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100006370(0, &qword_1019F6D00);
LABEL_31:

        v74 = objc_allocWithZone(UIStackView);
        sub_100006370(0, &qword_1019F6D00);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v76 = [v74 initWithArrangedSubviews:isa];

        [v76 setAxis:0];
        [v76 setAlignment:0];
        [v76 setDistribution:1];
        [v76 setSpacing:1.0];
        v77 = v76;
        v78 = [v77 heightAnchor];
        v79 = [v78 constraintGreaterThanOrEqualToConstant:34.0];

        [v79 setActive:1];
        v80 = [v77 heightAnchor];

        v81 = [v80 constraintGreaterThanOrEqualToConstant:34.0];
        [v81 setActive:1];

        (*(v88 + 8))(v89, v42);
        sub_1000505D0(v96);
        sub_10000CAAC(v94, &unk_1019F4CF0);
        return;
      }
    }

    sub_100006370(0, &qword_1019F6D00);

    _bridgeCocoaArray<A>(_:)();

    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_100607C7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider);
  v2 = OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v52 = sub_10061344C;
  v53 = v4;
  aBlock = _NSConcreteStackBlock;
  v49 = *"";
  v50 = sub_10066C70C;
  v51 = &unk_10187D6C8;
  v5 = _Block_copy(&aBlock);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v6)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(v7 + 72))(ObjectType, v7);
    result = swift_unknownObjectRelease();
    if (v10 != 2)
    {
      v11 = *(v1 + v2);
      v12 = swift_allocObject();
      *(v12 + 24) = 0;
      *(v12 + 16) = 0;
      v52 = sub_10061344C;
      v53 = v12;
      aBlock = _NSConcreteStackBlock;
      v49 = *"";
      v50 = sub_10066C70C;
      v51 = &unk_10187D6F0;
      v13 = _Block_copy(&aBlock);

      [v11 enumerateEditorsOnStackUsingBlock:v13];
      _Block_release(v13);
      swift_beginAccess();
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      swift_unknownObjectRetain();

      if (v14)
      {
        v16 = swift_getObjectType();
        v17 = (*(v15 + 88))(v16, v15);
        result = swift_unknownObjectRelease();
        if (v17 != 2)
        {
          v18 = *(v1 + v2);
          v19 = swift_allocObject();
          *(v19 + 24) = 0;
          *(v19 + 16) = 0;
          v52 = sub_10061344C;
          v53 = v19;
          aBlock = _NSConcreteStackBlock;
          v49 = *"";
          v50 = sub_10066C70C;
          v51 = &unk_10187D718;
          v20 = _Block_copy(&aBlock);

          [v18 enumerateEditorsOnStackUsingBlock:v20];
          _Block_release(v20);
          swift_beginAccess();
          v21 = *(v19 + 16);
          v22 = *(v19 + 24);
          swift_unknownObjectRetain();

          if (v21)
          {
            v23 = swift_getObjectType();
            v24 = (*(v22 + 104))(v23, v22);
            result = swift_unknownObjectRelease();
            if (v24 != 2)
            {
              v25 = IndexSet.contains(_:)(0);
              v26 = v25;
              if (v10 & 0x100) != 0 || ((v25 ^ v10))
              {
                v47 = *(v1 + v2);
                v27 = swift_allocObject();
                *(v27 + 24) = 0;
                *(v27 + 16) = 0;
                v52 = sub_10061344C;
                v53 = v27;
                aBlock = _NSConcreteStackBlock;
                v49 = *"";
                v50 = sub_10066C70C;
                v51 = &unk_10187D740;
                v28 = _Block_copy(&aBlock);

                [v47 enumerateEditorsOnStackUsingBlock:v28];
                _Block_release(v28);
                swift_beginAccess();
                v29 = *(v27 + 16);
                v30 = *(v27 + 24);
                swift_unknownObjectRetain();

                if (v29)
                {
                  v31 = swift_getObjectType();
                  (*(v30 + 80))(v26, v31, v30);
                  swift_unknownObjectRelease();
                }
              }

              v32 = IndexSet.contains(_:)(1);
              v33 = v32;
              if (v17 & 0x100) != 0 || ((v32 ^ v17))
              {
                v34 = *(v1 + v2);
                v35 = swift_allocObject();
                *(v35 + 24) = 0;
                *(v35 + 16) = 0;
                v52 = sub_10061344C;
                v53 = v35;
                aBlock = _NSConcreteStackBlock;
                v49 = *"";
                v50 = sub_10066C70C;
                v51 = &unk_10187D768;
                v36 = _Block_copy(&aBlock);

                [v34 enumerateEditorsOnStackUsingBlock:v36];
                _Block_release(v36);
                swift_beginAccess();
                v37 = *(v35 + 16);
                v38 = *(v35 + 24);
                swift_unknownObjectRetain();

                if (v37)
                {
                  v39 = swift_getObjectType();
                  (*(v38 + 96))(v33, v39, v38);
                  swift_unknownObjectRelease();
                }
              }

              result = IndexSet.contains(_:)(2);
              v40 = result;
              if (v24 & 0x100) != 0 || ((result ^ v24))
              {
                v41 = *(v1 + v2);
                v42 = swift_allocObject();
                *(v42 + 24) = 0;
                *(v42 + 16) = 0;
                v52 = sub_10061344C;
                v53 = v42;
                aBlock = _NSConcreteStackBlock;
                v49 = *"";
                v50 = sub_10066C70C;
                v51 = &unk_10187D790;
                v43 = _Block_copy(&aBlock);

                [v41 enumerateEditorsOnStackUsingBlock:v43];
                _Block_release(v43);
                swift_beginAccess();
                v44 = *(v42 + 16);
                v45 = *(v42 + 24);
                swift_unknownObjectRetain();

                if (v44)
                {
                  v46 = swift_getObjectType();
                  (*(v45 + 112))(v40 & 1, v46, v45);
                  return swift_unknownObjectRelease();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_1006083E8(char a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9];

  if (a1)
  {
    sub_1005D4EF8(v10);
    sub_100006370(0, &qword_1019F6E10);
    (*(v3 + 16))(v5, v8, v2);
    v11 = UIButton.init(configuration:primaryAction:)();
    [v11 setPointerInteractionEnabled:1];
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 labelColor];
    v14 = [v12 labelColor];
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1005D48C8(v10, 0, 0, 0, 0, 0, v13, v14, 0);
  }

  [v11 setShowsMenuAsPrimaryAction:1];
  sub_1006086A0(1);
  v16 = v15;
  [v11 setMenu:v15];

  return v11;
}

void sub_1006086A0(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider];
  v4 = OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController;
  v5 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  v104 = sub_10061344C;
  v105 = v6;
  aBlock = _NSConcreteStackBlock;
  v101 = *"";
  v102 = sub_10066C70C;
  v103 = &unk_10187D4E8;
  v7 = _Block_copy(&aBlock);

  [v5 enumerateEditorsOnStackUsingBlock:v7];
  _Block_release(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  swift_unknownObjectRetain();

  if (!v8)
  {
    return;
  }

  v97 = v1;
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 72))(ObjectType, v9);
  swift_unknownObjectRelease();
  if (v11 == 2)
  {
    return;
  }

  v12 = *(v3 + v4);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  v104 = sub_10061344C;
  v105 = v13;
  aBlock = _NSConcreteStackBlock;
  v101 = *"";
  v102 = sub_10066C70C;
  v103 = &unk_10187D510;
  v14 = _Block_copy(&aBlock);

  [v12 enumerateEditorsOnStackUsingBlock:v14];
  _Block_release(v14);
  swift_beginAccess();
  v15 = *(v13 + 16);
  v16 = *(v13 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    return;
  }

  v17 = swift_getObjectType();
  v18 = (*(v16 + 88))(v17, v16);
  swift_unknownObjectRelease();
  if (v18 == 2)
  {
    return;
  }

  v95 = a1;
  v19 = *(v3 + v4);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  v104 = sub_10061344C;
  v105 = v20;
  aBlock = _NSConcreteStackBlock;
  v101 = *"";
  v102 = sub_10066C70C;
  v103 = &unk_10187D538;
  v21 = _Block_copy(&aBlock);

  [v19 enumerateEditorsOnStackUsingBlock:v21];
  _Block_release(v21);
  swift_beginAccess();
  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  swift_unknownObjectRetain();

  if (!v22)
  {
    return;
  }

  v24 = swift_getObjectType();
  v25 = (*(v23 + 104))(v24, v23);
  swift_unknownObjectRelease();
  if (v25 == 2)
  {
    return;
  }

  v93 = v25;
  v26 = *(v3 + v4);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  v104 = sub_10061344C;
  v105 = v27;
  aBlock = _NSConcreteStackBlock;
  v101 = *"";
  v102 = sub_10066C70C;
  v103 = &unk_10187D560;
  v28 = _Block_copy(&aBlock);

  [v26 enumerateEditorsOnStackUsingBlock:v28];
  _Block_release(v28);
  swift_beginAccess();
  v29 = *(v27 + 16);
  v30 = *(v27 + 24);
  swift_unknownObjectRetain();

  if (!v29)
  {
    return;
  }

  v31 = swift_getObjectType();
  v32 = (*(v30 + 136))(v31, v30);
  swift_unknownObjectRelease();
  if (v32 == 2)
  {
    return;
  }

  v33 = String._bridgeToObjectiveC()();
  v34 = objc_opt_self();
  v35 = [v34 systemImageNamed:v33];

  v92 = v35;
  if (!v35)
  {
    __break(1u);
    goto LABEL_25;
  }

  v36 = objc_opt_self();
  v37 = [v36 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = String._bridgeToObjectiveC()();
  v42 = [v34 systemImageNamed:v41];

  v89 = v42;
  if (!v42)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v85 = v32;
  v43 = [v36 mainBundle];
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  v46 = v36;
  v47 = [v43 localizedStringForKey:v44 value:v45 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = String._bridgeToObjectiveC()();
  v86 = v34;
  v49 = [v34 systemImageNamed:v48];

  v88 = v49;
  if (!v49)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v87 = HIBYTE(v93) & 1;
  v84 = v46;
  v50 = [v46 mainBundle];
  v51 = String._bridgeToObjectiveC()();
  v52 = String._bridgeToObjectiveC()();
  v53 = [v50 localizedStringForKey:v51 value:v52 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v93 & 1;
  if ((v93 & 0x100) != 0)
  {
    v55 = 2;
  }

  else
  {
    v55 = v93 & 1;
  }

  v94 = v55;
  sub_100006370(0, &qword_1019F6190);
  v56 = swift_allocObject();
  *(v56 + 16) = v97;
  *(v56 + 24) = v11 & 1;
  *(v56 + 25) = HIBYTE(v11) & 1;

  v91 = v92;
  v57 = v97;
  v58 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v18 & 1;
  *(v59 + 25) = HIBYTE(v18) & 1;
  v60 = v57;

  v98 = v89;
  v61 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v62 = swift_allocObject();
  *(v62 + 16) = v60;
  *(v62 + 24) = v54;
  *(v62 + 25) = v87;
  v63 = v60;

  v64 = v88;
  v83 = v62;
  v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1005B981C(&unk_1019F4D60);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10146E8A0;
  *(v66 + 32) = v65;
  *(v66 + 40) = v61;
  *(v66 + 48) = v58;
  v99 = v66;
  v67 = v65;
  v68 = v61;
  v69 = v58;
  v70 = v69;
  if ((v95 & 1) == 0)
  {

    goto LABEL_20;
  }

  v90 = v69;
  v96 = v64;
  v71 = String._bridgeToObjectiveC()();
  v72 = [v86 systemImageNamed:{v71, 0, 0, v94, sub_1006132A8, v83}];

  if (!v72)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v73 = [v84 mainBundle];
  v74 = String._bridgeToObjectiveC()();
  v75 = String._bridgeToObjectiveC()();
  v76 = [v73 localizedStringForKey:v74 value:v75 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = swift_allocObject();
  *(v77 + 16) = v63;
  *(v77 + 24) = v85 & 1;
  *(v77 + 25) = HIBYTE(v85) & 1;
  v78 = v63;
  v79 = v72;
  v80 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100678C70(0, 0, v80);

  v64 = v96;
  v70 = v90;
LABEL_20:
  if (v99 >> 62)
  {
    sub_100006370(0, &unk_1019F61A0);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0);
    preferredElementSize = v99;
  }

  sub_100006370(0, &qword_1019F6C00);
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v106.value.super.isa = 0;
  v106.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v82, 0, v106, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

uint64_t sub_100609398(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(*(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v11[4] = sub_10061344C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10066C70C;
  v11[3] = &unk_10187D6A0;
  v6 = _Block_copy(v11);

  [v4 enumerateEditorsOnStackUsingBlock:v6];
  _Block_release(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  swift_unknownObjectRetain();

  if (v7)
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 80))((a3 & 1) == 0, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10060950C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(*(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v11[4] = sub_10061344C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10066C70C;
  v11[3] = &unk_10187D678;
  v6 = _Block_copy(v11);

  [v4 enumerateEditorsOnStackUsingBlock:v6];
  _Block_release(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  swift_unknownObjectRetain();

  if (v7)
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 96))((a3 & 1) == 0, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100609680(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(*(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v11[4] = sub_10061344C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10066C70C;
  v11[3] = &unk_10187D650;
  v6 = _Block_copy(v11);

  [v4 enumerateEditorsOnStackUsingBlock:v6];
  _Block_release(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  swift_unknownObjectRetain();

  if (v7)
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 112))((a3 & 1) == 0, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006097F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(*(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v11[4] = sub_10061344C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10066C70C;
  v11[3] = &unk_10187D628;
  v6 = _Block_copy(v11);

  [v4 enumerateEditorsOnStackUsingBlock:v6];
  _Block_release(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  swift_unknownObjectRetain();

  if (v7)
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 144))((a3 & 1) == 0, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

objc_class *sub_100609968()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v24[4] = sub_10061344C;
  v24[5] = v2;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = *"";
  v24[2] = sub_10066C70C;
  v24[3] = &unk_10187D4C0;
  v3 = _Block_copy(v24);

  [v1 enumerateEditorsOnStackUsingBlock:v3];
  _Block_release(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v4)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 168))(ObjectType, v5);
  v9 = v8;
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v10 = [v7 referenceColor];
  if (!v10 || (v11 = v10, v12 = [v10 UIColor], v11, !v12))
  {

    return 0;
  }

  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v9)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() imageNamed:v20];

    v22 = sub_1005D1DAC(0, v21, v17, v19, 2, 65.0);
  }

  else
  {
    v21 = v12;
    v22 = sub_1005D1DAC(v12, 0, v17, v19, 2, 65.0);
  }

  return v22;
}

uint64_t sub_100609CB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  static UIButton.Configuration.filled()();

  UIButton.Configuration.title.setter();
  *(swift_allocObject() + 16) = a3;
  v16 = a3;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v17 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v10 + 104))(v12, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v9);
  UIButton.Configuration.titleAlignment.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  UIButton.Configuration.contentInsets.setter();
  v18 = [objc_opt_self() configurationWithPointSize:4 weight:17.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() systemImageNamed:v19];

  if (v20)
  {
    v21 = [objc_opt_self() labelColor];
    v22 = [v20 imageWithTintColor:v21];
  }

  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePlacement.setter();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.medium(_:), v29);
  UIButton.Configuration.buttonSize.setter();
  v23 = [objc_opt_self() mainScreen];
  v24 = [v23 traitCollection];

  LODWORD(v23) = [v24 crl_isUserInterfaceStyleDark];
  if (v23)
  {
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v25 = &qword_101AD5DF0;
  }

  else
  {
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v25 = &qword_101AD5DE8;
  }

  v26 = *v25;
  UIButton.Configuration.baseBackgroundColor.setter();
  v27 = [objc_opt_self() labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v31 + 104))(v30, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v32);
  return UIButton.Configuration.cornerStyle.setter();
}

uint64_t sub_10060A1E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  if (!a2 || ![a2 fontWithSize:17.0])
  {
    v7 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightRegular];
  }

  sub_1005D9028();
  return AttributeContainer.subscript.setter();
}

id sub_10060A2CC()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146E8A0;
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_10060B4B0(0, 1, 0, 91.0);
  *(v0 + 40) = sub_10060B334();
  *(v0 + 48) = sub_10060A490();
  v1 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setAxis:0];
  [v3 setAlignment:0];
  [v3 setDistribution:0];
  [v3 setSpacing:12.0];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant:34.0];

  [v5 setActive:1];
  return v3;
}

id sub_10060A490()
{
  swift_getObjectType();
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  sub_100006370(0, &qword_1019F6190);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  v6 = [v4 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1005D48C8(v1, 0, 0, v3, 0, 0, v5, v6, 0);

  v8 = v7;
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:65.0];

  [v10 setActive:1];
  v11 = objc_opt_self();
  v12 = v8;
  v13 = [v11 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v12 setAccessibilityLabel:v16];

  v17 = [v12 accessibilityLabel];
  [v12 setLargeContentTitle:v17];

  return v12;
}

void sub_10060A7DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      v11 = v1;
      goto LABEL_10;
    }

    v4 = v3;
    v5 = *(v2 + 16);
    v6 = [objc_allocWithZone(UIFontPickerViewControllerConfiguration) init];
    [v6 set_includeDefaultFont:1];
    [v6 setIncludeFaces:1];
    v7 = type metadata accessor for CRLiOSMiniFormatterFontPickerViewController();
    ObjectType = swift_getObjectType();
    v8 = v6;
    swift_unknownObjectRetain();
    v9 = objc_allocWithZone(v7);
    v10 = &v9[OBJC_IVAR____TtC8Freeform43CRLiOSMiniFormatterFontPickerViewController_popoverDelegate];
    *v10 = v4;
    *(v10 + 1) = v5;
    v26 = v5;
    aBlock.receiver = v9;
    aBlock.super_class = v7;
    v11 = objc_msgSendSuper2(&aBlock, "initWithConfiguration:", v8);

    v12 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider];
    v13 = *&v12[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    v30 = sub_10061344C;
    v31 = v14;
    aBlock.receiver = _NSConcreteStackBlock;
    aBlock.super_class = *"";
    v28 = sub_10066C70C;
    v29 = &unk_10187D470;
    v15 = _Block_copy(&aBlock);
    v16 = v12;

    [v13 enumerateEditorsOnStackUsingBlock:v15];
    _Block_release(v15);
    swift_beginAccess();
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    swift_unknownObjectRetain();

    if (v17)
    {
      v19 = swift_getObjectType();
      v20 = (*(v18 + 40))(v19, v18);
      v22 = v21;

      swift_unknownObjectRelease();
      if (!v20)
      {
LABEL_8:
        [v11 setDelegate:v1];
        (*(v26 + 32))(v11, v1, ObjectType);

        swift_unknownObjectRelease();
LABEL_10:

        return;
      }

      v16 = v20;
      if ((v22 & 1) == 0)
      {
        v23 = v11;
        v24 = [v20 platformFont];
        v16 = [v24 fontDescriptor];

        [v23 setSelectedFontDescriptor:v16];
      }
    }

    goto LABEL_8;
  }
}

void *sub_10060AB10()
{
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v55 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v50[-v5];
  v54 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider);
  v8 = OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController;
  v9 = *(v7 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v60 = sub_10061344C;
  v61 = v10;
  aBlock = _NSConcreteStackBlock;
  v57 = *"";
  v58 = sub_10066C70C;
  v59 = &unk_10187D3F8;
  v11 = _Block_copy(&aBlock);

  [v9 enumerateEditorsOnStackUsingBlock:v11];
  _Block_release(v11);
  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_unknownObjectRetain();

  if (!v12)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v15 = (*(v13 + 40))(ObjectType, v13);
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_9:
    v12 = 0;
LABEL_10:
    v25 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_11;
  }

  v52 = v2;
  v53 = v1;
  v16 = v15;
  v17 = *(v7 + v8);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  v60 = sub_10061344C;
  v61 = v18;
  aBlock = _NSConcreteStackBlock;
  v57 = *"";
  v58 = sub_10066C70C;
  v59 = &unk_10187D420;
  v19 = _Block_copy(&aBlock);

  [v17 enumerateEditorsOnStackUsingBlock:v19];
  _Block_release(v19);
  swift_beginAccess();
  v20 = *(v18 + 16);
  v21 = *(v18 + 24);
  swift_unknownObjectRetain();

  if (!v20 || (v22 = swift_getObjectType(), v23 = (*(v21 + 88))(v22, v21), swift_unknownObjectRelease(), v24 = v16, v23 == 2))
  {

    v12 = 0;
    v25 = 0;
    v26 = 0xE000000000000000;
    v2 = v52;
    v1 = v53;
    goto LABEL_11;
  }

  v51 = v23;
  v27 = *(v7 + v8);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = 0;
  v60 = sub_10061344C;
  v61 = v28;
  aBlock = _NSConcreteStackBlock;
  v57 = *"";
  v58 = sub_10066C70C;
  v59 = &unk_10187D448;
  v29 = _Block_copy(&aBlock);

  [v27 enumerateEditorsOnStackUsingBlock:v29];
  _Block_release(v29);
  swift_beginAccess();
  v30 = *(v28 + 16);
  v31 = *(v28 + 24);
  swift_unknownObjectRetain();

  v2 = v52;
  if (v30)
  {
    v32 = swift_getObjectType();
    v33 = (*(v31 + 72))(v32, v31);
    swift_unknownObjectRelease();
    v1 = v53;
    if (v33 == 2)
    {

      goto LABEL_9;
    }

    v41 = [v24 postScriptName];
    if (!v41)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = String._bridgeToObjectiveC()();
    }

    v42 = [objc_opt_self() isSystemFontName:v41];

    if (v42)
    {
      v43 = [objc_opt_self() mainBundle];
      v44 = String._bridgeToObjectiveC()();
      v45 = String._bridgeToObjectiveC()();
      v46 = [v43 localizedStringForKey:v44 value:v45 table:0];
    }

    else
    {
      v46 = [v24 displayName];
    }

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v48;

    v49 = [v24 copyWithSize:v33 & 1 bold:v51 & 1 italic:17.0];
    v12 = [v49 platformFont];

    v25 = v47;
  }

  else
  {

    v12 = 0;
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v1 = v53;
LABEL_11:
  sub_100609CB0(v25, v26, v12);

  sub_100006370(0, &qword_1019F6E10);
  (*(v2 + 16))(v55, v6, v1);
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v34 = UIButton.init(configuration:primaryAction:)();
  [v34 setContentHorizontalAlignment:3];
  v35 = [v34 titleLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setMinimumScaleFactor:0.5];
  }

  v37 = [v34 titleLabel];
  if (v37)
  {
    v38 = v37;
    [v37 setAdjustsFontSizeToFitWidth:1];
  }

  v39 = [v34 layer];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  [v39 setCornerRadius:*&qword_101AD5E10];

  (*(v2 + 8))(v6, v1);
  return v34;
}

id sub_10060B334()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146CE00;
  *(v0 + 32) = sub_10060C4FC();
  *(v0 + 40) = sub_10060CB88();
  v1 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setAxis:0];
  [v3 setAlignment:0];
  [v3 setDistribution:0];
  [v3 setSpacing:1.0];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant:34.0];

  [v5 setActive:1];
  [v3 setDistribution:1];
  return v3;
}

id sub_10060B4B0(char a1, char a2, int a3, double a4)
{
  v133 = a3;
  ObjectType = swift_getObjectType();
  v122 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for UIButton.Configuration.Size();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v116 - v11;
  v125 = type metadata accessor for UIButton.Configuration();
  v124 = *(v125 - 8);
  v13 = __chkstk_darwin(v125);
  v119 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v116 - v16;
  __chkstk_darwin(v15);
  v123 = &v116 - v18;
  v127 = v4;
  v19 = *(*(v4 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  v138 = sub_10061344C;
  v139 = v20;
  aBlock = _NSConcreteStackBlock;
  v135 = *"";
  v136 = sub_10066C70C;
  v137 = &unk_10187D380;
  v21 = _Block_copy(&aBlock);

  [v19 enumerateEditorsOnStackUsingBlock:v21];
  _Block_release(v21);
  swift_beginAccess();
  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  swift_unknownObjectRetain();

  if (v22)
  {
    v24 = swift_getObjectType();
    v25 = (*(v23 + 24))(v24, v23);
    swift_unknownObjectRelease();
    v26 = 0.0;
    if ((v25 & 0xFF00000000) == 0x200000000)
    {
      v27 = 0;
    }

    else
    {
      v27 = ((v25 & 0xFFFFFFFFFFuLL) >> 32) & 1;
    }

    if ((v25 & 0xFF00000000) != 0x200000000)
    {
      v26 = *&v25;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0.0;
  }

  if (v26 <= 999.0)
  {
    v28 = v26;
  }

  else
  {
    v28 = 999.0;
  }

  v29 = [objc_opt_self() sharedApplication];
  v30 = [v29 preferredContentSizeCategory];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v130 = v30;
  if (v31 == v34 && v33 == v35)
  {
    goto LABEL_14;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v36 & 1) == 0)
  {
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
    if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
    {
      goto LABEL_14;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_16;
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
    if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
    {
LABEL_14:

      goto LABEL_16;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v62 & 1) == 0 && (a2)
    {
      v63 = [objc_opt_self() mainBundle];
      v64 = String._bridgeToObjectiveC()();
      v65 = String._bridgeToObjectiveC()();
      v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

LABEL_16:
  sub_1005B981C(&qword_1019F54E0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10146C6B0;
  *(v37 + 56) = &type metadata for Float;
  *(v37 + 64) = &protocol witness table for Float;
  *(v37 + 32) = v28;
  v38 = static String.localizedStringWithFormat(_:_:)();
  v40 = v39;

  if (a1)
  {
    v41 = [objc_opt_self() clearColor];
  }

  else
  {
    v41 = 0;
  }

  v131 = v38;
  if (v133)
  {
    if (qword_1019F12C8 != -1)
    {
      swift_once();
    }

    v42 = qword_101AD5E08;
  }

  else
  {
    v42 = [objc_opt_self() labelColor];
  }

  v43 = v42;
  v44 = objc_opt_self();
  v45 = &selRef_secondaryLabelColor;
  if (!v27)
  {
    v45 = &selRef_labelColor;
  }

  v46 = [v44 *v45];

  v132 = v43;
  v128 = v46;
  v126 = v41;
  if (v133)
  {
    static UIButton.Configuration.filled()();
    UIButton.Configuration.image.setter();
    v47 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:17.0];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();

    UIButton.Configuration.title.setter();
    v48 = swift_allocObject();
    *(v48 + 16) = 1;
    *(v48 + 17) = v27;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v49 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v49 - 8) + 56))(v12, 0, 1, v49);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    (*(v117 + 104))(v116, enum case for UIButton.Configuration.Size.small(_:), v118);
    UIButton.Configuration.buttonSize.setter();
    if (!v41)
    {
      v67 = [objc_opt_self() mainScreen];
      v68 = [v67 traitCollection];

      LOBYTE(v67) = [v68 crl_isUserInterfaceStyleDark];
      if (v67)
      {
        if (qword_1019F12B0 != -1)
        {
          swift_once();
        }

        v69 = qword_101AD5DF0;
      }

      else
      {
        if (qword_1019F12A8 != -1)
        {
          swift_once();
        }

        v69 = qword_101AD5DE8;
      }

      v70 = v69;
    }

    v71 = v41;
    UIButton.Configuration.baseBackgroundColor.setter();
    v72 = v46;
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v121 + 104))(v120, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v122);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.Configuration.contentInsets.setter();
    v73 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v73(&aBlock, 0);
    v74 = v124;
    v75 = v123;
    v76 = v125;
    (*(v124 + 32))(v123, v17, v125);
    type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
    (*(v74 + 16))(v119, v75, v76);
    v77 = UIButton.init(configuration:primaryAction:)();
    v78 = v127;
    swift_unknownObjectWeakAssign();
    v138 = sub_1005D46A0(v41, v41, v72, v132);
    v139 = v79;
    aBlock = _NSConcreteStackBlock;
    v135 = *"";
    v52 = v78;
    v136 = sub_10068B39C;
    v137 = &unk_10187D3D0;
    v80 = _Block_copy(&aBlock);
    v81 = v77;

    [v81 setConfigurationUpdateHandler:v80];
    _Block_release(v80);
    v82 = v81;
    v50 = v131;
    v83 = String._bridgeToObjectiveC()();
    [v82 setAccessibilityLabel:v83];

    v51 = v82;
    [v51 setShowsLargeContentViewer:1];
    v84 = String._bridgeToObjectiveC()();
    [v51 setLargeContentTitle:v84];

    [v51 setLargeContentImage:0];
    v85 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v52];
    [v51 addInteraction:v85];

    v86 = objc_opt_self();
    v87 = [v51 titleLabel];
    [v86 crlaxTurnOnButtonShapeUnderlines:v87];

    (*(v74 + 8))(v75, v76);
  }

  else
  {
    v50 = v131;
    v51 = sub_1005D48C8(0, v131, v40, 0, v41, v41, v46, v43, v27);

    v52 = v127;
  }

  [v51 setShowsMenuAsPrimaryAction:1];
  v88 = *(v52 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager);
  v89 = *(v52 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager + 8);
  sub_100006370(0, &qword_1019F6C00);
  v114 = sub_100611D3C(v88, v89);
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v140.value.super.isa = 0;
  v140.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v90, 0, v140, 0, 0xFFFFFFFFFFFFFFFFLL, v114, v115).super.super.isa;
  [v51 setMenu:isa];

  [v51 setPreferredMenuElementOrder:2];
  v92 = v51;
  v93 = [v92 widthAnchor];
  v94 = [v93 constraintEqualToConstant:a4];

  [v94 setActive:1];
  sub_1005B981C(&unk_1019F61D0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_10146BDE0;
  v96 = objc_opt_self();
  v97 = v92;
  v98 = [v96 mainBundle];
  v99 = String._bridgeToObjectiveC()();
  v100 = String._bridgeToObjectiveC()();
  v101 = [v98 localizedStringForKey:v99 value:v100 table:0];

  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  *(v95 + 32) = v102;
  *(v95 + 40) = v104;
  *(v95 + 48) = v50;
  *(v95 + 56) = v40;
  aBlock = v95;
  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  BidirectionalCollection<>.joined(separator:)();

  v105 = String._bridgeToObjectiveC()();

  [v97 setAccessibilityLabel:v105];

  v106 = [v97 accessibilityLabel];
  [v97 setLargeContentTitle:v106];

  if (v133)
  {
    v107 = [v97 heightAnchor];

    v108 = [v107 constraintEqualToConstant:34.0];
    [v108 setActive:1];
    v109 = v130;
    v110 = v132;
    v111 = v128;
  }

  else
  {
    v108 = v128;
    v111 = v132;
    v110 = v130;
    v109 = v97;
  }

  v112 = v126;

  return v97;
}

id sub_10060C4FC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  sub_100006370(0, &qword_1019F6190);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v4;
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [v6 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v9 = sub_1005D3A94(v3, 0, 0, v5, 0, 0, v7, v8, 0, 5, 0, 0, 0, 0);

  if (!sub_10060C9F8(*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager), *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager + 8)))
  {
    [v9 setEnabled:0];
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v11 setAccessibilityLabel:v15];

  v16 = [v11 accessibilityLabel];
  [v11 setLargeContentTitle:v16];

  return v11;
}

uint64_t sub_10060C818(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v15[4] = sub_10061344C;
  v15[5] = v4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_10066C70C;
  v15[3] = &unk_10187D358;
  v5 = _Block_copy(v15);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v6)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(v7 + 24))(ObjectType, v7);
    result = swift_unknownObjectRelease();
    if ((v10 & 0xFF00000000) != 0x200000000)
    {
      v11 = *&v10;
      v12 = *(a2 + 16);
      if (!v12)
      {
LABEL_7:
        result = sub_100613150(a2, v11);
        if (result < 0)
        {
          return result;
        }

        if (result >= v12)
        {
          __break(1u);
          return result;
        }

        v14 = (a2 + 32 + 4 * result);
        return sub_100ABDDF8(*v14);
      }

      v13 = 0;
      v14 = (a2 + 28);
      while (v14[1] != v11)
      {
        ++v13;
        ++v14;
        if (v12 == v13)
        {
          goto LABEL_7;
        }
      }

      if (v13)
      {
        return sub_100ABDDF8(*v14);
      }
    }
  }

  return result;
}

BOOL sub_10060C9F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v11[4] = sub_10061344C;
  v11[5] = v4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10066C70C;
  v11[3] = &unk_10187D330;
  v5 = _Block_copy(v11);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v6 && (ObjectType = swift_getObjectType(), v9 = (*(v7 + 24))(ObjectType, v7), swift_unknownObjectRelease(), (v9 & 0xFF00000000) != 0x200000000) && *(a2 + 16))
  {
    return *(a2 + 32) < *&v9;
  }

  else
  {
    return 0;
  }
}

id sub_10060CB88()
{
  v1 = v0;
  swift_getObjectType();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  sub_100006370(0, &qword_1019F6190);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v4;
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [v6 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v9 = sub_1005D3A94(v3, 0, 0, v5, 0, 0, v7, v8, 0, 10, 0, 0, 0, 0);

  if (!sub_10060D12C(*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager), *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager + 8)))
  {
    [v9 setEnabled:0];
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v11 setAccessibilityLabel:v15];

  v16 = [v11 accessibilityLabel];
  [v11 setLargeContentTitle:v16];

  return v11;
}

void sub_10060CEA0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager + 8);
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager);

    a3(v7, v5);
  }
}

uint64_t sub_10060CF38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v15[4] = sub_10061344C;
  v15[5] = v4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_10066C70C;
  v15[3] = &unk_10187D308;
  v5 = _Block_copy(v15);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v6)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(v7 + 24))(ObjectType, v7);
    result = swift_unknownObjectRelease();
    if ((v10 & 0xFF00000000) != 0x200000000)
    {
      v11 = *&v10;
      v12 = *(a2 + 16);
      v13 = a2 + 32;
      if (v12)
      {
        v14 = 0;
        while (*(v13 + 4 * v14) != v11)
        {
          if (v12 == ++v14)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        result = sub_100613150(a2, v11);
        if (result >= (v12 - 1))
        {
          return result;
        }

        v14 = result + 1;
        if (result + 1 < v12)
        {
          return sub_100ABDDF8(*(v13 + 4 * v14));
        }

        __break(1u);
      }

      if (v14 >= (v12 - 1))
      {
        return result;
      }

      if (++v14 >= v12)
      {
        __break(1u);
        return result;
      }

      return sub_100ABDDF8(*(v13 + 4 * v14));
    }
  }

  return result;
}

BOOL sub_10060D12C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v12[4] = sub_10061344C;
  v12[5] = v4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_10066C70C;
  v12[3] = &unk_10187D2E0;
  v5 = _Block_copy(v12);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v6 && (ObjectType = swift_getObjectType(), v9 = (*(v7 + 24))(ObjectType, v7), swift_unknownObjectRelease(), (v9 & 0xFF00000000) != 0x200000000) && (v10 = *(a2 + 16)) != 0)
  {
    return *(a2 + 4 * v10 + 28) > *&v9;
  }

  else
  {
    return 0;
  }
}

id sub_10060D2C0()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146E8A0;
  *(v0 + 32) = sub_10060D460(0, 0x4056C00000000000, 0);
  *(v0 + 40) = sub_10060F49C(0x4056800000000000, 0);
  sub_10060FA10(0, 0x4056C00000000000, 0);
  *(v0 + 48) = v1;
  v2 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArrangedSubviews:isa];

  [v4 setAxis:0];
  [v4 setAlignment:0];
  [v4 setDistribution:0];
  [v4 setSpacing:12.0];
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintGreaterThanOrEqualToConstant:34.0];

  [v6 setActive:1];
  return v4;
}

id sub_10060D460(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v69 = a3;
  v64 = *&a2;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v62 = type metadata accessor for UIButton.Configuration();
  v5 = *(v62 - 8);
  __chkstk_darwin(v62);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  sub_100612868();
  v71 = v11;
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  v68 = objc_opt_self();
  v14 = [v68 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v18;

  v19 = *(*(v4 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  aBlock[4] = sub_10061344C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10066C70C;
  aBlock[3] = &unk_10187D2B8;
  v21 = _Block_copy(aBlock);

  [v19 enumerateEditorsOnStackUsingBlock:v21];
  _Block_release(v21);
  swift_beginAccess();
  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  swift_unknownObjectRetain();

  if (!v22 || (v24 = swift_getObjectType(), v25 = (*(v23 + 200))(v24, v23), v27 = v26, v28 = v26, swift_unknownObjectRelease(), v28 == 2) || (v27 & 1) != 0)
  {
    v29 = v13;
  }

  else
  {
    v52 = (v71 + 32);
    v53 = *(v71 + 16) + 1;
    v29 = v13;
    while (--v53)
    {
      v54 = v52 + 4;
      v55 = *v52;
      v52 += 4;
      if (v55 == v25)
      {
        v56 = *(v54 - 1);

        v57 = v56;

        v58 = objc_opt_self();
        v29 = v57;
        v59 = [v58 crlwpax_descriptionForParagraphAlignment:v25];
        if (v59)
        {
          v60 = v59;
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v61;
        }

        else
        {

          v65 = 0;
          v70 = 0;
        }

        break;
      }
    }
  }

  v67 = v29;
  if (v66)
  {
    sub_1005D4EF8(v29);
    sub_100006370(0, &qword_1019F6E10);
    v30 = v62;
    (*(v5 + 16))(v7, v10, v62);
    v31 = UIButton.init(configuration:primaryAction:)();
    [v31 setPointerInteractionEnabled:1];
    (*(v5 + 8))(v10, v30);
  }

  else
  {
    v32 = objc_opt_self();
    v33 = [v32 labelColor];
    v34 = [v32 labelColor];
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    v31 = sub_1005D48C8(v29, 0, 0, 0, 0, 0, v33, v34, 0);
  }

  v35 = v69;
  v36 = v70;
  v37 = v68;
  [v31 setShowsMenuAsPrimaryAction:{1, v62, ObjectType}];
  v38 = sub_10060DBC8(v71);

  [v31 setMenu:v38];

  [v31 setPreferredMenuElementOrder:2];
  if ((v35 & 1) == 0)
  {
    v39 = v64;
    v40 = [v31 widthAnchor];
    v41 = [v40 constraintEqualToConstant:v39];

    [v41 setActive:1];
  }

  v42 = v31;
  v43 = [v37 mainBundle];
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

  if (!v46)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = String._bridgeToObjectiveC()();
  }

  [v42 setAccessibilityLabel:v46];

  v47 = v42;
  v48 = [v47 accessibilityLabel];
  [v47 setLargeContentTitle:v48];

  v49 = v67;
  if (v36)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  [v47 setAccessibilityValue:v50];

  return v47;
}

Class sub_10060DBC8(uint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  aBlock[4] = sub_10061344C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10066C70C;
  aBlock[3] = &unk_10187D218;
  v5 = _Block_copy(aBlock);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (!v6)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v26 = (*(v7 + 200))(ObjectType, v7);
  v10 = v9;
  v11 = v9;
  swift_unknownObjectRelease();
  if (v11 == 2)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100006370(0, &qword_1019F6190);
    v14 = (a1 + 56);
    do
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v18 = *(v14 - 1);
      v17 = *v14;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = v15;
      v20[4] = v16;
      v20[5] = v18;
      v20[6] = v17;
      swift_bridgeObjectRetain_n();
      v21 = v17;
      v25._rawValue = 0;
      v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      if ((v10 & 1) == 0 && v26 == v15)
      {
        [v22 setState:{1, 0, 0, 0, sub_1006130F0, v20}];
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 4;
      --v13;
    }

    while (v13);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100006370(0, &unk_1019F61A0);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_100006370(0, &qword_1019F6C00);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v28, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v25).super.super.isa;
}

void sub_10060DF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider;
    v7 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider);
    v8 = *&v7[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 16) = 0;
    v29 = sub_10061344C;
    v30 = v9;
    aBlock = _NSConcreteStackBlock;
    v26 = *"";
    v27 = sub_10066C70C;
    v28 = &unk_10187D268;
    v10 = _Block_copy(&aBlock);
    v11 = v7;

    [v8 enumerateEditorsOnStackUsingBlock:v10];
    _Block_release(v10);
    swift_beginAccess();
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    swift_unknownObjectRetain();

    if (v12)
    {
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 200))(ObjectType, v13);
      v17 = v16;
      v18 = v16;

      swift_unknownObjectRelease();
      if (v18 != 2 && (v15 != a3) | v17 & 1)
      {
        v19 = *(*&v5[v6] + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
        v20 = swift_allocObject();
        *(v20 + 24) = 0;
        *(v20 + 16) = 0;
        v29 = sub_10061344C;
        v30 = v20;
        aBlock = _NSConcreteStackBlock;
        v26 = *"";
        v27 = sub_10066C70C;
        v28 = &unk_10187D290;
        v21 = _Block_copy(&aBlock);

        [v19 enumerateEditorsOnStackUsingBlock:v21];
        _Block_release(v21);
        swift_beginAccess();
        v22 = *(v20 + 16);
        v23 = *(v20 + 24);
        swift_unknownObjectRetain();

        if (v22)
        {
          v24 = swift_getObjectType();
          (*(v23 + 208))(a3, v24, v23);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10060E29C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1005B981C(&unk_1019F4CF0);
  __chkstk_darwin(v1 - 8);
  v57 = &v50 - v2;
  v3 = type metadata accessor for IndexSet();
  v53 = *(v3 - 1);
  __chkstk_darwin(v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100612868();
  v7 = v6;
  v8 = *(v6 + 16);
  v9 = _swiftEmptyArrayStorage;
  v51 = v3;
  v52 = v5;
  v54 = v0;
  if (v8)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = 56;
    v11 = v8;
    do
    {
      v12 = *(v7 + v10);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 32;
      --v11;
    }

    while (v11);
    v13 = aBlock[0];
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100034080(0, v8, 0);
    v9 = aBlock[0];
    v14 = (v7 + 48);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      aBlock[0] = v9;
      v18 = v9[2];
      v17 = v9[3];

      if (v18 >= v17 >> 1)
      {
        sub_100034080((v17 > 1), v18 + 1, 1);
        v9 = aBlock[0];
      }

      v9[2] = v18 + 1;
      v19 = &v9[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
      v14 += 4;
      --v8;
    }

    while (v8);

    v3 = v51;
    v5 = v52;
    v0 = v54;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  IndexSet.init()();
  v20 = *(*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = 0;
  aBlock[4] = sub_10061344C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10066C70C;
  aBlock[3] = &unk_10187D1C8;
  v22 = _Block_copy(aBlock);

  [v20 enumerateEditorsOnStackUsingBlock:v22];
  _Block_release(v22);
  swift_beginAccess();
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  swift_unknownObjectRetain();

  if (v23)
  {
    v25 = swift_getObjectType();
    v26 = (*(v24 + 200))(v25, v24);
    v28 = v27;
    v29 = v27;
    swift_unknownObjectRelease();
    if (v29 != 2 && (v28 & 1) == 0)
    {
      if (v26 > 2)
      {
        if ((v26 - 3) >= 2)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v26)
        {
          if (v26 == 1)
          {
            v26 = 2;
          }

          else
          {
            if (v26 != 2)
            {
              goto LABEL_44;
            }

            v26 = 1;
          }
        }

        IndexSet.insert(_:)(v26);
      }
    }
  }

  v56 = swift_allocObject();
  v30 = v53;
  v31 = v54;
  *(v56 + 16) = v54;
  v32 = v57;
  (*(v30 + 16))(v57, v5, v3);
  (*(v30 + 56))(v32, 0, 1, v3);
  v59 = 1;
  v33 = v13 >> 62;
  if (v13 >> 62)
  {
LABEL_40:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      goto LABEL_24;
    }

LABEL_41:
    v49 = v31;

    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_42:
      sub_100006370(0, &qword_1019F6D00);

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_37;
    }

LABEL_36:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00);
LABEL_37:

    v40 = objc_allocWithZone(UIStackView);
    sub_100006370(0, &qword_1019F6D00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v42 = [v40 initWithArrangedSubviews:isa];

    [v42 setAxis:0];
    [v42 setAlignment:0];
    [v42 setDistribution:1];
    [v42 setSpacing:1.0];
    v43 = v42;
    v44 = [v43 heightAnchor];
    v45 = [v44 constraintGreaterThanOrEqualToConstant:34.0];

    [v45 setActive:1];
    v46 = [v43 heightAnchor];

    v47 = [v46 constraintGreaterThanOrEqualToConstant:34.0];
    [v47 setActive:1];

    (*(v53 + 8))(v52, v3);
    sub_1000505D0(v59);
    sub_10000CAAC(v57, &unk_1019F4CF0);
    return v43;
  }

  v34 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_41;
  }

LABEL_24:
  v58 = _swiftEmptyArrayStorage;
  v3 = v31;
  v26 = &v58;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v34 & 0x8000000000000000) == 0)
  {
    v54 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v33)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = 0;
    v37 = v35 & ~(v35 >> 63);
    do
    {
      if (v37 == v36)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v54 + 16))
        {
          goto LABEL_39;
        }

        v38 = *(v13 + 8 * v36 + 32);
      }

      v39 = v38;
      v33 = v36 + 1;
      sub_1005D2FA4(v36, v38, v13, v57, &v59, v3, 0, sub_100613084, v56, 0, v9, ObjectType);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = *(v58 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v36 = v33;
    }

    while (v34 != v33);

    v3 = v51;
    if (v58 >> 62)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_44:
  type metadata accessor for CRLWPParagraphAlignment(0);
  v59 = v26;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10060EAB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider);
  v2 = OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v25 = sub_10061344C;
  v26 = v4;
  aBlock = _NSConcreteStackBlock;
  v22 = *"";
  v23 = sub_10066C70C;
  v24 = &unk_10187D178;
  v5 = _Block_copy(&aBlock);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v6)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(v7 + 200))(ObjectType, v7);
    v12 = v11;
    v13 = v11;
    result = swift_unknownObjectRelease();
    if (v13 != 2)
    {
      if (IndexSet.contains(_:)(0))
      {
        v14 = 0;
        if ((v10 != 0) | v12 & 1)
        {
          goto LABEL_11;
        }
      }

      if (IndexSet.contains(_:)(1) && (v10 != 2) | v12 & 1)
      {
        v14 = 2;
        goto LABEL_11;
      }

      result = IndexSet.contains(_:)(2);
      if ((result & 1) != 0 && (v10 != 1) | v12 & 1)
      {
        v14 = 1;
LABEL_11:
        v15 = *(v1 + v2);
        v16 = swift_allocObject();
        *(v16 + 24) = 0;
        *(v16 + 16) = 0;
        v25 = sub_10061344C;
        v26 = v16;
        aBlock = _NSConcreteStackBlock;
        v22 = *"";
        v23 = sub_10066C70C;
        v24 = &unk_10187D1A0;
        v17 = _Block_copy(&aBlock);

        [v15 enumerateEditorsOnStackUsingBlock:v17];
        _Block_release(v17);
        swift_beginAccess();
        v18 = *(v16 + 16);
        v19 = *(v16 + 24);
        swift_unknownObjectRetain();

        if (v18)
        {
          v20 = swift_getObjectType();
          (*(v19 + 208))(v14, v20, v19);
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

Class sub_10060EDC8(uint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  aBlock[4] = sub_10061344C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10066C70C;
  aBlock[3] = &unk_10187D0D8;
  v5 = _Block_copy(aBlock);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (!v6)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v26 = (*(v7 + 216))(ObjectType, v7);
  v10 = v9;
  v11 = v9;
  swift_unknownObjectRelease();
  if (v11 == 2)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100006370(0, &qword_1019F6190);
    v14 = (a1 + 56);
    do
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v18 = *(v14 - 1);
      v17 = *v14;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = v15;
      v20[4] = v16;
      v20[5] = v18;
      v20[6] = v17;
      swift_bridgeObjectRetain_n();
      v21 = v17;
      v25._rawValue = 0;
      v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      if ((v10 & 1) == 0 && v26 == v15)
      {
        [v22 setState:{1, 0, 0, 0, sub_10061306C, v20}];
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 4;
      --v13;
    }

    while (v13);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100006370(0, &unk_1019F61A0);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_100006370(0, &qword_1019F6C00);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v28, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v25).super.super.isa;
}

void sub_10060F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider;
    v7 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider);
    v8 = *&v7[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 16) = 0;
    v29 = sub_10061344C;
    v30 = v9;
    aBlock = _NSConcreteStackBlock;
    v26 = *"";
    v27 = sub_10066C70C;
    v28 = &unk_10187D128;
    v10 = _Block_copy(&aBlock);
    v11 = v7;

    [v8 enumerateEditorsOnStackUsingBlock:v10];
    _Block_release(v10);
    swift_beginAccess();
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    swift_unknownObjectRetain();

    if (v12)
    {
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 216))(ObjectType, v13);
      v17 = v16;
      v18 = v16;

      swift_unknownObjectRelease();
      if (v18 != 2 && (v15 != a3) | v17 & 1)
      {
        v19 = *(*&v5[v6] + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
        v20 = swift_allocObject();
        *(v20 + 24) = 0;
        *(v20 + 16) = 0;
        v29 = sub_10061344C;
        v30 = v20;
        aBlock = _NSConcreteStackBlock;
        v26 = *"";
        v27 = sub_10066C70C;
        v28 = &unk_10187D150;
        v21 = _Block_copy(&aBlock);

        [v19 enumerateEditorsOnStackUsingBlock:v21];
        _Block_release(v21);
        swift_beginAccess();
        v22 = *(v20 + 16);
        v23 = *(v20 + 24);
        swift_unknownObjectRetain();

        if (v22)
        {
          v24 = swift_getObjectType();
          (*(v23 + 224))(a3, v24, v23);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

id sub_10060F49C(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_100612C0C();
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  v9 = *(*(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  aBlock[4] = sub_10061344C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10066C70C;
  aBlock[3] = &unk_10187D0B0;
  v11 = _Block_copy(aBlock);

  [v9 enumerateEditorsOnStackUsingBlock:v11];
  _Block_release(v11);
  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_unknownObjectRetain();

  if (v12)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 216))(ObjectType, v13);
    v17 = v16;
    v18 = v16;
    swift_unknownObjectRelease();
    if (v18 != 2 && (v17 & 1) == 0)
    {
      v37 = (v6 + 32);
      v38 = *(v6 + 16) + 1;
      while (--v38)
      {
        v39 = v37 + 4;
        v40 = *v37;
        v37 += 4;
        if (v40 == v15)
        {
          v41 = *(v39 - 1);

          v42 = v41;

          v43 = objc_opt_self();
          v8 = v42;
          v44 = [v43 crlwpax_descriptionForVerticalAlignment:v15];
          if (v44)
          {
            v45 = v44;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v46;

            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  v19 = 0;
LABEL_5:
  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  v22 = [v20 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v23 = sub_1005D48C8(v8, 0, 0, 0, 0, 0, v21, v22, 0);

  [v23 setShowsMenuAsPrimaryAction:1];
  v24 = sub_10060EDC8(v6);

  [v23 setMenu:v24];

  if ((a2 & 1) == 0)
  {
    v25 = [v23 widthAnchor];
    v26 = [v25 constraintEqualToConstant:*&a1];

    [v26 setActive:1];
  }

  [v23 setPreferredMenuElementOrder:2];
  v27 = objc_opt_self();
  v28 = v23;
  v29 = [v27 mainBundle];
  v30 = String._bridgeToObjectiveC()();
  v31 = String._bridgeToObjectiveC()();
  v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  [v28 setAccessibilityLabel:v32];

  v33 = v28;
  v34 = [v33 accessibilityLabel];
  [v33 setLargeContentTitle:v34];

  if (v19)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  [v33 setAccessibilityValue:v35];

  return v33;
}

void sub_10060FA10(int a1, uint64_t a2, int a3)
{
  v55 = a3;
  v53 = *&a2;
  LODWORD(v54) = a1;
  ObjectType = swift_getObjectType();
  v51 = type metadata accessor for UIButton.Configuration();
  v4 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = *(*(v3 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  aBlock[4] = sub_10061344C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10066C70C;
  aBlock[3] = &unk_10187D088;
  v12 = _Block_copy(aBlock);

  [v10 enumerateEditorsOnStackUsingBlock:v12];
  _Block_release(v12);
  swift_beginAccess();
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  swift_unknownObjectRetain();

  if (v13)
  {
    v15 = swift_getObjectType();
    v16 = (*(v14 + 272))(v15, v14);
    swift_unknownObjectRelease();
    if ((v16 & 0x100) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    if ((v16 & 0xFF00) == 0x200)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() systemImageNamed:v19];

  if (v20)
  {
    if (v18)
    {
      if (qword_1019F12A0 != -1)
      {
        swift_once();
      }

      v21 = qword_101AD5DE0;
      v22 = objc_opt_self();
      v23 = &selRef_whiteColor;
    }

    else
    {
      v24 = [objc_opt_self() mainScreen];
      v25 = [v24 traitCollection];

      LODWORD(v24) = [v25 crl_isUserInterfaceStyleDark];
      if (v24)
      {
        if (qword_1019F12B0 != -1)
        {
          swift_once();
        }

        v26 = &qword_101AD5DF0;
      }

      else
      {
        if (qword_1019F12A8 != -1)
        {
          swift_once();
        }

        v26 = &qword_101AD5DE8;
      }

      v21 = *v26;
      v22 = objc_opt_self();
      v23 = &selRef_labelColor;
    }

    v27 = v21;
    v28 = [v22 *v23];
    if (v54)
    {
      v54 = v20;
      sub_1005D4EF8(v20);
      sub_100006370(0, &qword_1019F6E10);
      v29 = v28;
      v30 = v51;
      (*(v4 + 16))(v6, v9, v51);
      v31 = UIButton.init(configuration:primaryAction:)();
      [v31 setPointerInteractionEnabled:1];

      v32 = v30;
      v28 = v29;
      (*(v4 + 8))(v9, v32);
    }

    else
    {
      v33 = objc_opt_self();
      v34 = v20;
      v35 = [v33 labelColor];
      if (qword_1019F12D0 != -1)
      {
        swift_once();
      }

      v31 = sub_1005D48C8(v20, 0, 0, 0, v21, 0, v28, v35, 0);
    }

    [v31 setShowsMenuAsPrimaryAction:1];
    sub_1005B981C(&unk_1019F4D60);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10146CE00;
    *(v36 + 32) = sub_1006101AC(v18);
    *(v36 + 40) = sub_1006108C8();
    sub_100006370(0, &qword_1019F6C00);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v57.value.super.isa = 0;
    v57.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v57, 0, 0xFFFFFFFFFFFFFFFFLL, v36, v49).super.super.isa;
    [v31 setMenu:isa];

    if ((v55 & 1) == 0)
    {
      v39 = v53;
      v40 = [v31 widthAnchor];
      v41 = [v40 constraintEqualToConstant:v39];

      [v41 setActive:1];
    }

    v42 = objc_opt_self();
    v43 = v31;
    v44 = [v42 mainBundle];
    v45 = String._bridgeToObjectiveC()();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

    if (!v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = String._bridgeToObjectiveC()();
    }

    [v43 setAccessibilityLabel:v47];

    v48 = [v43 accessibilityLabel];
    [v43 setLargeContentTitle:v48];
  }

  else
  {
    __break(1u);
  }
}

Class sub_1006101AC(unsigned __int8 a1)
{
  sub_100006370(0, &qword_1019F6190);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v7 = [v1 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed:v11];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = [v1 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v12 systemImageNamed:v19];

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = [v1 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v12 systemImageNamed:v27];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1005B981C(&unk_1019F4D60);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10146E8B0;
  *(v30 + 32) = v42;
  *(v30 + 40) = v41;
  *(v30 + 48) = v22;
  *(v30 + 56) = v29;
  v31 = v42;
  v32 = v41;
  v33 = v22;
  v34 = v29;
  v35 = sub_100FE1300(v30);
  if (a1 > 1u)
  {
    v36 = v34;
    if (a1 != 2)
    {
      v36 = v32;
    }
  }

  else
  {
    v36 = v31;
    if (a1)
    {
      v36 = v33;
    }
  }

  [v36 setState:{1, 0}];
  if (v35 >> 62)
  {
    sub_100006370(0, &unk_1019F61A0);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0);
    preferredElementSize = v35;
  }

  sub_100006370(0, &qword_1019F6C00);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v44.value.super.isa = 0;
  v44.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v38, 0, v44, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;

  return isa;
}

void sub_10061086C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100610E28(a3);
  }
}

Class sub_1006108C8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 systemImageNamed:v0];

  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 systemImageNamed:v3];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (sub_1004A48FC())
  {
    v10 = v4;
  }

  else
  {
    v10 = v2;
  }

  sub_100006370(0, &qword_1019F6190);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v10;
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v14 = [v5 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (sub_1004A48FC())
  {
    v18 = v2;
  }

  else
  {
    v18 = v4;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = v18;
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6C00);
  sub_1005B981C(&unk_1019F4D60);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10146CE00;
  *(preferredElementSize + 32) = v13;
  *(preferredElementSize + 40) = v20;
  v22 = v13;
  v23 = v20;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v27, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;

  return isa;
}

void sub_100610C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider);

    v11 = *&v10[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 16) = 0;
    aBlock[4] = a3;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10066C70C;
    aBlock[3] = a4;
    v13 = _Block_copy(aBlock);

    [v11 enumerateEditorsOnStackUsingBlock:v13];
    _Block_release(v13);
    swift_beginAccess();
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    swift_unknownObjectRetain();

    if (v14)
    {
      ObjectType = swift_getObjectType();
      (*(v15 + 288))(a5, ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100610E28(uint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v10[4] = sub_10061344C;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_10066C70C;
  v10[3] = &unk_10187CFE8;
  v5 = _Block_copy(v10);

  [v3 enumerateEditorsOnStackUsingBlock:v5];
  _Block_release(v5);
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v6)
  {
    ObjectType = swift_getObjectType();
    (*(v7 + 280))(a1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100610F98()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146E8A0;
  sub_100606FA4();
  *(v0 + 32) = v1;
  *(v0 + 40) = sub_10060D460(0, 0x4048800000000000, 0);
  *(v0 + 48) = sub_10060F49C(0x4048800000000000, 0);
  v2 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArrangedSubviews:isa];

  [v4 setAxis:0];
  [v4 setAlignment:0];
  [v4 setDistribution:0];
  [v4 setSpacing:12.0];
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintGreaterThanOrEqualToConstant:34.0];

  [v6 setActive:1];
  return v4;
}

id sub_100611128()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146E8A0;
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_10060B4B0(0, 1, 0, 88.0);
  *(v0 + 40) = sub_10060B334();
  sub_10060FA10(0, 0x4048800000000000, 0);
  *(v0 + 48) = v1;
  v2 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArrangedSubviews:isa];

  [v4 setAxis:0];
  [v4 setAlignment:0];
  [v4 setDistribution:0];
  [v4 setSpacing:12.0];
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintGreaterThanOrEqualToConstant:34.0];

  [v6 setActive:1];
  return v4;
}

id sub_1006112F8()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146CE00;
  sub_100606FA4();
  *(v0 + 32) = v1;
  *(v0 + 40) = sub_10060A490();
  v2 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArrangedSubviews:isa];

  [v4 setAxis:0];
  [v4 setAlignment:0];
  [v4 setDistribution:0];
  [v4 setSpacing:12.0];
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintGreaterThanOrEqualToConstant:34.0];

  [v6 setActive:1];
  return v4;
}

id sub_100611464()
{
  v13 = &type metadata for CRLFeatureFlags;
  v14 = sub_100004D60();
  v12[0] = 25;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v12);
  sub_1005B981C(&unk_1019F4D60);
  if (v0)
  {
    v1 = 0x4056C00000000000;
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10146E8A0;
    *(v2 + 32) = sub_10060D460(0, 0x4056C00000000000, 0);
    *(v2 + 40) = sub_10060F49C(0x4056800000000000, 0);
    v3 = (v2 + 48);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10146CE00;
    *(v4 + 32) = sub_10060E29C();
    v3 = (v4 + 40);
    v1 = 0x4050400000000000;
  }

  sub_10060FA10(0, v1, 0);
  *v3 = v5;
  v6 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithArrangedSubviews:isa];

  [v8 setAxis:0];
  [v8 setAlignment:0];
  [v8 setDistribution:0];
  [v8 setSpacing:12.0];
  v9 = [v8 heightAnchor];
  v10 = [v9 constraintGreaterThanOrEqualToConstant:34.0];

  [v10 setActive:1];
  return v8;
}

void *sub_10061167C()
{
  v0 = sub_100911E34();
  if (v0)
  {
    sub_1006369C4(v0);
  }

  v1 = sub_10068AFC0();
  if (v1)
  {
    v2 = v1;
    if (v1 >> 62)
    {
      type metadata accessor for CRLBoardItem(0);
      v3 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CRLBoardItem(0);
      v3 = v2;
    }

    sub_10063F990(v3);
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100611764(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, &v22);
  type metadata accessor for CRLShapeItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = v21;
  v5 = sub_10068AFC0();
  if (!v5 || (v6 = v5, v22 = v21, __chkstk_darwin(v5), v20[2] = &v22, v7 = sub_100C33540(sub_100613380, v20, v6), , (v7 & 1) == 0))
  {

LABEL_14:
    v18 = sub_1005D518C(a1, a2);
    return v18 & 1;
  }

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v9 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v10 = v8;
  swift_beginAccess();
  v11 = *&v8[v9];
  if (*(v11 + 16) && (v12 = sub_1007CF108(), (v13 & 1) != 0) || (v22 = 0, v23 = 0, v24 = 0, v25 = 1, sub_10000CAAC(&v22, &unk_1019F4D50), v11 = *&v8[v9], *(v11 + 16)) && (v12 = sub_1007CF108(), (v14 & 1) != 0) || (v22 = 0, v23 = 0, v24 = 0, v25 = 1, sub_10000CAAC(&v22, &unk_1019F4D50), v11 = *&v8[v9], *(v11 + 16)) && (v12 = sub_1007CF108(), (v15 & 1) != 0) || (v22 = 0, v23 = 0, v24 = 0, v25 = 1, sub_10000CAAC(&v22, &unk_1019F4D50), v11 = *&v8[v9], *(v11 + 16)) && (v12 = sub_1007CF108(), (v16 & 1) != 0))
  {
    v17 = *(v11 + 56) + 32 * v12;

    sub_100601584(v17, &v22);

    sub_10000CAAC(&v22, &unk_1019F4D50);
    v18 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    sub_10000CAAC(&v22, &unk_1019F4D50);

    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_100611A10(uint64_t a1, uint64_t a2)
{
  if (([*(v2 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) options] & 0x100000) == 0)
  {
    return 0;
  }

  sub_100064288(a2, &v22);
  type metadata accessor for CRLShapeItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v21;
  v6 = sub_10068AFC0();
  if (!v6 || (v7 = v6, v22 = v21, __chkstk_darwin(v6), v20[2] = &v22, v8 = sub_100C33540(sub_100612848, v20, v7), , (v8 & 1) == 0))
  {

    return 0;
  }

  v9 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v10 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  v11 = *&v9[v10];
  if (*(v11 + 16) && (v12 = sub_1007CF108(29), (v13 & 1) != 0))
  {
    sub_100601584(*(v11 + 56) + 32 * v12, &v22);

    sub_10000CAAC(&v22, &unk_1019F4D50);
    return 1;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    v15 = v9;
    sub_10000CAAC(&v22, &unk_1019F4D50);
    v16 = *&v9[v10];
    if (*(v16 + 16) && (v17 = sub_1007CF108(31), (v18 & 1) != 0))
    {
      sub_100601584(*(v16 + 56) + 32 * v17, &v22);

      v19 = 1;
    }

    else
    {

      v19 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
    }

    sub_10000CAAC(&v22, &unk_1019F4D50);
    return v19;
  }
}

void sub_100611C44()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager);
}

void *sub_100611D3C(char *a1, uint64_t a2)
{
  v4 = *&a1[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  aBlock[4] = sub_100612814;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10066C70C;
  aBlock[3] = &unk_10187CF20;
  v6 = _Block_copy(aBlock);

  [v4 enumerateEditorsOnStackUsingBlock:v6];
  _Block_release(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  swift_unknownObjectRetain();

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 24))(ObjectType, v8);
  swift_unknownObjectRelease();
  if ((v10 & 0xFF00000000) == 0x200000000)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = *(a2 + 16);
  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v30 = v10 & 0xFFFFFFFFFFLL;
    v13 = *&v10;
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = objc_opt_self();
    sub_100006370(0, &qword_1019F6190);
    v14 = 32;
    do
    {
      v15 = *(a2 + v14);
      v16 = [v29 mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1005B981C(&qword_1019F54E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10146C6B0;
      *(v20 + 56) = &type metadata for Float;
      *(v20 + 64) = &protocol witness table for Float;
      *(v20 + 32) = v15;
      static String.localizedStringWithFormat(_:_:)();

      v21 = v15 == v13 && (v30 & &_mh_execute_header) == 0;
      v22 = swift_allocObject();
      *(v22 + 16) = a1;
      *(v22 + 24) = a2;
      *(v22 + 32) = v15;
      v23 = a1;

      v24 = 0;
      v25 = 0;
      v27 = sub_10061281C;
      v28 = v22;
      v26 = v21;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 4;
      --v12;
    }

    while (v12);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_1006121AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100612218(void *a1)
{
  v2 = v1;
  v4 = [a1 selectedFontDescriptor];
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider);
    v7 = OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController;
    v8 = *(v6 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 16) = 0;
    v30 = sub_10061344C;
    v31 = v9;
    aBlock = _NSConcreteStackBlock;
    v27 = *"";
    v28 = sub_10066C70C;
    v29 = &unk_10187CF70;
    v10 = _Block_copy(&aBlock);

    [v8 enumerateEditorsOnStackUsingBlock:v10];
    _Block_release(v10);
    swift_beginAccess();
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    swift_unknownObjectRetain();

    if (v11)
    {
      ObjectType = swift_getObjectType();
      v14 = (*(v12 + 24))(ObjectType, v12);
      swift_unknownObjectRelease();
      if ((v14 & 0xFF00000000) != 0x200000000)
      {
        v25 = [objc_opt_self() baseFontWithDescriptor:v5];
        v15 = [v25 copyWithSize:*&v14];
        v16 = *(v6 + v7);
        v17 = swift_allocObject();
        *(v17 + 24) = 0;
        *(v17 + 16) = 0;
        v30 = sub_10061344C;
        v31 = v17;
        aBlock = _NSConcreteStackBlock;
        v27 = *"";
        v28 = sub_10066C70C;
        v29 = &unk_10187CF98;
        v18 = _Block_copy(&aBlock);

        [v16 enumerateEditorsOnStackUsingBlock:v18];
        _Block_release(v18);
        swift_beginAccess();
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        swift_unknownObjectRetain();

        if (v19)
        {
          v21 = swift_getObjectType();
          (*(v20 + 48))(v15, v21, v20);
          swift_unknownObjectRelease();
        }

        v22 = v2 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v22 + 16);
          [a1 dismissViewControllerAnimated:1 completion:0];
          v24 = swift_getObjectType();
          (*(v23 + 40))(a1, v24, v23);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_1006126E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10061272C(uint64_t result, int a2, int a3)
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

uint64_t sub_100612778(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v7 = result;
      swift_beginAccess();
      *(a3 + 16) = a1;
      *(a3 + 24) = v7;
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      *a2 = 1;
    }
  }

  return result;
}

void sub_100612868()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 systemImageNamed:v8];

  if (!v10)
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = [v0 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v16;
  v37 = v15;

  v17 = String._bridgeToObjectiveC()();
  v18 = [v9 systemImageNamed:v17];

  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = [v0 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = String._bridgeToObjectiveC()();
  v27 = [v9 systemImageNamed:v26];

  if (!v27)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v28 = sub_1004A48FC();
  sub_1005B981C(&unk_1019F61C0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10146C4D0;
  if (v28)
  {
    v30 = v23;
  }

  else
  {
    v30 = v5;
  }

  if (v28)
  {
    v31 = v25;
  }

  else
  {
    v31 = v7;
  }

  *(v29 + 32) = v28;
  *(v29 + 40) = v30;
  if (v28)
  {
    v32 = v27;
  }

  else
  {
    v32 = v10;
  }

  if (v28)
  {
    v33 = v5;
  }

  else
  {
    v33 = v23;
  }

  if (v28)
  {
    v34 = v7;
  }

  else
  {
    v34 = v25;
  }

  *(v29 + 48) = v31;
  *(v29 + 56) = v32;
  if (v28)
  {
    v35 = v10;
  }

  else
  {
    v35 = v27;
  }

  *(v29 + 64) = 2;
  *(v29 + 72) = v37;
  *(v29 + 80) = v36;
  *(v29 + 88) = v18;
  *(v29 + 96) = v28 ^ 1;
  *(v29 + 104) = v33;
  *(v29 + 112) = v34;
  *(v29 + 120) = v35;
}

void sub_100612C0C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v6;

  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 systemImageNamed:v7];

  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v29 = v5;
  v10 = [v0 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = String._bridgeToObjectiveC()();
  v18 = [v8 systemImageNamed:v17];

  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = [v0 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = String._bridgeToObjectiveC()();
  v27 = [v8 systemImageNamed:v26];

  if (v27)
  {
    sub_1005B981C(&unk_1019F61B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10146C4D0;
    *(v28 + 32) = 0;
    *(v28 + 40) = v29;
    *(v28 + 48) = v30;
    *(v28 + 56) = v9;
    *(v28 + 64) = 1;
    *(v28 + 72) = v14;
    *(v28 + 80) = v16;
    *(v28 + 88) = v18;
    *(v28 + 96) = 2;
    *(v28 + 104) = v23;
    *(v28 + 112) = v25;
    *(v28 + 120) = v27;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1006130A8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100613150(uint64_t a1, float a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = v3 - 1;
  v5 = a1 + 32;
  result = v3 - 1;
  do
  {
    if (v4 < -1)
    {
      goto LABEL_7;
    }

    v7 = v4 / 2;
    if (v7 >= v3)
    {
      goto LABEL_7;
    }

    if (*(v5 + 4 * v7) > a2)
    {
      result = v7 - 1;
LABEL_7:
      if (v2 < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v2 = v7 + 1;
    if (v7 + 1 < 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (v2 < v3 && *(v5 + 4 * v2) > a2)
    {
      return v2 - 1;
    }

LABEL_10:
    if ((result & 0x8000000000000000) == 0 && result < v3 && *(v5 + 4 * result) < a2)
    {
      return result;
    }

    v4 = v2 + result;
  }

  while (!__OFADD__(v2, result));
  __break(1u);
  return result;
}

unint64_t sub_100613214()
{
  result = qword_1019F61E0;
  if (!qword_1019F61E0)
  {
    sub_1005C4E5C(&unk_1019F4D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F61E0);
  }

  return result;
}

unint64_t sub_100613454()
{
  result = qword_1019F61E8;
  if (!qword_1019F61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F61E8);
  }

  return result;
}

unint64_t sub_1006134AC()
{
  result = qword_1019F61F0;
  if (!qword_1019F61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F61F0);
  }

  return result;
}

uint64_t sub_10061356C@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v61 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_1019F6260);
  v5 = __chkstk_darwin(v4 - 8);
  v60 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v58 = &v38[-v7];
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v59 = &v38[-v9];
  v10 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v10 - 8);
  v55 = &v38[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v57 = type metadata accessor for LocalizedStringResource();
  v18 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v38[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v13 + 104);
  v44 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v45 = v12;
  v21(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v46 = v21;
  v47 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v15, v20, v12);
  v22 = v55;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = *(v18 + 56);
  v52 = v18 + 56;
  v53 = v23;
  v23(v22, 0, 1, v57);
  v24 = type metadata accessor for CRLBoardEntity();
  (*(*(v24 - 8) + 56))(v59, 1, 1, v24);
  v25 = type metadata accessor for IntentDialog();
  v41 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v42 = v27;
  v43 = v26 + 56;
  v27(v58, 1, 1, v25);
  v27(v60, 1, 1, v25);
  v49 = sub_1005B981C(&qword_1019F6280);
  v50 = 0x8000000101558510;
  v64 = 0xD00000000000001FLL;
  v65 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  v48 = type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v66 = AppDependency.__allocating_init(key:manager:)();
  v39 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v63 + 104);
  v63 += 104;
  v40 = v28;
  v28(v61);
  sub_100616374();
  sub_1006163C8(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v29 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  v30 = v54;
  *v54 = v29;
  v59 = sub_1005B981C(&qword_1019F62B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v46(v15, v44, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v15, v31, v32);
  v34 = v55;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v34, 0, 1, v57);
  LOBYTE(v66) = 2;
  v35 = v41;
  v36 = v42;
  v42(v58, 1, 1, v41);
  v36(v60, 1, 1, v35);
  v40(v61, v39, v62);
  sub_100616410();
  v30[1] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v64 = 0xD00000000000001FLL;
  v65 = v50;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v30[2] = result;
  v30[6] = &type metadata for CRLChangeSelectionFontSizeIntentPerformer;
  v30[7] = &off_10189C6D0;
  return result;
}

uint64_t sub_100613EA8(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[18] = swift_task_alloc();
  type metadata accessor for CRLBoardEntity();
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v4;
  v2[23] = v3;

  return _swift_task_switch(sub_100613F9C, v4, v3);
}

uint64_t sub_100613F9C()
{
  v2 = v0[18];
  v1 = v0[19];
  IntentParameter.wrappedValue.getter();
  sub_100616494(v1, v2, type metadata accessor for CRLBoardIdentifier);
  sub_1006164FC(v1, type metadata accessor for CRLBoardEntity);
  AppDependency.wrappedValue.getter();
  v0[11] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[12] = &off_1018AD9D0;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1006140C4;
  v4 = v0[18];

  return (sub_101286564)(v4, v0 + 8);
}

uint64_t sub_1006140C4(void *a1, uint64_t a2)
{
  v5 = *v3;
  v5[25] = a2;
  v5[26] = v2;

  sub_1006164FC(v5[18], type metadata accessor for CRLBoardIdentifier);
  if (v2)
  {
    v6 = v5[22];
    v7 = v5[23];
    v8 = sub_100614554;
  }

  else
  {
    sub_100005070((v5 + 8));

    v6 = v5[22];
    v7 = v5[23];
    v8 = sub_100614228;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100614228()
{
  v1 = v0[25];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  *(v2 + 24) = 0;
  v0[6] = sub_100612814;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10066C70C;
  v0[5] = &unk_10187D9C0;
  v4 = _Block_copy(v0 + 2);

  [v1 enumerateEditorsOnStackUsingBlock:v4];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;
  *(v0 + 27) = *v3;
  v6 = v5;
  swift_unknownObjectRetain();

  if (v6)
  {
    IntentParameter.wrappedValue.getter();
    *(v0 + 241) = *(v0 + 240);
    v0[29] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100614434, v8, v7);
  }

  else
  {

    v9 = v0[25];
    static IntentResult.result<>()();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100614434()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 241);
  v3 = *(v0 + 216);

  sub_100C56B50(v2, v3, v1);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);

  return _swift_task_switch(sub_1006144B8, v4, v5);
}

uint64_t sub_1006144B8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 200);
  static IntentResult.result<>()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100614554()
{

  sub_100005070(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006145E0()
{
  v0 = sub_1005B981C(&qword_1019F62E0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_1019F62E8);
  __chkstk_darwin(v1);
  sub_1006148D8();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019F62F0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x697320746E6F6620;
  v3._object = 0xEE00206E6F20657ALL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(qword_1019F62F8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100614814(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100613EA8(a1);
}

unint64_t sub_1006148B0(uint64_t a1)
{
  result = sub_1006148D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006148D8()
{
  result = qword_1019F61F8;
  if (!qword_1019F61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F61F8);
  }

  return result;
}

uint64_t sub_10061492C(uint64_t a1)
{
  v2 = sub_1006148D8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10061496C()
{
  result = qword_1019F6200;
  if (!qword_1019F6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6200);
  }

  return result;
}

uint64_t sub_100614A2C@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v1 = sub_1005B981C(&qword_1019F6258);
  __chkstk_darwin(v1 - 8);
  v55 = &v39[-v2];
  v63 = type metadata accessor for InputConnectionBehavior();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v4 - 8);
  v61 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v60 = &v39[-v7];
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v59 = &v39[-v9];
  v10 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v10 - 8);
  v56 = &v39[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v58 = type metadata accessor for LocalizedStringResource();
  v18 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v39[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v13 + 104);
  v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v44 = v12;
  v21(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v42 = v21;
  v45 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v15, v20, v12);
  v22 = v56;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = *(v18 + 56);
  v50 = v18 + 56;
  v51 = v23;
  v23(v22, 0, 1, v58);
  v24 = type metadata accessor for CRLBoardEntity();
  (*(*(v24 - 8) + 56))(v59, 1, 1, v24);
  v25 = type metadata accessor for IntentDialog();
  v46 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v47 = v27;
  v48 = v26 + 56;
  v27(v60, 1, 1, v25);
  v27(v61, 1, 1, v25);
  v53 = sub_1005B981C(&qword_1019F6280);
  v54 = 0x8000000101558510;
  v66 = 0xD00000000000001FLL;
  v67 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  v52 = type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v68 = AppDependency.__allocating_init(key:manager:)();
  v40 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v65 + 104);
  v65 += 104;
  v41 = v28;
  v28(v62);
  sub_100616374();
  sub_1006163C8(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  v29 = v56;
  *v64 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  v59 = sub_1005B981C(&qword_1019F6298);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v43;
  v31 = v44;
  v32 = v42;
  v42(v15, v43, v44);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v15, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v51(v29, 0, 1, v58);
  v33 = type metadata accessor for ResizeBehavior();
  (*(*(v33 - 8) + 56))(v55, 1, 1, v33);
  v34 = v46;
  v35 = v47;
  v47(v60, 1, 1, v46);
  v35(v61, 1, 1, v34);
  v41(v62, v40, v63);
  sub_1006163C8(&qword_1019F62A0, &type metadata accessor for ResizeBehavior);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_1006163C8(&qword_1019F62A8, &type metadata accessor for ResizeBehavior);
  v36 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v37 = v64;
  v64[1] = v36;
  v66 = 0xD00000000000001FLL;
  v67 = v54;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v37[2] = result;
  v37[6] = &type metadata for CRLChangeSelectionFontSizeIntentPerformer;
  v37[7] = &off_10189C6D0;
  return result;
}

uint64_t sub_100615478(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for ResizeBehavior();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for CRLBoardEntity();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v5;
  v2[19] = v4;

  return _swift_task_switch(sub_1006155A4, v5, v4);
}

uint64_t sub_1006155A4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  sub_10061356C((v0 + 16));
  IntentParameter.wrappedValue.getter();
  sub_100616494(v1, v2, type metadata accessor for CRLBoardEntity);
  IntentParameter.wrappedValue.setter();
  sub_1006164FC(v1, type metadata accessor for CRLBoardEntity);
  IntentParameter.wrappedValue.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 != enum case for ResizeBehavior.larger(_:))
  {
    if (v6 == enum case for ResizeBehavior.smaller(_:))
    {
      v7 = 1;
      goto LABEL_6;
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v7 = 0;
LABEL_6:
  *(v0 + 176) = v7;
  IntentParameter.wrappedValue.setter();
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_100615730;
  v9 = *(v0 + 80);

  return sub_100613EA8(v9);
}

uint64_t sub_100615730()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1006158FC;
  }

  else
  {
    v5 = sub_10061586C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10061586C()
{

  sub_100616464(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006158FC()
{

  sub_100616464(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100615998(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v9, a2);
  sub_1005EB3DC(v9, a2);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100615B90()
{
  v0 = sub_1005B981C(&qword_1019F62C0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_1019F62C8);
  __chkstk_darwin(v1);
  sub_100615F74();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019F62D0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x697320746E6F6620;
  v3._object = 0xEE00206E6F20657ALL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019F62D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100615D9C(uint64_t a1)
{
  v2 = type metadata accessor for ResizeBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100615E8C(uint64_t *a1))(void *a1)
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
  return sub_100615F00;
}

void sub_100615F00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100615F4C(uint64_t a1)
{
  result = sub_100615F74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100615F74()
{
  result = qword_1019F6208;
  if (!qword_1019F6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6208);
  }

  return result;
}

unint64_t sub_100615FCC()
{
  result = qword_1019F6210;
  if (!qword_1019F6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6210);
  }

  return result;
}

unint64_t sub_100616028()
{
  result = qword_1019F6218;
  if (!qword_1019F6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6218);
  }

  return result;
}

unint64_t sub_100616080()
{
  result = qword_1019F6220;
  if (!qword_1019F6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6220);
  }

  return result;
}

uint64_t sub_100616130@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_1005EB3DC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1006161D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100615478(a1);
}

uint64_t sub_10061626C(uint64_t a1)
{
  v2 = sub_100615F74();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_1006162A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1006162CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100616314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100616374()
{
  result = qword_1019F6288;
  if (!qword_1019F6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6288);
  }

  return result;
}

uint64_t sub_1006163C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100616410()
{
  result = qword_1019F62B8;
  if (!qword_1019F62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F62B8);
  }

  return result;
}

uint64_t sub_100616494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006164FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_10061655C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100616640()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006166D4, v2, v1);
}

uint64_t sub_1006166D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100616734()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100616844, v2, v1);
}

uint64_t sub_1006167C8()
{

  sub_1000C1024(v0 + 24);

  return v0;
}

uint64_t sub_100616808()
{
  sub_1006167C8();

  return swift_deallocClassInstance();
}

void *sub_100616848(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  __chkstk_darwin(v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_100776524(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v41)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v41 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v37 = v7;
      v38 = v40 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v35 = a1 + 56;
      v36 = v11;
      v33[1] = v1;
      v34 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v44;
        v15 = v45;
        v16 = v46;
        sub_1007245FC(v44, v45, v46, a1);
        v18 = v17;
        (*((swift_isaMask & *v17) + 0x88))();

        v19 = v42;
        v47 = v42;
        v21 = v42[2];
        v20 = v42[3];
        if (v21 >= v20 >> 1)
        {
          sub_100776524(v20 > 1, v21 + 1, 1);
          v19 = v47;
        }

        v19[2] = v21 + 1;
        v22 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v42 = v19;
        result = (*(v40 + 32))(v19 + v22 + *(v40 + 72) * v21, v6, v39);
        if (v41)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v37;
          sub_1005B981C(&unk_1019FCB90);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v43, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1000341AC(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v23 = 1 << *(a1 + 32);
          if (v14 >= v23)
          {
            goto LABEL_38;
          }

          v24 = v14 >> 6;
          v25 = *(v35 + 8 * (v14 >> 6));
          if (((v25 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v15)
          {
            goto LABEL_40;
          }

          v26 = v25 & (-2 << (v14 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v34 + 8 * v24);
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                result = sub_1000341AC(v14, v15, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_33;
              }
            }

            result = sub_1000341AC(v14, v15, 0);
          }

LABEL_33:
          v32 = *(a1 + 36);
          v44 = v23;
          v45 = v32;
          v46 = 0;
          v7 = v37;
          if (v10 == v37)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

id sub_100616DB8(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3 <= 0)
  {
    v47 = v2;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = String._bridgeToObjectiveC()();
    v6 = sub_1005CF000();
    *(inited + 56) = v6;
    v7 = sub_100618384(&qword_1019F52E0, 255, sub_1005CF000);
    *(inited + 32) = v5;
    v8 = inited + 32;
    *(inited + 64) = v7;
    v46 = objc_opt_self();
    v49 = [v46 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v51);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v48 = v1;
      v15 = static OS_os_log.crlAssert;
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_10146CA70;
      *(v16 + 56) = &type metadata for Int32;
      *(v16 + 64) = &protocol witness table for Int32;
      *(v16 + 32) = v49;
      *(v16 + 96) = v6;
      *(v16 + 104) = v7;
      *(v16 + 72) = v9;
      *(v16 + 136) = &type metadata for String;
      v17 = sub_1000053B0();
      *(v16 + 112) = v12;
      *(v16 + 120) = v14;
      *(v16 + 176) = &type metadata for UInt;
      *(v16 + 184) = &protocol witness table for UInt;
      *(v16 + 144) = v17;
      *(v16 + 152) = 18;
      v18 = v6;
      v19 = v51;
      *(v16 + 216) = v18;
      *(v16 + 224) = v7;
      *(v16 + 192) = v19;
      v20 = v9;
      v21 = v19;
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v16);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "Invalid parameter not satisfied: %{public}@", 43, 2, inited);

      type metadata accessor for __VaListBuilder();
      v7 = swift_allocObject();
      v7[2] = 8;
      v7[3] = 0;
      v12 = v7 + 3;
      v7[4] = 0;
      v7[5] = 0;
      v24 = *(inited + 16);
      v6 = inited;
      if (!v24)
      {
LABEL_31:
        v41 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v42 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v44 = String._bridgeToObjectiveC()();

        [v46 handleFailureInFunction:v42 file:v43 lineNumber:18 isFatal:0 format:v44 args:v41];

        swift_setDeallocating();
        swift_arrayDestroy();
        v2 = v47;
        v1 = v48;
        break;
      }

      v9 = 0;
      inited = 40;
      while (1)
      {
        v25 = (v8 + 40 * v9);
        v14 = v25[3];
        v1 = sub_100020E58(v25, v14);
        v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v27 = *v12;
        v28 = *(v26 + 16);
        v29 = __OFADD__(*v12, v28);
        v30 = *v12 + v28;
        if (v29)
        {
          break;
        }

        v1 = v7[4];
        if (v1 >= v30)
        {
          goto LABEL_23;
        }

        if (v1 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v14 = v7[5];
        if (2 * v1 > v30)
        {
          v30 = 2 * v1;
        }

        v7[4] = v30;
        if ((v30 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v31 = v8;
        v32 = v6;
        v33 = v26;
        v34 = swift_slowAlloc();
        v35 = v34;
        v7[5] = v34;
        if (v14)
        {
          if (v34 != v14 || v34 >= &v14[8 * v27])
          {
            memmove(v34, v14, 8 * v27);
          }

          v1 = v7;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v26 = v33;
          v6 = v32;
          v8 = v31;
          inited = 40;
LABEL_23:
          v35 = v7[5];
          if (!v35)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v26 = v33;
        v6 = v32;
        v8 = v31;
        inited = 40;
        if (!v35)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v37 = *(v26 + 16);
        if (v37)
        {
          v38 = (v26 + 32);
          v39 = *v12;
          while (1)
          {
            v40 = *v38++;
            *&v35[8 * v39] = v40;
            v39 = *v12 + 1;
            if (__OFADD__(*v12, 1))
            {
              break;
            }

            *v12 = v39;
            if (!--v37)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:

        v9 = v9 + 1;
        if (v9 == v24)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
    }
  }

  *(v1 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems) = v2;
  v50.receiver = v1;
  v50.super_class = type metadata accessor for CRLBoardItemSelection();
  return objc_msgSendSuper2(&v50, "init");
}

uint64_t sub_100617424(uint64_t a1)
{
  sub_100601584(a1, v7);
  if (!v8)
  {
    sub_1005E09AC(v7);
    goto LABEL_7;
  }

  type metadata accessor for CRLBoardItemSelection();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  swift_getObjectType();
  if (![v6 isMemberOfClass:swift_getObjCClassFromMetadata()])
  {

    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
  v3 = *&v6[OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems];

  v4 = sub_100BC5454(v2, v3);

  return v4 & 1;
}

void sub_1006177D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems);
  if ((v1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100618384(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    v1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), (v10 = v14) == 0))
    {
LABEL_18:
      sub_100035F90();
      return;
    }

LABEL_9:
    v11 = [v10 isKindOfClass:swift_getObjCClassFromMetadata()];

    if (v11)
    {
      goto LABEL_18;
    }
  }

  v12 = v4;
  v13 = v5;
  if (v5)
  {
LABEL_8:
    v5 = (v13 - 1) & v13;
    v10 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_18;
    }

    v13 = *(v2 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100617AC4()
{
  sub_1005CF000();
  v1 = NSString.init(stringLiteral:)();
  sub_1005B981C(&qword_1019F54E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146C4D0;
  *(v2 + 56) = type metadata accessor for CRLBoardItemSelection();
  *(v2 + 64) = sub_100618384(&qword_1019F63D0, v3, type metadata accessor for CRLBoardItemSelection);
  *(v2 + 32) = v0;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = v0;

    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = v0;
  }

  *(v2 + 96) = &type metadata for Int;
  *(v2 + 104) = &protocol witness table for Int;
  *(v2 + 72) = v6;
  type metadata accessor for CRLBoardItem(0);
  sub_100618384(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem);

  v8 = Set.description.getter();
  v10 = v9;

  *(v2 + 136) = &type metadata for String;
  *(v2 + 144) = sub_1000053B0();
  *(v2 + 112) = v8;
  *(v2 + 120) = v10;
  v11 = NSString.init(format:_:)();

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id sub_100617CE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLBoardItemSelection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100617D48(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100617F48(a1);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for CRLBoardItem(0);
    do
    {
      swift_dynamicCast();
      if ([v12 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        v1 = _swiftEmptySetSingleton[2];
        if (_swiftEmptySetSingleton[3] <= v1)
        {
          sub_100E75360(v1 + 1);
        }

        result = NSObject._rawHashValue(seed:)(_swiftEmptySetSingleton[5]);
        v3 = &_swiftEmptySetSingleton[7];
        v4 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
        v5 = result & ~v4;
        v6 = v5 >> 6;
        if (((-1 << v5) & ~_swiftEmptySetSingleton[(v5 >> 6) + 7]) != 0)
        {
          v7 = __clz(__rbit64((-1 << v5) & ~_swiftEmptySetSingleton[(v5 >> 6) + 7])) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v8 = 0;
          v9 = (63 - v4) >> 6;
          do
          {
            if (++v6 == v9 && (v8 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v10 = v6 == v9;
            if (v6 == v9)
            {
              v6 = 0;
            }

            v8 |= v10;
            v11 = v3[v6];
          }

          while (v11 == -1);
          v7 = __clz(__rbit64(~v11)) + (v6 << 6);
        }

        *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
        *(_swiftEmptySetSingleton[6] + 8 * v7) = v12;
        ++_swiftEmptySetSingleton[2];
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100617F48(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = v4;
    v21 = v1;
    v19[1] = v19;
    __chkstk_darwin(a1);
    v6 = v19 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v22 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v4 = v12 | (v7 << 6);
      if ([*(*(v2 + 48) + 8 * v4) isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        *&v6[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1010F47D4(v6, v20, v22, v2);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_1010F47D4(v6, v20, v22, v2);
      }

      v14 = *(v2 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v17 = swift_slowAlloc();
  v18 = sub_1006182FC(v17, v4, v2);

  return v18;
}

unint64_t *sub_1006181A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v16 = result;
  v17 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    result = [*(*(a3 + 48) + 8 * v13) isKindOfClass:swift_getObjCClassFromMetadata()];
    if (result)
    {
      *(v16 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1010F47D4(v16, a2, v17, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1006182FC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1006181A8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100618384(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (**sub_1006183CC(unint64_t a1, uint64_t a2))(char *, void, uint64_t)
{
  v26 = a1;
  v3 = sub_1005B981C(&unk_1019F33C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = (v9 + 104);
  if (a2)
  {
    v25 = sub_100618868();

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_100018340();
    sub_1005B981C(&unk_1019FB800);
    sub_100018398();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*v14)(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
    v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    type metadata accessor for CRLSideStore();
    swift_allocObject();
    v17 = v15;
    v18 = v28;
    v19 = sub_10001A8B0(v8, v17);
    if (!v18)
    {
      v14 = v19;
LABEL_7:
      OS_dispatch_queue.sync<A>(execute:)();

      return v14;
    }
  }

  else
  {
    v26 = sub_100618868();
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_100018340();
    sub_1005B981C(&unk_1019FB800);
    sub_100018398();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*v14)(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
    v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    type metadata accessor for CRLSideStore();
    swift_allocObject();
    v17 = v20;
    v22 = v28;
    v23 = sub_10001A8B0(v6, v17);
    if (!v22)
    {
      v14 = v23;
      goto LABEL_7;
    }
  }

  return v14;
}

unint64_t sub_100618868()
{
  result = qword_1019F2D90;
  if (!qword_1019F2D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F2D90);
  }

  return result;
}

uint64_t sub_1006188CC(uint64_t a1)
{
  if ([v1 characterCount] >= a1)
  {
    v3 = v1;
    v4 = [v3 characterCount];
    if (v4 < a1)
    {
      __break(1u);
    }

    else
    {
      v5 = sub_100619184(v3, a1, v4);
      v8 = sub_100618D84(v5, v6, v7);
      v10 = v9;
      v12 = v11;

      if (v10 < v12)
      {

        return 0;
      }

      v14 = [v8 charIndexForParagraphAtIndex:v12];
      if ([v8 characterCount] >= v14)
      {
        NSNotFound.getter();
        v15 = [v8 paragraphIndexAtCharIndex:v14];
        v16 = [v8 textRangeForParagraphAtIndex:v12];
        v18 = v17;

        if (!__OFADD__(v16, v18))
        {
          if (&v16[v18] >= v14)
          {
            return v15;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_14:
  v19 = objc_opt_self();
  v20 = [v19 _atomicIncrementAssertCount];
  v44 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v44);
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
  *(inited + 152) = 60;
  v32 = v44;
  *(inited + 216) = v29;
  *(inited + 224) = v30;
  *(inited + 192) = v32;
  v33 = v21;
  v34 = v32;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v36 = static os_log_type_t.error.getter();
  sub_100005404(v27, &_mh_execute_header, v36, "Bad charIndex when getting paragraphInfo", 40, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Bad charIndex when getting paragraphInfo");
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

  [v19 handleFailureInFunction:v39 file:v40 lineNumber:60 isFatal:1 format:v41 args:v38];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v42, v43);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100618D84(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 characterCount] < a3)
  {
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_1005CF000();
    *(inited + 96) = v18;
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 81;
    v21 = v33;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "Bad charRange in CRLWPParagraphIterator", 39, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Bad charRange in CRLWPParagraphIterator");
    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:81 isFatal:1 format:v30 args:v27];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v31, v32);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v6 = a1;
    [v6 paragraphIndexAtCharIndex:a2];
    [v6 paragraphIndexAtCharIndex:a3];
    return v6;
  }

  return result;
}

uint64_t sub_100619184(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 characterCount] >= a3)
  {
    return a1;
  }

  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v30 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v30);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v15 = sub_1005CF000();
  *(inited + 96) = v15;
  v16 = sub_1005CF04C();
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 31;
  v18 = v30;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Bad range when initializing CRLWPStorage.Paragraphs", 51, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Bad range when initializing CRLWPStorage.Paragraphs");
  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:31 isFatal:1 format:v27 args:v24];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v28, v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100619658(void *a1, void *a2, int a3)
{
  v5 = v3;
  v54 = a3;
  v8 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  v9 = __chkstk_darwin(v8);
  v52 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v51 - v11;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = [a1 getBoardItemForUUID:isa];

  if (v14)
  {
    type metadata accessor for CRLUSDZItem();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;
      v17 = v14;
      v14 = a2;
      sub_1012E0400(v16, &off_10188FE10);

      if (v4)
      {

        return;
      }

      v51[1] = a2;
      if (**(v16 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
      {
        swift_beginAccess();

        sub_1005B981C(&unk_101A2EF00);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        sub_10061A030(v5 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_assetData, v12);
        sub_10061A094(v5 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_posterAssetData, &v12[v8[5]]);
        v18 = *(v5 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_boundingRectData + 16);
        v19 = &v12[v8[7]];
        *v19 = *(v5 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_boundingRectData);
        v19[16] = v18;
        v20 = (v5 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_compression);
        v21 = v8[8];
        if (*(v5 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_compression + 8))
        {
          v20 = &v12[v21];
          v22 = v12[v21 + 8];
        }

        else
        {
          v22 = 0;
        }

        v23 = v52;
        v24 = &v12[v21];
        *v24 = *v20;
        v24[8] = v22;
        sub_10061A104(v12, v23);
        sub_1007FD6B4(v23);
        v25 = v17;
        sub_1012CF6CC(v16, &off_10188FE10, v54);

        sub_10061A168(v12, type metadata accessor for CRLUSDZAssetDataStruct);
        return;
      }

      __break(1u);
    }
  }

  v26 = objc_opt_self();
  v27 = [v26 _atomicIncrementAssertCount];
  v53 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v53);
  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v29 lastPathComponent];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v34 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v27;
  v36 = sub_1005CF000();
  *(inited + 96) = v36;
  v37 = sub_1005CF04C();
  *(inited + 104) = v37;
  *(inited + 72) = v28;
  *(inited + 136) = &type metadata for String;
  v38 = sub_1000053B0();
  *(inited + 112) = v31;
  *(inited + 120) = v33;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v38;
  *(inited + 152) = 31;
  v39 = v53;
  *(inited + 216) = v36;
  *(inited + 224) = v37;
  *(inited + 192) = v39;
  v40 = v28;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v43 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v43, "Unable to retrieve usdz item", 28, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve usdz item");
  type metadata accessor for __VaListBuilder();
  v44 = swift_allocObject();
  v44[2] = 8;
  v44[3] = 0;
  v44[4] = 0;
  v44[5] = 0;
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v26 handleFailureInFunction:v46 file:v47 lineNumber:31 isFatal:1 format:v48 args:v45];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v49, v50);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100619CE8()
{
  v1 = OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10061A168(v0 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_assetData, type metadata accessor for CRLAssetData);
  v3 = v0 + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_posterAssetData;

  return sub_100619FC8(v3);
}

id sub_100619D84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetUSDZAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetUSDZAsset()
{
  result = qword_1019F6400;
  if (!qword_1019F6400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100619EB0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRLAssetData();
    if (v1 <= 0x3F)
    {
      sub_1005FEE44();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100619FC8(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A1B880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10061A030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetData();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061A094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A1B880);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061A104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061A168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10061A1C8()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
      if ([v2 isEnabledForDataclass:ACAccountDataclassFreeform])
      {
        v3 = v2;
        v4 = sub_100A06BE4();

        return v4;
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10061A28C(uint64_t a1, void *a2, void *a3)
{
  v35 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019F64C8);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - v15;
  (*(v13 + 16))(&v29 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = v35;
  if (v35)
  {
    v41 = sub_10061A7DC;
    v42 = v18;
    aBlock = _NSConcreteStackBlock;
    v38 = *"";
    v39 = sub_100007638;
    v40 = &unk_10187DAF8;
    v20 = _Block_copy(&aBlock);
    v21 = a2;

    v22 = v19;

    [v22 performAsync:v20];

    _Block_release(v20);
  }

  else
  {
    sub_100618868();
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v23 = a2;
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v9 + 8))(v11, v8);
    v41 = sub_10061A7DC;
    v42 = v18;
    aBlock = _NSConcreteStackBlock;
    v38 = *"";
    v39 = sub_100007638;
    v40 = &unk_10187DAD0;
    v25 = _Block_copy(&aBlock);

    v26 = v29;
    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10000D494();
    v27 = v31;
    v28 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v33 + 8))(v27, v28);
    (*(v30 + 8))(v26, v32);
  }
}

uint64_t sub_10061A784(void *a1)
{
  [a1 newImage];
  sub_1005B981C(&qword_1019F64C8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10061A7DC()
{
  sub_1005B981C(&qword_1019F64C8);
  v1 = *(v0 + 16);

  return sub_10061A784(v1);
}

id sub_10061A854()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result visibleCells];

    sub_100006370(0, &qword_1019FA3F0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 setNeedsUpdateConfiguration];

        ++v6;
        if (v9 == i)
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

LABEL_15:
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10061A9D8()
{
  [objc_opt_self() removeKeyboardObserver:v0];
  v1 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidEndObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidBeginObserver];
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for CRLiOSSidebarViewController();
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_10061ABFC()
{
  if (_UISolariumEnabled())
  {
    v1 = 0;
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v1 = [v2 localizedStringForKey:v3 value:v4 table:0];

    if (!v1)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = String._bridgeToObjectiveC()();
    }
  }

  [v0 setTitle:v1];

  sub_10061AD08();
}

void sub_10061AD08()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_moreOptionsBarButton];
  if (v2)
  {
    v3 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (qword_1019F1BA0 != -1)
  {
    swift_once();
  }

  if (byte_101AD7171 == 1)
  {
    v4 = sub_1007FA454(v0);
    if (v4)
    {
      v5 = v4;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (qword_1019F1B98 != -1)
  {
    swift_once();
  }

  if (byte_101AD7170 == 1)
  {
    sub_100006370(0, &qword_1019F6190);
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() systemImageNamed:v6];

    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v13 = 0;
    v14 = 0;
    v16 = sub_100631274;
    v17 = v8;
    v15 = 0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100006370(0, &qword_1019F6BF0);
    v10 = v9;
    v20.value.super.isa = 0;
    v20.is_nil = v9;
    v21.value.super.super.isa = 0;
    v11 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v20, v21, v22).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v12 = [v1 navigationItem];
  sub_100006370(0, &qword_1019F6BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setRightBarButtonItems:isa];
}

void sub_10061B078()
{
  v1 = v0;
  swift_getObjectType();
  v78.receiver = v0;
  v78.super_class = type metadata accessor for CRLiOSSidebarViewController();
  objc_msgSendSuper2(&v78, "viewDidLoad");
  if (_UISolariumEnabled())
  {
    v2 = [v0 view];
    if (!v2)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 clearColor];
    [v3 setBackgroundColor:v5];

    v6 = [v1 collectionView];
    if (!v6)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v7 = v6;
    v8 = [v4 clearColor];
    [v7 setBackgroundColor:v8];

    v9 = [v1 collectionView];
    if (!v9)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v10 = v9;
    v11 = [objc_allocWithZone(UIView) init];
    [v10 setBackgroundView:v11];

    v12 = [v1 collectionView];
    if (!v12)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v13 = v12;
    v14 = [v12 backgroundView];

    if (v14)
    {
      v15 = [v4 clearColor];
      [v14 setBackgroundColor:v15];
    }

    v16 = [v1 parentViewController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 view];

      if (!v18)
      {
LABEL_42:
        __break(1u);
        return;
      }

      v19 = [v4 clearColor];
      [v18 setBackgroundColor:v19];
    }
  }

  v20 = [v1 collectionView];
  if (!v20)
  {
    __break(1u);
    goto LABEL_32;
  }

  v21 = v20;
  [v20 setAllowsMultipleSelection:0];

  v22 = [v1 collectionView];
  if (!v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = v22;
  v24 = type metadata accessor for iCloudStatusFooter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock = v24;
  v26 = UICollectionElementKindSectionFooter;
  sub_1005B981C(&qword_1019F66C8);
  String.init<A>(describing:)();
  v27 = String._bridgeToObjectiveC()();

  [v23 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v26 withReuseIdentifier:v27];

  v28 = [v1 collectionView];
  if (!v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = v28;
  v30 = sub_10061BBAC();
  [v29 setCollectionViewLayout:v30 animated:0];

  v31 = [v1 collectionView];
  if (!v31)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v32 = v31;
  [v31 setDragDelegate:v1];

  v33 = [v1 collectionView];
  if (!v33)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = v33;
  [v33 setDropDelegate:v1];

  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v35;
  v37 = sub_10061BD08(v35);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v38 = *&v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController];
  v39 = *(v38 + 16);
  v40 = *(v38 + 24);
  type metadata accessor for CRLiOSBoardLibraryViewModelController();
  swift_allocObject();
  v41 = v37;
  swift_unknownObjectRetain();
  v42 = sub_100872074(v41, v39, v40);

  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController] = v42;

  v42[3] = &off_10187DB20;
  swift_unknownObjectWeakAssign();

  sub_10061ABFC();
  v43 = [objc_opt_self() sharedApplication];
  v44 = [v43 delegate];

  if (!v44)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  type metadata accessor for CRLiOSAppDelegate();
  swift_dynamicCastClassUnconditional();
  v45 = sub_10006D030();
  swift_unknownObjectRelease();
  v46 = v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges];
  v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges] = v45 & 1;
  if ((v45 & 1) != v46)
  {
    sub_10061A854();
  }

  v47 = objc_opt_self();
  v48 = [v47 defaultCenter];
  if (qword_1019F2568 != -1)
  {
    swift_once();
  }

  v49 = qword_101AD86A0;
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_1006312A8;
  v77 = v50;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_10187E048;
  v51 = _Block_copy(&aBlock);

  v52 = [v48 addObserverForName:v49 object:0 queue:0 usingBlock:v51];
  _Block_release(v51);

  *&v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidBeginObserver] = v52;
  swift_unknownObjectRelease();
  v53 = [v47 defaultCenter];
  if (qword_1019F2560 != -1)
  {
    swift_once();
  }

  v54 = qword_101AD8698;
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_1006312E0;
  v77 = v55;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_10187E070;
  v56 = _Block_copy(&aBlock);

  v57 = [v53 addObserverForName:v54 object:0 queue:0 usingBlock:v56];
  _Block_release(v56);

  *&v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidEndObserver] = v57;
  swift_unknownObjectRelease();
  v58 = *(*(*(v38 + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_isSyncing);
  v59 = v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights];
  v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights] = v58;
  if (v58 != v59)
  {
    sub_10061A854();
  }

  v60 = [v47 defaultCenter];
  if (qword_1019F1320 != -1)
  {
    swift_once();
  }

  v61 = qword_101AD5E78;
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_100631318;
  v77 = v62;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_10187E098;
  v63 = _Block_copy(&aBlock);

  v64 = [v60 addObserverForName:v61 object:0 queue:0 usingBlock:v63];
  _Block_release(v63);

  *&v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_highlightSyncDidEndObserver] = v64;
  swift_unknownObjectRelease();
  v65 = [v47 defaultCenter];
  if (qword_1019F1328 != -1)
  {
    swift_once();
  }

  v66 = qword_101AD5E80;
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_100631350;
  v77 = v67;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_10187E0C0;
  v68 = _Block_copy(&aBlock);

  v69 = [v65 addObserverForName:v66 object:0 queue:0 usingBlock:v68];
  _Block_release(v68);

  *&v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_highlightSyncDidBeginObserver] = v69;
  swift_unknownObjectRelease();
  sub_1005B981C(&unk_101A150B0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10146BDE0;
  *(v70 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v70 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v70 + 48) = type metadata accessor for UITraitVerticalSizeClass();
  *(v70 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

id sub_10061BBAC()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v8[4] = sub_1006317EC;
  v8[5] = v0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = *"";
  v8[2] = sub_100075840;
  v8[3] = &unk_10187E200;
  v2 = _Block_copy(v8);

  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);

  type metadata accessor for SectionBackgroundDecorationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

uint64_t sub_10061BD08(void *a1)
{
  v2 = sub_1005B981C(&qword_1019F66D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100006370(0, &qword_1019F66D8);
  type metadata accessor for UUID();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  v11 = objc_allocWithZone(sub_1005B981C(&qword_1019F66E0));
  v12 = a1;
  v13 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
  sub_1005B981C(&qword_1019F66E8);
  UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
  v14(v17, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
  UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
  v15(v17, 0);
  (*(v3 + 8))(v8, v2);
  return v13;
}

void *sub_10061C01C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v7 == a3)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = String._bridgeToObjectiveC()();
    v14 = type metadata accessor for iCloudStatusFooter();
    sub_1005B981C(&qword_1019F66C8);
    String.init<A>(describing:)();
    v11 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:{isa, v14}];

    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10061C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10061C218, v6, v5);
}

uint64_t sub_10061C218()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges);
    *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges) = 1;
    if ((v3 & 1) == 0)
    {
      sub_10061A854();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10061C2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10061C354, v6, v5);
}

uint64_t sub_10061C354()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges);
    *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges) = 0;
    if (v3 == 1)
    {
      sub_10061A854();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10061C3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10061C490, v6, v5);
}

uint64_t sub_10061C490()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights);
    *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights) = 0;
    if (v3 == 1)
    {
      sub_10061A854();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10061C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10061C5CC, v6, v5);
}

uint64_t sub_10061C5CC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights);
    *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights) = 1;
    if ((v3 & 1) == 0)
    {
      sub_10061A854();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_10061C670()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v79[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v79);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

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
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 908;
    v20 = v79[0];
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:908 isFatal:0 format:v29 args:v26];

    goto LABEL_8;
  }

  v3 = *(v2 + 1);
  ObjectType = swift_getObjectType();
  LOBYTE(v3) = (*(v3 + 32))(v0, ObjectType, v3);
  swift_unknownObjectRelease();
  if ((v3 & 1) == 0)
  {
LABEL_8:
    [v1 setToolbarItems:0];
    v30 = [v1 navigationController];
    if (v30)
    {
      v31 = v30;
      [v30 setToolbarHidden:1 animated:0];

      return;
    }

    v32 = objc_opt_self();
    v33 = [v32 _atomicIncrementAssertCount];
    v79[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v79);
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_10146CA70;
    *(v41 + 56) = &type metadata for Int32;
    *(v41 + 64) = &protocol witness table for Int32;
    *(v41 + 32) = v33;
    v42 = sub_100006370(0, &qword_1019F4D30);
    *(v41 + 96) = v42;
    v43 = sub_1005CF04C();
    *(v41 + 104) = v43;
    *(v41 + 72) = v34;
    *(v41 + 136) = &type metadata for String;
    v44 = sub_1000053B0();
    *(v41 + 112) = v37;
    *(v41 + 120) = v39;
    *(v41 + 176) = &type metadata for UInt;
    *(v41 + 184) = &protocol witness table for UInt;
    *(v41 + 144) = v44;
    *(v41 + 152) = 915;
    v45 = v79[0];
    *(v41 + 216) = v42;
    *(v41 + 224) = v43;
    *(v41 + 192) = v45;
    v46 = v34;
    v47 = v45;
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v41);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v49, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v50 = swift_allocObject();
    v50[2] = 8;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v52 file:v53 lineNumber:915 isFatal:0 format:v54 args:v51];
    goto LABEL_21;
  }

  v5 = _UISolariumEnabled();
  sub_1005B981C(&unk_1019F4D60);
  v6 = swift_allocObject();
  if (v5)
  {
    *(v6 + 16) = xmmword_10146CE00;
    *(v6 + 32) = [objc_opt_self() flexibleSpaceItem];
    *(v6 + 40) = sub_100627324();
  }

  else
  {
    *(v6 + 16) = xmmword_10146E8A0;
    v55 = objc_opt_self();
    *(v6 + 32) = [v55 flexibleSpaceItem];
    *(v6 + 40) = sub_100627324();
    *(v6 + 48) = [v55 flexibleSpaceItem];
  }

  sub_100006370(0, &qword_1019F6BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:isa];

  v57 = [v1 navigationController];
  if (!v57)
  {
    v58 = objc_opt_self();
    v59 = [v58 _atomicIncrementAssertCount];
    v79[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v79);
    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    v62 = [v61 lastPathComponent];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v66 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_10146CA70;
    *(v67 + 56) = &type metadata for Int32;
    *(v67 + 64) = &protocol witness table for Int32;
    *(v67 + 32) = v59;
    v68 = sub_100006370(0, &qword_1019F4D30);
    *(v67 + 96) = v68;
    v69 = sub_1005CF04C();
    *(v67 + 104) = v69;
    *(v67 + 72) = v60;
    *(v67 + 136) = &type metadata for String;
    v70 = sub_1000053B0();
    *(v67 + 112) = v63;
    *(v67 + 120) = v65;
    *(v67 + 176) = &type metadata for UInt;
    *(v67 + 184) = &protocol witness table for UInt;
    *(v67 + 144) = v70;
    *(v67 + 152) = 912;
    v71 = v79[0];
    *(v67 + 216) = v68;
    *(v67 + 224) = v69;
    *(v67 + 192) = v71;
    v72 = v60;
    v73 = v71;
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v75 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v75, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v76 = swift_allocObject();
    v76[2] = 8;
    v76[3] = 0;
    v76[4] = 0;
    v76[5] = 0;
    v77 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    [v58 handleFailureInFunction:v52 file:v53 lineNumber:912 isFatal:0 format:v54 args:v77];
LABEL_21:

    return;
  }

  v78 = v57;
  [v57 setToolbarHidden:0 animated:0];
}

void sub_10061D3C4()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for CRLiOSSidebarViewController();
  objc_msgSendSuper2(&v18, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_pinnedBottomView];
  if (v1)
  {
    v2 = v1;
    [v2 frame];
    Height = CGRectGetHeight(v19);
    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setContentInset:{0.0, 0.0, Height, 0.0}];

      v6 = [v0 collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = [v0 collectionView];
        if (v8)
        {
          v9 = v8;
          [v8 contentInset];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;

          [v7 setScrollIndicatorInsets:{v11, v13, v15, v17}];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_10061D55C(uint64_t a1, int a2)
{
  v101 = a2;
  v4 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v4 - 8);
  v6 = &v93 - v5;
  v7 = type metadata accessor for UUID();
  v102 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A23C40);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v93 - v14);
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v103 = v16;
  v104 = v17;
  __chkstk_darwin(v16);
  v100 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000650D4(a1, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v99 = v19;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10000B864(v21, _s5BoardVMa);
    if (qword_1019F2198 != -1)
    {
LABEL_48:
      swift_once();
    }

    v22 = static OS_os_log.crlSidebar;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v24 = sub_100F8903C();
    v26 = v25;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v22, &_mh_execute_header, v27, "Ignoring board selection: %@", 28, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return 0;
  }

  sub_10000B864(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
  result = [v2 isViewLoaded];
  if (!result)
  {
    return 1;
  }

  v94 = v6;
  v96 = v2;
  v29 = *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController];
  if (!v29)
  {
    __break(1u);
    goto LABEL_53;
  }

  sub_100F87E04(v9);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v97 = a1;
  v95 = *(v102 + 1);
  v95(v9, v7);
  v31 = v103;
  v30 = v104;
  v102 = *(v104 + 48);
  if (v102(v13, 1, v103) != 1)
  {
LABEL_36:
    v71 = v97;

    v72 = *(v30 + 32);
    v72(v15, v13, v31);
    (*(v30 + 56))(v15, 0, 1, v31);
    v73 = v31;
    v31 = v30;
    goto LABEL_38;
  }

  sub_10000CAAC(v13, &unk_101A23C40);
  sub_1008708B0(v97, v101 & 1);
  v93 = *(v29 + 48);
  sub_100F87E04(v9);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v95(v9, v7);

  if (v102(v15, 1, v31) != 1)
  {
    v73 = v31;
    v71 = v97;
    v31 = v104;
    v72 = *(v104 + 32);
LABEL_38:
    v55 = v100;
    v74 = v15;
    v15 = v73;
    v72(v100, v74, v73);
    v75 = v96;
    result = [v96 collectionView];
    if (result)
    {
      v76 = result;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v78 = [v75 collectionView:v76 shouldSelectItemAtIndexPath:isa];

      if (!v78)
      {
        if (qword_1019F2198 != -1)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }

      result = [v75 collectionView];
      if (result)
      {
        v79 = result;
        v80 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v79 selectItemAtIndexPath:v80 animated:v101 & 1 scrollPosition:2];

        (*(v31 + 8))(v55, v15);
        v81 = v94;
        sub_1000650D4(v71, v94, type metadata accessor for CRLBoardLibraryViewModel.Item);
        (*(v98 + 56))(v81, 0, 1, v99);
        v82 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_selectedItem;
        swift_beginAccess();
        sub_100631204(v81, v75 + v82);
        swift_endAccess();
        return 1;
      }

LABEL_54:
      __break(1u);
      return result;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_10000CAAC(v15, &unk_101A23C40);
  sub_1005B981C(&qword_1019F54E0);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_10146C6B0;
  v33 = sub_100F8903C();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  v36 = sub_1000053B0();
  *(v32 + 32) = v33;
  v103 = v36;
  v104 = v32 + 32;
  *(v32 + 64) = v36;
  *(v32 + 40) = v35;
  v102 = objc_opt_self();
  v37 = [v102 _atomicIncrementAssertCount];
  v105 = [objc_allocWithZone(NSString) init];
  sub_100604538(v32, &v105);
  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  v40 = [v39 lastPathComponent];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v44 = static OS_os_log.crlAssert;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_10146CA70;
  *(v45 + 56) = &type metadata for Int32;
  *(v45 + 64) = &protocol witness table for Int32;
  *(v45 + 32) = v37;
  v46 = sub_100006370(0, &qword_1019F4D30);
  *(v45 + 96) = v46;
  v47 = sub_1005CF04C();
  *(v45 + 72) = v38;
  v48 = v103;
  *(v45 + 136) = &type metadata for String;
  *(v45 + 144) = v48;
  *(v45 + 104) = v47;
  *(v45 + 112) = v41;
  *(v45 + 120) = v43;
  *(v45 + 176) = &type metadata for UInt;
  *(v45 + 184) = &protocol witness table for UInt;
  *(v45 + 152) = 267;
  v49 = v105;
  *(v45 + 216) = v46;
  *(v45 + 224) = v47;
  *(v45 + 192) = v49;
  v50 = v38;
  v51 = v49;
  v52 = static os_log_type_t.error.getter();
  sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
  swift_setDeallocating();
  v103 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v53 = static os_log_type_t.error.getter();
  sub_100005404(v44, &_mh_execute_header, v53, "Unknown item: %@", 16, 2, v32);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  *(v31 + 24) = 0;
  v15 = (v31 + 24);
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  v54 = *(v32 + 16);
  if (!v54)
  {
LABEL_45:
    v89 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    [v102 handleFailureInFunction:v90 file:v91 lineNumber:267 isFatal:0 format:v92 args:v89];

    swift_setDeallocating();
    swift_arrayDestroy();
    return 0;
  }

  v55 = 0;
  v13 = 40;
  while (1)
  {
    sub_100020E58((v104 + 40 * v55), *(v104 + 40 * v55 + 24));
    v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v57 = *v15;
    v58 = *(v56 + 16);
    v59 = __OFADD__(*v15, v58);
    v60 = *v15 + v58;
    if (v59)
    {
      goto LABEL_47;
    }

    v30 = *(v31 + 32);
    if (v30 >= v60)
    {
      goto LABEL_28;
    }

    if (v30 + 0x4000000000000000 < 0)
    {
      break;
    }

    v61 = *(v31 + 40);
    if (2 * v30 > v60)
    {
      v60 = 2 * v30;
    }

    *(v31 + 32) = v60;
    if ((v60 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_50;
    }

    v62 = v32;
    v63 = v56;
    v64 = swift_slowAlloc();
    v65 = v64;
    *(v31 + 40) = v64;
    if (v61)
    {
      if (v64 != v61 || v64 >= &v61[8 * v57])
      {
        memmove(v64, v61, 8 * v57);
      }

      v30 = v31;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v56 = v63;
      v32 = v62;
      v13 = 40;
LABEL_28:
      v65 = *(v31 + 40);
      if (!v65)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    v56 = v63;
    v32 = v62;
    v13 = 40;
    if (!v65)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_29:
    v67 = *(v56 + 16);
    if (v67)
    {
      v68 = (v56 + 32);
      v69 = *v15;
      while (1)
      {
        v70 = *v68++;
        *&v65[8 * v69] = v70;
        v69 = *v15 + 1;
        if (__OFADD__(*v15, 1))
        {
          break;
        }

        *v15 = v69;
        if (!--v67)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_13:

    if (++v55 == v54)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_44:
  v83 = static OS_os_log.crlSidebar;
  sub_1005B981C(&qword_1019F54E0);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_10146C6B0;
  v85 = sub_100F8903C();
  v87 = v86;
  *(v84 + 56) = &type metadata for String;
  *(v84 + 64) = sub_1000053B0();
  *(v84 + 32) = v85;
  *(v84 + 40) = v87;
  v88 = static os_log_type_t.default.getter();
  sub_100005404(v83, &_mh_execute_header, v88, "Ignoring request to select unselectable item: %@", 48, 2, v84);
  swift_setDeallocating();
  sub_100005070(v84 + 32);
  (*(v31 + 8))(v55, v15);
  return 0;
}