uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  v8 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v9 = *(v8 + 24);
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SetEntityEnabledAction), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();

    if (!*(v13 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v13 + 16))
    {
      goto LABEL_34;
    }
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v15)
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      v19 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v21 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
  }

LABEL_34:
  if (a2)
  {
    v24 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v7;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_545;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v13;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for SetEntityEnabledAction, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v25 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  v8 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v9 = *(v8 + 24);
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for NotificationAction), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();

    if (!*(v13 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v13 + 16))
    {
      goto LABEL_34;
    }
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v15)
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      v19 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v21 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
  }

LABEL_34:
  if (a2)
  {
    v24 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v7;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_559;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v13;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for NotificationAction, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v25 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    swift_weakInit();
    if (a1 <= 15)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD10TerminatedV_Ttg5();
      }

      else
      {
        if (a1 != 128)
        {
        }

        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7CreatedV_Ttg5();
      }
    }

    else if (a1 == 16)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD5PauseV_Ttg5();
    }

    else
    {
      if (a1 != 32)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD6ResumeV_Ttg5();
    }

    goto LABEL_22;
  }

  type metadata accessor for __ServiceLocator();
  v8 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v9 = *(v8 + 24);
  swift_unownedRetainStrong();

  swift_weakInit();

  if (a1 > 15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD3EndV_Ttg5();
    }

    else
    {
      if (a1 != 8)
      {
      }

      _s17RealityFoundation10getEventIDys6UInt64VxmlFSo019REAnimationTimelineD7SkippedV_Ttg5();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD6UpdateV_Ttg5();
        goto LABEL_22;
      }
    }

    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5();
  }

LABEL_22:
  if (one-time initialization token for actionSubscriptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAnimationAction), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();

    if (!*(v13 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v13 + 16))
    {
      goto LABEL_34;
    }
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v15)
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v18 = *v16;
    v17 = v16[1];
    if (a2)
    {
      v19 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v21 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v35 = a4;
      v22 = *(v21 + 16);

      v23 = v22;
      a4 = v35;
      result = MEMORY[0x1C68FE250](v23);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v18, v17);
  }

LABEL_34:
  if (a2)
  {
    v24 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v27 = swift_allocObject();
    v27[2] = v7;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_573;
    v28 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v29 = REEventBusSubscribeWithMatch();
    v31 = v30;
    _Block_release(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v13;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v31, a1, isUniquelyReferenced_nonNull_native);
    v33 = aBlock[0];
    swift_beginAccess();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v37 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for PlayAnimationAction, v34);
    static AnimationResource.actionSubscriptions = v37;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v25 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v26 = *(v25 + 16);

  result = MEMORY[0x1C68FE250](v26);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09EmphasizecD0V_Tt0B5(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 176);
  v28 = *(a1 + 160);
  v29 = v2;
  v3 = *(a1 + 80);
  v4 = *(a1 + 112);
  v24 = *(a1 + 96);
  v25 = v4;
  v5 = *(a1 + 112);
  v6 = *(a1 + 144);
  v26 = *(a1 + 128);
  v27 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = v10;
  v11 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v11;
  v12 = *(a1 + 176);
  v31[10] = v28;
  v31[11] = v12;
  v31[6] = v24;
  v31[7] = v5;
  v31[8] = v26;
  v31[9] = v1;
  v31[2] = v20;
  v31[3] = v9;
  v31[4] = v22;
  v31[5] = v3;
  v30 = *(a1 + 192);
  v32 = *(a1 + 192);
  v31[0] = v19[0];
  v31[1] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v31);
  if (v14)
  {
    v15 = result;
    v16 = v14;
    v17 = v32;
    v18[5] = result;
    v18[6] = v14;

    EmphasizeActionHandler.actionUpdated(event:)(v19);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v18[3] = &type metadata for EmphasizeActionHandler;
    v18[4] = &protocol witness table for EmphasizeActionHandler;
    v18[0] = v15;
    v18[1] = v16;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v18, v17);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v4);
  if (v4 == 1)
  {
    return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
  }

  v7 = v4;
  specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &type metadata for BlendShapeWeights, specialized FromToByActionHandler.evaluateResult(_:));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v3 = a1[37];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
  v4 = v7;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v4, v3);
  swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v4);
  if (v4 == 1)
  {
    return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
  }

  v7 = v4;
  specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &type metadata for JointTransforms, specialized FromToByActionHandler.evaluateResult(_:));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v3 = a1[37];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
  v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
  v4 = v7;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v4, v3);
  swift_endAccess();
}

