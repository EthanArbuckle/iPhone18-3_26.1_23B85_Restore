unint64_t specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1)
{
  if (*(a1 + 208))
  {
    goto LABEL_14;
  }

  v2 = *(a1 + 200);
  specialized ActionEvent.animationState.getter(v30);
  v3 = v31;
  if (v31)
  {
    v4 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v5 = *(v4 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = type metadata accessor for Optional();
    v29 = &v29;
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = &v30[-1] - v10;
    v5(v3, v4);
    v12 = *(AssociatedTypeWitness - 8);
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v8 + 8))(v11, v7);
      AssociatedConformanceWitness = 0;
      memset(v33, 0, sizeof(v33));
    }

    else
    {
      *(&v33[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      (*(v12 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v30, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v33, 0, sizeof(v33));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  if (!swift_dynamicCast())
  {
LABEL_14:
    v19 = 0.0;
    v20 = 1;
    return LODWORD(v19) | (v20 << 32);
  }

  v14 = *v30;
  v15 = *(a1 + 28);
  v16 = *(a1 + 32);
  v17 = *(a1 + 36);
  if (*(a1 + 20))
  {
    v18 = *v30;
    if ((*(a1 + 28) & 1) == 0)
    {
      if (*(a1 + 36))
      {
        v18 = *v30;
      }

      else
      {
        v18 = *(a1 + 24) - v16;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (*(a1 + 36))
    {
      v21 = *v30;
    }

    else
    {
      v21 = v18 + v16;
    }

    goto LABEL_20;
  }

  v18 = *(a1 + 16);
  if (*(a1 + 28))
  {
    goto LABEL_16;
  }

LABEL_19:
  v21 = *(a1 + 24);
LABEL_20:
  v22 = *(a1 + 89);
  v33[0] = *(a1 + 48);
  *(v33 + 13) = *(a1 + 61);
  v23 = v2;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v24 + 16))
  {
    v25 = *(v24 + 16);
    REEasingFunctionEvaluateEx();
    v23 = v26;
  }

  v27 = (v21 * v23) + (v18 * (1.0 - v23));
  v20 = 0;
  if (v22)
  {
    v27 = v27 - v14;
  }

  v19 = v27;
  return LODWORD(v19) | (v20 << 32);
}

unint64_t lazy protocol witness table accessor for type EmphasizeAction and conformance EmphasizeAction()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction;
  if (!lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction;
  if (!lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction and conformance EmphasizeAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayAudioAction and conformance PlayAudioAction()
{
  result = lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction;
  if (!lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction;
  if (!lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAudioAction and conformance PlayAudioAction);
  }

  return result;
}

uint64_t partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

void specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(uint64_t a1)
{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMR);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static AnimationLogger.logger);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v53 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v53);
      _os_log_impl(&dword_1C1358000, v19, v20, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1C6902A30](v22, -1, -1);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v47 = *(a1 + 80);
  v51 = *(a1 + 96);
  v49 = *(a1 + 104);
  v10 = *(a1 + 112);
  if ((*(a1 + 32) & 1) == 0)
  {
    v62 = *(a1 + 16);
    *&v53 = v4;
    outlined init with copy of BindTarget.EntityPath(&v62, &v59);
    v23 = Entity.subscript.getter(&v53);

    if (v23)
    {
      if ((v10 & 1) == 0)
      {
LABEL_24:
        v60 = &type metadata for Transform;
        v61 = &protocol witness table for Transform;
        v33 = swift_allocObject();
        *&v59 = v33;
        v33[2] = v7;
        v33[3] = v8;
        v33[4] = v47;
        v33[5] = v9;
        v33[6] = v51;
        v33[7] = v49;
        outlined init with take of ForceEffectBase(&v59, &v53);
        v34 = __swift_project_boxed_opaque_existential_1(&v53, v55);
        v35 = *(v23 + 16);
        v50 = v34[1];
        v52 = v34[2];
        v48 = *v34;
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddRESRTValue();

        __swift_destroy_boxed_opaque_existential_1(&v53);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v11 = *(a1 + 24);
  v12 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMR);
    v36 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v37 = *(v3 + 16);
    REEntityGetName();
    v38 = String.init(cString:)();
    MEMORY[0x1C68F3410](v38);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v39 = v53;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static AnimationLogger.logger);

    v19 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v53 = v43;
      *v42 = 136315138;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, *(&v39 + 1), &v53);
      _os_log_impl(&dword_1C1358000, v19, v41, "%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1C6902A30](v43, -1, -1);
      MEMORY[0x1C6902A30](v42, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v46 = v6;
  v14 = SceneNullable;
  v15 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v15)
  {
    v16 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v16 = Scene.init(coreScene:)(v14);
  }

  v31 = *(v16 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v23 = swift_dynamicCastClassUnconditional();
    v6 = v46;
    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v44 = specialized static Entity.entityInfoType(_:)();
    if (v44)
    {
      v23 = (*(v44 + 232))();
      v45 = *(v23 + 16);

      MEMORY[0x1C68F9740](v45, 0);
      *(v23 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v23);
    }

    else
    {
      v23 = makeEntity(for:)(EntityByName);
    }

    v6 = v46;
    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v59 = v53;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGmMR);
    v24 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v24);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v53 = v7;
    *(&v53 + 1) = v8;
    v54 = v47;
    v55 = v9;
    v56 = v51;
    v57 = v49;
    v58 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9TransformVSgMd, &_s10RealityKit9TransformVSgMR);
    v25 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v25);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v26 = v59;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static AnimationLogger.logger);

    v19 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v53 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, *(&v26 + 1), &v53);
      _os_log_impl(&dword_1C1358000, v19, v28, "%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1C6902A30](v30, -1, -1);
      MEMORY[0x1C6902A30](v29, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGmMR);
    v15 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v50);
      _os_log_impl(&dword_1C1358000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1C6902A30](v20, -1, -1);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 8);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v53 = *(a1 + 8);
    v50 = v4;
    outlined init with copy of BindTarget.EntityPath(&v53, &v47);
    v21 = Entity.subscript.getter(&v50);

    if (v21)
    {
      if (!v7)
      {
LABEL_20:
        v50 = 0;
        v51 = 0xE000000000000000;
        _StringGuts.grow(_:)(101);
        MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
        *&v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGmMR);
        v28 = String.init<A>(describing:)();
        MEMORY[0x1C68F3410](v28);

        MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
        v47 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v29 = String.init<A>(describing:)();
        MEMORY[0x1C68F3410](v29);

        MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

        MEMORY[0x1C68F3410](v6, v5);

        MEMORY[0x1C68F3410](39, 0xE100000000000000);
        v31 = v50;
        v30 = v51;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static AnimationLogger.logger);

        v17 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v17, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v50 = v35;
          *v34 = 136315138;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v50);
          _os_log_impl(&dword_1C1358000, v17, v33, "%s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x1C6902A30](v35, -1, -1);
          MEMORY[0x1C6902A30](v34, -1, -1);
        }

        goto LABEL_12;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v9 = *(a1 + 16);
  v10 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGmMR);
    v36 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v37 = *(v3 + 16);
    REEntityGetName();
    v38 = String.init(cString:)();
    MEMORY[0x1C68F3410](v38);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v40 = v50;
    v39 = v51;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v43 = 136315138;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v50);
      _os_log_impl(&dword_1C1358000, v17, v42, "%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1C6902A30](v44, -1, -1);
      MEMORY[0x1C6902A30](v43, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v12 = SceneNullable;
  v13 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v13)
  {
    v14 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v14 = Scene.init(coreScene:)(v12);
  }

  v26 = *(v14 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v21 = swift_dynamicCastClassUnconditional();
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v45 = specialized static Entity.entityInfoType(_:)();
    if (v45)
    {
      v21 = (*(v45 + 232))();
      v46 = *(v21 + 16);

      MEMORY[0x1C68F9740](v46, 0);
      *(v21 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v21);
    }

    else
    {
      v21 = makeEntity(for:)(EntityByName);
    }

    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_15:
    v48 = MEMORY[0x1E69E6158];
    v49 = &protocol witness table for String;
    *&v47 = v8;
    *(&v47 + 1) = v7;
    outlined init with take of ForceEffectBase(&v47, &v50);
    v22 = __swift_project_boxed_opaque_existential_1(&v50, v52);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v21 + 16);

    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    String.utf8CString.getter();
    REKeyValueComponentAddStringValue();

    __swift_destroy_boxed_opaque_existential_1(&v50);
    return;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGmMR);
    v14 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v14);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static AnimationLogger.logger);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v47);
      _os_log_impl(&dword_1C1358000, v16, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1C6902A30](v19, -1, -1);
      MEMORY[0x1C6902A30](v18, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 8);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  if ((*(a1 + 24) & 1) == 0)
  {
    v50 = *(a1 + 8);
    v47 = v4;
    outlined init with copy of BindTarget.EntityPath(&v50, &v44);
    v20 = Entity.subscript.getter(&v47);

    if (v20)
    {
      if (v7 != 2)
      {
LABEL_24:
        v45 = MEMORY[0x1E69E6370];
        v46 = &protocol witness table for Bool;
        LOBYTE(v44) = v7 & 1;
        outlined init with take of ForceEffectBase(&v44, &v47);
        v31 = *__swift_project_boxed_opaque_existential_1(&v47, v49);
        v32 = *(v20 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddBoolValue();

        __swift_destroy_boxed_opaque_existential_1(&v47);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 16);
  v9 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGmMR);
    v33 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v33);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v34 = *(v3 + 16);
    REEntityGetName();
    v35 = String.init(cString:)();
    MEMORY[0x1C68F3410](v35);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v37 = v47;
    v36 = v48;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static AnimationLogger.logger);

    v16 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, &v47);
      _os_log_impl(&dword_1C1358000, v16, v39, "%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1C6902A30](v41, -1, -1);
      MEMORY[0x1C6902A30](v40, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v11 = SceneNullable;
  v12 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v12)
  {
    v13 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v13 = Scene.init(coreScene:)(v11);
  }

  v29 = *(v13 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v20 = swift_dynamicCastClassUnconditional();
    if (v7 != 2)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v42 = specialized static Entity.entityInfoType(_:)();
    if (v42)
    {
      v20 = (*(v42 + 232))();
      v43 = *(v20 + 16);

      MEMORY[0x1C68F9740](v43, 0);
      *(v20 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v20);
    }

    else
    {
      v20 = makeEntity(for:)(EntityByName);
    }

    if (v7 != 2)
    {
      goto LABEL_24;
    }

LABEL_15:
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGmMR);
    v21 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v21);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    LOBYTE(v44) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v22 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v22);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v24 = v47;
    v23 = v48;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static AnimationLogger.logger);

    v16 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v47);
      _os_log_impl(&dword_1C1358000, v16, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1C6902A30](v28, -1, -1);
      MEMORY[0x1C6902A30](v27, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGmMR);
    v15 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_1C1358000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1C6902A30](v20, -1, -1);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 8);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v51 = *(a1 + 8);
    v48 = v4;
    outlined init with copy of BindTarget.EntityPath(&v51, &v45);
    v21 = Entity.subscript.getter(&v48);

    if (v21)
    {
      if ((v8 & 1) == 0)
      {
LABEL_24:
        v46 = MEMORY[0x1E69E6530];
        v47 = &protocol witness table for Int;
        *&v45 = v7;
        outlined init with take of ForceEffectBase(&v45, &v48);
        v32 = *__swift_project_boxed_opaque_existential_1(&v48, v50);
        v33 = *(v21 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddInt64Value();

        __swift_destroy_boxed_opaque_existential_1(&v48);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v9 = *(a1 + 16);
  v10 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGmMR);
    v34 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v35 = *(v3 + 16);
    REEntityGetName();
    v36 = String.init(cString:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v38 = v48;
    v37 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v48);
      _os_log_impl(&dword_1C1358000, v17, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v12 = SceneNullable;
  v13 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v13)
  {
    v14 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v14 = Scene.init(coreScene:)(v12);
  }

  v30 = *(v14 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v21 = swift_dynamicCastClassUnconditional();
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v43 = specialized static Entity.entityInfoType(_:)();
    if (v43)
    {
      v21 = (*(v43 + 232))();
      v44 = *(v21 + 16);

      MEMORY[0x1C68F9740](v44, 0);
      *(v21 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v21);
    }

    else
    {
      v21 = makeEntity(for:)(EntityByName);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGmMR);
    v22 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v22);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v45 = v7;
    BYTE8(v45) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v25 = v48;
    v24 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v48);
      _os_log_impl(&dword_1C1358000, v17, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v16);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v49 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v49);
      _os_log_impl(&dword_1C1358000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C6902A30](v21, -1, -1);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  if ((*(a1 + 32) & 1) == 0)
  {
    v52 = *(a1 + 16);
    *&v49 = v4;
    outlined init with copy of BindTarget.EntityPath(&v52, &v46);
    v22 = Entity.subscript.getter(&v49);

    if (v22)
    {
      if ((v9 & 1) == 0)
      {
LABEL_24:
        type metadata accessor for simd_quatf(0);
        v47 = v32;
        v48 = &protocol witness table for simd_quatf;
        v33 = swift_allocObject();
        *&v46 = v33;
        *(v33 + 16) = v7;
        *(v33 + 24) = v8;
        outlined init with take of ForceEffectBase(&v46, &v49);
        v45 = *__swift_project_boxed_opaque_existential_1(&v49, v51);
        v34 = *(v22 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddQuatFValue();

        __swift_destroy_boxed_opaque_existential_1(&v49);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v10 = *(a1 + 24);
  v11 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMR);
    v35 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v35);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v36 = *(v3 + 16);
    REEntityGetName();
    v37 = String.init(cString:)();
    MEMORY[0x1C68F3410](v37);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v38 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v49 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, *(&v38 + 1), &v49);
      _os_log_impl(&dword_1C1358000, v18, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v13 = SceneNullable;
  v14 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v14)
  {
    v15 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v15 = Scene.init(coreScene:)(v13);
  }

  v30 = *(v15 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v22 = swift_dynamicCastClassUnconditional();
    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v43 = specialized static Entity.entityInfoType(_:)();
    if (v43)
    {
      v22 = (*(v43 + 232))();
      v44 = *(v22 + 16);

      MEMORY[0x1C68F9740](v44, 0);
      *(v22 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v22);
    }

    else
    {
      v22 = makeEntity(for:)(EntityByName);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v46 = v49;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGmMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v49 = v7;
    *(&v49 + 1) = v8;
    v50 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10simd_quatfaSgMd, &_sSo10simd_quatfaSgMR);
    v24 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v24);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v25 = v46;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v49 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, *(&v25 + 1), &v49);
      _os_log_impl(&dword_1C1358000, v18, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v16);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v48 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_1C1358000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C6902A30](v21, -1, -1);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  if ((*(a1 + 32) & 1) == 0)
  {
    v51 = *(a1 + 16);
    *&v48 = v4;
    outlined init with copy of BindTarget.EntityPath(&v51, &v45);
    v22 = Entity.subscript.getter(&v48);

    if (v22)
    {
      if ((v9 & 1) == 0)
      {
LABEL_24:
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        v47 = &protocol witness table for SIMD4<A>;
        v32 = swift_allocObject();
        *&v45 = v32;
        *(v32 + 16) = v7;
        *(v32 + 24) = v8;
        outlined init with take of ForceEffectBase(&v45, &v48);
        v44 = *__swift_project_boxed_opaque_existential_1(&v48, v50);
        v33 = *(v22 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloat4Value();

        __swift_destroy_boxed_opaque_existential_1(&v48);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v10 = *(a1 + 24);
  v11 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMR);
    v34 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v35 = *(v3 + 16);
    REEntityGetName();
    v36 = String.init(cString:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v37 = v48;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v48 = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, *(&v37 + 1), &v48);
      _os_log_impl(&dword_1C1358000, v18, v39, "%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1C6902A30](v41, -1, -1);
      MEMORY[0x1C6902A30](v40, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v13 = SceneNullable;
  v14 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v14)
  {
    v15 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v15 = Scene.init(coreScene:)(v13);
  }

  v30 = *(v15 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v22 = swift_dynamicCastClassUnconditional();
    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v42 = specialized static Entity.entityInfoType(_:)();
    if (v42)
    {
      v22 = (*(v42 + 232))();
      v43 = *(v22 + 16);

      MEMORY[0x1C68F9740](v43, 0);
      *(v22 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v22);
    }

    else
    {
      v22 = makeEntity(for:)(EntityByName);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v45 = v48;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGmMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v48 = v7;
    *(&v48 + 1) = v8;
    v49 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGSgMd, &_ss5SIMD4VySfGSgMR);
    v24 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v24);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v25 = v45;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, *(&v25 + 1), &v48);
      _os_log_impl(&dword_1C1358000, v18, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMR);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v16);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v48 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_1C1358000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1C6902A30](v21, -1, -1);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  if ((*(a1 + 32) & 1) == 0)
  {
    v51 = *(a1 + 16);
    *&v48 = v4;
    outlined init with copy of BindTarget.EntityPath(&v51, &v45);
    v22 = Entity.subscript.getter(&v48);

    if (v22)
    {
      if ((v9 & 1) == 0)
      {
LABEL_24:
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v47 = &protocol witness table for SIMD3<A>;
        v32 = swift_allocObject();
        *&v45 = v32;
        *(v32 + 16) = v7;
        *(v32 + 24) = v8;
        outlined init with take of ForceEffectBase(&v45, &v48);
        v44 = *__swift_project_boxed_opaque_existential_1(&v48, v50);
        v33 = *(v22 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloat3Value();

        __swift_destroy_boxed_opaque_existential_1(&v48);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v10 = *(a1 + 24);
  v11 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMR);
    v34 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v35 = *(v3 + 16);
    REEntityGetName();
    v36 = String.init(cString:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v37 = v48;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v48 = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, *(&v37 + 1), &v48);
      _os_log_impl(&dword_1C1358000, v18, v39, "%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1C6902A30](v41, -1, -1);
      MEMORY[0x1C6902A30](v40, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v13 = SceneNullable;
  v14 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v14)
  {
    v15 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v15 = Scene.init(coreScene:)(v13);
  }

  v30 = *(v15 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v22 = swift_dynamicCastClassUnconditional();
    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v42 = specialized static Entity.entityInfoType(_:)();
    if (v42)
    {
      v22 = (*(v42 + 232))();
      v43 = *(v22 + 16);

      MEMORY[0x1C68F9740](v43, 0);
      *(v22 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v22);
    }

    else
    {
      v22 = makeEntity(for:)(EntityByName);
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v45 = v48;
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGmMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v48 = v7;
    *(&v48 + 1) = v8;
    v49 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGSgMd, &_ss5SIMD3VySfGSgMR);
    v24 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v24);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v25 = v45;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static AnimationLogger.logger);

    v18 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, *(&v25 + 1), &v48);
      _os_log_impl(&dword_1C1358000, v18, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMR);
    v15 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_1C1358000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1C6902A30](v20, -1, -1);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 8);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v51 = *(a1 + 8);
    v48 = v4;
    outlined init with copy of BindTarget.EntityPath(&v51, &v45);
    v21 = Entity.subscript.getter(&v48);

    if (v21)
    {
      if ((v8 & 1) == 0)
      {
LABEL_24:
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        v47 = &protocol witness table for SIMD2<A>;
        *&v45 = v7;
        outlined init with take of ForceEffectBase(&v45, &v48);
        v32 = *__swift_project_boxed_opaque_existential_1(&v48, v50);
        v33 = *(v21 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloat2Value();

        __swift_destroy_boxed_opaque_existential_1(&v48);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v9 = *(a1 + 16);
  v10 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMR);
    v34 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v35 = *(v3 + 16);
    REEntityGetName();
    v36 = String.init(cString:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v38 = v48;
    v37 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v48);
      _os_log_impl(&dword_1C1358000, v17, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v12 = SceneNullable;
  v13 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v13)
  {
    v14 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v14 = Scene.init(coreScene:)(v12);
  }

  v30 = *(v14 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v21 = swift_dynamicCastClassUnconditional();
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v43 = specialized static Entity.entityInfoType(_:)();
    if (v43)
    {
      v21 = (*(v43 + 232))();
      v44 = *(v21 + 16);

      MEMORY[0x1C68F9740](v44, 0);
      *(v21 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v21);
    }

    else
    {
      v21 = makeEntity(for:)(EntityByName);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGmMR);
    v22 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v22);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v45 = v7;
    BYTE8(v45) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGSgMd, &_ss5SIMD2VySfGSgMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v25 = v48;
    v24 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v48);
      _os_log_impl(&dword_1C1358000, v17, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGmMR);
    v15 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_1C1358000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1C6902A30](v20, -1, -1);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 8);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v51 = *(a1 + 8);
    v48 = v4;
    outlined init with copy of BindTarget.EntityPath(&v51, &v45);
    v21 = Entity.subscript.getter(&v48);

    if (v21)
    {
      if ((v8 & 1) == 0)
      {
LABEL_24:
        v46 = MEMORY[0x1E69E63B0];
        v47 = &protocol witness table for Double;
        *&v45 = v7;
        outlined init with take of ForceEffectBase(&v45, &v48);
        v32 = *__swift_project_boxed_opaque_existential_1(&v48, v50);
        v33 = *(v21 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddDoubleValue();

        __swift_destroy_boxed_opaque_existential_1(&v48);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v9 = *(a1 + 16);
  v10 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGmMR);
    v34 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v35 = *(v3 + 16);
    REEntityGetName();
    v36 = String.init(cString:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v38 = v48;
    v37 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v48);
      _os_log_impl(&dword_1C1358000, v17, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v12 = SceneNullable;
  v13 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v13)
  {
    v14 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v14 = Scene.init(coreScene:)(v12);
  }

  v30 = *(v14 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v21 = swift_dynamicCastClassUnconditional();
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v43 = specialized static Entity.entityInfoType(_:)();
    if (v43)
    {
      v21 = (*(v43 + 232))();
      v44 = *(v21 + 16);

      MEMORY[0x1C68F9740](v44, 0);
      *(v21 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v21);
    }

    else
    {
      v21 = makeEntity(for:)(EntityByName);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGmMR);
    v22 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v22);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    *&v45 = v7;
    BYTE8(v45) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v25 = v48;
    v24 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v48);
      _os_log_impl(&dword_1C1358000, v17, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

{
  if ((*(*a1 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGmMR);
    v15 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v48);
      _os_log_impl(&dword_1C1358000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1C6902A30](v20, -1, -1);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(a1 + 8);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 52);
  if ((*(a1 + 24) & 1) == 0)
  {
    v51 = *(a1 + 8);
    v48 = v4;
    outlined init with copy of BindTarget.EntityPath(&v51, &v45);
    v21 = Entity.subscript.getter(&v48);

    if (v21)
    {
      if ((v8 & 1) == 0)
      {
LABEL_24:
        v46 = MEMORY[0x1E69E6448];
        v47 = &protocol witness table for Float;
        LODWORD(v45) = v7;
        outlined init with take of ForceEffectBase(&v45, &v48);
        v32 = *__swift_project_boxed_opaque_existential_1(&v48, v50);
        v33 = *(v21 + 16);
        REKeyValueComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        String.utf8CString.getter();
        REKeyValueComponentAddFloatValue();

        __swift_destroy_boxed_opaque_existential_1(&v48);
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v9 = *(a1 + 16);
  v10 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGmMR);
    v34 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](0xD00000000000003BLL, 0x80000001C18E42F0);
    v35 = *(v3 + 16);
    REEntityGetName();
    v36 = String.init(cString:)();
    MEMORY[0x1C68F3410](v36);

    MEMORY[0x1C68F3410](10535, 0xE200000000000000);
    v38 = v48;
    v37 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v48);
      _os_log_impl(&dword_1C1358000, v17, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1C6902A30](v42, -1, -1);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

LABEL_11:

LABEL_12:

    return;
  }

  v12 = SceneNullable;
  v13 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v13)
  {
    v14 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v14 = Scene.init(coreScene:)(v12);
  }

  v30 = *(v14 + 16);
  String.utf8CString.getter();
  EntityByName = RESceneFindEntityByName();

  if (!EntityByName)
  {

    goto LABEL_26;
  }

  if (REEntityGetSwiftObject())
  {

    type metadata accessor for Entity();
    v21 = swift_dynamicCastClassUnconditional();
    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v43 = specialized static Entity.entityInfoType(_:)();
    if (v43)
    {
      v21 = (*(v43 + 232))();
      v44 = *(v21 + 16);

      MEMORY[0x1C68F9740](v44, 0);
      *(v21 + 16) = EntityByName;
      MEMORY[0x1C68F9740](EntityByName, v21);
    }

    else
    {
      v21 = makeEntity(for:)(EntityByName);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGmMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGmMR);
    v22 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v22);

    MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E46A0);
    LODWORD(v45) = v7;
    BYTE4(v45) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v23 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E46D0);

    MEMORY[0x1C68F3410](v6, v5);

    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    v25 = v48;
    v24 = v49;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static AnimationLogger.logger);

    v17 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v48);
      _os_log_impl(&dword_1C1358000, v17, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

uint64_t outlined consume of SetEntityPropertyAction<String>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    outlined consume of ActionEntityResolution();
  }

  return result;
}