void _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VyAE9TransformVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(a1, v11);
  if ((v12 & 1) == 0)
  {
    v7 = v11[0];
    v8 = v11[1];
    v9 = v11[2];
    v10 = v11[3];
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = a1[57];
    v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v6[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Transform> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v3 = swift_allocObject();
    v6[0] = v3;
    v4 = v8;
    v3[1] = v7;
    v3[2] = v4;
    v5 = v10;
    v3[3] = v9;
    v3[4] = v5;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v6, v2);
    swift_endAccess();
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySo10simd_quatfaG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v12);
  if ((v15 & 1) == 0)
  {
    v3.n128_u64[0] = v14;
    v9 = v12;
    v10 = v13 & 1;
    v11 = v14;
    specialized FromToByActionHandler.actionUpdated(event:)(a1, v3);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[45];
    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v8[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v5 = swift_allocObject();
    v8[0] = v5;
    v6 = v10;
    v7 = v11;
    *(v5 + 16) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v8, v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v11);
  if ((v14 & 1) == 0)
  {
    v8 = v11;
    v9 = v12 & 1;
    v10 = v13;
    specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, specialized FromToByActionHandler.evaluateResult(_:));
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = a1[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v4 = swift_allocObject();
    v7[0] = v4;
    v5 = v9;
    v6 = v10;
    *(v4 + 16) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v11);
  if ((v14 & 1) == 0)
  {
    v8 = v11;
    v9 = v12 & 1;
    v10 = v13;
    specialized FromToByActionHandler.actionUpdated(event:)(a1, specialized ActionEvent.animationState.getter, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, specialized FromToByActionHandler.evaluateResult(_:));
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = a1[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v4 = swift_allocObject();
    v7[0] = v4;
    v5 = v9;
    v6 = v10;
    *(v4 + 16) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v5 & 1) == 0)
  {
    v12 = result;
    v13 = v3 & 1;
    v14 = v4;
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v6 = a1[39];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v7 = v12;
    v8 = v13;
    v9 = v14;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v7, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySdG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v5 & 1) == 0)
  {
    v12 = result;
    v13 = v3 & 1;
    v14 = v4;
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v6 = a1[39];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v7 = v12;
    v8 = v13;
    v9 = v14;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v7, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySfG_Tt0B5(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(a1);
  if ((v4 & 1) == 0)
  {
    v11 = result;
    v12 = BYTE4(result) & 1;
    v13 = v3;
    specialized FromToByActionHandler.actionUpdated(event:)(a1);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = a1[37];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Float> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v6 = v11;
    v7 = v12;
    v8 = v13;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v6, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA04SpincD0V_Tt0B5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v2 = *(a1 + 176);
  v39 = *(a1 + 192);
  v40 = v1;
  v3 = *(a1 + 208);
  v4 = *(a1 + 240);
  v41 = *(a1 + 224);
  v42 = v4;
  v5 = *(a1 + 144);
  v6 = *(a1 + 112);
  v35 = *(a1 + 128);
  v36 = v5;
  v7 = *(a1 + 144);
  v8 = *(a1 + 176);
  v37 = *(a1 + 160);
  v38 = v8;
  v9 = *(a1 + 80);
  v10 = *(a1 + 48);
  v31 = *(a1 + 64);
  v32 = v9;
  v11 = *(a1 + 80);
  v12 = *(a1 + 112);
  v33 = *(a1 + 96);
  v34 = v12;
  v13 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v13;
  v14 = *(a1 + 48);
  v16 = *a1;
  v15 = *(a1 + 16);
  v29 = *(a1 + 32);
  v30 = v14;
  v43[12] = v39;
  v43[13] = v3;
  v17 = *(a1 + 240);
  v43[14] = v41;
  v44 = v17;
  v43[8] = v35;
  v43[9] = v7;
  v43[10] = v37;
  v43[11] = v2;
  v43[4] = v31;
  v43[5] = v11;
  v43[6] = v33;
  v43[7] = v6;
  v43[0] = v16;
  v43[1] = v15;
  v43[2] = v29;
  v43[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v43);
  if ((v20 & 0x100) == 0)
  {
    v21 = result;
    v22 = v19;
    v23 = *(&v44 + 1);
    v26[5] = result;
    v26[6] = v19;
    v24 = v20 & 1;
    v27 = v20 & 1;
    SpinActionHandler.actionUpdated(event:)(v28);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v26[3] = &type metadata for SpinActionHandler;
    v26[4] = &protocol witness table for SpinActionHandler;
    v25 = swift_allocObject();
    v26[0] = v25;
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    *(v25 + 32) = v24;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v26, v23);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0B5Tm(_OWORD *a1, void (*a2)(_OWORD *))
{
  v3 = a1[13];
  v4 = a1[11];
  v72 = a1[12];
  v73 = v3;
  v5 = a1[13];
  v6 = a1[15];
  v74 = a1[14];
  v75 = v6;
  v7 = a1[9];
  v8 = a1[7];
  v68 = a1[8];
  v69 = v7;
  v9 = a1[9];
  v10 = a1[11];
  v70 = a1[10];
  v71 = v10;
  v11 = a1[5];
  v12 = a1[3];
  v64 = a1[4];
  v65 = v11;
  v13 = a1[5];
  v14 = a1[7];
  v66 = a1[6];
  v67 = v14;
  v15 = a1[1];
  v61[0] = *a1;
  v61[1] = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v62 = a1[2];
  v63 = v16;
  v76[12] = v72;
  v76[13] = v5;
  v19 = a1[15];
  v76[14] = v74;
  v77 = v19;
  v76[8] = v68;
  v76[9] = v9;
  v76[10] = v70;
  v76[11] = v4;
  v76[4] = v64;
  v76[5] = v13;
  v76[6] = v66;
  v76[7] = v8;
  v76[0] = v18;
  v76[1] = v17;
  v76[2] = v62;
  v76[3] = v12;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(v76, &v37);
  v78[8] = v45;
  v78[9] = v46;
  v78[10] = v47;
  v78[11] = v48;
  v78[4] = v41;
  v78[5] = v42;
  v78[6] = v43;
  v78[7] = v44;
  v78[0] = v37;
  v78[1] = v38;
  v78[2] = v39;
  v78[3] = v40;
  if (_s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v78) == 1)
  {
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    return outlined destroy of BodyTrackingComponent?(&v49, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
  }

  else
  {
    v21 = *(&v77 + 1);
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    a2(v61);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v34[3] = &type metadata for OrbitEntityActionHandler;
    v34[4] = &protocol witness table for OrbitEntityActionHandler;
    v22 = swift_allocObject();
    v23 = v58;
    v35[8] = v57;
    v35[9] = v58;
    v24 = v59;
    v25 = v60;
    v35[10] = v59;
    v35[11] = v60;
    v26 = v53;
    v27 = v54;
    v35[4] = v53;
    v35[5] = v54;
    v28 = v55;
    v29 = v56;
    v35[6] = v55;
    v35[7] = v56;
    v30 = v49;
    v31 = v50;
    v35[0] = v49;
    v35[1] = v50;
    v32 = v51;
    v33 = v52;
    v35[2] = v51;
    v35[3] = v52;
    v22[9] = v57;
    v22[10] = v23;
    v22[11] = v24;
    v22[12] = v25;
    v22[5] = v26;
    v22[6] = v27;
    v22[7] = v28;
    v22[8] = v29;
    v22[1] = v30;
    v22[2] = v31;
    v34[0] = v22;
    v22[3] = v32;
    v22[4] = v33;
    swift_beginAccess();
    outlined init with copy of OrbitEntityActionHandler(v35, v36);
    specialized Dictionary.subscript.setter(v34, v21);
    swift_endAccess();
    v36[8] = v57;
    v36[9] = v58;
    v36[10] = v59;
    v36[11] = v60;
    v36[4] = v53;
    v36[5] = v54;
    v36[6] = v55;
    v36[7] = v56;
    v36[0] = v49;
    v36[1] = v50;
    v36[2] = v51;
    v36[3] = v52;
    return outlined destroy of OrbitEntityActionHandler(v36);
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09BillboardcD0V_Tt0B5Tm(void *__src, void (*a2)(_BYTE *))
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(v14, &v6);
  if ((v8 & 1) == 0)
  {
    v5 = v14[35];
    v11 = v6;
    v12 = v7 & 1;
    a2(__dst);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = &type metadata for BillboardActionHandler;
    v10 = &protocol witness table for BillboardActionHandler;
    v6 = v11;
    v7 = v12;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v6, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA013PlayAnimationcD0V_Tt0B5(uint64_t a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(a1);
  if (result == 1)
  {
    return result;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
LABEL_9:
    sub_1C136529C(result);
    goto LABEL_10;
  }

  if (result)
  {
    v3 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + 16);
      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        v6 = *(v3 + 16);
        REAnimationComponentStopAnimation();
        RENetworkMarkComponentDirty();
      }

      sub_1C136529C(v3);

      goto LABEL_10;
    }

    result = v3;
    goto LABEL_9;
  }

LABEL_10:
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v7 = *(a1 + 248);
  v8[3] = &type metadata for PlayAnimationActionHandler;
  v8[4] = &protocol witness table for PlayAnimationActionHandler;
  v8[0] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v8, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(uint64_t *a1, uint64_t a2)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(a1, &v40);
  v52[8] = v48;
  v52[9] = v49;
  v52[10] = v50;
  v52[11] = v51;
  v52[4] = v44;
  v52[5] = v45;
  v52[6] = v46;
  v52[7] = v47;
  v52[0] = v40;
  v52[1] = v41;
  v52[2] = v42;
  v52[3] = v43;
  if (_s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v52) == 1)
  {
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v4 = &v28;
  }

  else
  {
    v24 = v48;
    v25 = v49;
    v26 = v50;
    v27 = v51;
    v20 = v44;
    v21 = v45;
    v22 = v46;
    v23 = v47;
    v16 = v40;
    v17 = v41;
    v18 = v42;
    v19 = v43;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, a1[13], &type metadata for OrbitEntityAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = a1[31];
    v15[3] = &type metadata for OrbitEntityActionHandler;
    v15[4] = &protocol witness table for OrbitEntityActionHandler;
    v6 = swift_allocObject();
    v15[0] = v6;
    v7 = v49;
    v6[9] = v48;
    v6[10] = v7;
    v8 = v51;
    v6[11] = v50;
    v6[12] = v8;
    v9 = v45;
    v6[5] = v44;
    v6[6] = v9;
    v10 = v47;
    v6[7] = v46;
    v6[8] = v10;
    v11 = v41;
    v6[1] = v40;
    v6[2] = v11;
    v12 = v43;
    v6[3] = v42;
    v6[4] = v12;
    swift_beginAccess();
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    outlined init with copy of OrbitEntityActionHandler(&v28, &v14);
    specialized Dictionary.subscript.setter(v15, v5);
    swift_endAccess();
    v4 = &v16;
  }

  return outlined destroy of BodyTrackingComponent?(v4, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA013PlayAnimationcD0V_Tt0B5Tm(uint64_t *a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(a1);
  if (result != 1)
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 14);
    v5 = *(a1 + 15);
    v27 = *(a1 + 13);
    v28 = v4;
    v29 = v5;
    v6 = *(a1 + 8);
    v7 = *(a1 + 10);
    v8 = *(a1 + 11);
    v23 = *(a1 + 9);
    v24 = v7;
    v25 = v8;
    v26 = v3;
    v9 = *(a1 + 5);
    v18 = *(a1 + 4);
    v19 = v9;
    v10 = *(a1 + 7);
    v20 = *(a1 + 6);
    v30 = result;
    v21 = v10;
    v22 = v6;
    v11 = *(a1 + 1);
    v14 = *a1;
    v15 = v11;
    v12 = *(a1 + 3);
    v16 = *(a1 + 2);
    v17 = v12;
    PlayAnimationActionHandler.triggerAnimation(_:)(&v14);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v13 = a1[31];
    *(&v15 + 1) = &type metadata for PlayAnimationActionHandler;
    *&v16 = &protocol witness table for PlayAnimationActionHandler;
    *&v14 = v30;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v14, v13);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0B5Tm(uint64_t a1, void (*a2)(void, void))
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(a1);
  if (result != 1)
  {
    if (result && (*(a1 + 56) & 1) != 0)
    {
      v5 = result;
      a2(*(result + 32), *(result + 48));
      RENetworkMarkComponentDirty();
      result = v5;
    }

    if (one-time initialization token for actionHandlers != -1)
    {
      v8 = result;
      swift_once();
      result = v8;
    }

    v6 = *(a1 + 240);
    v9[3] = &type metadata for PlayAudioActionHandler;
    v9[4] = &protocol witness table for PlayAudioActionHandler;
    v9[0] = result;
    v7 = result;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v9, v6);
    swift_endAccess();
    return sub_1C136529C(v7);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA09BillboardcD0V_Tt0B5Tm(uint64_t *a1, uint64_t a2)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(a1, &v8);
  if ((v10 & 1) == 0)
  {
    v5 = v8 | (v9 << 32);
    v6 = v8;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, a1[17], &type metadata for BillboardAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v7 = a1[35];
    v11 = &type metadata for BillboardActionHandler;
    v12 = &protocol witness table for BillboardActionHandler;
    v8 = v6;
    v9 = BYTE4(v5) & 1;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v8, v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09PlayAudiocD0V_Tt0B5(uint64_t a1)
{
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(a1);
  if (result != 1)
  {
    if (result && (*(a1 + 56) & 1) != 0 && (*(a1 + 136) & 1) == 0)
    {
      v3 = *(a1 + 128);
      v4 = result;
      static Duration.seconds(_:)();
      v5 = Duration.components.getter();
      Duration.components.getter();
      MEMORY[0x1C68F7300](*(v4 + 32), *(v4 + 48), v6 * 1.0e-18 + v5);
      RENetworkMarkComponentDirty();
      AudioPlaybackController.play()();
      result = v4;
    }

    if (one-time initialization token for actionHandlers != -1)
    {
      v9 = result;
      swift_once();
      result = v9;
    }

    v7 = *(a1 + 240);
    v10[3] = &type metadata for PlayAudioActionHandler;
    v10[4] = &protocol witness table for PlayAudioActionHandler;
    v10[0] = result;
    v8 = result;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v10, v7);
    swift_endAccess();
    return sub_1C136529C(v8);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = a1[37];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v6 = v2;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(&v6, v4);
    swift_endAccess();
    v3 = v2;
  }

  return _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(v3);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v8);
  v2 = v8;
  if (v8 == 1)
  {
    _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v4 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<BlendShapeWeights> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR);
    v5 = *(&v8 + 1);
  }

  *&v8 = v2;
  *(&v8 + 1) = v5;
  v10 = v3;
  v11 = v4;
  v6 = a1[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v8, v6);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v8);
  v2 = v8;
  if (v8 == 1)
  {
    _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(1);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v4 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<JointTransforms> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR);
    v5 = *(&v8 + 1);
  }

  *&v8 = v2;
  *(&v8 + 1) = v5;
  v10 = v3;
  v11 = v4;
  v6 = a1[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v8, v6);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09BillboardcD0V_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(a1, &v6);
  if (v8)
  {
    v2 = 0;
    v3 = 0;
    memset(v9, 0, 24);
  }

  else
  {
    LODWORD(v9[0]) = v6;
    BYTE4(v9[0]) = v7 & 1;
    v3 = &protocol witness table for BillboardActionHandler;
    v2 = &type metadata for BillboardActionHandler;
  }

  v9[3] = v2;
  v9[4] = v3;
  v4 = a1[35];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v4);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA011OrbitEntitycD0V_Tt0B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(a1, &v14);
  v27[8] = v22;
  v27[9] = v23;
  v27[10] = v24;
  v27[11] = v25;
  v27[4] = v18;
  v27[5] = v19;
  v27[6] = v20;
  v27[7] = v21;
  v27[0] = v14;
  v27[1] = v15;
  v27[2] = v16;
  v27[3] = v17;
  if (_s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v27) == 1)
  {
    v13[8] = v22;
    v13[9] = v23;
    v13[10] = v24;
    v13[11] = v25;
    v13[4] = v18;
    v13[5] = v19;
    v13[6] = v20;
    v13[7] = v21;
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    outlined destroy of BodyTrackingComponent?(v13, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v26[1] = 0;
    v26[2] = 0;
  }

  else
  {
    v2 = swift_allocObject();
    v5 = v23;
    v2[9] = v22;
    v2[10] = v5;
    v6 = v25;
    v2[11] = v24;
    v2[12] = v6;
    v7 = v19;
    v2[5] = v18;
    v2[6] = v7;
    v8 = v21;
    v2[7] = v20;
    v2[8] = v8;
    v9 = v15;
    v2[1] = v14;
    v2[2] = v9;
    v10 = v17;
    v2[3] = v16;
    v2[4] = v10;
    v4 = &protocol witness table for OrbitEntityActionHandler;
    v3 = &type metadata for OrbitEntityActionHandler;
  }

  v26[0] = v2;
  v26[3] = v3;
  v26[4] = v4;
  v11 = a1[31];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v26, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09EmphasizeD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4550);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for EmphasizeAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for EmphasizeAction, &protocol witness table for EmphasizeAction, 0xD000000000000021, 0x80000001C18E4550, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09PlayAudioD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4620);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for PlayAudioAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for PlayAudioAction, &protocol witness table for PlayAudioAction, 0xD000000000000021, 0x80000001C18E4620, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003FLL, 0x80000001C18E4710);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD00000000000003FLL, 0x80000001C18E4710, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySSG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E47C0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000037, 0x80000001C18E47C0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySbG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000035, 0x80000001C18E4870);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000035, 0x80000001C18E4870, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySiG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000034, 0x80000001C18E4920);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000034, 0x80000001C18E4920, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000039, 0x80000001C18E49D0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000039, 0x80000001C18E49D0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4A80);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000043, 0x80000001C18E4A80, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4B50);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000043, 0x80000001C18E4B50, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4C20);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000043, 0x80000001C18E4C20, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySdG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E4CF0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000037, 0x80000001C18E4CF0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc8PropertyD0VySfG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4DA0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for SetEntityPropertyAction<A>, 0xD000000000000036, 0x80000001C18E4DA0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000045, 0x80000001C18E4E50);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000045, 0x80000001C18E4E50, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VyAA15JointTransformsVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4F20);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000043, 0x80000001C18E4F20, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4FF0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000036, 0x80000001C18E4FF0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000030, 0x80000001C18E50A0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD000000000000030, 0x80000001C18E50A0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E5140);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000003ALL, 0x80000001C18E5140, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E51F0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000003ALL, 0x80000001C18E51F0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E52A0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000003ALL, 0x80000001C18E52A0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySdG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x80000001C18E5350);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000002ELL, 0x80000001C18E5350, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA08FromToByD0VySfG_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x80000001C18E53E0);
    if (v3)
    {
      v10 = *(*(v1 + 56) + 16 * v2);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
      if (v10 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  swift_beginAccess();
  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, &protocol witness table for FromToByAction<A>, 0xD00000000000002DLL, 0x80000001C18E53E0, isUniquelyReferenced_nonNull_native);
  *v0 = v11;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA09BillboardD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E5470);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for BillboardAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for BillboardAction, &protocol witness table for BillboardAction, 0xD000000000000021, 0x80000001C18E5470, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA04SpinD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001C18E54F0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for SpinAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for SpinAction, &protocol witness table for SpinAction, 0xD00000000000001CLL, 0x80000001C18E54F0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA05OrbitcD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000023, 0x80000001C18E5560);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for OrbitEntityAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for OrbitEntityAction, &protocol witness table for OrbitEntityAction, 0xD000000000000023, 0x80000001C18E5560, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA07ImpulseD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x80000001C18E55F0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for ImpulseAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for ImpulseAction, &protocol witness table for ImpulseAction, 0xD00000000000001FLL, 0x80000001C18E55F0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA03Setc7EnabledD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x80000001C18E5660);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for SetEntityEnabledAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for SetEntityEnabledAction, &protocol witness table for SetEntityEnabledAction, 0xD000000000000028, 0x80000001C18E5660, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA012NotificationD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000024, 0x80000001C18E56F0);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for NotificationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for NotificationAction, &protocol witness table for NotificationAction, 0xD000000000000024, 0x80000001C18E56F0, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAAE10__registeryyFZAA013PlayAnimationD0V_Ttg5()
{
  if (one-time initialization token for actionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.actionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.actionTypeMap;
  if (*(static AnimationResource.actionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000025, 0x80000001C18E5780);
    if (v3)
    {
      v9 = *(*(v1 + 56) + 16 * v2);
      result = swift_endAccess();
      if (v9 == &type metadata for PlayAnimationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_pXpMd, &_s17RealityFoundation12EntityAction_pXpMR);
      v5 = String.init<A>(describing:)();
      v0 = v6;
      MEMORY[0x1C68F3410](v5);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v7 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  *v0 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&type metadata for PlayAnimationAction, &protocol witness table for PlayAnimationAction, 0xD000000000000025, 0x80000001C18E5780, isUniquelyReferenced_nonNull_native);
  *v0 = v10;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09EmphasizeD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4550);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for EmphasizeAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type EmphasizeAction and conformance EmphasizeAction();
  v10 = lazy protocol witness table accessor for type EmphasizeAction and conformance EmphasizeAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for EmphasizeAction;
  v17[1] = &protocol witness table for EmphasizeAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000021, 0x80000001C18E4550, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09PlayAudioD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E4620);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for PlayAudioAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type PlayAudioAction and conformance PlayAudioAction();
  v10 = lazy protocol witness table accessor for type PlayAudioAction and conformance PlayAudioAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for PlayAudioAction;
  v17[1] = &protocol witness table for PlayAudioAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000021, 0x80000001C18E4620, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003FLL, 0x80000001C18E4710);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Transform> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Transform> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000003FLL, 0x80000001C18E4710, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySSG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E47C0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<String> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<String> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000037, 0x80000001C18E47C0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySbG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000035, 0x80000001C18E4870);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Bool> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Bool> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000035, 0x80000001C18E4870, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySiG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000034, 0x80000001C18E4920);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Int> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Int> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000034, 0x80000001C18E4920, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000039, 0x80000001C18E49D0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<simd_quatf> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<simd_quatf> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000039, 0x80000001C18E49D0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4A80);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD4<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD4<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000043, 0x80000001C18E4A80, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4B50);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD3<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD3<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000043, 0x80000001C18E4B50, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4C20);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD2<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<SIMD2<Float>> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000043, 0x80000001C18E4C20, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySdG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000037, 0x80000001C18E4CF0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Double> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Double> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000037, 0x80000001C18E4CF0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc8PropertyD0VySfG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4DA0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Float> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyAction<Float> and conformance SetEntityPropertyAction<A>, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for SetEntityPropertyAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000036, 0x80000001C18E4DA0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000045, 0x80000001C18E4E50);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<BlendShapeWeights> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<BlendShapeWeights> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000045, 0x80000001C18E4E50, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VyAA15JointTransformsVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000043, 0x80000001C18E4F20);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<JointTransforms> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<JointTransforms> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000043, 0x80000001C18E4F20, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vy0A3Kit9TransformVG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000036, 0x80000001C18E4FF0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Transform> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Transform> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000036, 0x80000001C18E4FF0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySo10simd_quatfaG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000030, 0x80000001C18E50A0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<simd_quatf> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<simd_quatf> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000030, 0x80000001C18E50A0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD4VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E5140);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD4<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD4<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000003ALL, 0x80000001C18E5140, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD3VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E51F0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD3<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD3<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000003ALL, 0x80000001C18E51F0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0Vys5SIMD2VySfGG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003ALL, 0x80000001C18E52A0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD2<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<SIMD2<Float>> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000003ALL, 0x80000001C18E52A0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySdG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x80000001C18E5350);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Double> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Double> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000002ELL, 0x80000001C18E5350, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA08FromToByD0VySfG_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x80000001C18E53E0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v15 = *(v4 + 16);
      v16 = *v4;
      v14 = *(v4 + 32);
      v5 = *(v4 + 48);
      swift_endAccess();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
      if (v16 == result)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Float> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  v11 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByAction<Float> and conformance FromToByAction<A>, &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  swift_beginAccess();
  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;
  *v0 = 0x8000000000000000;
  v18[0] = v9;
  v18[1] = &protocol witness table for FromToByAction<A>;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69E73E0];
  v18[5] = MEMORY[0x1E69E7400];
  v18[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD00000000000002DLL, 0x80000001C18E53E0, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA09BillboardD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001C18E5470);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for BillboardAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type BillboardAction and conformance BillboardAction();
  v10 = lazy protocol witness table accessor for type BillboardAction and conformance BillboardAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for BillboardAction;
  v17[1] = &protocol witness table for BillboardAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000021, 0x80000001C18E5470, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA04SpinD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001C18E54F0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for SpinAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type SpinAction and conformance SpinAction();
  v10 = lazy protocol witness table accessor for type SpinAction and conformance SpinAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for SpinAction;
  v17[1] = &protocol witness table for SpinAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD00000000000001CLL, 0x80000001C18E54F0, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA05OrbitcD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000023, 0x80000001C18E5560);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for OrbitEntityAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type OrbitEntityAction and conformance OrbitEntityAction();
  v10 = lazy protocol witness table accessor for type OrbitEntityAction and conformance OrbitEntityAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for OrbitEntityAction;
  v17[1] = &protocol witness table for OrbitEntityAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000023, 0x80000001C18E5560, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA07ImpulseD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001FLL, 0x80000001C18E55F0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for ImpulseAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type ImpulseAction and conformance ImpulseAction();
  v10 = lazy protocol witness table accessor for type ImpulseAction and conformance ImpulseAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for ImpulseAction;
  v17[1] = &protocol witness table for ImpulseAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD00000000000001FLL, 0x80000001C18E55F0, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA03Setc7EnabledD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x80000001C18E5660);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for SetEntityEnabledAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type SetEntityEnabledAction and conformance SetEntityEnabledAction();
  v10 = lazy protocol witness table accessor for type SetEntityEnabledAction and conformance SetEntityEnabledAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for SetEntityEnabledAction;
  v17[1] = &protocol witness table for SetEntityEnabledAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000028, 0x80000001C18E5660, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA012NotificationD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000024, 0x80000001C18E56F0);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for NotificationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type NotificationAction and conformance NotificationAction();
  v10 = lazy protocol witness table accessor for type NotificationAction and conformance NotificationAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for NotificationAction;
  v17[1] = &protocol witness table for NotificationAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000024, 0x80000001C18E56F0, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation12EntityActionPAASeRzSERzSe18EventParameterTypeACRpzSEAERQrlE17__registerCodableyyFZAA013PlayAnimationD0V_Ttg5()
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  v0 = &static AnimationResource.codableActionTypeMap;
  swift_beginAccess();
  v1 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000025, 0x80000001C18E5780);
    if (v3)
    {
      v4 = *(v1 + 56) + 56 * v2;
      v14 = *(v4 + 16);
      v15 = *v4;
      v13 = *(v4 + 32);
      v5 = *(v4 + 48);
      result = swift_endAccess();
      if (v15 == &type metadata for PlayAnimationAction)
      {
        return result;
      }

      _StringGuts.grow(_:)(50);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMd, &_s17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertMR);
      v7 = String.init<A>(describing:)();
      v0 = v8;
      MEMORY[0x1C68F3410](v7);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_endAccess();
  v9 = lazy protocol witness table accessor for type PlayAnimationAction and conformance PlayAnimationAction();
  v10 = lazy protocol witness table accessor for type PlayAnimationAction and conformance PlayAnimationAction();
  swift_beginAccess();
  v11 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  *v0 = 0x8000000000000000;
  v17[0] = &type metadata for PlayAnimationAction;
  v17[1] = &protocol witness table for PlayAnimationAction;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = MEMORY[0x1E69E73E0];
  v17[5] = MEMORY[0x1E69E7400];
  v17[6] = MEMORY[0x1E69E73E8];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000025, 0x80000001C18E5780, isUniquelyReferenced_nonNull_native);
  *v0 = v16;
  return swift_endAccess();
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 != 2)
          {
            goto LABEL_148;
          }

          v163 = a5;
          v13 = *a2;
          v12 = *(a2 + 8);
          v15 = *(a2 + 24);
          v14 = *(a2 + 32);
          v16 = *(a2 + 40);
          v5.i32[0] = *(a2 + 56);
          v158 = *(a2 + 64);
          v160 = *(a2 + 48);
          v155 = *(a2 + 72);
          v17 = *(a2 + 88);
          v6 = *(a2 + 96);
          v153 = *(a2 + 104);
          v162 = *(a2 + 80);
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v18 = swift_dynamicCastClassUnconditional();
            goto LABEL_8;
          }

          goto LABEL_75;
        }

        v163 = a5;
        v49 = *a2;
        v48 = *(a2 + 8);
        v51 = *(a2 + 24);
        v50 = *(a2 + 32);
        v52 = *(a2 + 40);
        v53 = *(a2 + 64);
        v54 = *(a2 + 72);
        v154 = *(a2 + 80);
        v157 = *(a2 + 56);
        v159 = *(a2 + 88);
        v161 = *(a2 + 96);
        v162 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v55 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v72 = specialized static Entity.entityInfoType(_:)();
          if (v72)
          {
            v56 = (*(v72 + 232))();
            v73 = *(v56 + 16);

            MEMORY[0x1C68F9740](v73, 0);
            *(v56 + 16) = v49;
            MEMORY[0x1C68F9740](v49, v56);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v74 = swift_allocObject();
            *(v74 + 40) = 0;
            swift_weakInit();
            *(v74 + 16) = v48;
            swift_weakAssign();
            v75 = *(v56 + 16);

            *(v74 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v56 + 16));
            v76 = Hasher._finalize()();

            *(v74 + 24) = v76;
            v77 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v50, 0, v52, v77, v78, &v181);

            if (!v53)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v80 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v53 = v80;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              v131 = specialized static Entity.entityInfoType(_:)();
              if (!v131)
              {
                v80 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v53 = (*(v131 + 232))();
              v132 = *(v53 + 16);

              MEMORY[0x1C68F9740](v132, 0);
              *(v53 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v53);
            }

            else
            {
              v53 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v179);
            v133 = v179 | (v180 << 16);
            if ((v133 & 0xFF0000) != 0x20000)
            {
              WORD4(v164) = v179;
              BYTE10(v164) = BYTE2(v133) & 1;
              BYTE11(v164) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
              *&v164 = v74;
              *&v165 = v53;
              BYTE8(v165) = v154;
              v166 = vcvtq_f64_f32(v54);
              *&v167 = v11;
              *(&v167 + 1) = v157;
              *&v168 = 0xBFF0000000000000;
              BYTE8(v168) = 0;
LABEL_139:
              v141 = v159;
              v137 = v161;
              goto LABEL_140;
            }

            goto LABEL_147;
          }

          v55 = makeEntity(for:)(v49);
LABEL_32:
          v56 = v55;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_168;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_148;
        }

        v163 = a5;
        v35 = *a2;
        v34 = *(a2 + 8);
        v37 = *(a2 + 24);
        v36 = *(a2 + 32);
        v38 = *(a2 + 40);
        v39 = *(a2 + 56);
        v40 = *(a2 + 64);
        v156 = *(a2 + 72);
        v159 = *(a2 + 80);
        v161 = *(a2 + 88);
        v162 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v41 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v117 = specialized static Entity.entityInfoType(_:)();
          if (v117)
          {
            v42 = (*(v117 + 232))();
            v118 = *(v42 + 16);

            MEMORY[0x1C68F9740](v118, 0);
            *(v42 + 16) = v35;
            MEMORY[0x1C68F9740](v35, v42);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v119 = swift_allocObject();
            *(v119 + 40) = 0;
            swift_weakInit();
            *(v119 + 16) = v34;
            swift_weakAssign();
            v120 = *(v42 + 16);

            *(v119 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v42 + 16));
            v121 = Hasher._finalize()();

            *(v119 + 24) = v121;
            v122 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v38, v122, v123, &v181);

            if (!v39)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v124 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v125 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v39 = v125;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              v145 = specialized static Entity.entityInfoType(_:)();
              if (!v145)
              {
                v125 = makeEntity(for:)(v124);
                goto LABEL_99;
              }

              v39 = (*(v145 + 232))();
              v146 = *(v39 + 16);

              MEMORY[0x1C68F9740](v146, 0);
              *(v39 + 16) = v124;
              MEMORY[0x1C68F9740](v124, v39);
            }

            else
            {
              v39 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v179);
            v147 = v179 | (v180 << 16);
            if ((v147 & 0xFF0000) != 0x20000)
            {
              WORD4(v164) = v179;
              BYTE10(v164) = BYTE2(v147) & 1;
              BYTE11(v164) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
              *&v164 = v119;
              *&v165 = v39;
              BYTE8(v165) = v156;
              v166 = vcvtq_f64_f32(v40);
              *&v168 = 0;
              v167 = v11;
              BYTE8(v168) = 1;
              goto LABEL_139;
            }

LABEL_147:

LABEL_148:

            return 0;
          }

          v41 = makeEntity(for:)(v35);
        }

        v42 = v41;
        goto LABEL_95;
      }

      v163 = a5;
      v63 = *a2;
      v57 = *(a2 + 8);
      v64 = *(a2 + 24);
      v59 = *(a2 + 32);
      v65 = *(a2 + 40);
      v31 = *(a2 + 64);
      v160 = *(a2 + 56);
      v5 = *(a2 + 72);
      LOBYTE(v158) = *(a2 + 80);
      v162 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v87 = specialized static Entity.entityInfoType(_:)();
      if (v87)
      {
        v67 = (*(v87 + 232))();
        v88 = *(v67 + 16);

        MEMORY[0x1C68F9740](v88, 0);
        *(v67 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v67);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v89 = swift_allocObject();
        *(v89 + 40) = 0;
        swift_weakInit();
        *(v89 + 16) = v57;
        swift_weakAssign();
        v90 = *(v67 + 16);

        *(v89 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v67 + 16));
        v91 = Hasher._finalize()();

        *(v89 + 24) = v91;
        v92 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v65, v92, v93, &v181);

        if (!v31)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v94 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v95 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v31 = v95;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          v134 = specialized static Entity.entityInfoType(_:)();
          if (!v134)
          {
            v95 = makeEntity(for:)(v94);
            goto LABEL_66;
          }

          v31 = (*(v134 + 232))();
          v135 = *(v31 + 16);

          MEMORY[0x1C68F9740](v135, 0);
          *(v31 + 16) = v94;
          MEMORY[0x1C68F9740](v94, v31);
        }

        else
        {
          v31 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v179);
        v136 = v179 | (v180 << 16);
        if ((v136 & 0xFF0000) != 0x20000)
        {
          WORD4(v164) = v179;
          BYTE10(v164) = BYTE2(v136) & 1;
          BYTE11(v164) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
          *&v164 = v89;
          *&v165 = v31;
          BYTE8(v165) = v158;
          v166 = vcvtq_f64_f32(v5);
          *&v167 = v11;
          *(&v167 + 1) = v160;
          v137 = 0xBFF0000000000000;
          *&v168 = 0xBFF0000000000000;
          BYTE8(v168) = 0;
          *&v169 = 0xBFF0000000000000;
LABEL_141:
          BYTE8(v169) = 0;
          *&v170 = v137;
          BYTE8(v170) = 0;
          v175 = v185;
          v174 = v184;
          v173 = v183;
          v171 = v181;
          v172 = v182;
          v176 = v162;
LABEL_151:
          v163(&v164);

          v177[10] = v174;
          v177[11] = v175;
          v178 = v176;
          v177[6] = v170;
          v177[7] = v171;
          v177[8] = v172;
          v177[9] = v173;
          v177[2] = v166;
          v177[3] = v167;
          v177[4] = v168;
          v177[5] = v169;
          v177[0] = v164;
          v177[1] = v165;
          outlined destroy of BodyTrackingComponent?(v177, &_s17RealityFoundation11ActionEventVyAA09EmphasizeC0VGMd, &_s17RealityFoundation11ActionEventVyAA09EmphasizeC0VGMR);
          return 0;
        }

        goto LABEL_147;
      }

      v66 = makeEntity(for:)(v63);
LABEL_38:
      v67 = v66;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_148;
        }

        v163 = a5;
        v27 = *a2;
        v26 = *(a2 + 8);
        v28 = *(a2 + 24);
        v29 = *(a2 + 40);
        v30 = *(a2 + 48);
        v31 = *(a2 + 56);
        v162 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v32 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v110 = specialized static Entity.entityInfoType(_:)();
          if (v110)
          {
            v33 = (*(v110 + 232))();
            v111 = *(v33 + 16);

            MEMORY[0x1C68F9740](v111, 0);
            *(v33 + 16) = v27;
            MEMORY[0x1C68F9740](v27, v33);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v63 = swift_allocObject();
            *(v63 + 40) = 0;
            swift_weakInit();
            *(v63 + 16) = v26;
            swift_weakAssign();
            v112 = *(v33 + 16);

            *(v63 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v33 + 16));
            v113 = Hasher._finalize()();

            *(v63 + 24) = v113;
            v114 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v114, v115, &v181);

            if (v31)
            {
              if (REBindPointBoundComponent())
              {
                v65 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_178:
                  __break(1u);
                  goto LABEL_179;
                }

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v32 = makeEntity(for:)(v27);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v163 = a5;
      v58 = *a2;
      v57 = *(a2 + 8);
      v59 = *(a2 + 24);
      v60 = *(a2 + 40);
      v30 = *(a2 + 48);
      v31 = *(a2 + 56);
      v162 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v61 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v81 = specialized static Entity.entityInfoType(_:)();
        if (v81)
        {
          v62 = (*(v81 + 232))();
          v82 = *(v62 + 16);

          MEMORY[0x1C68F9740](v82, 0);
          *(v62 + 16) = v58;
          MEMORY[0x1C68F9740](v58, v62);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v63 = swift_allocObject();
          *(v63 + 40) = 0;
          swift_weakInit();
          *(v63 + 16) = v57;
          swift_weakAssign();
          v83 = *(v62 + 16);

          *(v63 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v62 + 16));
          v84 = Hasher._finalize()();

          *(v63 + 24) = v84;
          v85 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v85, v86, &v181);

          if (v31)
          {
            if (REBindPointBoundComponent())
            {
              v65 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v116 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v31 = v116;
                goto LABEL_131;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_129:
              v142 = specialized static Entity.entityInfoType(_:)();
              if (v142)
              {
                v31 = (*(v142 + 232))();
                v143 = *(v31 + 16);

                MEMORY[0x1C68F9740](v143, 0);
                *(v31 + 16) = v65;
                MEMORY[0x1C68F9740](v65, v31);

                goto LABEL_131;
              }

              v116 = makeEntity(for:)(v65);
              goto LABEL_90;
            }

LABEL_91:
            v31 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(&v179);
          v144 = v179 | (v180 << 16);
          if ((v144 & 0xFF0000) == 0x20000)
          {
            goto LABEL_147;
          }

          WORD4(v164) = v179;
          BYTE10(v164) = BYTE2(v144) & 1;
          BYTE11(v164) = 1;
          *&v164 = v63;
          *&v165 = v31;
          BYTE8(v165) = 0;
          v166 = 0uLL;
          *&v168 = 0;
          v167 = v11;
          BYTE8(v168) = 1;
          *&v169 = v162;
          BYTE8(v169) = 0;
          goto LABEL_150;
        }

        v61 = makeEntity(for:)(v58);
      }

      v62 = v61;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_148;
      }

      v163 = a5;
      v44 = *a2;
      v43 = *(a2 + 8);
      v45 = *(a2 + 16);
      v13 = *(a2 + 24);
      v30 = *(a2 + 32);
      v14 = *(a2 + 40);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v46 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v126 = specialized static Entity.entityInfoType(_:)();
        if (v126)
        {
          v47 = (*(v126 + 232))();
          v127 = *(v47 + 16);

          MEMORY[0x1C68F9740](v127, 0);
          *(v47 + 16) = v44;
          MEMORY[0x1C68F9740](v44, v47);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v16 = swift_allocObject();
          *(v16 + 40) = 0;
          swift_weakInit();
          *(v16 + 16) = v43;
          swift_weakAssign();
          v128 = *(v47 + 16);

          *(v16 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v47 + 16));
          v129 = Hasher._finalize()();

          *(v16 + 24) = v129;
          if (v14)
          {
            if (REBindPointBoundComponent())
            {
              v12 = v30;
              v100 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
                return result;
              }

              goto LABEL_143;
            }

LABEL_108:
            v14 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v46 = makeEntity(for:)(v44);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v163 = a5;
    v69 = *a2;
    v68 = *(a2 + 8);
    v17 = *(a2 + 16);
    v13 = *(a2 + 24);
    v30 = *(a2 + 32);
    v14 = *(a2 + 40);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v70 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v96 = specialized static Entity.entityInfoType(_:)();
      if (v96)
      {
        v71 = (*(v96 + 232))();
        v97 = *(v71 + 16);

        MEMORY[0x1C68F9740](v97, 0);
        *(v71 + 16) = v69;
        MEMORY[0x1C68F9740](v69, v71);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v16 = swift_allocObject();
        *(v16 + 40) = 0;
        swift_weakInit();
        *(v16 + 16) = v68;
        swift_weakAssign();
        v98 = *(v71 + 16);

        *(v16 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v71 + 16));
        v99 = Hasher._finalize()();

        *(v16 + 24) = v99;
        if (v14)
        {
          if (REBindPointBoundComponent())
          {
            v12 = v30;
            v100 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v130 = swift_dynamicCastClassUnconditional();
              goto LABEL_107;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v101 = specialized static Entity.entityInfoType(_:)();
                if (v101)
                {
                  v19 = (*(v101 + 232))();
                  v102 = *(v19 + 16);

                  MEMORY[0x1C68F9740](v102, 0);
                  *(v19 + 16) = v13;
                  MEMORY[0x1C68F9740](v13, v19);

                  goto LABEL_78;
                }

                v18 = makeEntity(for:)(v13);
LABEL_8:
                v19 = v18;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v103 = swift_allocObject();
                *(v103 + 40) = 0;
                swift_weakInit();
                *(v103 + 16) = v12;
                swift_weakAssign();
                v104 = *(v19 + 16);

                *(v103 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v19 + 16));
                v105 = Hasher._finalize()();

                *(v103 + 24) = v105;
                v106 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v16, v106, v107, &v181);

                if (!v17)
                {
                  goto LABEL_126;
                }

                if (!REBindPointBoundComponent())
                {
                  v17 = 0;
                  goto LABEL_126;
                }

                v108 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v109 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v17 = v109;
                  goto LABEL_126;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v138 = specialized static Entity.entityInfoType(_:)();
                  if (!v138)
                  {
                    v109 = makeEntity(for:)(v108);
                    goto LABEL_82;
                  }

                  v17 = (*(v138 + 232))();
                  v139 = *(v17 + 16);

                  MEMORY[0x1C68F9740](v139, 0);
                  *(v17 + 16) = v108;
                  MEMORY[0x1C68F9740](v108, v17);

LABEL_126:
                  specialized ActionEventData.action<A>()(&v179);
                  v140 = v179 | (v180 << 16);
                  if ((v140 & 0xFF0000) != 0x20000)
                  {
                    WORD4(v164) = v179;
                    BYTE10(v164) = BYTE2(v140) & 1;
                    BYTE11(v164) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
                    *&v164 = v103;
                    *&v165 = v17;
                    BYTE8(v165) = v153;
                    v166 = vcvtq_f64_f32(v6);
                    *&v167 = v11;
                    *(&v167 + 1) = v155;
                    *&v168 = v5.f32[0];
                    BYTE8(v168) = 0;
                    v137 = v158;
                    v141 = v160;
LABEL_140:
                    *&v169 = v141;
                    goto LABEL_141;
                  }

                  goto LABEL_147;
                }

                goto LABEL_177;
              }

              goto LABEL_171;
            }

LABEL_143:
            v148 = specialized static Entity.entityInfoType(_:)();
            if (v148)
            {
              v14 = (*(v148 + 232))();
              v149 = *(v14 + 16);

              MEMORY[0x1C68F9740](v149, 0);
              *(v14 + 16) = v100;
              MEMORY[0x1C68F9740](v100, v14);

              goto LABEL_145;
            }

            v130 = makeEntity(for:)(v100);
LABEL_107:
            v14 = v130;
LABEL_145:
            v30 = v12;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v150 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v150, v151, &v181);

        specialized ActionEventData.action<A>()(&v179);
        v152 = v179 | (v180 << 16);
        if ((v152 & 0xFF0000) == 0x20000)
        {
          goto LABEL_147;
        }

        WORD4(v164) = v179;
        BYTE10(v164) = BYTE2(v152) & 1;
        BYTE11(v164) = 1;
        *&v164 = v16;
        *&v165 = v14;
        BYTE8(v165) = 0;
        v166 = 0uLL;
        *&v168 = 0;
        v167 = v11;
        BYTE8(v168) = 1;
        *&v169 = 0;
        BYTE8(v169) = 1;
LABEL_150:
        *&v170 = 0;
        BYTE8(v170) = 1;
        v173 = v183;
        v174 = v184;
        v175 = v185;
        v172 = v182;
        v171 = v181;
        v176 = v30;
        goto LABEL_151;
      }

      v70 = makeEntity(for:)(v69);
    }

    v71 = v70;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static AnimationLogger.logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v177[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v177);
    _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = &v185;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v12 = Strong;
            v169 = a5;
            v14 = *a2;
            v13 = *(a2 + 8);
            v16 = *(a2 + 24);
            v15 = *(a2 + 32);
            v17 = *(a2 + 40);
            v5.i32[0] = *(a2 + 56);
            v159 = *(a2 + 72);
            v162 = *(a2 + 64);
            v11 = *(a2 + 80);
            v18 = *(a2 + 88);
            v6 = *(a2 + 96);
            v157 = *(a2 + 104);
            v165 = *(a2 + 48);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v19 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v52 = Strong;
        v169 = a5;
        v54 = *a2;
        v53 = *(a2 + 8);
        v56 = *(a2 + 24);
        v55 = *(a2 + 32);
        v58 = *(a2 + 40);
        v57 = *(a2 + 48);
        v59 = *(a2 + 64);
        v60 = *(a2 + 72);
        v158 = *(a2 + 80);
        v161 = *(a2 + 56);
        v164 = *(a2 + 88);
        v167 = *(a2 + 96);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v61 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v78 = specialized static Entity.entityInfoType(_:)();
          if (v78)
          {
            v62 = (*(v78 + 232))();
            v79 = *(v62 + 16);

            MEMORY[0x1C68F9740](v79, 0);
            *(v62 + 16) = v54;
            MEMORY[0x1C68F9740](v54, v62);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v80 = swift_allocObject();
            *(v80 + 40) = 0;
            swift_weakInit();
            *(v80 + 16) = v53;
            swift_weakAssign();
            v81 = *(v62 + 16);

            *(v80 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v62 + 16));
            v82 = Hasher._finalize()();

            *(v80 + 24) = v82;
            v83 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v55, 0, v58, v83, v84, &v206);

            if (!v59)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v86 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v59 = v86;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              v137 = specialized static Entity.entityInfoType(_:)();
              if (!v137)
              {
                v86 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v59 = (*(v137 + 232))();
              v138 = *(v59 + 16);

              MEMORY[0x1C68F9740](v138, 0);
              *(v59 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v59);
            }

            else
            {
              v59 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v201);
            if (*(&v203 + 1))
            {
              v155 = v201;
              v156 = v57;
              v139 = *(&v201 + 1);
              v170[24] = v202 & 1;
              v171 = v203;
              *&v172 = v204;
              BYTE8(v172) = v205 & 1;
              BYTE9(v172) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
              *&v170[8] = v155;
              *&v170[16] = v139;
              *v170 = v80;
              *&v173 = v59;
              BYTE8(v173) = v158;
              v174 = vcvtq_f64_f32(v60);
              *&v175 = v52;
              *(&v175 + 1) = v161;
              *&v176 = 0xBFF0000000000000;
              BYTE8(v176) = 0;
              v141 = v164;
              v140 = v167;
LABEL_129:
              *&v177 = v141;
              BYTE8(v177) = 0;
              *&v178 = v140;
              BYTE8(v178) = 0;
              v181 = v208;
              v182 = v209;
              v183 = v210;
              v180 = v207;
              v179 = v206;
              v144 = v156;
              goto LABEL_140;
            }

LABEL_150:

            outlined consume of SetEntityPropertyAction<Bool>?(v201, *(&v201 + 1), v202, v203, 0);
            return 0;
          }

          v61 = makeEntity(for:)(v54);