uint64_t outlined consume of SetEntityPropertyAction<Bool>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    outlined consume of ActionEntityResolution();
  }

  return result;
}

uint64_t outlined consume of (start: BlendShapeWeights, end: BlendShapeWeights)?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double _s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[14] = 0u;
  a1[15] = xmmword_1C1887610;
  return result;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

unint64_t lazy protocol witness table accessor for type BillboardAction and conformance BillboardAction()
{
  result = lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction;
  if (!lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction;
  if (!lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction and conformance BillboardAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpinAction and conformance SpinAction()
{
  result = lazy protocol witness table cache variable for type SpinAction and conformance SpinAction;
  if (!lazy protocol witness table cache variable for type SpinAction and conformance SpinAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpinAction and conformance SpinAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpinAction and conformance SpinAction;
  if (!lazy protocol witness table cache variable for type SpinAction and conformance SpinAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpinAction and conformance SpinAction);
  }

  return result;
}

uint64_t outlined consume of OrbitEntityAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of ActionEntityResolution();
  }

  return result;
}

uint64_t _s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double _s17RealityFoundation24OrbitEntityActionHandlerVSgWOi0_(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type OrbitEntityAction and conformance OrbitEntityAction()
{
  result = lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction;
  if (!lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrbitEntityAction and conformance OrbitEntityAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImpulseAction and conformance ImpulseAction()
{
  result = lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction;
  if (!lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction;
  if (!lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImpulseAction and conformance ImpulseAction);
  }

  return result;
}

uint64_t outlined consume of SetEntityEnabledAction?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of ActionEntityResolution();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SetEntityEnabledAction and conformance SetEntityEnabledAction()
{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction;
  if (!lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SetEntityEnabledAction and conformance SetEntityEnabledAction);
  }

  return result;
}

uint64_t outlined consume of NotificationAction?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationAction and conformance NotificationAction()
{
  result = lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction;
  if (!lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction;
  if (!lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction and conformance NotificationAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayAnimationAction and conformance PlayAnimationAction()
{
  result = lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction and conformance PlayAnimationAction);
  }

  return result;
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

uint64_t closure #1 in Atomic.store(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Atomic.store(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Atomic.store(_:)(a1);
}

__n128 OrbitAnimation.init(name:duration:axis:startTransform:spinClockwise:orientToPath:rotationCount:bindTarget:blendLayer:repeatMode:fillMode:isAdditive:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X4>, int a6@<W5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, float a15@<S5>, double a16@<D6>, double a17@<D7>, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, int a25)
{
  v37 = a5[1];
  v38 = *a5;
  v36 = *(a5 + 16);
  v31 = *a7;
  v39 = *a8;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(a9 + 56) = a19;
  *(a9 + 64) = a20 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a21;
  *(a9 + 80) = a22 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a23;
  *(a9 + 96) = a24 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a16;
  *(a9 + 112) = 0;
  *(a9 + 120) = a17;
  *(a9 + 128) = 0;
  *(a9 + 132) = a25;
  *(a9 + 136) = 0;
  *(a9 + 137) = v31;
  *(a9 + 144) = 0;
  *(a9 + 152) = a1;
  *(a9 + 160) = a2;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v32;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v38;
  *(a9 + 24) = v37;
  *(a9 + 32) = v36;
  *(a9 + 33) = v47;
  *(a9 + 35) = v48;
  *(a9 + 36) = a6;
  *(a9 + 40) = 0;
  *(a9 + 41) = v39;
  *(a9 + 42) = 0;
  *(a9 + 43) = a18;
  *(a9 + 48) = v33;
  *(a9 + 208) = a10;
  *(a9 + 216) = 0;
  *(a9 + 224) = a11;
  *(a9 + 240) = 0;
  *(a9 + 256) = a12;
  *(a9 + 272) = a13;
  result = a14;
  *(a9 + 288) = a14;
  *(a9 + 304) = 0;
  *(a9 + 305) = a3;
  *(a9 + 306) = a4;
  *(a9 + 308) = a15;
  *(a9 + 312) = 0;
  return result;
}

uint64_t OrbitAnimation.name.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else if (*(v0[6] + 16))
  {
    v3 = v0[1];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path getter for OrbitAnimation.name : OrbitAnimation@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    *a2 = *a1;
    a2[1] = v4;
  }

  else if (*(a1[6] + 16))
  {
    RETimelineDefinitionGetName();
    *a2 = String.init(cString:)();
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t OrbitAnimation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*OrbitAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = *v1;
    v5 = v3;
  }

  else
  {
    v4 = *(v1[6] + 16);
    if (v4)
    {
      RETimelineDefinitionGetName();
      v4 = String.init(cString:)();
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  *a1 = v4;
  a1[1] = v5;

  return OrbitAnimation.name.modify;
}

uint64_t OrbitAnimation.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *v5 = v3;
    v5[1] = v2;
  }

  else
  {
    v8 = a1[3];

    *v5 = v3;
    v5[1] = v2;
  }

  return result;
}

uint64_t OrbitAnimation.blendLayer.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t OrbitAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t *(*OrbitAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40) == 1)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 36);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.blendLayer.modify;
}