LABEL_32:
          v62 = v61;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v36 = Strong;
        v169 = a5;
        v38 = *a2;
        v37 = *(a2 + 8);
        v40 = *(a2 + 24);
        v39 = *(a2 + 32);
        v42 = *(a2 + 40);
        v41 = *(a2 + 48);
        v43 = *(a2 + 56);
        v44 = *(a2 + 64);
        v160 = *(a2 + 72);
        v163 = *(a2 + 80);
        v166 = *(a2 + 88);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v123 = specialized static Entity.entityInfoType(_:)();
          if (v123)
          {
            v46 = (*(v123 + 232))();
            v124 = *(v46 + 16);

            MEMORY[0x1C68F9740](v124, 0);
            *(v46 + 16) = v38;
            MEMORY[0x1C68F9740](v38, v46);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v125 = swift_allocObject();
            *(v125 + 40) = 0;
            swift_weakInit();
            *(v125 + 16) = v37;
            swift_weakAssign();
            v126 = *(v46 + 16);

            *(v125 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v127 = Hasher._finalize()();

            *(v125 + 24) = v127;
            v128 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v39, 0, v42, v128, v129, &v206);

            if (!v43)
            {
              goto LABEL_138;
            }

            if (REBindPointBoundComponent())
            {
              v130 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v131 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v43 = v131;
                goto LABEL_138;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v149 = specialized static Entity.entityInfoType(_:)();
              if (!v149)
              {
                v131 = makeEntity(for:)(v130);
                goto LABEL_99;
              }

              v43 = (*(v149 + 232))();
              v150 = *(v43 + 16);

              MEMORY[0x1C68F9740](v150, 0);
              *(v43 + 16) = v130;
              MEMORY[0x1C68F9740](v130, v43);
            }

            else
            {
              v43 = 0;
            }

LABEL_138:
            specialized ActionEventData.action<A>()(&v201);
            if (*(&v203 + 1))
            {
              *&v170[8] = v201;
              v170[24] = v202 & 1;
              v171 = v203;
              *&v172 = v204;
              BYTE8(v172) = v205 & 1;
              BYTE9(v172) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
              *v170 = v125;
              *&v173 = v43;
              BYTE8(v173) = v160;
              v174 = vcvtq_f64_f32(v44);
              *&v176 = 0;
              v175 = v36;
              BYTE8(v176) = 1;
              *&v177 = v163;
              BYTE8(v177) = 0;
              *&v178 = v166;
              BYTE8(v178) = 0;
              v181 = v208;
              v182 = v209;
              v183 = v210;
              v180 = v207;
              v179 = v206;
              v144 = v41;
              goto LABEL_140;
            }

            goto LABEL_150;
          }

          v45 = makeEntity(for:)(v38);
        }

        v46 = v45;
        goto LABEL_95;
      }

      v27 = Strong;
      v169 = a5;
      v69 = *a2;
      v63 = *(a2 + 8);
      v70 = *(a2 + 24);
      v65 = *(a2 + 32);
      v71 = *(a2 + 40);
      v11 = *(a2 + 48);
      v33 = *(a2 + 64);
      v5 = *(a2 + 72);
      LOBYTE(v162) = *(a2 + 80);
      v165 = *(a2 + 56);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v72 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v93 = specialized static Entity.entityInfoType(_:)();
      if (v93)
      {
        v73 = (*(v93 + 232))();
        v94 = *(v73 + 16);

        MEMORY[0x1C68F9740](v94, 0);
        *(v73 + 16) = v69;
        MEMORY[0x1C68F9740](v69, v73);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v95 = swift_allocObject();
        *(v95 + 40) = 0;
        swift_weakInit();
        *(v95 + 16) = v63;
        swift_weakAssign();
        v96 = *(v73 + 16);

        *(v95 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v73 + 16));
        v97 = Hasher._finalize()();

        *(v95 + 24) = v97;
        v98 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v65, 0, v71, v98, v99, &v206);

        if (!v33)
        {
          goto LABEL_122;
        }

        if (REBindPointBoundComponent())
        {
          v100 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v101 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v33 = v101;
            goto LABEL_122;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v142 = specialized static Entity.entityInfoType(_:)();
          if (!v142)
          {
            v101 = makeEntity(for:)(v100);
            goto LABEL_66;
          }

          v33 = (*(v142 + 232))();
          v143 = *(v33 + 16);

          MEMORY[0x1C68F9740](v143, 0);
          *(v33 + 16) = v100;
          MEMORY[0x1C68F9740](v100, v33);
        }

        else
        {
          v33 = 0;
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v201);
        if (*(&v203 + 1))
        {
          *&v170[8] = v201;
          v170[24] = v202 & 1;
          v171 = v203;
          *&v172 = v204;
          BYTE8(v172) = v205 & 1;
          BYTE9(v172) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
          *v170 = v95;
          *&v173 = v33;
          BYTE8(v173) = v162;
          v174 = vcvtq_f64_f32(v5);
          *&v175 = v27;
          *(&v175 + 1) = v165;
          *&v176 = 0xBFF0000000000000;
          BYTE8(v176) = 0;
          *&v177 = 0xBFF0000000000000;
          BYTE8(v177) = 0;
          *&v178 = 0xBFF0000000000000;
          BYTE8(v178) = 0;
          v181 = v208;
          v182 = v209;
          v183 = v210;
          v180 = v207;
          v179 = v206;
          v144 = v11;
LABEL_140:
          v184 = v144;
          (v169)(v170);

          v197 = v181;
          v198 = v182;
          v199 = v183;
          v200 = v184;
          v193 = v177;
          v194 = v178;
          v195 = v179;
          v196 = v180;
          v189 = v173;
          v190 = v174;
          v191 = v175;
          v192 = v176;
          v185 = *v170;
          v186 = *&v170[16];
          v187 = v171;
          v188 = v172;
LABEL_149:
          outlined destroy of BodyTrackingComponent?(&v185, &_s17RealityFoundation11ActionEventVyAA09PlayAudioC0VGMd, &_s17RealityFoundation11ActionEventVyAA09PlayAudioC0VGMR);
          return 0;
        }

        goto LABEL_150;
      }

      v72 = makeEntity(for:)(v69);
LABEL_38:
      v73 = v72;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v27 = Strong;
        v169 = a5;
        v29 = *a2;
        v28 = *(a2 + 8);
        v30 = *(a2 + 24);
        v31 = *(a2 + 40);
        v32 = *(a2 + 48);
        v33 = *(a2 + 56);
        v168 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v34 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v116 = specialized static Entity.entityInfoType(_:)();
          if (v116)
          {
            v35 = (*(v116 + 232))();
            v117 = *(v35 + 16);

            MEMORY[0x1C68F9740](v117, 0);
            *(v35 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v35);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v69 = swift_allocObject();
            *(v69 + 40) = 0;
            swift_weakInit();
            *(v69 + 16) = v28;
            swift_weakAssign();
            v118 = *(v35 + 16);

            *(v69 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v35 + 16));
            v119 = Hasher._finalize()();

            *(v69 + 24) = v119;
            v120 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v31, v120, v121, &v206);

            if (v33)
            {
              if (REBindPointBoundComponent())
              {
                v71 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_131;
              }

              goto LABEL_91;
            }

            goto LABEL_133;
          }

          v34 = makeEntity(for:)(v29);
        }

        v35 = v34;
        goto LABEL_86;
      }

      v27 = Strong;
      v169 = a5;
      v64 = *a2;
      v63 = *(a2 + 8);
      v65 = *(a2 + 24);
      v66 = *(a2 + 40);
      v32 = *(a2 + 48);
      v33 = *(a2 + 56);
      v168 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v67 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v87 = specialized static Entity.entityInfoType(_:)();
        if (v87)
        {
          v68 = (*(v87 + 232))();
          v88 = *(v68 + 16);

          MEMORY[0x1C68F9740](v88, 0);
          *(v68 + 16) = v64;
          MEMORY[0x1C68F9740](v64, v68);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v69 = swift_allocObject();
          *(v69 + 40) = 0;
          swift_weakInit();
          *(v69 + 16) = v63;
          swift_weakAssign();
          v89 = *(v68 + 16);

          *(v69 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v68 + 16));
          v90 = Hasher._finalize()();

          *(v69 + 24) = v90;
          v91 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v66, v91, v92, &v206);

          if (v33)
          {
            if (REBindPointBoundComponent())
            {
              v71 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v122 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v33 = v122;
                goto LABEL_133;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_131:
              v147 = specialized static Entity.entityInfoType(_:)();
              if (v147)
              {
                v33 = (*(v147 + 232))();
                v148 = *(v33 + 16);

                MEMORY[0x1C68F9740](v148, 0);
                *(v33 + 16) = v71;
                MEMORY[0x1C68F9740](v71, v33);

                goto LABEL_133;
              }

              v122 = makeEntity(for:)(v71);
              goto LABEL_90;
            }

LABEL_91:
            v33 = 0;
          }

LABEL_133:
          specialized ActionEventData.action<A>()(&v201);
          if (!*(&v203 + 1))
          {
            goto LABEL_150;
          }

          *&v170[8] = v201;
          v170[24] = v202 & 1;
          v171 = v203;
          *&v172 = v204;
          BYTE8(v172) = v205 & 1;
          BYTE9(v172) = 1;
          *v170 = v69;
          *&v173 = v33;
          BYTE8(v173) = 0;
          v174 = 0uLL;
          *&v176 = 0;
          v175 = v27;
          BYTE8(v176) = 1;
          *&v177 = v168;
          BYTE8(v177) = 0;
          *&v178 = 0;
          BYTE8(v178) = 1;
          v181 = v208;
          v182 = v209;
          v183 = v210;
          v180 = v207;
          v179 = v206;
          v184 = v32;
          (v169)(v170);
          goto LABEL_148;
        }

        v67 = makeEntity(for:)(v64);
      }

      v68 = v67;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v12 = Strong;
      v48 = *a2;
      v47 = *(a2 + 8);
      v49 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = *(a2 + 40);
      v169 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v50 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v132 = specialized static Entity.entityInfoType(_:)();
        if (v132)
        {
          v51 = (*(v132 + 232))();
          v133 = *(v51 + 16);

          MEMORY[0x1C68F9740](v133, 0);
          *(v51 + 16) = v48;
          MEMORY[0x1C68F9740](v48, v51);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v17 = swift_allocObject();
          *(v17 + 40) = 0;
          swift_weakInit();
          *(v17 + 16) = v47;
          swift_weakAssign();
          v134 = *(v51 + 16);

          *(v17 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v51 + 16));
          v135 = Hasher._finalize()();

          *(v17 + 24) = v135;
          if (v15)
          {
            if (REBindPointBoundComponent())
            {
              v13 = a5;
              v106 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_143;
            }

LABEL_108:
            v15 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v50 = makeEntity(for:)(v48);
      }

      v51 = v50;
      goto LABEL_103;
    }

    v12 = Strong;
    v75 = *a2;
    v74 = *(a2 + 8);
    v18 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = *(a2 + 40);
    v169 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v76 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v102 = specialized static Entity.entityInfoType(_:)();
      if (v102)
      {
        v77 = (*(v102 + 232))();
        v103 = *(v77 + 16);

        MEMORY[0x1C68F9740](v103, 0);
        *(v77 + 16) = v75;
        MEMORY[0x1C68F9740](v75, v77);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v17 = swift_allocObject();
        *(v17 + 40) = 0;
        swift_weakInit();
        *(v17 + 16) = v74;
        swift_weakAssign();
        v104 = *(v77 + 16);

        *(v17 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v77 + 16));
        v105 = Hasher._finalize()();

        *(v17 + 24) = v105;
        if (v15)
        {
          if (REBindPointBoundComponent())
          {
            v13 = a5;
            v106 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v136 = swift_dynamicCastClassUnconditional();
              goto LABEL_107;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v107 = specialized static Entity.entityInfoType(_:)();
                if (v107)
                {
                  v20 = (*(v107 + 232))();
                  v108 = *(v20 + 16);

                  MEMORY[0x1C68F9740](v108, 0);
                  *(v20 + 16) = v14;
                  MEMORY[0x1C68F9740](v14, v20);

                  goto LABEL_78;
                }

                v19 = makeEntity(for:)(v14);
LABEL_8:
                v20 = v19;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v109 = swift_allocObject();
                *(v109 + 40) = 0;
                swift_weakInit();
                *(v109 + 16) = v13;
                swift_weakAssign();
                v110 = *(v20 + 16);

                *(v109 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v20 + 16));
                v111 = Hasher._finalize()();

                *(v109 + 24) = v111;
                v112 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v15, 0, v17, v112, v113, &v206);

                if (!v18)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v18 = 0;
                  goto LABEL_127;
                }

                v114 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v115 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v18 = v115;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v145 = specialized static Entity.entityInfoType(_:)();
                  if (!v145)
                  {
                    v115 = makeEntity(for:)(v114);
                    goto LABEL_82;
                  }

                  v18 = (*(v145 + 232))();
                  v146 = *(v18 + 16);

                  MEMORY[0x1C68F9740](v146, 0);
                  *(v18 + 16) = v114;
                  MEMORY[0x1C68F9740](v114, v18);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v201);
                  if (*(&v203 + 1))
                  {
                    v156 = v11;
                    *&v170[8] = v201;
                    v170[24] = v202 & 1;
                    v171 = v203;
                    *&v172 = v204;
                    BYTE8(v172) = v205 & 1;
                    BYTE9(v172) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
                    *v170 = v109;
                    *&v173 = v18;
                    BYTE8(v173) = v157;
                    v174 = vcvtq_f64_f32(v6);
                    *&v175 = v12;
                    *(&v175 + 1) = v159;
                    *&v176 = v5.f32[0];
                    BYTE8(v176) = 0;
                    v140 = v162;
                    v141 = v165;
                    goto LABEL_129;
                  }

                  goto LABEL_150;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_143:
            v151 = specialized static Entity.entityInfoType(_:)();
            if (v151)
            {
              v15 = (*(v151 + 232))();
              v152 = *(v15 + 16);

              MEMORY[0x1C68F9740](v152, 0);
              *(v15 + 16) = v106;
              MEMORY[0x1C68F9740](v106, v15);

              goto LABEL_145;
            }

            v136 = makeEntity(for:)(v106);
LABEL_107:
            v15 = v136;
LABEL_145:
            a5 = v13;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v153 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v14, v153, v154, &v206);

        specialized ActionEventData.action<A>()(&v201);
        if (!*(&v203 + 1))
        {
          goto LABEL_150;
        }

        *&v170[8] = v201;
        v170[24] = v202 & 1;
        v171 = v203;
        *&v172 = v204;
        BYTE8(v172) = v205 & 1;
        BYTE9(v172) = 1;
        *v170 = v17;
        *&v173 = v15;
        BYTE8(v173) = 0;
        v174 = 0uLL;
        *&v176 = 0;
        v175 = v12;
        BYTE8(v176) = 1;
        *&v177 = 0;
        BYTE8(v177) = 1;
        *&v178 = 0;
        BYTE8(v178) = 1;
        v181 = v208;
        v182 = v209;
        v183 = v210;
        v180 = v207;
        v179 = v206;
        v184 = v169;
        (a5)(v170);
LABEL_148:

        v197 = v181;
        v198 = v182;
        v199 = v183;
        v200 = v184;
        v193 = v177;
        v194 = v178;
        v195 = v179;
        v196 = v180;
        v189 = v173;
        v190 = v174;
        v191 = v175;
        v192 = v176;
        v185 = *v170;
        v186 = *&v170[16];
        v187 = v171;
        v188 = v172;
        goto LABEL_149;
      }

      v76 = makeEntity(for:)(v75);
    }

    v77 = v76;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static AnimationLogger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v185 = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, &v185);
    _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), void (*a6)(_OWORD *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            a6 = a5;
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v164 = *(a2 + 64);
            v167 = *(a2 + 48);
            v161 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v159 = *(a2 + 104);
            v169 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v20 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v51 = a5;
        v53 = *a2;
        v52 = *(a2 + 8);
        v55 = *(a2 + 24);
        v54 = *(a2 + 32);
        v56 = *(a2 + 40);
        v57 = *(a2 + 64);
        v58 = *(a2 + 72);
        v160 = *(a2 + 80);
        v163 = *(a2 + 88);
        v166 = *(a2 + 56);
        v168 = *(a2 + 96);
        v169 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v59 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v76 = specialized static Entity.entityInfoType(_:)();
          if (v76)
          {
            v60 = (*(v76 + 232))();
            v77 = *(v60 + 16);

            MEMORY[0x1C68F9740](v77, 0);
            *(v60 + 16) = v53;
            MEMORY[0x1C68F9740](v53, v60);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v78 = swift_allocObject();
            *(v78 + 40) = 0;
            swift_weakInit();
            *(v78 + 16) = v52;
            swift_weakAssign();
            v79 = *(v60 + 16);

            *(v78 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v60 + 16));
            v80 = Hasher._finalize()();

            *(v78 + 24) = v80;
            v81 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v54, 0, v56, v81, v82, &v181);

            if (v57)
            {
              v83 = v51;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v85 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }

                  v136 = specialized static Entity.entityInfoType(_:)();
                  if (v136)
                  {
                    v57 = (*(v136 + 232))();
                    v137 = *(v57 + 16);

                    MEMORY[0x1C68F9740](v137, 0);
                    *(v57 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v57);

                    goto LABEL_120;
                  }

                  v85 = makeEntity(for:)(Entity);
                }

                v57 = v85;
              }

              else
              {
                v57 = 0;
              }
            }

            else
            {
              v83 = v51;
            }

LABEL_120:
            specialized ActionEventData.action<A>()(&v174);
            if (!v176)
            {
              goto LABEL_154;
            }

            __src[5] = v178;
            __src[6] = v179;
            LOBYTE(__src[7]) = v180;
            __src[1] = v174;
            __src[2] = v175;
            __src[3] = v176;
            __src[4] = v177;
            v138 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
            *(&__src[16] + 8) = v184;
            *(&__src[17] + 8) = v185;
            *(&__src[8] + 8) = vcvtq_f64_f32(v58);
            v139 = v181;
            *(&__src[14] + 8) = v182;
            *(&__src[15] + 8) = v183;
            BYTE1(__src[7]) = v138 & 1;
            *&__src[0] = v78;
            *(&__src[7] + 1) = v57;
            LOBYTE(__src[8]) = v160;
            *(&__src[9] + 1) = v13;
            *&__src[10] = v166;
            *(&__src[10] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[11]) = 0;
            v140 = v163;
            goto LABEL_143;
          }

          v59 = makeEntity(for:)(v53);
LABEL_32:
          v60 = v59;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v36 = a5;
        v38 = *a2;
        v37 = *(a2 + 8);
        v40 = *(a2 + 24);
        v39 = *(a2 + 32);
        v41 = *(a2 + 40);
        v42 = *(a2 + 56);
        v43 = *(a2 + 64);
        v162 = *(a2 + 72);
        v165 = *(a2 + 80);
        v168 = *(a2 + 88);
        v169 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v44 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          v122 = specialized static Entity.entityInfoType(_:)();
          if (v122)
          {
            v45 = (*(v122 + 232))();
            v123 = *(v45 + 16);

            MEMORY[0x1C68F9740](v123, 0);
            *(v45 + 16) = v38;
            MEMORY[0x1C68F9740](v38, v45);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v124 = swift_allocObject();
            *(v124 + 40) = 0;
            swift_weakInit();
            *(v124 + 16) = v37;
            swift_weakAssign();
            v125 = *(v45 + 16);

            *(v124 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v45 + 16));
            v126 = Hasher._finalize()();

            *(v124 + 24) = v126;
            v127 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v39, 0, v41, v127, v128, &v181);

            if (v42)
            {
              v83 = v36;
              if (REBindPointBoundComponent())
              {
                v129 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v130 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_183:
                    __break(1u);
                    goto LABEL_184;
                  }

                  v150 = specialized static Entity.entityInfoType(_:)();
                  if (v150)
                  {
                    v42 = (*(v150 + 232))();
                    v151 = *(v42 + 16);

                    MEMORY[0x1C68F9740](v151, 0);
                    *(v42 + 16) = v129;
                    MEMORY[0x1C68F9740](v129, v42);

                    goto LABEL_141;
                  }

                  v130 = makeEntity(for:)(v129);
                }

                v42 = v130;
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v83 = v36;
            }