uint64_t OrbitAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 32);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 48) + 16);
    if (v5)
    {
      v8 = *(v1 + 16);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t key path setter for OrbitAnimation.bindTarget : OrbitAnimation(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a2 + 32);
  outlined copy of BindTarget(*a1, v4, v7);
  result = outlined consume of BindTarget?(v5, v6, v8);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  return result;
}

uint64_t OrbitAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*OrbitAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 32);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 48) + 16);
    if (v6)
    {
      v9 = *(v1 + 16);
      v10 = *(*(v1 + 48) + 16);
      v11 = *(v1 + 24);
      v12 = *(v1 + 32);
      RETimelineDefinitionGetTargetPath();
      v13 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v13, v14, v16);

      LOBYTE(v5) = v12;
      v4 = v11;
      v3 = v9;
      v6 = v16[0];
      v7 = v16[1];
      v8 = v17;
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined copy of BindTarget?(v3, v4, v5);
  return OrbitAnimation.bindTarget.modify;
}

uint64_t OrbitAnimation.bindTarget.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 16), *(v2 + 24), *(v2 + 32));
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = v5;
  }

  return result;
}

uint64_t OrbitAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*OrbitAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 42))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 41);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.fillMode.modify;
}

uint64_t OrbitAnimation.additive.getter()
{
  LODWORD(v1) = *(v0 + 43);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

_BYTE *(*OrbitAnimation.additive.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 43);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return BlendTreeAnimation.isAdditive.modify;
}

uint64_t OrbitAnimation.trimStart.getter()
{
  if (*(v0 + 65))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  return result;
}

uint64_t key path getter for OrbitAnimation.trimStart : OrbitAnimation@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 65))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 56);
    v3 = *(result + 64);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t OrbitAnimation.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*OrbitAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 65))
  {
    if (*(*(v1 + 200) + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 56);
    v4 = *(v1 + 64);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimStart.modify;
}

uint64_t OrbitAnimation.trimEnd.getter()
{
  if (*(v0 + 81))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  return result;
}

uint64_t key path getter for OrbitAnimation.trimEnd : OrbitAnimation@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 81))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 72);
    v3 = *(result + 80);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t OrbitAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*OrbitAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 81))
  {
    if (*(*(v1 + 200) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 72);
    v4 = *(v1 + 80);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimEnd.modify;
}

uint64_t OrbitAnimation.trimDuration.getter()
{
  if (*(v0 + 97))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 88);
    v2 = *(v0 + 96);
  }

  return result;
}

uint64_t key path getter for OrbitAnimation.trimDuration : OrbitAnimation@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 97))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 88);
    v3 = *(result + 96);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t OrbitAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*OrbitAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 97))
  {
    if (*(*(v1 + 200) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 88);
    v4 = *(v1 + 96);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimDuration.modify;
}

double OrbitAnimation.offset.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

uint64_t key path getter for OrbitAnimation.offset : OrbitAnimation@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 112))
  {
    v3 = *(result + 200);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipOffset();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 104);
  }

  *a2 = v4;
  return result;
}

void *(*OrbitAnimation.offset.modify(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 112))
  {
    v3 = *(v1 + 200);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipOffset();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 104);
  }

  *a1 = v4;
  return OrbitAnimation.offset.modify;
}

void *OrbitAnimation.offset.modify(void *result)
{
  v1 = result[1];
  *(v1 + 104) = *result;
  *(v1 + 112) = 0;
  return result;
}

double OrbitAnimation.delay.getter()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

uint64_t key path getter for OrbitAnimation.delay : OrbitAnimation@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 128))
  {
    v3 = *(result + 200);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipDelay();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 120);
  }

  *a2 = v4;
  return result;
}

void *(*OrbitAnimation.delay.modify(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 128))
  {
    v3 = *(v1 + 200);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipDelay();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 120);
  }

  *a1 = v4;
  return OrbitAnimation.delay.modify;
}

void *OrbitAnimation.delay.modify(void *result)
{
  v1 = result[1];
  *(v1 + 120) = *result;
  *(v1 + 128) = 0;
  return result;
}

float OrbitAnimation.speed.getter()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 132);
  }

  v1 = *(v0 + 200);
  result = 1.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t key path getter for OrbitAnimation.speed : OrbitAnimation@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  if (*(result + 136))
  {
    v3 = *(result + 200);
    v4 = 1.0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipSpeed();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 132);
  }

  *a2 = v4;
  return result;
}

uint64_t *(*OrbitAnimation.speed.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 136))
  {
    v3 = *(v1 + 200);
    v4 = 1.0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipSpeed();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 132);
  }

  *(a1 + 8) = v4;
  return OrbitAnimation.speed.modify;
}

uint64_t *OrbitAnimation.speed.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 132) = *(result + 2);
  *(v1 + 136) = 0;
  return result;
}

uint64_t OrbitAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + 137);
  if (result == 4)
  {
    v3 = *(v1 + 200);
    if (!*(v3 + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    v5 = *(v3 + 16);
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

_BYTE *(*OrbitAnimation.repeatMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 137);
  if (v2 == 4)
  {
    v3 = *(v1 + 200);
    if (*(v3 + 16))
    {
      v4 = a1;
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() != 2)
      {
        LOBYTE(v2) = 0;
        a1 = v4;
        goto LABEL_9;
      }

      ClipLoopBehavior = RETimelineDefinitionGetClipLoopBehavior();
      LOBYTE(v2) = ClipLoopBehavior;
      v7 = ClipLoopBehavior >= 4;
      a1 = v4;
      if (!v7)
      {
        goto LABEL_9;
      }

      a1 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LOBYTE(v2) = 0;
  }

LABEL_9:
  *(a1 + 8) = v2;
  return BlendTreeAnimation.repeatMode.modify;
}

double OrbitAnimation.duration.getter()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

void *(*OrbitAnimation.duration.modify(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 216))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetDuration();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = *(v1 + 208);
  }

  *a1 = v3;
  return OrbitAnimation.duration.modify;
}

void *OrbitAnimation.duration.modify(void *result)
{
  v1 = result[1];
  *(v1 + 208) = *result;
  *(v1 + 216) = 0;
  return result;
}

double OrbitAnimation.axis.getter()
{
  if (*(v0 + 240))
  {
    if (*(*(v0 + 48) + 16))
    {
      RETimelineDefinitionGetAxis();
    }

    else
    {
      return 0.0078125;
    }
  }

  else
  {
    result = *(v0 + 224);
    v2 = *(v0 + 232);
  }

  return result;
}

void (*OrbitAnimation.axis.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  if (*(v1 + 240))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetAxis();
    }

    else
    {
      v5 = *&zmmword_1C1887630[16];
    }
  }

  else
  {
    v5 = *(v1 + 224);
  }

  *v4 = v5;
  return OrbitAnimation.axis.modify;
}

void OrbitAnimation.axis.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 224) = *v1;
  *(v2 + 232) = v3;
  *(v2 + 240) = 0;
  free(v1);
}

double OrbitAnimation.startTransform.getter()
{
  if (*(v0 + 304))
  {
    if (*(*(v0 + 48) + 16))
    {
      RETimelineDefinitionGetStartTransform();
      if (one-time initialization token for identity != -1)
      {
        v7 = result;
        swift_once();
        return v7;
      }
    }

    else
    {
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      return 0.00781250185;
    }
  }

  else
  {
    result = *(v0 + 256);
    v2 = *(v0 + 264);
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
  }

  return result;
}

void OrbitAnimation.startTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  v3[19].n128_u8[0] = 0;
}

void (*OrbitAnimation.startTransform.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  if (*(v1 + 304))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetStartTransform();
      if (one-time initialization token for identity != -1)
      {
        v10 = v6;
        v11 = v5;
        v9 = v7;
        swift_once();
        v7 = v9;
        v6 = v10;
        v5 = v11;
      }
    }

    else
    {
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      v5 = xmmword_1C1887620;
      v6 = static simd_quatf.identity;
      v7 = 0uLL;
    }
  }

  else
  {
    v5 = *(v1 + 256);
    v6 = *(v1 + 272);
    v7 = *(v1 + 288);
  }

  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  return OrbitAnimation.startTransform.modify;
}

void OrbitAnimation.startTransform.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = *(v1 + 1);
  v5 = v1[4];
  *(v2 + 256) = *v1;
  *(v2 + 272) = v4;
  *(v2 + 288) = v5;
  *(v2 + 296) = v3;
  *(v2 + 304) = 0;
  free(v1);
}

uint64_t OrbitAnimation.spinClockwise.getter()
{
  v1 = *(v0 + 305);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSpinClockwise();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

_BYTE *(*OrbitAnimation.spinClockwise.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 305);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetSpinClockwise();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return OrbitAnimation.spinClockwise.modify;
}

uint64_t OrbitAnimation.orientToPath.getter()
{
  LODWORD(v1) = *(v0 + 306);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionGetOrientToPath();
    }
  }

  return v1 & 1;
}

_BYTE *(*OrbitAnimation.orientToPath.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 306);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetOrientToPath();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return OrbitAnimation.orientToPath.modify;
}

float OrbitAnimation.rotationCount.getter()
{
  if ((*(v0 + 312) & 1) == 0)
  {
    return *(v0 + 308);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 1.0;
  }

  RETimelineDefinitionGetRotationCount();
  return result;
}

uint64_t *(*OrbitAnimation.rotationCount.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 312))
  {
    if (*(*(v1 + 48) + 16))
    {
      v2 = a1;
      v3 = *(*(v1 + 48) + 16);
      RETimelineDefinitionGetRotationCount();
      a1 = v2;
    }

    else
    {
      v4 = 1.0;
    }
  }

  else
  {
    v4 = *(v1 + 308);
  }

  *(a1 + 8) = v4;
  return OrbitAnimation.rotationCount.modify;
}

uint64_t *OrbitAnimation.rotationCount.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 308) = *(result + 2);
  *(v1 + 312) = 0;
  return result;
}

uint64_t OrbitAnimation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  swift_retain_n();
  v6 = REAssetHandleAssetType();
  if (v6 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v9 = RETimelineDefinitionCreateFromTimeline();

      *(v4 + 16) = v9;
      if (v9)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v10 = 1;

          if (*(v4 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v12 = ClipSourceRef;
            v13 = swift_allocObject();
            *(v13 + 16) = v12;
            RERetain();
            RERelease();
            v19 = 0;
            v20 = 0;
            v14 = 0;
          }

          else
          {
            v13 = swift_allocObject();
            v19 = 0;
            v20 = 0;
            v14 = 0;
            *(v13 + 16) = 0;
          }

          v18 = 2;
          v17 = v4;
          v16 = 1;
          goto LABEL_17;
        }

        v9 = *(v4 + 16);
      }

      if (v9)
      {
        RETimelineDefinitionGetName();
        v19 = String.init(cString:)();
        v20 = v15;
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v18 = 0;
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v10 = 0;
      v16 = 0;
      v14 = v4;
      v13 = v4;
LABEL_17:

      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = -1;
      *(a2 + 36) = 0x201000100000000;
      *(a2 + 48) = v13;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 65) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 81) = 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 97) = 1;
      *(a2 + 104) = 0;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = 0;
      *(a2 + 136) = 1;
      *(a2 + 137) = 4;
      *(a2 + 144) = v14;
      *(a2 + 152) = v19;
      *(a2 + 168) = 0;
      *(a2 + 176) = 0;
      *(a2 + 160) = v20;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0;
      *(a2 + 192) = v16;
      *(a2 + 193) = 0;
      *(a2 + 194) = v10;
      *(a2 + 195) = v18;
      *(a2 + 200) = v17;
      *(a2 + 208) = 0;
      *(a2 + 216) = 1;
      *(a2 + 224) = 0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 1;
      *(a2 + 272) = 0u;
      *(a2 + 288) = 0u;
      *(a2 + 256) = 0u;
      *(a2 + 304) = 1;
      *(a2 + 305) = 514;
      *(a2 + 308) = 0;
      *(a2 + 312) = 1;
      return result;
    }
  }

  else
  {
    if (v6 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OrbitAnimation.createResource()()
{
  v1 = *v0;
  v2 = *(v0 + 41);
  v3 = *(v0 + 11);
  v4 = v0[6];
  v31 = v0[28];
  v29 = v0[26];
  v30 = v0[29];
  v39 = *(v0 + 240);
  v40 = *(v0 + 216);
  v36 = v0[33];
  v37 = v0[32];
  v34 = v0[35];
  v35 = v0[34];
  v32 = v0[37];
  v33 = v0[36];
  v38 = *(v0 + 304);
  v5 = *(v0 + 305);
  v6 = *(v0 + 306);
  v7 = *(v0 + 307);
  v8 = *(v0 + 77);
  v9 = *(v0 + 312);
  if (v0[1])
  {
    v15 = *(v0 + 32);
    v19 = *(v0 + 43);
    v21 = *(v0 + 40);
    v23 = *(v0 + 41);
    v25 = *(v0 + 42);
    v27 = *(v0 + 11);
    v17 = *v0;
  }

  else
  {
    if (*(v0 + 32) == 255 && (v0[5] & 1) != 0 && (*(v0 + 42) & 1) != 0 && *(v0 + 43) == 2 && (v0[27] & 1) != 0 && (v0[30] & 1) != 0 && (v0[38] & 1) != 0 && v5 == 2 && v6 == 2 && (v0[39] & 1) != 0)
    {
      v41 = *v0;
      v42 = *(v0 + 1);
      LODWORD(v44) = *(v0 + 33);
      *(&v44 + 3) = *(v0 + 9);
      v46 = *(v0 + 11);
      v47 = v0[6];
      v48 = *(v0 + 7);
      v50 = *(v0 + 9);
      v58 = *(v0 + 17);
      v56 = *(v0 + 15);
      v54 = *(v0 + 13);
      v52 = *(v0 + 11);
      v64 = *(v0 + 23);
      v62 = *(v0 + 21);
      v60 = *(v0 + 19);
      v66 = v0[25];
      v68 = v0[26];
      *v69 = *(v0 + 217);
      *&v69[3] = *(v0 + 55);
      *&v69[7] = v0[28];
      *&v69[15] = v0[29];
      *v71 = *(v0 + 241);
      *&v71[7] = v0[31];
      *&v71[15] = v0[32];
      v73 = v0[33];
      v74 = v0[34];
      v75 = v0[35];
      v76 = v0[36];
      v77 = v0[37];
      v11._rawValue = 0;
      return OrbitAnimation.createResource(timelineDefinition:)(v11);
    }

    v16 = *(v0 + 32);
    v18 = *v0;
    v20 = *(v0 + 43);
    v22 = *(v0 + 40);
    v24 = *(v0 + 41);
    v26 = *(v0 + 42);
    v28 = *(v0 + 11);
    if (*(v4 + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  OrbitAnimation = RETimelineDefinitionCreateOrbitAnimation();

  if ((v40 & 1) != 0 && *(v4 + 16))
  {
    RETimelineDefinitionGetDuration();
  }

  RETimelineDefinitionSetDuration();
  if ((v39 & 1) != 0 && *(v4 + 16))
  {
    RETimelineDefinitionGetAxis();
  }

  RETimelineDefinitionSetAxis();
  if (v38)
  {
    if (*(v4 + 16))
    {
      RETimelineDefinitionGetStartTransform();
      if (one-time initialization token for identity == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if (one-time initialization token for identity != -1)
    {
LABEL_26:
      swift_once();
    }
  }

LABEL_29:
  RETimelineDefinitionSetStartTransform();
  if (v5 == 2 && *(v4 + 16))
  {
    RETimelineDefinitionGetSpinClockwise();
  }

  RETimelineDefinitionSetSpinClockwise();
  if (v6 == 2 && *(v4 + 16))
  {
    RETimelineDefinitionGetOrientToPath();
  }

  RETimelineDefinitionSetOrientToPath();
  if ((v9 & 1) != 0 && *(v4 + 16))
  {
    RETimelineDefinitionGetRotationCount();
  }

  RETimelineDefinitionSetRotationCount();
  v43 = *(v0 + 1);
  LODWORD(v45) = *(v0 + 33);
  *(&v45 + 3) = *(v0 + 9);
  v51 = *(v0 + 9);
  v49 = *(v0 + 7);
  v59 = *(v0 + 17);
  v57 = *(v0 + 15);
  v55 = *(v0 + 13);
  v53 = *(v0 + 11);
  v65 = *(v0 + 23);
  v63 = *(v0 + 21);
  v61 = *(v0 + 19);
  v67 = v0[25];
  LODWORD(v70) = *(v0 + 217);
  *(&v70 + 3) = *(v0 + 55);
  *&v72 = *(v0 + 241);
  *(&v72 + 7) = v0[31];
  v13._rawValue = OrbitAnimation;
  v12 = OrbitAnimation.createResource(timelineDefinition:)(v13);
  RERelease();
  return v12;
}

uint64_t OrbitAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = v1[1];
  v57[0] = *v1;
  v57[1] = v2;
  v57[2] = v1[2];
  v58 = *(v1 + 6);
  v3 = *(v1 + 168);
  v65 = *(v1 + 152);
  v66 = v3;
  v67 = *(v1 + 184);
  v68 = *(v1 + 25);
  v4 = *(v1 + 104);
  v61 = *(v1 + 88);
  v62 = v4;
  v5 = *(v1 + 136);
  v63 = *(v1 + 120);
  v64 = v5;
  v6 = *(v1 + 72);
  v59 = *(v1 + 56);
  v60 = v6;
  if (!a1._rawValue)
  {
    v11 = *(v1 + 168);
    v53 = *(v1 + 152);
    v54 = v11;
    v55 = *(v1 + 184);
    v56 = *(v1 + 25);
    v12 = *(v1 + 104);
    v49 = *(v1 + 88);
    v50 = v12;
    v13 = *(v1 + 136);
    v51 = *(v1 + 120);
    v52 = v13;
    v14 = *(v1 + 72);
    v47 = *(v1 + 56);
    v48 = v14;
    if (!TimelineClipProperties.isClipped.getter())
    {
      if (!*(v58 + 16))
      {
        return 0;
      }

      v16 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v16 + 120, &v47);
      v17 = *(&v48 + 1);
      v18 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      (*(v18 + 32))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (!TimelineAsset)
      {
        return 0;
      }

      v20 = TimelineAsset;
      RETimelineDefinitionGetName();
      v21 = String.init(cString:)();
      v23 = v22;
      type metadata accessor for AnimationResource();
      v10 = swift_allocObject();
      v10[2] = v20;
      v10[3] = v21;
      v10[4] = v23;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v10;
    }

    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v47 = v59;
    v48 = v60;
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v43 = v65;
    v44 = v66;
    v45 = v67;
    v46 = v68;
    v39 = v61;
    v40 = v62;
    v41 = v63;
    v42 = v64;
    v37 = v59;
    v38 = v60;
    outlined init with copy of TimelineClipProperties(&v59, &v47);
    v10 = TimelineClipProperties.createClip()();
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v56 = v46;
    v49 = v39;
    v50 = v40;
    v51 = v41;
    v52 = v42;
    v47 = v37;
    v48 = v38;
    v15 = &v47;
    goto LABEL_14;
  }

  v8 = v1[1];
  v47 = *v1;
  v48 = v8;
  v49 = v1[2];
  *&v50 = *(v1 + 6);
  outlined init with copy of TimelineBaseProperties(v57, &v37);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v35[0] = v47;
  v35[1] = v48;
  v35[2] = v49;
  v36 = v50;
  outlined destroy of TimelineBaseProperties(v35);
  v53 = v65;
  v54 = v66;
  v55 = v67;
  v56 = v68;
  v49 = v61;
  v50 = v62;
  v51 = v63;
  v52 = v64;
  v47 = v59;
  v48 = v60;
  if (TimelineClipProperties.isClipped.getter())
  {
    v31 = v61;
    v32 = v62;
    v33 = v63;
    v34 = v64;
    v29 = v59;
    v30 = v60;
    v28 = v68;
    v26 = v66;
    v27 = v67;
    v25 = v65;
    type metadata accessor for TimelineDefinition();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    outlined init with copy of TimelineClipProperties(&v59, &v47);
    RERetain();

    v49 = v31;
    v50 = v32;
    v51 = v33;
    v47 = v29;
    v48 = v30;
    *&v52 = v34;
    *(&v52 + 1) = v9;
    v53 = v25;
    v54 = v26;
    v55 = v27;
    v56 = v28;
    outlined init with copy of TimelineClipProperties(&v47, &v37);
    if (*(v9 + 16))
    {

      closure #1 in TimelineClipProperties.createClip()(&v47, &v37);

      outlined destroy of TimelineClipProperties(&v47);
      v10 = v37;
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v47);
      v10 = 0;
    }

    v39 = v31;
    v40 = v32;
    v41 = v33;
    v37 = v29;
    v38 = v30;
    *&v42 = v34;
    *(&v42 + 1) = v9;
    v46 = v28;
    v44 = v26;
    v45 = v27;
    v43 = v25;
    v15 = &v37;
LABEL_14:
    outlined destroy of TimelineClipProperties(v15);
    return v10;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v10 = TimelineDefinition.resource.getter();
  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v10;
}

uint64_t protocol witness for AnimationDefinition.name.getter in conformance OrbitAnimation()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else if (*(v0[6] + 16))
  {
    v3 = v0[1];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance OrbitAnimation(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = OrbitAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance OrbitAnimation()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance OrbitAnimation(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance OrbitAnimation@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance OrbitAnimation(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimStart.getter in conformance OrbitAnimation()
{
  if (*(v0 + 65))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.setter in conformance OrbitAnimation(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.getter in conformance OrbitAnimation()
{
  if (*(v0 + 81))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.setter in conformance OrbitAnimation(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.getter in conformance OrbitAnimation()
{
  if (*(v0 + 97))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 88);
    v2 = *(v0 + 96);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.setter in conformance OrbitAnimation(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.offset.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance OrbitAnimation(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = OrbitAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.delay.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance OrbitAnimation(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = OrbitAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

float protocol witness for AnimationDefinition.speed.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 132);
  }

  v1 = *(v0 + 200);
  result = 1.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance OrbitAnimation(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OrbitAnimation.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.duration.getter in conformance OrbitAnimation()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

uint64_t protocol witness for AnimationDefinitionInternal.generate() in conformance OrbitAnimation()
{
  result = OrbitAnimation.createResource()();
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v1 = 0xD00000000000001CLL;
    *(v1 + 8) = 0x80000001C18DE2F0;
    *(v1 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrbitAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OrbitAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int TweenMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t SampledAnimation.name.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else if (*(v0[6] + 16))
  {
    v3 = v0[1];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path setter for SampledAnimation.name : <A>SampledAnimation<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SampledAnimation.name.setter(v1, v2);
}

uint64_t SampledAnimation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*SampledAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  memcpy(v5, v1, sizeof(v5));
  *a1 = SampledAnimation.name.getter();
  a1[1] = v3;
  return BlendTreeAnimation.name.modify;
}

uint64_t SampledAnimation.blendLayer.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 36);
  }

  result = *(*(v0 + 48) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t SampledAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t *(*SampledAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 40))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 36);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.blendLayer.modify;
}

uint64_t SampledAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 32);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 48) + 16);
    if (v5)
    {
      v8 = *(v1 + 16);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

double key path getter for SampledAnimation.bindTarget : <A>SampledAnimation<A>@<D0>(uint64_t a1@<X8>)
{
  SampledAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t key path setter for SampledAnimation.bindTarget : <A>SampledAnimation<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  outlined copy of BindTarget(v4[0], v1, v2);
  return SampledAnimation.bindTarget.setter(v4);
}

uint64_t SampledAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t (*SampledAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  memcpy(v4, v1, sizeof(v4));
  SampledAnimation.bindTarget.getter(a1);
  return BlendTreeAnimation.bindTarget.modify;
}

uint64_t SampledAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 42))
  {
    result = *(*(v1 + 48) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 41);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*SampledAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 42))
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 41);
  }

  *(a1 + 8) = v2;
  return BlendTreeAnimation.fillMode.modify;
}

uint64_t SampledAnimation.additive.getter()
{
  LODWORD(v1) = *(v0 + 43);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 48) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

_BYTE *(*SampledAnimation.additive.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 43);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 48) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return BlendTreeAnimation.isAdditive.modify;
}

uint64_t SampledAnimation.trimStart.getter()
{
  if (*(v0 + 65))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  return result;
}

uint64_t SampledAnimation.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  *(v2 + 65) = 0;
  return result;
}

uint64_t (*SampledAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 65))
  {
    if (*(*(v1 + 200) + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 56);
    v4 = *(v1 + 64);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimStart.modify;
}

uint64_t SampledAnimation.trimEnd.getter()
{
  if (*(v0 + 81))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  return result;
}

uint64_t SampledAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  *(v2 + 81) = 0;
  return result;
}

uint64_t (*SampledAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 81))
  {
    if (*(*(v1 + 200) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 72);
    v4 = *(v1 + 80);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimEnd.modify;
}

uint64_t SampledAnimation.trimDuration.getter()
{
  if (*(v0 + 97))
  {
    result = *(*(v0 + 200) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 88);
    v2 = *(v0 + 96);
  }

  return result;
}

uint64_t SampledAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  *(v2 + 97) = 0;
  return result;
}