LABEL_141:
            specialized ActionEventData.action<A>()(&v174);
            if (!v176)
            {
              goto LABEL_154;
            }

            __src[5] = v178;
            __src[6] = v179;
            LOBYTE(__src[7]) = v180;
            __src[1] = v174;
            __src[2] = v175;
            __src[3] = v176;
            __src[4] = v177;
            v152 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
            *(&__src[16] + 8) = v184;
            *(&__src[17] + 8) = v185;
            *(&__src[8] + 8) = vcvtq_f64_f32(v43);
            v139 = v181;
            *(&__src[14] + 8) = v182;
            *(&__src[15] + 8) = v183;
            BYTE1(__src[7]) = v152 & 1;
            *&__src[0] = v124;
            *(&__src[7] + 1) = v42;
            LOBYTE(__src[8]) = v162;
            __src[10] = 0uLL;
            *(&__src[9] + 1) = v13;
            LOBYTE(__src[11]) = 1;
            v140 = v165;
LABEL_143:
            *(&__src[11] + 1) = v140;
            LOBYTE(__src[12]) = 0;
            v144 = v168;
            goto LABEL_144;
          }

          v44 = makeEntity(for:)(v38);
        }

        v45 = v44;
        goto LABEL_95;
      }

      a6 = a5;
      v67 = *a2;
      v61 = *(a2 + 8);
      v68 = *(a2 + 24);
      v63 = *(a2 + 32);
      v69 = *(a2 + 40);
      v33 = *(a2 + 64);
      v167 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v164) = *(a2 + 80);
      v169 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v70 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      v92 = specialized static Entity.entityInfoType(_:)();
      if (v92)
      {
        v71 = (*(v92 + 232))();
        v93 = *(v71 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v71 + 16) = v67;
        MEMORY[0x1C68F9740](v67, v71);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v94 = swift_allocObject();
        *(v94 + 40) = 0;
        swift_weakInit();
        *(v94 + 16) = v61;
        swift_weakAssign();
        v95 = *(v71 + 16);

        *(v94 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v71 + 16));
        v96 = Hasher._finalize()();

        *(v94 + 24) = v96;
        v97 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v63, 0, v69, v97, v98, &v181);

        if (v33)
        {
          v83 = a6;
          if (REBindPointBoundComponent())
          {
            v99 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v100 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
                goto LABEL_182;
              }

              v141 = specialized static Entity.entityInfoType(_:)();
              if (v141)
              {
                v33 = (*(v141 + 232))();
                v142 = *(v33 + 16);

                MEMORY[0x1C68F9740](v142, 0);
                *(v33 + 16) = v99;
                MEMORY[0x1C68F9740](v99, v33);

                goto LABEL_126;
              }

              v100 = makeEntity(for:)(v99);
            }

            v33 = v100;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v83 = a6;
        }

LABEL_126:
        specialized ActionEventData.action<A>()(&v174);
        if (!v176)
        {
          goto LABEL_154;
        }

        __src[5] = v178;
        __src[6] = v179;
        LOBYTE(__src[7]) = v180;
        __src[1] = v174;
        __src[2] = v175;
        __src[3] = v176;
        __src[4] = v177;
        v143 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
        *(&__src[16] + 8) = v184;
        *(&__src[17] + 8) = v185;
        *(&__src[8] + 8) = vcvtq_f64_f32(v6);
        v139 = v181;
        *(&__src[14] + 8) = v182;
        *(&__src[15] + 8) = v183;
        BYTE1(__src[7]) = v143 & 1;
        *&__src[0] = v94;
        *(&__src[7] + 1) = v33;
        LOBYTE(__src[8]) = v164;
        *(&__src[9] + 1) = v13;
        *&__src[10] = v167;
        v144 = 0xBFF0000000000000;
        *(&__src[10] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[11]) = 0;
        *(&__src[11] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[12]) = 0;
LABEL_144:
        *(&__src[12] + 1) = v144;
        LOBYTE(__src[13]) = 0;
        goto LABEL_145;
      }

      v70 = makeEntity(for:)(v67);
LABEL_38:
      v71 = v70;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v170 = a5;
        v29 = *a2;
        v28 = *(a2 + 8);
        v30 = *(a2 + 24);
        v31 = *(a2 + 40);
        v32 = *(a2 + 48);
        v33 = *(a2 + 56);
        v169 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v34 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v115 = specialized static Entity.entityInfoType(_:)();
          if (v115)
          {
            v35 = (*(v115 + 232))();
            v116 = *(v35 + 16);

            MEMORY[0x1C68F9740](v116, 0);
            *(v35 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v35);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v67 = swift_allocObject();
            *(v67 + 40) = 0;
            swift_weakInit();
            *(v67 + 16) = v28;
            swift_weakAssign();
            v117 = *(v35 + 16);

            *(v67 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v35 + 16));
            v118 = Hasher._finalize()();

            *(v67 + 24) = v118;
            v119 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v31, v119, v120, &v181);

            if (!v33)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v69 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_182:
                __break(1u);
                goto LABEL_183;
              }

LABEL_134:
              v148 = specialized static Entity.entityInfoType(_:)();
              if (!v148)
              {
                v121 = makeEntity(for:)(v69);
                goto LABEL_90;
              }

              v33 = (*(v148 + 232))();
              v149 = *(v33 + 16);

              MEMORY[0x1C68F9740](v149, 0);
              *(v33 + 16) = v69;
              MEMORY[0x1C68F9740](v69, v33);

LABEL_136:
              specialized ActionEventData.action<A>()(&v174);
              if (v176)
              {
                __src[5] = v178;
                __src[6] = v179;
                __src[1] = v174;
                __src[2] = v175;
                __src[3] = v176;
                __src[4] = v177;
                *(&__src[16] + 8) = v184;
                *(&__src[17] + 8) = v185;
                *(&__src[14] + 8) = v182;
                *(&__src[15] + 8) = v183;
                LOBYTE(__src[7]) = v180;
                BYTE1(__src[7]) = 1;
                *&__src[0] = v67;
                *(&__src[7] + 1) = v33;
                LOBYTE(__src[8]) = 0;
                *(&__src[8] + 1) = 0;
                *&__src[9] = 0;
                __src[10] = 0uLL;
                *(&__src[9] + 1) = v13;
                LOBYTE(__src[11]) = 1;
                *(&__src[11] + 1) = v169;
                LOBYTE(__src[12]) = 0;
                *(&__src[12] + 1) = 0;
                LOBYTE(__src[13]) = 1;
                *(&__src[13] + 8) = v181;
                *(&__src[18] + 1) = v32;
                v170(__src);
LABEL_153:

                memcpy(__dst, __src, sizeof(__dst));
                v157 = &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vy0A3Kit9TransformVGGMd;
                v158 = &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vy0A3Kit9TransformVGGMR;
LABEL_155:
                outlined destroy of BodyTrackingComponent?(__dst, v157, v158);
                return 0;
              }

              goto LABEL_154;
            }

            goto LABEL_91;
          }

          v34 = makeEntity(for:)(v29);
        }

        v35 = v34;
        goto LABEL_86;
      }

      v170 = a5;
      v62 = *a2;
      v61 = *(a2 + 8);
      v63 = *(a2 + 24);
      v64 = *(a2 + 40);
      v32 = *(a2 + 48);
      v33 = *(a2 + 56);
      v169 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v65 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v86 = specialized static Entity.entityInfoType(_:)();
        if (v86)
        {
          v66 = (*(v86 + 232))();
          v87 = *(v66 + 16);

          MEMORY[0x1C68F9740](v87, 0);
          *(v66 + 16) = v62;
          MEMORY[0x1C68F9740](v62, v66);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v67 = swift_allocObject();
          *(v67 + 40) = 0;
          swift_weakInit();
          *(v67 + 16) = v61;
          swift_weakAssign();
          v88 = *(v66 + 16);

          *(v67 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v66 + 16));
          v89 = Hasher._finalize()();

          *(v67 + 24) = v89;
          v90 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v64, v90, v91, &v181);

          if (!v33)
          {
            goto LABEL_136;
          }

          if (REBindPointBoundComponent())
          {
            v69 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v121 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v33 = v121;
              goto LABEL_136;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_134;
          }

LABEL_91:
          v33 = 0;
          goto LABEL_136;
        }

        v65 = makeEntity(for:)(v62);
      }

      v66 = v65;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v47 = *a2;
      v46 = *(a2 + 8);
      v48 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v171 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v49 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v131 = specialized static Entity.entityInfoType(_:)();
        if (v131)
        {
          v50 = (*(v131 + 232))();
          v132 = *(v50 + 16);

          MEMORY[0x1C68F9740](v132, 0);
          *(v50 + 16) = v47;
          MEMORY[0x1C68F9740](v47, v50);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v18 = swift_allocObject();
          *(v18 + 40) = 0;
          swift_weakInit();
          *(v18 + 16) = v46;
          swift_weakAssign();
          v133 = *(v50 + 16);

          *(v18 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v50 + 16));
          v134 = Hasher._finalize()();

          *(v18 + 24) = v134;
          if (!v16)
          {
            goto LABEL_151;
          }

          if (REBindPointBoundComponent())
          {
            v14 = a5;
            v105 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_184:
              __break(1u);
              return result;
            }

            goto LABEL_148;
          }

          goto LABEL_108;
        }

        v49 = makeEntity(for:)(v47);
      }

      v50 = v49;
      goto LABEL_103;
    }

    v73 = *a2;
    v72 = *(a2 + 8);
    v19 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v171 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v74 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v101 = specialized static Entity.entityInfoType(_:)();
      if (v101)
      {
        v75 = (*(v101 + 232))();
        v102 = *(v75 + 16);

        MEMORY[0x1C68F9740](v102, 0);
        *(v75 + 16) = v73;
        MEMORY[0x1C68F9740](v73, v75);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v18 = swift_allocObject();
        *(v18 + 40) = 0;
        swift_weakInit();
        *(v18 + 16) = v72;
        swift_weakAssign();
        v103 = *(v75 + 16);

        *(v18 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v75 + 16));
        v104 = Hasher._finalize()();

        *(v18 + 24) = v104;
        if (!v16)
        {
          goto LABEL_151;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a5;
          v105 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v135 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v106 = specialized static Entity.entityInfoType(_:)();
              if (v106)
              {
                v21 = (*(v106 + 232))();
                v107 = *(v21 + 16);

                MEMORY[0x1C68F9740](v107, 0);
                *(v21 + 16) = v15;
                MEMORY[0x1C68F9740](v15, v21);

                goto LABEL_78;
              }

              v20 = makeEntity(for:)(v15);
LABEL_8:
              v21 = v20;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v108 = swift_allocObject();
              *(v108 + 40) = 0;
              swift_weakInit();
              *(v108 + 16) = v14;
              swift_weakAssign();
              v109 = *(v21 + 16);

              *(v108 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v21 + 16));
              v110 = Hasher._finalize()();

              *(v108 + 24) = v110;
              v111 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v111, v112, &v181);

              if (!v19)
              {
                v83 = a6;
                goto LABEL_131;
              }

              v83 = a6;
              if (!REBindPointBoundComponent())
              {
                v19 = 0;
                goto LABEL_131;
              }

              v113 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v114 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v19 = v114;
                goto LABEL_131;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v145 = specialized static Entity.entityInfoType(_:)();
                if (!v145)
                {
                  v114 = makeEntity(for:)(v113);
                  goto LABEL_82;
                }

                v19 = (*(v145 + 232))();
                v146 = *(v19 + 16);

                MEMORY[0x1C68F9740](v146, 0);
                *(v19 + 16) = v113;
                MEMORY[0x1C68F9740](v113, v19);

LABEL_131:
                specialized ActionEventData.action<A>()(&v174);
                if (v176)
                {
                  __src[5] = v178;
                  __src[6] = v179;
                  LOBYTE(__src[7]) = v180;
                  __src[1] = v174;
                  __src[2] = v175;
                  __src[3] = v176;
                  __src[4] = v177;
                  v147 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR);
                  *(&__src[16] + 8) = v184;
                  *(&__src[17] + 8) = v185;
                  *(&__src[8] + 8) = vcvtq_f64_f32(v7);
                  *(&__src[10] + 1) = v6.f32[0];
                  v139 = v181;
                  *(&__src[14] + 8) = v182;
                  BYTE1(__src[7]) = v147 & 1;
                  *&__src[0] = v108;
                  *(&__src[7] + 1) = v19;
                  LOBYTE(__src[8]) = v159;
                  *(&__src[9] + 1) = v13;
                  *&__src[10] = v161;
                  LOBYTE(__src[11]) = 0;
                  *(&__src[11] + 1) = v167;
                  LOBYTE(__src[12]) = 0;
                  *(&__src[12] + 1) = v164;
                  LOBYTE(__src[13]) = 0;
                  *(&__src[15] + 8) = v183;
LABEL_145:
                  *(&__src[13] + 8) = v139;
                  *(&__src[18] + 1) = v169;
                  v83(__src);
                  goto LABEL_153;
                }

LABEL_154:

                __dst[4] = v178;
                __dst[5] = v179;
                LOBYTE(__dst[6]) = v180;
                __dst[0] = v174;
                __dst[1] = v175;
                __dst[2] = v176;
                __dst[3] = v177;
                v157 = &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGSgMd;
                v158 = &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGSgMR;
                goto LABEL_155;
              }

              goto LABEL_181;
            }

            goto LABEL_175;
          }

LABEL_148:
          v153 = specialized static Entity.entityInfoType(_:)();
          if (v153)
          {
            v16 = (*(v153 + 232))();
            v154 = *(v16 + 16);

            MEMORY[0x1C68F9740](v154, 0);
            *(v16 + 16) = v105;
            MEMORY[0x1C68F9740](v105, v16);

            goto LABEL_150;
          }

          v135 = makeEntity(for:)(v105);
LABEL_107:
          v16 = v135;
LABEL_150:
          a5 = v14;
LABEL_151:
          v155 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v155, v156, &v181);

          specialized ActionEventData.action<A>()(&v174);
          if (v176)
          {
            __src[5] = v178;
            __src[6] = v179;
            __src[1] = v174;
            __src[2] = v175;
            __src[3] = v176;
            __src[4] = v177;
            *(&__src[16] + 8) = v184;
            *(&__src[17] + 8) = v185;
            *(&__src[14] + 8) = v182;
            *(&__src[15] + 8) = v183;
            LOBYTE(__src[7]) = v180;
            BYTE1(__src[7]) = 1;
            *&__src[0] = v18;
            *(&__src[7] + 1) = v16;
            LOBYTE(__src[8]) = 0;
            *(&__src[8] + 1) = 0;
            *&__src[9] = 0;
            __src[10] = 0uLL;
            *(&__src[9] + 1) = v13;
            LOBYTE(__src[11]) = 1;
            *(&__src[11] + 1) = 0;
            LOBYTE(__src[12]) = 1;
            *(&__src[12] + 1) = 0;
            LOBYTE(__src[13]) = 1;
            *(&__src[13] + 8) = v181;
            *(&__src[18] + 1) = v171;
            a5(__src);
            goto LABEL_153;
          }

          goto LABEL_154;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_151;
      }

      v74 = makeEntity(for:)(v73);
    }

    v75 = v74;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static AnimationLogger.logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&__dst[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v184 = *(a2 + 64);
            v187 = *(a2 + 48);
            v181 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v178 = *(a2 + 104);
            v189 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v20 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v52 = Strong;
        v54 = *a2;
        v53 = *(a2 + 8);
        v56 = *(a2 + 24);
        v55 = *(a2 + 32);
        v57 = *(a2 + 40);
        v58 = *(a2 + 64);
        v59 = *(a2 + 72);
        v179 = *(a2 + 80);
        v183 = *(a2 + 88);
        v186 = *(a2 + 56);
        v188 = *(a2 + 96);
        v189 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v60 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v77 = specialized static Entity.entityInfoType(_:)();
          if (v77)
          {
            v61 = (*(v77 + 232))();
            v78 = *(v61 + 16);

            MEMORY[0x1C68F9740](v78, 0);
            *(v61 + 16) = v54;
            MEMORY[0x1C68F9740](v54, v61);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v79 = swift_allocObject();
            *(v79 + 40) = 0;
            swift_weakInit();
            *(v79 + 16) = v53;
            swift_weakAssign();
            v80 = *(v61 + 16);

            *(v79 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v61 + 16));
            v81 = Hasher._finalize()();

            *(v79 + 24) = v81;
            v82 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v55, 0, v57, v82, v83, &v211);

            if (v58)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v85 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_174:
                    __break(1u);
                    goto LABEL_175;
                  }

                  v136 = specialized static Entity.entityInfoType(_:)();
                  if (v136)
                  {
                    v58 = (*(v136 + 232))();
                    v137 = *(v58 + 16);

                    MEMORY[0x1C68F9740](v137, 0);
                    *(v58 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v58);

                    goto LABEL_116;
                  }

                  v85 = makeEntity(for:)(Entity);
                }

                v58 = v85;
              }

              else
              {
                v58 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v207);
            v138 = *(&v209 + 1);
            if (!*(&v209 + 1))
            {
              goto LABEL_150;
            }

            v139 = v207;
            v140 = v208;
            v190 = v52;
            v195 = a5;
            v141 = v209;
            v142 = v210;
            v143 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
            *&v201[8] = vcvtq_f64_f32(v59);
            v144 = v211;
            *&v205[24] = v212;
            *&v205[40] = v213;
            *&v205[56] = v214;
            *&v205[72] = v215;
            v197[24] = v140 & 1;
            *&v198 = v141;
            *(&v198 + 1) = v138;
            v199 = v142;
            LOBYTE(v200) = v143 & 1;
            *&v197[8] = v139;
            *v197 = v79;
            *(&v200 + 1) = v58;
            v201[0] = v179;
            *&v201[24] = v190;
            *&v202 = v186;
            *(&v202 + 1) = 0xBFF0000000000000;
            LOBYTE(v203) = 0;
            v145 = v183;
            goto LABEL_139;
          }

          v60 = makeEntity(for:)(v54);