uint64_t (*SampledAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 97))
  {
    if (*(*(v1 + 200) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 88);
    v4 = *(v1 + 96);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return BlendTreeAnimation.trimDuration.modify;
}

double SampledAnimation.offset.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

double (*SampledAnimation.offset.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = SampledAnimation.offset.getter();
  return BlendTreeAnimation.offset.modify;
}

double SampledAnimation.delay.getter()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  v1 = *(v0 + 200);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

double (*SampledAnimation.delay.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  memcpy(v4, v1, sizeof(v4));
  *a1 = SampledAnimation.delay.getter();
  return BlendTreeAnimation.delay.modify;
}

float SampledAnimation.speed.getter()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 132);
  }

  v1 = *(v0 + 200);
  result = 1.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

float (*SampledAnimation.speed.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  memcpy(v4, v1, sizeof(v4));
  *(a1 + 8) = SampledAnimation.speed.getter();
  return BlendTreeAnimation.speed.modify;
}

uint64_t SampledAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + 137);
  if (result == 4)
  {
    v3 = *(v1 + 200);
    if (!*(v3 + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    v5 = *(v3 + 16);
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

_BYTE *(*SampledAnimation.repeatMode.modify(void *a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = a1 + 1;
  memcpy(v4, v1, sizeof(v4));
  SampledAnimation.repeatMode.getter(v2);
  return BlendTreeAnimation.repeatMode.modify;
}

uint64_t SampledAnimation.tweenMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 208);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      result = RETimelineDefinitionGetInterpolationEnabled();
      a1 = v3;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    result = v2 & 1;
  }

  *a1 = result;
  return result;
}

_BYTE *(*SampledAnimation.tweenMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 208);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      InterpolationEnabled = RETimelineDefinitionGetInterpolationEnabled();
      a1 = v3;
    }

    else
    {
      InterpolationEnabled = 1;
    }
  }

  else
  {
    InterpolationEnabled = v2 & 1;
  }

  *(a1 + 8) = InterpolationEnabled;
  return SampledAnimation.tweenMode.modify;
}

float SampledAnimation.frameInterval.getter()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 212);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.033333;
  }

  RETimelineDefinitionGetFrameInterval();
  return result;
}

float (*SampledAnimation.frameInterval.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  if (*(v1 + 216))
  {
    if (*(*(v1 + 48) + 16))
    {
      v2 = a1;
      v3 = *(*(v1 + 48) + 16);
      RETimelineDefinitionGetFrameInterval();
      a1 = v2;
    }

    else
    {
      v4 = 1023969417;
    }
  }

  else
  {
    v4 = *(v1 + 212);
  }

  *(a1 + 8) = v4;
  return SampledAnimation.frameInterval.modify;
}

float SampledAnimation.frameInterval.modify(float *a1)
{
  v1 = *a1;
  result = a1[2];
  *(v1 + 212) = result;
  *(v1 + 216) = 0;
  return result;
}

double SampledAnimation.start.getter()
{
  if ((*(v0 + 240) & 1) == 0)
  {
    return *(v0 + 232);
  }

  if (!*(*(v0 + 48) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetStartTime();
  return v1;
}

double (*SampledAnimation.start.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  if (*(v1 + 240))
  {
    if (*(*(v1 + 48) + 16))
    {
      RETimelineDefinitionGetStartTime();
      v4 = v3;
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    v4 = *(v1 + 232);
  }

  *a1 = v4;
  return SampledAnimation.start.modify;
}

double SampledAnimation.start.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 232) = *a1;
  *(v1 + 240) = 0;
  return result;
}

double specialized SampledAnimation.end.getter()
{
  if ((*(v0 + 256) & 1) == 0)
  {
    return *(v0 + 248);
  }

  if (*(*(v0 + 48) + 16))
  {
    RETimelineDefinitionGetEndTime();
    return v1;
  }

  else
  {
    v3 = *(v0 + 224);
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0.0;
    }

    v5 = *(v0 + 212);
    if (*(v0 + 216))
    {
      v5 = 0.0333333351;
    }

    return v4 * v5;
  }
}

uint64_t SampledAnimation.end.getter(uint64_t result)
{
  if ((*(v1 + 256) & 1) == 0)
  {
    v4 = *(v1 + 248);
    return result;
  }

  v2 = *(v1 + 48);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
    return RETimelineDefinitionGetEndTime();
  }

  v5 = *(v1 + 212);
  v6 = *(v1 + 216);
  if (*(v1 + 224))
  {
    result = MEMORY[0x1C68F3740](*(v1 + 224), *(result + 16));
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  else if ((*(v1 + 216) & 1) == 0)
  {
    return result;
  }

  result = *(v2 + 16);
  if (result)
  {
    return RETimelineDefinitionGetFrameInterval();
  }

  return result;
}

double (*SampledAnimation.end.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  a1[1] = v2;
  memcpy(v7, v2, sizeof(v7));
  SampledAnimation.end.getter(a2);
  *a1 = v5;
  return SampledAnimation.end.modify;
}

double SampledAnimation.end.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 248) = *a1;
  *(v1 + 256) = 0;
  return result;
}

uint64_t (*SampledAnimation.duration.modify(void *a1, uint64_t a2))()
{
  a1[1] = v2;
  memcpy(v7, v2, sizeof(v7));
  SampledAnimation.end.getter(a2);
  *a1 = v5;
  return SampledAnimation.duration.modify;
}

uint64_t SampledAnimation.init(frames:name:tweenMode:frameInterval:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, char *a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v31 = a6[1];
  v32 = *a6;
  v30 = *(a6 + 16);
  v26 = *a8;
  v33 = *a14;
  v34 = *a4;
  *(a9 + 208) = 2;
  *(a9 + 232) = 0;
  *(a9 + 240) = 1;
  *(a9 + 248) = 0;
  *(a9 + 256) = 1;
  *(a9 + 264) = 0;
  *(a9 + 272) = 514;
  *(a9 + 274) = 2;
  *(a9 + 280) = 0;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(a9 + 56) = a15;
  *(a9 + 64) = a16 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a17;
  *(a9 + 80) = a18 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a19;
  *(a9 + 96) = a20 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = a12;
  *(a9 + 128) = 0;
  *(a9 + 132) = a13;
  *(a9 + 136) = 0;
  *(a9 + 137) = v26;
  *(a9 + 144) = 0;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v27;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = v30;
  *(a9 + 33) = v38;
  *(a9 + 35) = v39;
  *(a9 + 36) = a7;
  *(a9 + 40) = 0;
  *(a9 + 41) = v33;
  *(a9 + 42) = 0;
  *(a9 + 43) = a5;
  *(a9 + 48) = result;
  *(a9 + 224) = a1;
  *(a9 + 212) = a10;
  *(a9 + 216) = 0;
  *(a9 + 208) = v34;
  return result;
}

uint64_t SampledAnimation.createResource()(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v18, v1, sizeof(v18));
  v3 = *(*(a1 - 8) + 16);
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySfGMd, &_s17RealityFoundation16SampledAnimationVySfGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVySfGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVySfGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVySfGMd, &_s17RealityFoundation16SampledAnimationVySfGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998CA0];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D98];
LABEL_13:
    v9 = SampledAnimation<>.createResource()(v6, v7, v8);
    goto LABEL_14;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySdGMd, &_s17RealityFoundation16SampledAnimationVySdGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVySdGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVySdGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVySdGMd, &_s17RealityFoundation16SampledAnimationVySdGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C80];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D78];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD2VySfGGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C88];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D80];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD3VySfGGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C90];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D88];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation16SampledAnimationVys5SIMD4VySfGGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998C98];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998D90];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation16SampledAnimationVySo10simd_quatfaGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v6 = MEMORY[0x1E6998CA8];
    v7 = SampledAnimation<>.frames.getter;
    v8 = MEMORY[0x1E6998DA0];
    goto LABEL_13;
  }

  memcpy(v18, __dst, sizeof(v18));
  v3(v16, __dst, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR);
  if (swift_dynamicCast())
  {
    memcpy(v15, __src, sizeof(v15));
    v4 = &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd;
    v5 = &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR;
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation16SampledAnimationVy0A3Kit9TransformVGMR);
    memcpy(v14, __dst, sizeof(v14));
    v3(v16, __dst, a1);
    swift_dynamicCast();
    memcpy(v12, v13, sizeof(v12));
    v9 = SampledAnimation<>.createResource()();
  }

  else
  {
    memcpy(v18, __dst, sizeof(v18));
    v3(v16, __dst, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR);
    if (swift_dynamicCast())
    {
      memcpy(v15, __src, sizeof(v15));
      v4 = &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd;
      v5 = &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR;
      outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation16SampledAnimationVyAA15JointTransformsVGMR);
      memcpy(v14, __dst, sizeof(v14));
      v3(v16, __dst, a1);
      swift_dynamicCast();
      memcpy(v12, v13, sizeof(v12));
      v9 = SampledAnimation<>.createResource()();
    }

    else
    {
      memcpy(v18, __dst, sizeof(v18));
      v3(v16, __dst, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      memcpy(v15, __src, sizeof(v15));
      v4 = &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMd;
      v5 = &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMR;
      outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation16SampledAnimationVyAA17BlendShapeWeightsVGMR);
      memcpy(v14, __dst, sizeof(v14));
      v3(v16, __dst, a1);
      swift_dynamicCast();
      memcpy(v12, v13, sizeof(v12));
      v9 = SampledAnimation<>.createResource()();
    }
  }

LABEL_14:
  v10 = v9;
  memcpy(v16, v12, sizeof(v16));
  outlined destroy of BodyTrackingComponent?(v16, v4, v5);
  return v10;
}