LABEL_32:
          v61 = v60;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v37 = Strong;
        v39 = *a2;
        v38 = *(a2 + 8);
        v41 = *(a2 + 24);
        v40 = *(a2 + 32);
        v42 = *(a2 + 40);
        v43 = *(a2 + 56);
        v44 = *(a2 + 64);
        v182 = *(a2 + 72);
        v185 = *(a2 + 80);
        v188 = *(a2 + 88);
        v189 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v122 = specialized static Entity.entityInfoType(_:)();
          if (v122)
          {
            v46 = (*(v122 + 232))();
            v123 = *(v46 + 16);

            MEMORY[0x1C68F9740](v123, 0);
            *(v46 + 16) = v39;
            MEMORY[0x1C68F9740](v39, v46);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v124 = swift_allocObject();
            *(v124 + 40) = 0;
            swift_weakInit();
            *(v124 + 16) = v38;
            swift_weakAssign();
            v125 = *(v46 + 16);

            *(v124 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v126 = Hasher._finalize()();

            *(v124 + 24) = v126;
            v127 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v40, 0, v42, v127, v128, &v211);

            if (v43)
            {
              if (REBindPointBoundComponent())
              {
                v129 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v130 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  v165 = specialized static Entity.entityInfoType(_:)();
                  if (v165)
                  {
                    v43 = (*(v165 + 232))();
                    v166 = *(v43 + 16);

                    MEMORY[0x1C68F9740](v166, 0);
                    *(v43 + 16) = v129;
                    MEMORY[0x1C68F9740](v129, v43);

                    goto LABEL_137;
                  }

                  v130 = makeEntity(for:)(v129);
                }

                v43 = v130;
              }

              else
              {
                v43 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v207);
            v167 = *(&v209 + 1);
            if (!*(&v209 + 1))
            {
              goto LABEL_150;
            }

            v180 = v207;
            v193 = v37;
            v195 = a5;
            v168 = *(&v207 + 1);
            v169 = v208;
            v170 = v209;
            v171 = v210;
            v172 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
            *&v201[8] = vcvtq_f64_f32(v44);
            v144 = v211;
            *&v205[24] = v212;
            *&v205[40] = v213;
            *&v205[56] = v214;
            *&v205[72] = v215;
            v197[24] = v169 & 1;
            *&v198 = v170;
            *(&v198 + 1) = v167;
            v199 = v171;
            LOBYTE(v200) = v172 & 1;
            *&v197[8] = v180;
            *&v197[16] = v168;
            *v197 = v124;
            *(&v200 + 1) = v43;
            v201[0] = v182;
            v202 = 0uLL;
            *&v201[24] = v193;
            LOBYTE(v203) = 1;
            v145 = v185;
LABEL_139:
            *(&v203 + 1) = v145;
            LOBYTE(v204) = 0;
            v154 = v188;
            goto LABEL_140;
          }

          v45 = makeEntity(for:)(v39);
        }

        v46 = v45;
        goto LABEL_95;
      }

      v28 = Strong;
      v68 = *a2;
      v62 = *(a2 + 8);
      v69 = *(a2 + 24);
      v64 = *(a2 + 32);
      v70 = *(a2 + 40);
      v34 = *(a2 + 64);
      v187 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v184) = *(a2 + 80);
      v189 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v71 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v92 = specialized static Entity.entityInfoType(_:)();
      if (v92)
      {
        v72 = (*(v92 + 232))();
        v93 = *(v72 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v72 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v72);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v94 = swift_allocObject();
        *(v94 + 40) = 0;
        swift_weakInit();
        *(v94 + 16) = v62;
        swift_weakAssign();
        v95 = *(v72 + 16);

        *(v94 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v72 + 16));
        v96 = Hasher._finalize()();

        *(v94 + 24) = v96;
        v97 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v64, 0, v70, v97, v98, &v211);

        if (v34)
        {
          if (REBindPointBoundComponent())
          {
            v99 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v100 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              v146 = specialized static Entity.entityInfoType(_:)();
              if (v146)
              {
                v34 = (*(v146 + 232))();
                v147 = *(v34 + 16);

                MEMORY[0x1C68F9740](v147, 0);
                *(v34 + 16) = v99;
                MEMORY[0x1C68F9740](v99, v34);

                goto LABEL_122;
              }

              v100 = makeEntity(for:)(v99);
            }

            v34 = v100;
          }

          else
          {
            v34 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v207);
        v148 = *(&v209 + 1);
        if (!*(&v209 + 1))
        {
          goto LABEL_150;
        }

        v149 = v207;
        v150 = v208;
        v191 = v28;
        v195 = a5;
        v151 = v209;
        v152 = v210;
        v153 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
        *&v201[8] = vcvtq_f64_f32(v6);
        v144 = v211;
        *&v205[24] = v212;
        *&v205[40] = v213;
        *&v205[56] = v214;
        *&v205[72] = v215;
        v197[24] = v150 & 1;
        *&v198 = v151;
        *(&v198 + 1) = v148;
        v199 = v152;
        LOBYTE(v200) = v153 & 1;
        *&v197[8] = v149;
        *v197 = v94;
        *(&v200 + 1) = v34;
        v201[0] = v184;
        *&v201[24] = v191;
        *&v202 = v187;
        v154 = 0xBFF0000000000000;
        *(&v202 + 1) = 0xBFF0000000000000;
        LOBYTE(v203) = 0;
        *(&v203 + 1) = 0xBFF0000000000000;
        LOBYTE(v204) = 0;
LABEL_140:
        *(&v204 + 1) = v154;
        v205[0] = 0;
        goto LABEL_141;
      }

      v71 = makeEntity(for:)(v68);
LABEL_38:
      v72 = v71;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v28 = Strong;
        v30 = *a2;
        v29 = *(a2 + 8);
        v31 = *(a2 + 24);
        v32 = *(a2 + 40);
        v33 = *(a2 + 48);
        v34 = *(a2 + 56);
        v194 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v35 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v115 = specialized static Entity.entityInfoType(_:)();
          if (v115)
          {
            v36 = (*(v115 + 232))();
            v116 = *(v36 + 16);

            MEMORY[0x1C68F9740](v116, 0);
            *(v36 + 16) = v30;
            MEMORY[0x1C68F9740](v30, v36);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v29;
            swift_weakAssign();
            v117 = *(v36 + 16);

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v36 + 16));
            v118 = Hasher._finalize()();

            *(v68 + 24) = v118;
            v119 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v32, v119, v120, &v211);

            if (v34)
            {
              if (REBindPointBoundComponent())
              {
                v70 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_130;
              }

              goto LABEL_91;
            }

            goto LABEL_132;
          }

          v35 = makeEntity(for:)(v30);
        }

        v36 = v35;
        goto LABEL_86;
      }

      v28 = Strong;
      v63 = *a2;
      v62 = *(a2 + 8);
      v64 = *(a2 + 24);
      v65 = *(a2 + 40);
      v33 = *(a2 + 48);
      v34 = *(a2 + 56);
      v194 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v86 = specialized static Entity.entityInfoType(_:)();
        if (v86)
        {
          v67 = (*(v86 + 232))();
          v87 = *(v67 + 16);

          MEMORY[0x1C68F9740](v87, 0);
          *(v67 + 16) = v63;
          MEMORY[0x1C68F9740](v63, v67);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v68 = swift_allocObject();
          *(v68 + 40) = 0;
          swift_weakInit();
          *(v68 + 16) = v62;
          swift_weakAssign();
          v88 = *(v67 + 16);

          *(v68 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v67 + 16));
          v89 = Hasher._finalize()();

          *(v68 + 24) = v89;
          v90 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v65, v90, v91, &v211);

          if (v34)
          {
            if (REBindPointBoundComponent())
            {
              v70 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v121 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v34 = v121;
                goto LABEL_132;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_130:
              v163 = specialized static Entity.entityInfoType(_:)();
              if (v163)
              {
                v34 = (*(v163 + 232))();
                v164 = *(v34 + 16);

                MEMORY[0x1C68F9740](v164, 0);
                *(v34 + 16) = v70;
                MEMORY[0x1C68F9740](v70, v34);

                goto LABEL_132;
              }

              v121 = makeEntity(for:)(v70);
              goto LABEL_90;
            }

LABEL_91:
            v34 = 0;
          }

LABEL_132:
          specialized ActionEventData.action<A>()(&v207);
          if (!*(&v209 + 1))
          {
            goto LABEL_150;
          }

          *&v197[8] = v207;
          v199 = v210;
          *&v205[24] = v212;
          *&v205[40] = v213;
          *&v205[56] = v214;
          *&v205[72] = v215;
          v197[24] = v208 & 1;
          v198 = v209;
          LOBYTE(v200) = 1;
          *v197 = v68;
          *(&v200 + 1) = v34;
          v201[0] = 0;
          *&v201[8] = 0;
          *&v201[16] = 0;
          v202 = 0uLL;
          *&v201[24] = v28;
          LOBYTE(v203) = 1;
          *(&v203 + 1) = v194;
          LOBYTE(v204) = 0;
          *(&v204 + 1) = 0;
          v205[0] = 1;
          *&v205[8] = v211;
          *&v205[88] = v33;
          goto LABEL_148;
        }

        v66 = makeEntity(for:)(v63);
      }

      v67 = v66;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v48 = *a2;
      v47 = *(a2 + 8);
      v49 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v196 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v50 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v131 = specialized static Entity.entityInfoType(_:)();
        if (v131)
        {
          v51 = (*(v131 + 232))();
          v132 = *(v51 + 16);

          MEMORY[0x1C68F9740](v132, 0);
          *(v51 + 16) = v48;
          MEMORY[0x1C68F9740](v48, v51);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v18 = swift_allocObject();
          *(v18 + 40) = 0;
          swift_weakInit();
          *(v18 + 16) = v47;
          swift_weakAssign();
          v133 = *(v51 + 16);

          *(v18 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v51 + 16));
          v134 = Hasher._finalize()();

          *(v18 + 24) = v134;
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
              v105 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_144;
            }

            goto LABEL_108;
          }

          goto LABEL_146;
        }

        v50 = makeEntity(for:)(v48);
      }

      v51 = v50;
      goto LABEL_103;
    }

    v13 = Strong;
    v74 = *a2;
    v73 = *(a2 + 8);
    v19 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v196 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v75 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v101 = specialized static Entity.entityInfoType(_:)();
      if (v101)
      {
        v76 = (*(v101 + 232))();
        v102 = *(v76 + 16);

        MEMORY[0x1C68F9740](v102, 0);
        *(v76 + 16) = v74;
        MEMORY[0x1C68F9740](v74, v76);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v18 = swift_allocObject();
        *(v18 + 40) = 0;
        swift_weakInit();
        *(v18 + 16) = v73;
        swift_weakAssign();
        v103 = *(v76 + 16);

        *(v18 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v76 + 16));
        v104 = Hasher._finalize()();

        *(v18 + 24) = v104;
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v105 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v135 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v135;
              goto LABEL_146;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v106 = specialized static Entity.entityInfoType(_:)();
                if (v106)
                {
                  v21 = (*(v106 + 232))();
                  v107 = *(v21 + 16);

                  MEMORY[0x1C68F9740](v107, 0);
                  *(v21 + 16) = v15;
                  MEMORY[0x1C68F9740](v15, v21);

                  goto LABEL_78;
                }

                v20 = makeEntity(for:)(v15);
LABEL_8:
                v21 = v20;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v108 = swift_allocObject();
                *(v108 + 40) = 0;
                swift_weakInit();
                *(v108 + 16) = v14;
                swift_weakAssign();
                v109 = *(v21 + 16);

                *(v108 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v21 + 16));
                v110 = Hasher._finalize()();

                *(v108 + 24) = v110;
                v111 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v111, v112, &v211);

                if (!v19)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v19 = 0;
                  goto LABEL_127;
                }

                v113 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v114 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v19 = v114;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v155 = specialized static Entity.entityInfoType(_:)();
                  if (!v155)
                  {
                    v114 = makeEntity(for:)(v113);
                    goto LABEL_82;
                  }

                  v19 = (*(v155 + 232))();
                  v156 = *(v19 + 16);

                  MEMORY[0x1C68F9740](v156, 0);
                  *(v19 + 16) = v113;
                  MEMORY[0x1C68F9740](v113, v19);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v207);
                  v157 = *(&v209 + 1);
                  if (*(&v209 + 1))
                  {
                    v177 = v207;
                    v192 = v13;
                    v195 = a5;
                    v158 = *(&v207 + 1);
                    v159 = v208;
                    v160 = v209;
                    v161 = v210;
                    v162 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
                    *&v201[8] = vcvtq_f64_f32(v7);
                    *(&v202 + 1) = v6.f32[0];
                    v144 = v211;
                    *&v205[24] = v212;
                    *&v205[40] = v213;
                    v197[24] = v159 & 1;
                    *&v198 = v160;
                    *(&v198 + 1) = v157;
                    v199 = v161;
                    LOBYTE(v200) = v162 & 1;
                    *&v197[8] = v177;
                    *&v197[16] = v158;
                    *v197 = v108;
                    *(&v200 + 1) = v19;
                    v201[0] = v178;
                    *&v201[24] = v192;
                    *&v202 = v181;
                    LOBYTE(v203) = 0;
                    *(&v203 + 1) = v187;
                    LOBYTE(v204) = 0;
                    *(&v204 + 1) = v184;
                    v205[0] = 0;
                    *&v205[56] = v214;
                    *&v205[72] = v215;
LABEL_141:
                    *&v205[8] = v144;
                    *&v205[88] = v189;
                    v195(v197);
LABEL_149:

                    v206[12] = *&v205[32];
                    v206[13] = *&v205[48];
                    v206[14] = *&v205[64];
                    v206[15] = *&v205[80];
                    v206[8] = v203;
                    v206[9] = v204;
                    v206[10] = *v205;
                    v206[11] = *&v205[16];
                    v206[4] = v200;
                    v206[5] = *v201;
                    v206[6] = *&v201[16];
                    v206[7] = v202;
                    v206[0] = *v197;
                    v206[1] = *&v197[16];
                    v206[2] = v198;
                    v206[3] = v199;
                    outlined destroy of BodyTrackingComponent?(v206, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMR);
                    return 0;
                  }

LABEL_150:

                  outlined consume of SetEntityPropertyAction<String>?(v207, *(&v207 + 1), v208, v209, 0);
                  return 0;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_144:
            v173 = specialized static Entity.entityInfoType(_:)();
            if (v173)
            {
              v16 = (*(v173 + 232))();
              v174 = *(v16 + 16);

              MEMORY[0x1C68F9740](v174, 0);
              *(v16 + 16) = v105;
              MEMORY[0x1C68F9740](v105, v16);

              goto LABEL_146;
            }

            v135 = makeEntity(for:)(v105);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_146:
        v175 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v175, v176, &v211);

        specialized ActionEventData.action<A>()(&v207);
        if (!*(&v209 + 1))
        {
          goto LABEL_150;
        }

        *&v197[8] = v207;
        v199 = v210;
        *&v205[24] = v212;
        *&v205[40] = v213;
        *&v205[56] = v214;
        *&v205[72] = v215;
        v197[24] = v208 & 1;
        v198 = v209;
        LOBYTE(v200) = 1;
        *v197 = v18;
        *(&v200 + 1) = v16;
        v201[0] = 0;
        *&v201[8] = 0;
        *&v201[16] = 0;
        v202 = 0uLL;
        *&v201[24] = v13;
        LOBYTE(v203) = 1;
        *(&v203 + 1) = 0;
        LOBYTE(v204) = 1;
        *(&v204 + 1) = 0;
        v205[0] = 1;
        *&v205[8] = v211;
        *&v205[88] = v196;
LABEL_148:
        a5(v197);
        goto LABEL_149;
      }

      v75 = makeEntity(for:)(v74);
    }

    v76 = v75;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static AnimationLogger.logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v206[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v206);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v185 = *(a2 + 64);
            v188 = *(a2 + 48);
            v182 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v181 = *(a2 + 104);
            v191 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v20 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v52 = Strong;
        v54 = *a2;
        v53 = *(a2 + 8);
        v56 = *(a2 + 24);
        v55 = *(a2 + 32);
        v57 = *(a2 + 40);
        v58 = *(a2 + 64);
        v59 = *(a2 + 72);
        v184 = *(a2 + 80);
        v187 = *(a2 + 88);
        v190 = *(a2 + 56);
        v192 = *(a2 + 96);
        v193 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v60 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v77 = specialized static Entity.entityInfoType(_:)();
          if (v77)
          {
            v61 = (*(v77 + 232))();
            v78 = *(v61 + 16);

            MEMORY[0x1C68F9740](v78, 0);
            *(v61 + 16) = v54;
            MEMORY[0x1C68F9740](v54, v61);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v79 = swift_allocObject();
            *(v79 + 40) = 0;
            swift_weakInit();
            *(v79 + 16) = v53;
            swift_weakAssign();
            v80 = *(v61 + 16);

            *(v79 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v61 + 16));
            v81 = Hasher._finalize()();

            *(v79 + 24) = v81;
            v82 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v55, 0, v57, v82, v83, &v213);

            if (!v58)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v85 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v58 = v85;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              v136 = specialized static Entity.entityInfoType(_:)();
              if (!v136)
              {
                v85 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v58 = (*(v136 + 232))();
              v137 = *(v58 + 16);

              MEMORY[0x1C68F9740](v137, 0);
              *(v58 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v58);
            }

            else
            {
              v58 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v209);
            v138 = *(&v211 + 1);
            if (*(&v211 + 1))
            {
              v139 = v209;
              v140 = v210;
              v198 = a5;
              v141 = v211;
              v142 = v52;
              v143 = v212;
              v144 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
              *&v203[8] = vcvtq_f64_f32(v59);
              *&v207[24] = v214;
              *&v207[40] = v215;
              *&v207[56] = v216;
              *&v207[72] = v217;
              v200[24] = v140 & 1;
              *&v201 = v141;
              *(&v201 + 1) = v138;
              LOBYTE(v202) = v143;
              BYTE1(v202) = v144 & 1;
              *&v200[8] = v139;
              *v200 = v79;
              *(&v202 + 1) = v58;
              v203[0] = v184;
              *&v203[24] = v142;
              *&v204 = v190;
              *(&v204 + 1) = 0xBFF0000000000000;
              LOBYTE(v205) = 0;
              *(&v205 + 1) = v187;
              LOBYTE(v206) = 0;
              v145 = v193;
              *(&v206 + 1) = v192;
              v207[0] = 0;
              *&v207[8] = v213;
LABEL_141:
              *&v207[88] = v145;
              v198(v200);
LABEL_149:

              v208[12] = *&v207[48];
              v208[13] = *&v207[64];
              v208[14] = *&v207[80];
              v208[8] = v206;
              v208[9] = *v207;
              v208[10] = *&v207[16];
              v208[11] = *&v207[32];
              v208[4] = *v203;
              v208[5] = *&v203[16];
              v208[6] = v204;
              v208[7] = v205;
              v208[0] = *v200;
              v208[1] = *&v200[16];
              v208[2] = v201;
              v208[3] = v202;
              outlined destroy of BodyTrackingComponent?(v208, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMR);
              return 0;
            }

            goto LABEL_150;
          }

          v60 = makeEntity(for:)(v54);