uint64_t SampledAnimation<>.createResource()(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), void (*a3)(void *, uint64_t, void))
{
  memcpy(v17, v3, sizeof(v17));
  if (!v17[1])
  {
    if (LOBYTE(v17[4]) == 255 && (v17[5] & 1) != 0 && (v17[5] & 0x10000) != 0 && BYTE3(v17[5]) == 2 && LOBYTE(v17[26]) == 2 && (v17[27] & 1) != 0 && !v17[28] && (v17[30] & 1) != 0 && (v17[32] & 1) != 0 && !v17[33] && LOBYTE(v17[34]) == 2 && BYTE1(v17[34]) == 2 && BYTE2(v17[34]) == 2 && !v17[35])
    {
      v7._rawValue = 0;
      return specialized SampledAnimation.createResource(timelineDefinition:)(v7);
    }

    if (*(v17[6] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  v9 = String.utf8CString.getter();

  v10 = a1(v9 + 32);

  v12 = *(a2(v11) + 16);

  if (v12)
  {
    v14 = a2(v13);
    a3(v10, v14 + 32, *(v14 + 16));

    v15._rawValue = v10;
    v8 = specialized SampledAnimation.createResource(timelineDefinition:)(v15);
    RERelease();
  }

  else
  {
    RERelease();
    return 0;
  }

  return v8;
}

uint64_t SampledAnimation<>.createResource()()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (!__dst[1])
  {
    if (LOBYTE(__dst[4]) == 255 && (__dst[5] & 1) != 0 && (__dst[5] & 0x10000) != 0 && BYTE3(__dst[5]) == 2 && LOBYTE(__dst[26]) == 2 && (__dst[27] & 1) != 0 && !__dst[28] && (__dst[30] & 1) != 0 && (__dst[32] & 1) != 0 && !__dst[33] && LOBYTE(__dst[34]) == 2 && BYTE1(__dst[34]) == 2 && BYTE2(__dst[34]) == 2 && !__dst[35])
    {
      v1._rawValue = 0;
      return specialized SampledAnimation.createResource(timelineDefinition:)(v1);
    }

    if (*(__dst[6] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  SampledSRTAnimation = RETimelineDefinitionCreateSampledSRTAnimation();

  v4 = SampledAnimation<>.frames.getter();
  v2 = *(v4 + 2);
  if (v2)
  {
    v5 = v4;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, MEMORY[0x1E69E7CC0]);
    v7 = *(v6 + 2);
    v8 = 48 * v7;
    v9 = (v5 + 64);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v6 + 3);
      v14 = v7 + 1;
      if (v7 >= v13 >> 1)
      {
        v21 = *(v9 - 1);
        v22 = *(v9 - 2);
        v20 = *v9;
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v7 + 1, 1, v6);
        v12 = v20;
        v11 = v21;
        v10 = v22;
        v6 = v16;
      }

      *(v6 + 2) = v14;
      v15 = &v6[v8];
      *(v15 + 2) = v10;
      *(v15 + 3) = v11;
      *(v15 + 4) = v12;
      v8 += 48;
      v9 += 3;
      v7 = v14;
      --v2;
    }

    while (v2);

    v17 = *(v6 + 2);
    RETimelineDefinitionSetSRTValues();

    v18._rawValue = SampledSRTAnimation;
    v2 = specialized SampledAnimation.createResource(timelineDefinition:)(v18);
  }

  else
  {
  }

  RERelease();
  return v2;
}

{
  memcpy(v18, v0, sizeof(v18));
  v1 = v18[1];
  v2 = v18[6];
  if (!v18[1] && LOBYTE(v18[4]) == 255 && (v18[5] & 1) != 0 && (v18[5] & 0x10000) != 0 && BYTE3(v18[5]) == 2 && LOBYTE(v18[26]) == 2 && (v18[27] & 1) != 0 && !v18[28] && (v18[30] & 1) != 0 && (v18[32] & 1) != 0 && !v18[33] && LOBYTE(v18[34]) == 2 && BYTE1(v18[34]) == 2 && BYTE2(v18[34]) == 2 && !v18[35])
  {
    v3._rawValue = 0;
    return specialized SampledAnimation.createResource(timelineDefinition:)(v3);
  }

  else
  {
    v5 = SampledAnimation<>.jointNames.getter();
    v6 = *(v5 + 2);
    if (v6)
    {
      if (!v1 && *(v2 + 16))
      {
        RETimelineDefinitionGetName();
        String.init(cString:)();
      }

      String.utf8CString.getter();

      SampledSkeletalPoseAnimation = RETimelineDefinitionCreateSampledSkeletalPoseAnimation();

      RETimelineDefinitionSetSkeletalJointCount();
      v8 = 0;
      v9 = (v5 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        String.utf8CString.getter();
        RETimelineDefinitionSetSkeletalJointName();

        v9 += 2;
        ++v8;
      }

      while (v6 != v8);

      v12 = SampledAnimation<>.frames.getter();
      v13 = *(v12 + 2);
      RETimelineDefinitionSetSkeletalPosePoseCount();
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v15 = *(*&v12[8 * i + 32] + 16);

          RETimelineDefinitionSetSkeletalPoseIndexValues();
        }
      }

      if (LOBYTE(v18[34]) == 2 && *(v2 + 16))
      {
        RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
      }

      RETimelineDefinitionSetSkeletalPoseScaleChannelMask();
      if (BYTE1(v18[34]) == 2 && *(v2 + 16))
      {
        RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
      }

      RETimelineDefinitionSetSkeletalPoseRotationChannelMask();
      if (BYTE2(v18[34]) == 2 && *(v2 + 16))
      {
        RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
      }

      RETimelineDefinitionSetSkeletalPoseTranslationChannelMask();
      v16._rawValue = SampledSkeletalPoseAnimation;
      v4 = specialized SampledAnimation.createResource(timelineDefinition:)(v16);
      RERelease();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

{
  memcpy(v18, v0, sizeof(v18));
  v1 = v18[1];
  v2 = v18[6];
  if (!v18[1] && LOBYTE(v18[4]) == 255 && (v18[5] & 1) != 0 && (v18[5] & 0x10000) != 0 && BYTE3(v18[5]) == 2 && LOBYTE(v18[26]) == 2 && (v18[27] & 1) != 0 && !v18[28] && (v18[30] & 1) != 0 && (v18[32] & 1) != 0 && !v18[33] && LOBYTE(v18[34]) == 2 && BYTE1(v18[34]) == 2 && BYTE2(v18[34]) == 2 && !v18[35])
  {
    v3._rawValue = 0;
    return specialized SampledAnimation.createResource(timelineDefinition:)(v3);
  }

  else
  {
    v5 = SampledAnimation<>.weightNames.getter();
    v6 = *(v5 + 2);
    if (v6)
    {
      if (!v1 && *(v2 + 16))
      {
        RETimelineDefinitionGetName();
        String.init(cString:)();
      }

      String.utf8CString.getter();

      SampledBlendShapeWeightsAnimation = RETimelineDefinitionCreateSampledBlendShapeWeightsAnimation();

      RETimelineDefinitionSetBlendShapeWeightsWeightsCount();
      v8 = 0;
      v9 = (v5 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        String.utf8CString.getter();
        RETimelineDefinitionSetBlendShapeWeightsWeightName();

        v9 += 2;
        ++v8;
      }

      while (v6 != v8);

      v12 = SampledAnimation<>.frames.getter();
      v13 = *(v12 + 2);
      RETimelineDefinitionSetBlendShapeWeightsSampleCount();
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          v15 = *(*&v12[8 * i + 32] + 16);

          RETimelineDefinitionSetBlendShapeWeightsIndexValues();
        }
      }

      v16._rawValue = SampledBlendShapeWeightsAnimation;
      v4 = specialized SampledAnimation.createResource(timelineDefinition:)(v16);
      RERelease();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

uint64_t specialized SampledAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue)
  {
    v3 = v1[1];
    v68[0] = *v1;
    v68[1] = v3;
    v5 = *v1;
    v4 = v1[1];
    v68[2] = v1[2];
    v69 = *(v1 + 6);
    v70 = v5;
    v71 = v4;
    v72 = v1[2];
    *&v73 = *(v1 + 6);
    outlined init with copy of TimelineBaseProperties(v68, &v57);
    TimelineBaseProperties.writeProperties(_:)(a1);
    v45[0] = v70;
    v45[1] = v71;
    v45[2] = v72;
    v46 = v73;
    outlined destroy of TimelineBaseProperties(v45);
    if (*(v1 + 208) == 2 && *(v69 + 16))
    {
      RETimelineDefinitionGetInterpolationEnabled();
    }

    RETimelineDefinitionSetInterpolationEnabled();
    if (*(v1 + 216))
    {
      if (*(v69 + 16))
      {
        RETimelineDefinitionGetFrameInterval();
      }
    }

    else
    {
      v23 = *(v1 + 53);
    }

    RETimelineDefinitionSetFrameInterval();
    if (v1[15])
    {
      if (*(v69 + 16))
      {
        RETimelineDefinitionGetStartTime();
      }
    }

    else
    {
      v24 = *(v1 + 29);
    }

    RETimelineDefinitionSetStartTime();
    specialized SampledAnimation.end.getter();
    RETimelineDefinitionSetEndTime();
    v25 = *(v1 + 168);
    v63 = *(v1 + 152);
    v64 = v25;
    v65 = *(v1 + 184);
    v66 = *(v1 + 25);
    v26 = *(v1 + 104);
    v59 = *(v1 + 88);
    v60 = v26;
    v27 = *(v1 + 136);
    v61 = *(v1 + 120);
    v62 = v27;
    v28 = *(v1 + 72);
    v57 = *(v1 + 56);
    v58 = v28;
    v29 = *(v1 + 168);
    v76 = *(v1 + 152);
    v77 = v29;
    v78 = *(v1 + 184);
    v79 = *(v1 + 25);
    v30 = *(v1 + 104);
    v72 = *(v1 + 88);
    v73 = v30;
    v31 = *(v1 + 136);
    v74 = *(v1 + 120);
    v75 = v31;
    v32 = *(v1 + 72);
    v70 = *(v1 + 56);
    v71 = v32;
    outlined init with copy of TimelineClipProperties(&v57, &v47);
    if (TimelineClipProperties.isClipped.getter())
    {
      v67 = *(&v62 + 1);
      v41 = v59;
      v42 = v60;
      v43 = v61;
      v44 = v62;
      v39 = v57;
      v40 = v58;
      v38 = v66;
      v36 = v64;
      v37 = v65;
      v35 = v63;
      type metadata accessor for TimelineDefinition();
      v33 = swift_allocObject();
      *(v33 + 16) = a1;
      RERetain();
      outlined destroy of BodyTrackingComponent?(&v67, &_s17RealityFoundation18TimelineDefinitionCSgMd, &_s17RealityFoundation18TimelineDefinitionCSgMR);
      v72 = v41;
      v73 = v42;
      v74 = v43;
      v70 = v39;
      v71 = v40;
      *&v75 = v44;
      *(&v75 + 1) = v33;
      v79 = v38;
      v77 = v36;
      v78 = v37;
      v76 = v35;
      outlined init with copy of TimelineClipProperties(&v70, &v47);
      if (*(v33 + 16))
      {

        closure #1 in TimelineClipProperties.createClip()(&v70, &v47);

        outlined destroy of TimelineClipProperties(&v70);
        v14 = v47;
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v70);
        v14 = 0;
      }

      v49 = v41;
      v50 = v42;
      v51 = v43;
      v47 = v39;
      v48 = v40;
      *&v52 = v44;
      *(&v52 + 1) = v33;
      v56 = v38;
      v54 = v36;
      v55 = v37;
      v53 = v35;
      outlined destroy of TimelineClipProperties(&v47);
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v57);
      type metadata accessor for TimelineDefinition();
      *(swift_allocObject() + 16) = a1;
      RERetain();
      v14 = TimelineDefinition.resource.getter();
      swift_setDeallocating();
      RERelease();
      swift_deallocClassInstance();
    }
  }

  else
  {
    v6 = *(v1 + 168);
    v76 = *(v1 + 152);
    v77 = v6;
    v78 = *(v1 + 184);
    v79 = *(v1 + 25);
    v7 = *(v1 + 104);
    v72 = *(v1 + 88);
    v73 = v7;
    v8 = *(v1 + 136);
    v74 = *(v1 + 120);
    v75 = v8;
    v9 = *(v1 + 72);
    v70 = *(v1 + 56);
    v71 = v9;
    v10 = *(v1 + 168);
    v63 = *(v1 + 152);
    v64 = v10;
    v65 = *(v1 + 184);
    v66 = *(v1 + 25);
    v11 = *(v1 + 104);
    v59 = *(v1 + 88);
    v60 = v11;
    v12 = *(v1 + 136);
    v61 = *(v1 + 120);
    v62 = v12;
    v13 = *(v1 + 72);
    v57 = *(v1 + 56);
    v58 = v13;
    outlined init with copy of TimelineClipProperties(&v70, &v47);
    if (TimelineClipProperties.isClipped.getter())
    {
      v63 = v76;
      v64 = v77;
      v65 = v78;
      v66 = v79;
      v59 = v72;
      v60 = v73;
      v61 = v74;
      v62 = v75;
      v57 = v70;
      v58 = v71;
      if (TimelineClipProperties.isModified.getter())
      {
        v53 = v76;
        v54 = v77;
        v55 = v78;
        v56 = v79;
        v49 = v72;
        v50 = v73;
        v51 = v74;
        v52 = v75;
        v47 = v70;
        v48 = v71;
        v14 = TimelineClipProperties.createClip()();
        v63 = v53;
        v64 = v54;
        v65 = v55;
        v66 = v56;
        v59 = v49;
        v60 = v50;
        v61 = v51;
        v62 = v52;
        v57 = v47;
        v58 = v48;
        outlined destroy of TimelineClipProperties(&v57);
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v70);
        return TimelineDefinition.resource.getter();
      }
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v70);
      if (!*(*(v1 + 6) + 16))
      {
        return 0;
      }

      v15 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v15 + 120, &v57);
      v16 = *(&v58 + 1);
      v17 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      (*(v17 + 32))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1(&v57);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (TimelineAsset)
      {
        v19 = TimelineAsset;
        RETimelineDefinitionGetName();
        v20 = String.init(cString:)();
        v22 = v21;
        type metadata accessor for AnimationResource();
        v14 = swift_allocObject();
        v14[2] = v19;
        v14[3] = v20;
        v14[4] = v22;
        RERetain();
        REAssetSetSwiftObject();
        RERelease();
      }

      else
      {
        return 0;
      }
    }
  }

  return v14;
}

uint64_t SampledAnimation.generate()(uint64_t a1)
{
  result = SampledAnimation.createResource()(a1);
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v2 = 0xD00000000000001CLL;
    *(v2 + 8) = 0x80000001C18DE2F0;
    *(v2 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance SampledAnimation<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = SampledAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance SampledAnimation<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SampledAnimation.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance SampledAnimation<A>(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = SampledAnimation.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t SampledAnimation<>.frames.getter()
{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D50], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998CE8], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D08], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D28], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D48], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD4VySfG_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

{
  return SampledAnimation<>.frames.getter(MEMORY[0x1E6998D70], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5, specialized UnsafeBufferPointer._copyContents(initializing:));
}

uint64_t (*SampledAnimation<>.frames.modify(void *a1))()
{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  v6 = *(v1 + 48);
  if (!*(v6 + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v7 = *(v6 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  FloatValues = RETimelineDefinitionGetFloatValues();
  if (FloatValues)
  {
    v10 = ValueCount == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v11 = FloatValues;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v11, ValueCount);
  result = 0;
  if (v12 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  v6 = *(v1 + 48);
  if (!*(v6 + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v7 = *(v6 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  DoubleValues = RETimelineDefinitionGetDoubleValues();
  if (DoubleValues)
  {
    v10 = ValueCount == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v11 = DoubleValues;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v11, ValueCount);
  result = 0;
  if (v12 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  v6 = *(v1 + 48);
  if (!*(v6 + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v7 = *(v6 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  Float2Values = RETimelineDefinitionGetFloat2Values();
  if (Float2Values)
  {
    v10 = ValueCount == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v11 = Float2Values;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v11, ValueCount);
  result = 0;
  if (v12 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  v6 = *(v1 + 48);
  if (!*(v6 + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v7 = *(v6 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  Float3Values = RETimelineDefinitionGetFloat3Values();
  if (Float3Values)
  {
    v10 = ValueCount == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v11 = Float3Values;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v11, ValueCount);
  result = 0;
  if (v12 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  v6 = *(v1 + 48);
  if (!*(v6 + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v7 = *(v6 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  Float4Values = RETimelineDefinitionGetFloat4Values();
  if (Float4Values)
  {
    v10 = ValueCount == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v11 = Float4Values;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD4VySfG_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v11, ValueCount);
  result = 0;
  if (v12 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 224);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    *a1 = v4;

    return SampledAnimation<>.frames.modify;
  }

  v6 = *(v1 + 48);
  if (!*(v6 + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v7 = *(v6 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  QuaternionValues = RETimelineDefinitionGetQuaternionValues();
  if (QuaternionValues)
  {
    v10 = ValueCount == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v11 = QuaternionValues;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5(ValueCount, 0);
  specialized UnsafeBufferPointer._copyContents(initializing:)(v4 + 4, ValueCount, v11, ValueCount);
  result = 0;
  if (v12 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t SampledAnimation<>.frames.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(v3 + 224))
  {
    v5 = *(v3 + 224);
LABEL_3:

    return v5;
  }

  v7 = *(v3 + 48);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v11 = *(v3 + 224);
  v12 = *(v7 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  v14 = a1(v8);
  if (v14)
  {
    v15 = ValueCount == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v16 = v14;
  v5 = a2(ValueCount, 0);
  a3(v5 + 32, ValueCount, v16, ValueCount);
  result = v11;
  if (v17 == ValueCount)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t SampledAnimation<>.frames.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 224) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 224) = v4;
  }

  return result;
}

char *SampledAnimation<>.frames.getter()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 224);

    return v1;
  }

  v3 = *(v0 + 48);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  SRTValues = RETimelineDefinitionGetSRTValues();
  if (!SRTValues || ValueCount < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = SRTValues;
  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ValueCount, 0, MEMORY[0x1E69E7CC0]);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo5RESRTa_Tt1g5(ValueCount, 0);
  v10 = memcpy(v9 + 32, v8, 48 * ValueCount);
  if (ValueCount > *(v9 + 2))
  {
    __break(1u);
  }

  else
  {
    v10 = v9;
    if (one-time initialization token for identity == -1)
    {
      goto LABEL_12;
    }
  }

  v23 = v10;
  swift_once();
  v10 = v23;
LABEL_12:
  v11 = *(v1 + 2);
  v12 = 48 * v11;
  v13 = (v10 + 64);
  do
  {
    v14 = *(v13 - 2);
    v15 = *(v13 - 1);
    v16 = *v13;
    v17 = *(v1 + 3);
    v18 = v11 + 1;
    if (v11 >= v17 >> 1)
    {
      v20 = v10;
      v25 = *(v13 - 1);
      v26 = *(v13 - 2);
      v24 = *v13;
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18, 1, v1);
      v16 = v24;
      v15 = v25;
      v14 = v26;
      v1 = v21;
      v10 = v20;
    }

    *(v1 + 2) = v18;
    v19 = &v1[v12];
    *(v19 + 2) = v14;
    *(v19 + 3) = v15;
    *(v19 + 4) = v16;
    v12 += 48;
    v13 += 3;
    v11 = v18;
    --ValueCount;
  }

  while (ValueCount);

  return v1;
}

{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 224);

    return v1;
  }

  v4 = *(v0 + 48);
  if (!*(v4 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  SkeletalJointCount = RETimelineDefinitionGetSkeletalJointCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ValueCount & ~(ValueCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (ValueCount < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!ValueCount)
    {
      return v1;
    }

    if ((SkeletalJointCount & 0x8000000000000000) == 0)
    {
      for (i = 0; i != ValueCount; ++i)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletalJointCount, 0, MEMORY[0x1E69E7CC0]);
        if (SkeletalJointCount)
        {
          v10 = 0;
          v11 = HIDWORD(v24);
          v12 = HIDWORD(v26);
          do
          {
            v28 = v12;
            v29 = v11;
            RETimelineDefinitionGetSkeletalPoseIndexJointValue();
            v16 = v14;
            v18 = *(v9 + 2);
            v17 = *(v9 + 3);
            if (v18 >= v17 >> 1)
            {
              v25 = v15;
              v27 = v13;
              v23 = v14;
              v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v9);
              v16 = v23;
              v15 = v25;
              v13 = v27;
              v9 = v20;
            }

            ++v10;
            HIDWORD(v13) = v28;
            HIDWORD(v15) = v29;
            *(v9 + 2) = v18 + 1;
            v19 = &v9[48 * v18];
            *(v19 + 2) = v13;
            *(v19 + 3) = v16;
            *(v19 + 4) = v15;
            v11 = v29;
            v12 = v28;
          }

          while (SkeletalJointCount != v10);
        }

        else
        {
          v15 = v24;
          v13 = v26;
        }

        v24 = v15;
        v26 = v13;
        v22 = *(v1 + 2);
        v21 = *(v1 + 3);
        if (v22 >= v21 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v1);
        }

        *(v1 + 2) = v22 + 1;
        *&v1[8 * v22 + 32] = v9;
      }

      return v1;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 224);

    return v1;
  }

  v4 = *(v0 + 48);
  if (!*(v4 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  ValueCount = RETimelineDefinitionGetValueCount();
  BlendShapeWeightsWeightsCount = RETimelineDefinitionGetBlendShapeWeightsWeightsCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ValueCount & ~(ValueCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (ValueCount < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!ValueCount)
    {
      return v1;
    }

    if ((BlendShapeWeightsWeightsCount & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsWeightsCount, 0, v9);
        if (BlendShapeWeightsWeightsCount)
        {
          for (i = 0; i != BlendShapeWeightsWeightsCount; ++i)
          {
            RETimelineDefinitionGetBlendShapeWeightsIndexWeightValue();
            v14 = *(v10 + 2);
            v13 = *(v10 + 3);
            if (v14 >= v13 >> 1)
            {
              v15 = v12;
              v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v10);
              v12 = v15;
              v10 = v16;
            }

            *(v10 + 2) = v14 + 1;
            *&v10[4 * v14 + 32] = v12;
          }
        }

        v18 = *(v1 + 2);
        v17 = *(v1 + 3);
        if (v18 >= v17 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v1);
        }

        ++v8;
        *(v1 + 2) = v18 + 1;
        *&v1[8 * v18 + 32] = v10;
      }

      while (v8 != ValueCount);
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*SampledAnimation<>.frames.modify(char **a1))()
{
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[12];
  v17 = v1[13];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = v1[9];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v4 = *v1;
  v5 = v1[1];
  v2 = *(v1 + 28);
  a1[1] = v1;
  a1[2] = v2;
  v20 = *(v1 + 264);
  v18 = *(v1 + 232);
  v19 = *(v1 + 248);
  v21 = *(v1 + 35);
  *a1 = SampledAnimation<>.frames.getter();
  return SampledAnimation<>.frames.modify;
}

{
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[12];
  v17 = v1[13];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = v1[9];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v4 = *v1;
  v5 = v1[1];
  v2 = *(v1 + 28);
  a1[1] = v1;
  a1[2] = v2;
  v20 = *(v1 + 264);
  v18 = *(v1 + 232);
  v19 = *(v1 + 248);
  v21 = *(v1 + 35);
  *a1 = SampledAnimation<>.frames.getter();
  return SampledAnimation<>.frames.modify;
}

{
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[12];
  v17 = v1[13];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v13 = v1[9];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v4 = *v1;
  v5 = v1[1];
  v2 = *(v1 + 28);
  a1[1] = v1;
  a1[2] = v2;
  v20 = *(v1 + 264);
  v18 = *(v1 + 232);
  v19 = *(v1 + 248);
  v21 = *(v1 + 35);
  *a1 = SampledAnimation<>.frames.getter();
  return SampledAnimation<>.frames.modify;
}

uint64_t SampledAnimation<>.init(jointNames:frames:name:tweenMode:frameInterval:isAdditive:isScaleAnimated:isRotationAnimated:isTranslationAnimated:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, char a14, uint64_t *a15, int a16, char *a17, char *a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v38 = *a5;
  v36 = *a15;
  v35 = a15[1];
  v34 = *(a15 + 16);
  v30 = *a17;
  v37 = *a18;
  *(a9 + 208) = 2;
  *(a9 + 232) = 0;
  *(a9 + 240) = 1;
  *(a9 + 248) = 0;
  *(a9 + 256) = 1;
  *(a9 + 280) = 0;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(a9 + 56) = a19;
  *(a9 + 64) = a20 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a21;
  *(a9 + 80) = a22 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a23;
  *(a9 + 96) = a24 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = a12;
  *(a9 + 128) = 0;
  *(a9 + 132) = a13;
  *(a9 + 136) = 0;
  *(a9 + 137) = v30;
  *(a9 + 144) = 0;
  *(a9 + 152) = a3;
  *(a9 + 160) = a4;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v31;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = v36;
  *(a9 + 24) = v35;
  *(a9 + 32) = v34;
  *(a9 + 33) = v44;
  *(a9 + 35) = v45;
  *(a9 + 36) = a16;
  *(a9 + 40) = 0;
  *(a9 + 41) = v37;
  *(a9 + 42) = 0;
  *(a9 + 43) = a6;
  *(a9 + 48) = result;
  *(a9 + 264) = a1;
  *(a9 + 224) = a2;
  *(a9 + 272) = a7;
  *(a9 + 273) = a8;
  *(a9 + 274) = a14;
  *(a9 + 212) = a10;
  *(a9 + 216) = 0;
  *(a9 + 208) = v38;
  return result;
}

uint64_t SampledAnimation<>.isScaleAnimated.getter()
{
  v1 = *(v0 + 272);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

_BYTE *(*SampledAnimation<>.isScaleAnimated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 272);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return SampledAnimation<>.isScaleAnimated.modify;
}

uint64_t SampledAnimation<>.isRotationAnimated.getter()
{
  v1 = *(v0 + 273);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

_BYTE *(*SampledAnimation<>.isRotationAnimated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 273);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return SampledAnimation<>.isRotationAnimated.modify;
}

uint64_t SampledAnimation<>.isTranslationAnimated.getter()
{
  v1 = *(v0 + 274);
  if (v1 == 2)
  {
    if (*(*(v0 + 48) + 16))
    {
      LOBYTE(v1) = RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

_BYTE *(*SampledAnimation<>.isTranslationAnimated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 274);
  if (v2 == 2)
  {
    if (*(*(v1 + 48) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 48) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return SampledAnimation<>.isTranslationAnimated.modify;
}

uint64_t SampledAnimation<>.frames.setter(uint64_t a1)
{
  v3 = *(v1 + 224);

  *(v1 + 224) = a1;
  return result;
}

char *SampledAnimation<>.jointNames.getter()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 264);

    return v1;
  }

  v4 = *(v0 + 48);
  if (!*(v4 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  SkeletalJointCount = RETimelineDefinitionGetSkeletalJointCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletalJointCount & ~(SkeletalJointCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((SkeletalJointCount & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (!SkeletalJointCount)
    {
      return v1;
    }

    v7 = 0;
    while (1)
    {
      SkeletalJointName = RETimelineDefinitionGetSkeletalJointName();
      if (SkeletalJointName)
      {
        SkeletalJointName = String.init(cString:)();
        v9 = *(v1 + 2);
        v8 = *(v1 + 3);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          v14 = v11;
LABEL_14:
          v15 = SkeletalJointName;
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v10, 1, v1);
          SkeletalJointName = v15;
          v11 = v14;
        }
      }

      else
      {
        v9 = *(v1 + 2);
        v8 = *(v1 + 3);
        v10 = v9 + 1;
        v11 = 0xE000000000000000;
        if (v9 >= v8 >> 1)
        {
          v14 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      ++v7;
      *(v1 + 2) = v10;
      v12 = &v1[16 * v9];
      *(v12 + 4) = SkeletalJointName;
      *(v12 + 5) = v11;
      if (SkeletalJointCount == v7)
      {
        return v1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t SampledAnimation<>.jointNames.setter(uint64_t a1)
{
  v3 = *(v1 + 264);

  *(v1 + 264) = a1;
  return result;
}

uint64_t (*SampledAnimation<>.jointNames.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  memcpy(v5, v1, sizeof(v5));
  v3 = *(v1 + 264);
  a1[2] = v3;
  v7 = *(v1 + 272);
  v6 = v3;
  *a1 = SampledAnimation<>.jointNames.getter();
  return SampledAnimation<>.jointNames.modify;
}

uint64_t SampledAnimation<>.jointNames.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 264) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 264) = v4;
  }

  return result;
}

uint64_t SampledAnimation<>.init(weightNames:frames:name:tweenMode:frameInterval:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, char *a14, char *a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  v33 = *a7;
  v32 = a7[1];
  v31 = *(a7 + 16);
  v27 = *a14;
  v34 = *a15;
  v35 = *a5;
  *(a9 + 208) = 2;
  *(a9 + 232) = 0;
  *(a9 + 240) = 1;
  *(a9 + 248) = 0;
  *(a9 + 256) = 1;
  *(a9 + 264) = 0;
  *(a9 + 272) = 514;
  *(a9 + 274) = 2;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(a9 + 56) = a16;
  *(a9 + 64) = a17 & 1;
  *(a9 + 65) = 0;
  *(a9 + 72) = a18;
  *(a9 + 80) = a19 & 1;
  *(a9 + 81) = 0;
  *(a9 + 88) = a20;
  *(a9 + 96) = a21 & 1;
  *(a9 + 97) = 0;
  *(a9 + 104) = a11;
  *(a9 + 112) = 0;
  *(a9 + 120) = a12;
  *(a9 + 128) = 0;
  *(a9 + 132) = a13;
  *(a9 + 136) = 0;
  *(a9 + 137) = v27;
  *(a9 + 144) = 0;
  *(a9 + 152) = a3;
  *(a9 + 160) = a4;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 194) = 0;
  *(a9 + 200) = v28;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  result = swift_allocObject();
  *(result + 16) = 0;
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = v33;
  *(a9 + 24) = v32;
  *(a9 + 32) = v31;
  *(a9 + 33) = v40;
  *(a9 + 35) = v41;
  *(a9 + 36) = a8;
  *(a9 + 40) = 0;
  *(a9 + 41) = v34;
  *(a9 + 42) = 0;
  *(a9 + 43) = a6;
  *(a9 + 48) = result;
  *(a9 + 280) = a1;
  *(a9 + 224) = a2;
  *(a9 + 212) = a10;
  *(a9 + 216) = 0;
  *(a9 + 208) = v35;
  return result;
}

char *SampledAnimation<>.weightNames.getter()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 280);

    return v1;
  }

  v4 = *(v0 + 48);
  if (!*(v4 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  BlendShapeWeightsWeightsCount = RETimelineDefinitionGetBlendShapeWeightsWeightsCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsWeightsCount & ~(BlendShapeWeightsWeightsCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((BlendShapeWeightsWeightsCount & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (!BlendShapeWeightsWeightsCount)
    {
      return v1;
    }

    v7 = 0;
    while (1)
    {
      BlendShapeWeightsWeightName = RETimelineDefinitionGetBlendShapeWeightsWeightName();
      if (BlendShapeWeightsWeightName)
      {
        BlendShapeWeightsWeightName = String.init(cString:)();
        v9 = *(v1 + 2);
        v8 = *(v1 + 3);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          v14 = v11;
LABEL_14:
          v15 = BlendShapeWeightsWeightName;
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v10, 1, v1);
          BlendShapeWeightsWeightName = v15;
          v11 = v14;
        }
      }

      else
      {
        v9 = *(v1 + 2);
        v8 = *(v1 + 3);
        v10 = v9 + 1;
        v11 = 0xE000000000000000;
        if (v9 >= v8 >> 1)
        {
          v14 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      ++v7;
      *(v1 + 2) = v10;
      v12 = &v1[16 * v9];
      *(v12 + 4) = BlendShapeWeightsWeightName;
      *(v12 + 5) = v11;
      if (BlendShapeWeightsWeightsCount == v7)
      {
        return v1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t SampledAnimation<>.weightNames.setter(uint64_t a1)
{
  v3 = *(v1 + 280);

  *(v1 + 280) = a1;
  return result;
}

uint64_t (*SampledAnimation<>.weightNames.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  memcpy(v5, v1, sizeof(v5));
  v3 = *(v1 + 35);
  a1[2] = v3;
  v6 = v3;
  *a1 = SampledAnimation<>.weightNames.getter();
  return FromToByAnimation<>.jointNames.modify;
}

unint64_t lazy protocol witness table accessor for type TweenMode and conformance TweenMode()
{
  result = lazy protocol witness table cache variable for type TweenMode and conformance TweenMode;
  if (!lazy protocol witness table cache variable for type TweenMode and conformance TweenMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TweenMode and conformance TweenMode);
  }

  return result;
}

void keypath_get_66Tm(uint64_t a1@<X1>, uint64_t a2@<X2>, double (*a3)(uint64_t)@<X3>, double *a4@<X8>)
{
  v6 = a1 + a2;
  v7 = *(a1 + a2 - 16);
  v8 = *(v6 - 8);
  v9 = type metadata accessor for SampledAnimation();
  *a4 = a3(v9);
}

uint64_t keypath_set_75Tm(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 224);

  *(a2 + 224) = v3;
  return result;
}

uint64_t type metadata instantiation function for SampledAnimation()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SampledAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SampledAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), Hasher.init(_seed:)(), specialized RawRepresentable<>.hash(into:)(), v5 = Hasher._finalize()(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v31 = ~v6;
    v8 = 0xEB00000000746E65;
    v9 = 0xE90000000000006ELL;
    v10 = 0x6D6E6F7269766E65;
    while (1)
    {
      v11 = *(*(a2 + 48) + v7);
      if (v11 > 4)
      {
        if (*(*(a2 + 48) + v7) <= 6u)
        {
          if (v11 == 5)
          {
            v17 = 0xE400000000000000;
            v16 = 1752393069;
          }

          else
          {
            v17 = 0xE700000000000000;
            v16 = 0x73636973796870;
          }
        }

        else if (v11 == 7)
        {
          v17 = 0xE700000000000000;
          v16 = 0x65727574786574;
        }

        else if (v11 == 8)
        {
          v16 = 0x6F4C797469746E65;
          v17 = 0xEA00000000006461;
        }

        else
        {
          v17 = 0xE500000000000000;
          v16 = 0x6F65646976;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x4D6E49746C697562;
        }

        else
        {
          v12 = 0xD000000000000013;
        }

        if (v11 == 3)
        {
          v13 = 0xEF6C616972657461;
        }

        else
        {
          v13 = 0x80000001C18DDAF0;
        }

        if (v11 == 2)
        {
          v12 = v10;
          v13 = v8;
        }

        v14 = *(*(a2 + 48) + v7) ? 0x6F69647561 : 0x6F6974616D696E61;
        v15 = *(*(a2 + 48) + v7) ? 0xE500000000000000 : 0xE90000000000006ELL;
        v16 = *(*(a2 + 48) + v7) <= 1u ? v14 : v12;
        v17 = *(*(a2 + 48) + v7) <= 1u ? v15 : v13;
      }

      v18 = 0x6F4C797469746E65;
      if (a1 != 8)
      {
        v18 = 0x6F65646976;
      }

      v19 = 0xEA00000000006461;
      if (a1 != 8)
      {
        v19 = 0xE500000000000000;
      }

      if (a1 == 7)
      {
        v18 = 0x65727574786574;
        v19 = 0xE700000000000000;
      }

      v20 = 0x73636973796870;
      if (a1 == 5)
      {
        v20 = 1752393069;
      }

      v21 = 0xE400000000000000;
      if (a1 != 5)
      {
        v21 = 0xE700000000000000;
      }

      if (a1 <= 6u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (a1 == 3)
      {
        v22 = 0x4D6E49746C697562;
      }

      else
      {
        v22 = 0xD000000000000013;
      }

      if (a1 == 3)
      {
        v23 = 0xEF6C616972657461;
      }

      else
      {
        v23 = 0x80000001C18DDAF0;
      }

      if (a1 == 2)
      {
        v22 = v10;
        v23 = v8;
      }

      if (a1)
      {
        v24 = 0x6F69647561;
      }

      else
      {
        v24 = 0x6F6974616D696E61;
      }

      if (a1)
      {
        v9 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v22 = v24;
        v23 = v9;
      }

      v25 = a1 <= 4u ? v22 : v18;
      v26 = a1 <= 4u ? v23 : v19;
      if (v16 == v25 && v17 == v26)
      {
        break;
      }

      v27 = v10;
      v28 = v8;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        v7 = (v7 + 1) & v31;
        v8 = v28;
        v9 = 0xE90000000000006ELL;
        v10 = v27;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v29 & 1;
    }

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (v4 = *(a2 + 40), Hasher.init(_seed:)(), v7 = *(a1 + 16), MEMORY[0x1C68F4C10](v7), v8 = Hasher._finalize()(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    do
    {
      v12 = *(*(*(a2 + 48) + 8 * v10) + 16);
      result = v12 == v7;
      if (v12 == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1C68F4BF0](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](a1 & 1);
    v6 = Hasher._finalize()();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      do
      {
        v10 = *(*(a2 + 48) + v8) ^ a1;
        if ((v10 & 1) == 0)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
      LOBYTE(v2) = v10 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL specialized Set.contains(_:)(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1C68F4BD0](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t StateMachineGraph.init(initialState:states:transitions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X4>, void *a5@<X8>)
{
  v9 = a3();
  v10 = a4();
  if (!a1 && a2 == 0xE000000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {

    if (v9[2])
    {
      a1 = v9[4];
      a2 = v9[5];
    }

    else
    {
      a1 = 0;
      a2 = 0xE000000000000000;
    }
  }

  *a5 = a1;
  a5[1] = a2;
  a5[2] = v9;
  a5[3] = v10;
  return result;
}

uint64_t StateMachineGraph.initialState.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StateMachineGraph.initialState.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StateMachineGraph.states.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t StateMachineGraph.transitions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void StateMachineGraph.checkIntegrity()(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = *(v3 + 16);
  if (!v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 5;
    return;
  }

  v5 = 0;
  v6 = v1[1];
  v7 = v1[3];
  v75 = v7;
  v76 = *v1;
  v8 = MEMORY[0x1E69E7CD0];
  v89 = MEMORY[0x1E69E7CD0];
  v9 = (v3 + 56);
  do
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_48:

      v62 = a1;
      *a1 = v2;
      *(a1 + 8) = v9;
      v63 = 1;
LABEL_39:
      *(v62 + 16) = v63;
      return;
    }

    v10 = *(v9 - 3);
    v2 = *(v9 - 2);
    v11 = *v9;
    swift_bridgeObjectRetain_n();

    v12 = specialized Set._Variant.insert(_:)(&v85, v10, v2);

    if ((v12 & 1) == 0)
    {

      *a1 = v10;
      *(a1 + 8) = v2;
      *(a1 + 16) = 0;
      return;
    }

    ++v5;
    v9 += 4;
  }

  while (v4 != v5);
  v13 = v89;
  if ((specialized Set.contains(_:)(v76, v6, v89) & 1) == 0)
  {

    *a1 = v76;
    *(a1 + 8) = v6;
    *(a1 + 16) = 3;

    return;
  }

  v88 = v8;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation29StateMachineParameterProtocol_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v15 = v75;
  v69 = *(v75 + 16);
  if (!v69)
  {
LABEL_38:

    v62 = a1;
    *a1 = 0;
    *(a1 + 8) = 0;
    v63 = -1;
    goto LABEL_39;
  }

  v16 = 0;
  v17 = v75 + 32;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_55;
    }

    v70 = v16;
    v18 = (v17 + 72 * v16);
    v2 = *v18;
    v9 = v18[1];
    v20 = v18[2];
    v19 = v18[3];
    v22 = v18[4];
    v21 = v18[5];
    v23 = v18[8];
    swift_bridgeObjectRetain_n();

    v24 = specialized Set._Variant.insert(_:)(&v85, v2, v9);

    if ((v24 & 1) == 0)
    {
      goto LABEL_48;
    }

    v25 = specialized Set.contains(_:)(v20, v19, v13);

    if ((v25 & 1) == 0)
    {

      v62 = a1;
      *a1 = v20;
      *(a1 + 8) = v19;
      v63 = 2;
      goto LABEL_39;
    }

    v26 = specialized Set.contains(_:)(v22, v21, v13);

    if ((v26 & 1) == 0)
    {

      v62 = a1;
      *a1 = v22;
      *(a1 + 8) = v21;
      v63 = 2;
      goto LABEL_39;
    }

    v71 = *(v23 + 16);
    if (v71)
    {
      break;
    }

LABEL_37:

    v16 = v70 + 1;
    v15 = v75;
    v17 = v75 + 32;
    if (v70 + 1 == v69)
    {
      goto LABEL_38;
    }
  }

  v27 = 0;
  v73 = v13;
  v74 = v23 + 32;
  v72 = v23;
  while (1)
  {
    if (v27 >= *(v23 + 16))
    {
      goto LABEL_54;
    }

    v77 = v27;
    outlined init with copy of __REAssetService(v74 + 40 * v27, &v85);
    v28 = v86;
    v29 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    v30 = (*(v29 + 8))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(&v85);
    v31 = *(v30 + 16);
    if (v31)
    {
      break;
    }

LABEL_15:
    v27 = v77 + 1;

    v23 = v72;
    v13 = v73;
    if (v77 + 1 == v71)
    {
      goto LABEL_37;
    }
  }

  v32 = 0;
  v33 = v30 + 32;
  while (2)
  {
    if (v32 < *(v30 + 16))
    {
      outlined init with copy of __REAssetService(v33, v82);
      v36 = v83;
      v37 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v38 = (*(v37 + 8))(v36, v37);
      if (v14[2])
      {
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
        v42 = v41;

        if (v42)
        {
          outlined init with copy of __REAssetService(v14[7] + 40 * v40, v79);
          outlined init with take of ForceEffectBase(v79, &v80);
          __swift_project_boxed_opaque_existential_1(v82, v83);
          DynamicType = swift_getDynamicType();
          __swift_project_boxed_opaque_existential_1(&v80, v81);
          if (DynamicType != swift_getDynamicType())
          {

            v64 = v83;
            v65 = v84;
            __swift_project_boxed_opaque_existential_1(v82, v83);
            v66 = (*(v65 + 8))(v64, v65);
            v68 = v67;
            __swift_destroy_boxed_opaque_existential_1(&v80);
            *a1 = v66;
            *(a1 + 8) = v68;
            *(a1 + 16) = 4;
            __swift_destroy_boxed_opaque_existential_1(v82);

            return;
          }

          __swift_destroy_boxed_opaque_existential_1(&v80);
          goto LABEL_20;
        }
      }

      else
      {
      }

      v44 = v83;
      v45 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v46 = (*(v45 + 8))(v44, v45);
      v48 = v47;
      outlined init with copy of __REAssetService(v82, &v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v79[0] = v14;
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v48);
      v52 = v14[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_52;
      }

      v56 = v51;
      if (v14[3] >= v55)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_32;
        }

        v61 = v50;
        specialized _NativeDictionary.copy()();
        v50 = v61;
        if ((v56 & 1) == 0)
        {
LABEL_33:
          v14 = *&v79[0];
          *(*&v79[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
          v58 = (v14[6] + 16 * v50);
          *v58 = v46;
          v58[1] = v48;
          outlined init with take of ForceEffectBase(&v80, v14[7] + 40 * v50);
          v59 = v14[2];
          v54 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v54)
          {
            goto LABEL_53;
          }

          v14[2] = v60;
          goto LABEL_20;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, isUniquelyReferenced_nonNull_native);
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v48);
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_56;
        }

LABEL_32:
        if ((v56 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v34 = v50;

      v14 = *&v79[0];
      v35 = (*(*&v79[0] + 56) + 40 * v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      outlined init with take of ForceEffectBase(&v80, v35);
LABEL_20:
      ++v32;
      __swift_destroy_boxed_opaque_existential_1(v82);
      v33 += 40;
      if (v31 == v32)
      {
        goto LABEL_15;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation17StateMachineErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for StateMachineError(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

RealityFoundation::VFXComponent::SimulationState_optional __swiftcall VFXComponent.SimulationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VFXComponent.effect.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unsigned __int8 *VFXComponent.simulationState.setter(unsigned __int8 *result)
{
  v2 = *result;
  if (*(v1 + 16) == 1 && v2 == 3)
  {
    LOBYTE(v2) = 2;
  }

  *(v1 + 16) = v2;
  return result;
}

unsigned __int8 *(*VFXComponent.simulationState.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return VFXComponent.simulationState.modify;
}

unsigned __int8 *VFXComponent.simulationState.modify(unsigned __int8 *result)
{
  v1 = result[8];
  if (*(*result + 16) == 1 && v1 == 3)
  {
    LOBYTE(v1) = 2;
  }

  *(*result + 16) = v1;
  return result;
}

uint64_t VFXComponent.startObserving(parameter:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 16 * v11;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  *(v2 + 24) = v8;
  return result;
}

uint64_t VFXComponent.stopObserving(parameter:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = *(v2 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 16 * v11;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  *(v2 + 32) = v8;
  return result;
}