LABEL_32:
          v61 = v60;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v37 = Strong;
        v39 = *a2;
        v38 = *(a2 + 8);
        v41 = *(a2 + 24);
        v40 = *(a2 + 32);
        v42 = *(a2 + 40);
        v43 = *(a2 + 56);
        v44 = *(a2 + 64);
        v183 = *(a2 + 72);
        v186 = *(a2 + 80);
        v189 = *(a2 + 88);
        v191 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v122 = specialized static Entity.entityInfoType(_:)();
          if (v122)
          {
            v46 = (*(v122 + 232))();
            v123 = *(v46 + 16);

            MEMORY[0x1C68F9740](v123, 0);
            *(v46 + 16) = v39;
            MEMORY[0x1C68F9740](v39, v46);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v124 = swift_allocObject();
            *(v124 + 40) = 0;
            swift_weakInit();
            *(v124 + 16) = v38;
            swift_weakAssign();
            v125 = *(v46 + 16);

            *(v124 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v126 = Hasher._finalize()();

            *(v124 + 24) = v126;
            v127 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v40, 0, v42, v127, v128, &v213);

            if (v43)
            {
              if (REBindPointBoundComponent())
              {
                v129 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v130 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  v168 = specialized static Entity.entityInfoType(_:)();
                  if (v168)
                  {
                    v43 = (*(v168 + 232))();
                    v169 = *(v43 + 16);

                    MEMORY[0x1C68F9740](v169, 0);
                    *(v43 + 16) = v129;
                    MEMORY[0x1C68F9740](v129, v43);

                    goto LABEL_137;
                  }

                  v130 = makeEntity(for:)(v129);
                }

                v43 = v130;
              }

              else
              {
                v43 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v209);
            v170 = *(&v211 + 1);
            if (!*(&v211 + 1))
            {
              goto LABEL_150;
            }

            v171 = v209;
            v196 = v37;
            v198 = a5;
            v172 = *(&v209 + 1);
            v173 = v210;
            v174 = v211;
            v175 = v212;
            v176 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
            *&v203[8] = vcvtq_f64_f32(v44);
            v155 = v213;
            *&v207[24] = v214;
            *&v207[40] = v215;
            *&v207[56] = v216;
            *&v207[72] = v217;
            *&v200[8] = v171;
            *&v200[16] = v172;
            v200[24] = v173 & 1;
            *&v201 = v174;
            *(&v201 + 1) = v170;
            LOBYTE(v202) = v175;
            BYTE1(v202) = v176 & 1;
            *v200 = v124;
            *(&v202 + 1) = v43;
            v203[0] = v183;
            v204 = 0uLL;
            *&v203[24] = v196;
            LOBYTE(v205) = 1;
            v156 = v189;
            *(&v205 + 1) = v186;
            goto LABEL_139;
          }

          v45 = makeEntity(for:)(v39);
        }

        v46 = v45;
        goto LABEL_95;
      }

      v28 = Strong;
      v68 = *a2;
      v62 = *(a2 + 8);
      v69 = *(a2 + 24);
      v64 = *(a2 + 32);
      v70 = *(a2 + 40);
      v34 = *(a2 + 64);
      v188 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v185) = *(a2 + 80);
      v191 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v71 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v92 = specialized static Entity.entityInfoType(_:)();
      if (v92)
      {
        v72 = (*(v92 + 232))();
        v93 = *(v72 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v72 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v72);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v94 = swift_allocObject();
        *(v94 + 40) = 0;
        swift_weakInit();
        *(v94 + 16) = v62;
        swift_weakAssign();
        v95 = *(v72 + 16);

        *(v94 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v72 + 16));
        v96 = Hasher._finalize()();

        *(v94 + 24) = v96;
        v97 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v64, 0, v70, v97, v98, &v213);

        if (v34)
        {
          if (REBindPointBoundComponent())
          {
            v99 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v100 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              v146 = specialized static Entity.entityInfoType(_:)();
              if (v146)
              {
                v34 = (*(v146 + 232))();
                v147 = *(v34 + 16);

                MEMORY[0x1C68F9740](v147, 0);
                *(v34 + 16) = v99;
                MEMORY[0x1C68F9740](v99, v34);

                goto LABEL_122;
              }

              v100 = makeEntity(for:)(v99);
            }

            v34 = v100;
          }

          else
          {
            v34 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v209);
        v148 = *(&v211 + 1);
        if (!*(&v211 + 1))
        {
          goto LABEL_150;
        }

        v149 = v209;
        v194 = v28;
        v198 = a5;
        v150 = *(&v209 + 1);
        v151 = v210;
        v152 = v211;
        v153 = v212;
        v154 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
        *&v203[8] = vcvtq_f64_f32(v6);
        v155 = v213;
        *&v207[24] = v214;
        *&v207[40] = v215;
        *&v207[56] = v216;
        *&v207[72] = v217;
        *&v200[8] = v149;
        *&v200[16] = v150;
        v200[24] = v151 & 1;
        *&v201 = v152;
        *(&v201 + 1) = v148;
        LOBYTE(v202) = v153;
        BYTE1(v202) = v154 & 1;
        *v200 = v94;
        *(&v202 + 1) = v34;
        v203[0] = v185;
        *&v203[24] = v194;
        *&v204 = v188;
        v156 = 0xBFF0000000000000;
        *(&v204 + 1) = 0xBFF0000000000000;
        LOBYTE(v205) = 0;
        *(&v205 + 1) = 0xBFF0000000000000;
LABEL_139:
        LOBYTE(v206) = 0;
        *(&v206 + 1) = v156;
        v207[0] = 0;
        goto LABEL_140;
      }

      v71 = makeEntity(for:)(v68);
LABEL_38:
      v72 = v71;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v28 = Strong;
        v30 = *a2;
        v29 = *(a2 + 8);
        v31 = *(a2 + 24);
        v32 = *(a2 + 40);
        v33 = *(a2 + 48);
        v34 = *(a2 + 56);
        v197 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v35 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v115 = specialized static Entity.entityInfoType(_:)();
          if (v115)
          {
            v36 = (*(v115 + 232))();
            v116 = *(v36 + 16);

            MEMORY[0x1C68F9740](v116, 0);
            *(v36 + 16) = v30;
            MEMORY[0x1C68F9740](v30, v36);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v29;
            swift_weakAssign();
            v117 = *(v36 + 16);

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v36 + 16));
            v118 = Hasher._finalize()();

            *(v68 + 24) = v118;
            v119 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v32, v119, v120, &v213);

            if (v34)
            {
              if (REBindPointBoundComponent())
              {
                v70 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_130;
              }

              goto LABEL_91;
            }

            goto LABEL_132;
          }

          v35 = makeEntity(for:)(v30);
        }

        v36 = v35;
        goto LABEL_86;
      }

      v28 = Strong;
      v63 = *a2;
      v62 = *(a2 + 8);
      v64 = *(a2 + 24);
      v65 = *(a2 + 40);
      v33 = *(a2 + 48);
      v34 = *(a2 + 56);
      v197 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v86 = specialized static Entity.entityInfoType(_:)();
        if (v86)
        {
          v67 = (*(v86 + 232))();
          v87 = *(v67 + 16);

          MEMORY[0x1C68F9740](v87, 0);
          *(v67 + 16) = v63;
          MEMORY[0x1C68F9740](v63, v67);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v68 = swift_allocObject();
          *(v68 + 40) = 0;
          swift_weakInit();
          *(v68 + 16) = v62;
          swift_weakAssign();
          v88 = *(v67 + 16);

          *(v68 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v67 + 16));
          v89 = Hasher._finalize()();

          *(v68 + 24) = v89;
          v90 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v65, v90, v91, &v213);

          if (v34)
          {
            if (REBindPointBoundComponent())
            {
              v70 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v121 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v34 = v121;
                goto LABEL_132;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_130:
              v166 = specialized static Entity.entityInfoType(_:)();
              if (v166)
              {
                v34 = (*(v166 + 232))();
                v167 = *(v34 + 16);

                MEMORY[0x1C68F9740](v167, 0);
                *(v34 + 16) = v70;
                MEMORY[0x1C68F9740](v70, v34);

                goto LABEL_132;
              }

              v121 = makeEntity(for:)(v70);
              goto LABEL_90;
            }

LABEL_91:
            v34 = 0;
          }

LABEL_132:
          specialized ActionEventData.action<A>()(&v209);
          if (!*(&v211 + 1))
          {
            goto LABEL_150;
          }

          *&v200[8] = v209;
          *&v207[24] = v214;
          *&v207[40] = v215;
          *&v207[56] = v216;
          *&v207[72] = v217;
          v200[24] = v210 & 1;
          v201 = v211;
          LOBYTE(v202) = v212;
          BYTE1(v202) = 1;
          *v200 = v68;
          *(&v202 + 1) = v34;
          v203[0] = 0;
          *&v203[8] = 0;
          *&v203[16] = 0;
          v204 = 0uLL;
          *&v203[24] = v28;
          LOBYTE(v205) = 1;
          *(&v205 + 1) = v197;
          LOBYTE(v206) = 0;
          *(&v206 + 1) = 0;
          v207[0] = 1;
          *&v207[8] = v213;
          *&v207[88] = v33;
          goto LABEL_148;
        }

        v66 = makeEntity(for:)(v63);
      }

      v67 = v66;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v48 = *a2;
      v47 = *(a2 + 8);
      v49 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v199 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v50 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v131 = specialized static Entity.entityInfoType(_:)();
        if (v131)
        {
          v51 = (*(v131 + 232))();
          v132 = *(v51 + 16);

          MEMORY[0x1C68F9740](v132, 0);
          *(v51 + 16) = v48;
          MEMORY[0x1C68F9740](v48, v51);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v18 = swift_allocObject();
          *(v18 + 40) = 0;
          swift_weakInit();
          *(v18 + 16) = v47;
          swift_weakAssign();
          v133 = *(v51 + 16);

          *(v18 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v51 + 16));
          v134 = Hasher._finalize()();

          *(v18 + 24) = v134;
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
              v105 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_144;
            }

            goto LABEL_108;
          }

          goto LABEL_146;
        }

        v50 = makeEntity(for:)(v48);
      }

      v51 = v50;
      goto LABEL_103;
    }

    v13 = Strong;
    v74 = *a2;
    v73 = *(a2 + 8);
    v19 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v199 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v75 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v101 = specialized static Entity.entityInfoType(_:)();
      if (v101)
      {
        v76 = (*(v101 + 232))();
        v102 = *(v76 + 16);

        MEMORY[0x1C68F9740](v102, 0);
        *(v76 + 16) = v74;
        MEMORY[0x1C68F9740](v74, v76);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v18 = swift_allocObject();
        *(v18 + 40) = 0;
        swift_weakInit();
        *(v18 + 16) = v73;
        swift_weakAssign();
        v103 = *(v76 + 16);

        *(v18 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v76 + 16));
        v104 = Hasher._finalize()();

        *(v18 + 24) = v104;
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v105 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v135 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v135;
              goto LABEL_146;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v106 = specialized static Entity.entityInfoType(_:)();
                if (v106)
                {
                  v21 = (*(v106 + 232))();
                  v107 = *(v21 + 16);

                  MEMORY[0x1C68F9740](v107, 0);
                  *(v21 + 16) = v15;
                  MEMORY[0x1C68F9740](v15, v21);

                  goto LABEL_78;
                }

                v20 = makeEntity(for:)(v15);
LABEL_8:
                v21 = v20;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v108 = swift_allocObject();
                *(v108 + 40) = 0;
                swift_weakInit();
                *(v108 + 16) = v14;
                swift_weakAssign();
                v109 = *(v21 + 16);

                *(v108 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v21 + 16));
                v110 = Hasher._finalize()();

                *(v108 + 24) = v110;
                v111 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v111, v112, &v213);

                if (!v19)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v19 = 0;
                  goto LABEL_127;
                }

                v113 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v114 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v19 = v114;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v157 = specialized static Entity.entityInfoType(_:)();
                  if (!v157)
                  {
                    v114 = makeEntity(for:)(v113);
                    goto LABEL_82;
                  }

                  v19 = (*(v157 + 232))();
                  v158 = *(v19 + 16);

                  MEMORY[0x1C68F9740](v158, 0);
                  *(v19 + 16) = v113;
                  MEMORY[0x1C68F9740](v113, v19);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v209);
                  v159 = *(&v211 + 1);
                  if (*(&v211 + 1))
                  {
                    v160 = v209;
                    v195 = v13;
                    v198 = a5;
                    v161 = *(&v209 + 1);
                    v162 = v210;
                    v163 = v211;
                    v164 = v212;
                    v165 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
                    *&v203[8] = vcvtq_f64_f32(v7);
                    *(&v204 + 1) = v6.f32[0];
                    v155 = v213;
                    *&v207[24] = v214;
                    *&v207[40] = v215;
                    *&v200[8] = v160;
                    *&v200[16] = v161;
                    v200[24] = v162 & 1;
                    *&v201 = v163;
                    *(&v201 + 1) = v159;
                    LOBYTE(v202) = v164;
                    BYTE1(v202) = v165 & 1;
                    *v200 = v108;
                    *(&v202 + 1) = v19;
                    v203[0] = v181;
                    *&v203[24] = v195;
                    *&v204 = v182;
                    LOBYTE(v205) = 0;
                    *(&v205 + 1) = v188;
                    LOBYTE(v206) = 0;
                    *(&v206 + 1) = v185;
                    v207[0] = 0;
                    *&v207[56] = v216;
                    *&v207[72] = v217;
LABEL_140:
                    *&v207[8] = v155;
                    v145 = v191;
                    goto LABEL_141;
                  }

LABEL_150:

                  outlined consume of SetEntityPropertyAction<Bool>?(v209, *(&v209 + 1), v210, v211, 0);
                  return 0;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_144:
            v177 = specialized static Entity.entityInfoType(_:)();
            if (v177)
            {
              v16 = (*(v177 + 232))();
              v178 = *(v16 + 16);

              MEMORY[0x1C68F9740](v178, 0);
              *(v16 + 16) = v105;
              MEMORY[0x1C68F9740](v105, v16);

              goto LABEL_146;
            }

            v135 = makeEntity(for:)(v105);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_146:
        v179 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v179, v180, &v213);

        specialized ActionEventData.action<A>()(&v209);
        if (!*(&v211 + 1))
        {
          goto LABEL_150;
        }

        *&v200[8] = v209;
        *&v207[24] = v214;
        *&v207[40] = v215;
        *&v207[56] = v216;
        *&v207[72] = v217;
        v200[24] = v210 & 1;
        v201 = v211;
        LOBYTE(v202) = v212;
        BYTE1(v202) = 1;
        *v200 = v18;
        *(&v202 + 1) = v16;
        v203[0] = 0;
        *&v203[8] = 0;
        *&v203[16] = 0;
        v204 = 0uLL;
        *&v203[24] = v13;
        LOBYTE(v205) = 1;
        *(&v205 + 1) = 0;
        LOBYTE(v206) = 1;
        *(&v206 + 1) = 0;
        v207[0] = 1;
        *&v207[8] = v213;
        *&v207[88] = v199;
LABEL_148:
        a5(v200);
        goto LABEL_149;
      }

      v75 = makeEntity(for:)(v74);
    }

    v76 = v75;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static AnimationLogger.logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v208[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v208);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v189 = *(a2 + 64);
            v192 = *(a2 + 48);
            v185 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v182 = *(a2 + 104);
            v194 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v20 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v52 = Strong;
        v54 = *a2;
        v53 = *(a2 + 8);
        v56 = *(a2 + 24);
        v55 = *(a2 + 32);
        v57 = *(a2 + 40);
        v58 = *(a2 + 64);
        v59 = *(a2 + 72);
        v183 = *(a2 + 80);
        v187 = *(a2 + 88);
        v191 = *(a2 + 56);
        v193 = *(a2 + 96);
        v194 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v60 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v77 = specialized static Entity.entityInfoType(_:)();
          if (v77)
          {
            v61 = (*(v77 + 232))();
            v78 = *(v61 + 16);

            MEMORY[0x1C68F9740](v78, 0);
            *(v61 + 16) = v54;
            MEMORY[0x1C68F9740](v54, v61);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v79 = swift_allocObject();
            *(v79 + 40) = 0;
            swift_weakInit();
            *(v79 + 16) = v53;
            swift_weakAssign();
            v80 = *(v61 + 16);

            *(v79 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v61 + 16));
            v81 = Hasher._finalize()();

            *(v79 + 24) = v81;
            v82 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v55, 0, v57, v82, v83, &v216);

            if (v58)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v85 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_174:
                    __break(1u);
                    goto LABEL_175;
                  }

                  v136 = specialized static Entity.entityInfoType(_:)();
                  if (v136)
                  {
                    v58 = (*(v136 + 232))();
                    v137 = *(v58 + 16);

                    MEMORY[0x1C68F9740](v137, 0);
                    *(v58 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v58);

                    goto LABEL_116;
                  }

                  v85 = makeEntity(for:)(Entity);
                }

                v58 = v85;
              }

              else
              {
                v58 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v211);
            v138 = *(&v213 + 1);
            if (!*(&v213 + 1))
            {
              goto LABEL_150;
            }

            v181 = v211;
            v195 = v52;
            v200 = a5;
            v139 = *(&v211 + 1);
            v140 = v212;
            v141 = v213;
            v142 = v215;
            v143 = v214;
            v144 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
            *&v205[8] = vcvtq_f64_f32(v59);
            v145 = v216;
            *&v209[24] = v217;
            *&v209[40] = v218;
            *&v209[56] = v219;
            *&v209[72] = v220;
            v202[24] = v140 & 1;
            *&v203 = v141;
            *(&v203 + 1) = v138;
            LODWORD(v204) = v143;
            BYTE4(v204) = v142 & 1;
            BYTE5(v204) = v144 & 1;
            *&v202[8] = v181;
            *&v202[16] = v139;
            *v202 = v79;
            *(&v204 + 1) = v58;
            v205[0] = v183;
            *&v205[24] = v195;
            *&v206 = v191;
            *(&v206 + 1) = 0xBFF0000000000000;
            LOBYTE(v207) = 0;
            v146 = v187;
            goto LABEL_139;
          }

          v60 = makeEntity(for:)(v54);
LABEL_32:
          v61 = v60;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v37 = Strong;
        v39 = *a2;
        v38 = *(a2 + 8);
        v41 = *(a2 + 24);
        v40 = *(a2 + 32);
        v42 = *(a2 + 40);
        v43 = *(a2 + 56);
        v44 = *(a2 + 64);
        v186 = *(a2 + 72);
        v190 = *(a2 + 80);
        v193 = *(a2 + 88);
        v194 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v122 = specialized static Entity.entityInfoType(_:)();
          if (v122)
          {
            v46 = (*(v122 + 232))();
            v123 = *(v46 + 16);

            MEMORY[0x1C68F9740](v123, 0);
            *(v46 + 16) = v39;
            MEMORY[0x1C68F9740](v39, v46);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v124 = swift_allocObject();
            *(v124 + 40) = 0;
            swift_weakInit();
            *(v124 + 16) = v38;
            swift_weakAssign();
            v125 = *(v46 + 16);

            *(v124 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v126 = Hasher._finalize()();

            *(v124 + 24) = v126;
            v127 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v40, 0, v42, v127, v128, &v216);

            if (v43)
            {
              if (REBindPointBoundComponent())
              {
                v129 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v130 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  v168 = specialized static Entity.entityInfoType(_:)();
                  if (v168)
                  {
                    v43 = (*(v168 + 232))();
                    v169 = *(v43 + 16);

                    MEMORY[0x1C68F9740](v169, 0);
                    *(v43 + 16) = v129;
                    MEMORY[0x1C68F9740](v129, v43);

                    goto LABEL_137;
                  }

                  v130 = makeEntity(for:)(v129);
                }

                v43 = v130;
              }

              else
              {
                v43 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v211);
            v170 = *(&v213 + 1);
            if (!*(&v213 + 1))
            {
              goto LABEL_150;
            }

            v184 = v211;
            v198 = v37;
            v200 = a5;
            v171 = *(&v211 + 1);
            v172 = v212;
            v173 = v213;
            v174 = v215;
            v175 = v214;
            v176 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
            *&v205[8] = vcvtq_f64_f32(v44);
            v145 = v216;
            *&v209[24] = v217;
            *&v209[40] = v218;
            *&v209[56] = v219;
            *&v209[72] = v220;
            v202[24] = v172 & 1;
            *&v203 = v173;
            *(&v203 + 1) = v170;
            LODWORD(v204) = v175;
            BYTE4(v204) = v174 & 1;
            BYTE5(v204) = v176 & 1;
            *&v202[8] = v184;
            *&v202[16] = v171;
            *v202 = v124;
            *(&v204 + 1) = v43;
            v205[0] = v186;
            v206 = 0uLL;
            *&v205[24] = v198;
            LOBYTE(v207) = 1;
            v146 = v190;
LABEL_139:
            *(&v207 + 1) = v146;
            LOBYTE(v208) = 0;
            v156 = v193;
            goto LABEL_140;
          }

          v45 = makeEntity(for:)(v39);
        }

        v46 = v45;
        goto LABEL_95;
      }

      v28 = Strong;
      v68 = *a2;
      v62 = *(a2 + 8);
      v69 = *(a2 + 24);
      v64 = *(a2 + 32);
      v70 = *(a2 + 40);
      v34 = *(a2 + 64);
      v192 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v189) = *(a2 + 80);
      v194 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v71 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v92 = specialized static Entity.entityInfoType(_:)();
      if (v92)
      {
        v72 = (*(v92 + 232))();
        v93 = *(v72 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v72 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v72);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v94 = swift_allocObject();
        *(v94 + 40) = 0;
        swift_weakInit();
        *(v94 + 16) = v62;
        swift_weakAssign();
        v95 = *(v72 + 16);

        *(v94 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v72 + 16));
        v96 = Hasher._finalize()();

        *(v94 + 24) = v96;
        v97 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v64, 0, v70, v97, v98, &v216);

        if (v34)
        {
          if (REBindPointBoundComponent())
          {
            v99 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v100 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              v147 = specialized static Entity.entityInfoType(_:)();
              if (v147)
              {
                v34 = (*(v147 + 232))();
                v148 = *(v34 + 16);

                MEMORY[0x1C68F9740](v148, 0);
                *(v34 + 16) = v99;
                MEMORY[0x1C68F9740](v99, v34);

                goto LABEL_122;
              }

              v100 = makeEntity(for:)(v99);
            }

            v34 = v100;
          }

          else
          {
            v34 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v211);
        v149 = *(&v213 + 1);
        if (!*(&v213 + 1))
        {
          goto LABEL_150;
        }

        v188 = v211;
        v196 = v28;
        v200 = a5;
        v150 = *(&v211 + 1);
        v151 = v212;
        v152 = v213;
        v153 = v215;
        v154 = v214;
        v155 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
        *&v205[8] = vcvtq_f64_f32(v6);
        v145 = v216;
        *&v209[24] = v217;
        *&v209[40] = v218;
        *&v209[56] = v219;
        *&v209[72] = v220;
        v202[24] = v151 & 1;
        *&v203 = v152;
        *(&v203 + 1) = v149;
        LODWORD(v204) = v154;
        BYTE4(v204) = v153 & 1;
        BYTE5(v204) = v155 & 1;
        *&v202[8] = v188;
        *&v202[16] = v150;
        *v202 = v94;
        *(&v204 + 1) = v34;
        v205[0] = v189;
        *&v205[24] = v196;
        *&v206 = v192;
        v156 = 0xBFF0000000000000;
        *(&v206 + 1) = 0xBFF0000000000000;
        LOBYTE(v207) = 0;
        *(&v207 + 1) = 0xBFF0000000000000;
        LOBYTE(v208) = 0;
LABEL_140:
        *(&v208 + 1) = v156;
        v209[0] = 0;
        goto LABEL_141;
      }

      v71 = makeEntity(for:)(v68);
LABEL_38:
      v72 = v71;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v28 = Strong;
        v30 = *a2;
        v29 = *(a2 + 8);
        v31 = *(a2 + 24);
        v32 = *(a2 + 40);
        v33 = *(a2 + 48);
        v34 = *(a2 + 56);
        v199 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v35 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v115 = specialized static Entity.entityInfoType(_:)();
          if (v115)
          {
            v36 = (*(v115 + 232))();
            v116 = *(v36 + 16);

            MEMORY[0x1C68F9740](v116, 0);
            *(v36 + 16) = v30;
            MEMORY[0x1C68F9740](v30, v36);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v29;
            swift_weakAssign();
            v117 = *(v36 + 16);

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v36 + 16));
            v118 = Hasher._finalize()();

            *(v68 + 24) = v118;
            v119 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v32, v119, v120, &v216);

            if (v34)
            {
              if (REBindPointBoundComponent())
              {
                v70 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_89;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                goto LABEL_130;
              }

              goto LABEL_91;
            }

            goto LABEL_132;
          }

          v35 = makeEntity(for:)(v30);
        }

        v36 = v35;
        goto LABEL_86;
      }

      v28 = Strong;
      v63 = *a2;
      v62 = *(a2 + 8);
      v64 = *(a2 + 24);
      v65 = *(a2 + 40);
      v33 = *(a2 + 48);
      v34 = *(a2 + 56);
      v199 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v86 = specialized static Entity.entityInfoType(_:)();
        if (v86)
        {
          v67 = (*(v86 + 232))();
          v87 = *(v67 + 16);

          MEMORY[0x1C68F9740](v87, 0);
          *(v67 + 16) = v63;
          MEMORY[0x1C68F9740](v63, v67);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v68 = swift_allocObject();
          *(v68 + 40) = 0;
          swift_weakInit();
          *(v68 + 16) = v62;
          swift_weakAssign();
          v88 = *(v67 + 16);

          *(v68 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v67 + 16));
          v89 = Hasher._finalize()();

          *(v68 + 24) = v89;
          v90 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v65, v90, v91, &v216);

          if (v34)
          {
            if (REBindPointBoundComponent())
            {
              v70 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
LABEL_89:
                type metadata accessor for Entity();
                v121 = swift_dynamicCastClassUnconditional();
LABEL_90:
                v34 = v121;
                goto LABEL_132;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_130:
              v166 = specialized static Entity.entityInfoType(_:)();
              if (v166)
              {
                v34 = (*(v166 + 232))();
                v167 = *(v34 + 16);

                MEMORY[0x1C68F9740](v167, 0);
                *(v34 + 16) = v70;
                MEMORY[0x1C68F9740](v70, v34);

                goto LABEL_132;
              }

              v121 = makeEntity(for:)(v70);
              goto LABEL_90;
            }

LABEL_91:
            v34 = 0;
          }

LABEL_132:
          specialized ActionEventData.action<A>()(&v211);
          if (!*(&v213 + 1))
          {
            goto LABEL_150;
          }

          *&v202[8] = v211;
          *&v209[24] = v217;
          *&v209[40] = v218;
          *&v209[56] = v219;
          *&v209[72] = v220;
          v202[24] = v212 & 1;
          v203 = v213;
          LODWORD(v204) = v214;
          BYTE4(v204) = v215 & 1;
          BYTE5(v204) = 1;
          *v202 = v68;
          *(&v204 + 1) = v34;
          v205[0] = 0;
          *&v205[8] = 0;
          *&v205[16] = 0;
          v206 = 0uLL;
          *&v205[24] = v28;
          LOBYTE(v207) = 1;
          *(&v207 + 1) = v199;
          LOBYTE(v208) = 0;
          *(&v208 + 1) = 0;
          v209[0] = 1;
          *&v209[8] = v216;
          *&v209[88] = v33;
          goto LABEL_148;
        }

        v66 = makeEntity(for:)(v63);
      }

      v67 = v66;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v48 = *a2;
      v47 = *(a2 + 8);
      v49 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v201 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v50 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v131 = specialized static Entity.entityInfoType(_:)();
        if (v131)
        {
          v51 = (*(v131 + 232))();
          v132 = *(v51 + 16);

          MEMORY[0x1C68F9740](v132, 0);
          *(v51 + 16) = v48;
          MEMORY[0x1C68F9740](v48, v51);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v18 = swift_allocObject();
          *(v18 + 40) = 0;
          swift_weakInit();
          *(v18 + 16) = v47;
          swift_weakAssign();
          v133 = *(v51 + 16);

          *(v18 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v51 + 16));
          v134 = Hasher._finalize()();

          *(v18 + 24) = v134;
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
              v105 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_106;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                return result;
              }

              goto LABEL_144;
            }

            goto LABEL_108;
          }

          goto LABEL_146;
        }

        v50 = makeEntity(for:)(v48);
      }

      v51 = v50;
      goto LABEL_103;
    }

    v13 = Strong;
    v74 = *a2;
    v73 = *(a2 + 8);
    v19 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v201 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v75 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v101 = specialized static Entity.entityInfoType(_:)();
      if (v101)
      {
        v76 = (*(v101 + 232))();
        v102 = *(v76 + 16);

        MEMORY[0x1C68F9740](v102, 0);
        *(v76 + 16) = v74;
        MEMORY[0x1C68F9740](v74, v76);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v18 = swift_allocObject();
        *(v18 + 40) = 0;
        swift_weakInit();
        *(v18 + 16) = v73;
        swift_weakAssign();
        v103 = *(v76 + 16);

        *(v18 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v76 + 16));
        v104 = Hasher._finalize()();

        *(v18 + 24) = v104;
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v105 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v135 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v135;
              goto LABEL_146;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v106 = specialized static Entity.entityInfoType(_:)();
                if (v106)
                {
                  v21 = (*(v106 + 232))();
                  v107 = *(v21 + 16);

                  MEMORY[0x1C68F9740](v107, 0);
                  *(v21 + 16) = v15;
                  MEMORY[0x1C68F9740](v15, v21);

                  goto LABEL_78;
                }

                v20 = makeEntity(for:)(v15);
LABEL_8:
                v21 = v20;
LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v108 = swift_allocObject();
                *(v108 + 40) = 0;
                swift_weakInit();
                *(v108 + 16) = v14;
                swift_weakAssign();
                v109 = *(v21 + 16);

                *(v108 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v21 + 16));
                v110 = Hasher._finalize()();

                *(v108 + 24) = v110;
                v111 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v111, v112, &v216);

                if (!v19)
                {
                  goto LABEL_127;
                }

                if (!REBindPointBoundComponent())
                {
                  v19 = 0;
                  goto LABEL_127;
                }

                v113 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v114 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v19 = v114;
                  goto LABEL_127;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v157 = specialized static Entity.entityInfoType(_:)();
                  if (!v157)
                  {
                    v114 = makeEntity(for:)(v113);
                    goto LABEL_82;
                  }

                  v19 = (*(v157 + 232))();
                  v158 = *(v19 + 16);

                  MEMORY[0x1C68F9740](v158, 0);
                  *(v19 + 16) = v113;
                  MEMORY[0x1C68F9740](v113, v19);

LABEL_127:
                  specialized ActionEventData.action<A>()(&v211);
                  v159 = *(&v213 + 1);
                  if (*(&v213 + 1))
                  {
                    v160 = v211;
                    v161 = v212;
                    v197 = v13;
                    v200 = a5;
                    v162 = v213;
                    v163 = v215;
                    v164 = v214;
                    v165 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
                    *&v205[8] = vcvtq_f64_f32(v7);
                    *(&v206 + 1) = v6.f32[0];
                    v145 = v216;
                    *&v209[24] = v217;
                    *&v209[40] = v218;
                    v202[24] = v161 & 1;
                    *&v203 = v162;
                    *(&v203 + 1) = v159;
                    LODWORD(v204) = v164;
                    BYTE4(v204) = v163 & 1;
                    BYTE5(v204) = v165 & 1;
                    *&v202[8] = v160;
                    *v202 = v108;
                    *(&v204 + 1) = v19;
                    v205[0] = v182;
                    *&v205[24] = v197;
                    *&v206 = v185;
                    LOBYTE(v207) = 0;
                    *(&v207 + 1) = v192;
                    LOBYTE(v208) = 0;
                    *(&v208 + 1) = v189;
                    v209[0] = 0;
                    *&v209[56] = v219;
                    *&v209[72] = v220;
LABEL_141:
                    *&v209[8] = v145;
                    *&v209[88] = v194;
                    v200(v202);
LABEL_149:

                    v210[12] = *&v209[48];
                    v210[13] = *&v209[64];
                    v210[14] = *&v209[80];
                    v210[8] = v208;
                    v210[9] = *v209;
                    v210[10] = *&v209[16];
                    v210[11] = *&v209[32];
                    v210[4] = *v205;
                    v210[5] = *&v205[16];
                    v210[6] = v206;
                    v210[7] = v207;
                    v210[0] = *v202;
                    v210[1] = *&v202[16];
                    v210[2] = v203;
                    v210[3] = v204;
                    outlined destroy of BodyTrackingComponent?(v210, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMR);
                    return 0;
                  }

LABEL_150:

                  outlined consume of SetEntityPropertyAction<Bool>?(v211, *(&v211 + 1), v212, v213, 0);
                  return 0;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_144:
            v177 = specialized static Entity.entityInfoType(_:)();
            if (v177)
            {
              v16 = (*(v177 + 232))();
              v178 = *(v16 + 16);

              MEMORY[0x1C68F9740](v178, 0);
              *(v16 + 16) = v105;
              MEMORY[0x1C68F9740](v105, v16);

              goto LABEL_146;
            }

            v135 = makeEntity(for:)(v105);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_146:
        v179 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v179, v180, &v216);

        specialized ActionEventData.action<A>()(&v211);
        if (!*(&v213 + 1))
        {
          goto LABEL_150;
        }

        *&v202[8] = v211;
        *&v209[24] = v217;
        *&v209[40] = v218;
        *&v209[56] = v219;
        *&v209[72] = v220;
        v202[24] = v212 & 1;
        v203 = v213;
        LODWORD(v204) = v214;
        BYTE4(v204) = v215 & 1;
        BYTE5(v204) = 1;
        *v202 = v18;
        *(&v204 + 1) = v16;
        v205[0] = 0;
        *&v205[8] = 0;
        *&v205[16] = 0;
        v206 = 0uLL;
        *&v205[24] = v13;
        LOBYTE(v207) = 1;
        *(&v207 + 1) = 0;
        LOBYTE(v208) = 1;
        *(&v208 + 1) = 0;
        v209[0] = 1;
        *&v209[8] = v216;
        *&v209[88] = v201;
LABEL_148:
        a5(v202);
        goto LABEL_149;
      }

      v75 = makeEntity(for:)(v74);
    }

    v76 = v75;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static AnimationLogger.logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v210[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v210);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}