uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0Vys5SIMD3VySfGG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGmMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGmMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VySdG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VySdG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySdG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGmMd, &_s17RealityFoundation14FromToByActionVySdGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA08FromToBycD0VySfG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA08FromToBycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VySfG_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySfG_Tt0G5, 0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v7 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v21, "Handler for ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGmMd, &_s17RealityFoundation14FromToByActionVySfGmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v10 = v21[0];
    v9 = v21[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static AnimationLogger.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v21);
      _os_log_impl(&dword_1C1358000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1C6902A30](v15, -1, -1);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v17 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v17, v6, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v20;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA09BillboardcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09BillboardcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09BillboardcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09BillboardcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA09BillboardcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA09BillboardcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09BillboardcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09BillboardcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09BillboardcD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for BillboardAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for BillboardAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA04SpincD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA04SpincD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA04SpincD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA04SpincD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA04SpincD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA04SpincD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA04SpincD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA04SpincD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA04SpincD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SpinAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10SpinActionVmMd, &_s17RealityFoundation10SpinActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for SpinAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA011OrbitEntitycD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA011OrbitEntitycD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA011OrbitEntitycD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA011OrbitEntitycD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA011OrbitEntitycD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA011OrbitEntitycD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA011OrbitEntitycD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for OrbitEntityAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17OrbitEntityActionVmMd, &_s17RealityFoundation17OrbitEntityActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for OrbitEntityAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA07ImpulsecD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA07ImpulsecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA07ImpulsecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA07ImpulsecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA07ImpulsecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA07ImpulsecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA07ImpulsecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA07ImpulsecD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA07ImpulsecD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for ImpulseAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13ImpulseActionVmMd, &_s17RealityFoundation13ImpulseActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for ImpulseAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA016SetEntityEnabledcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc7EnabledD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA016SetEntityEnabledcD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SetEntityEnabledAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SetEntityEnabledActionVmMd, &_s17RealityFoundation22SetEntityEnabledActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for SetEntityEnabledAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA012NotificationcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA012NotificationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA012NotificationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA012NotificationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA012NotificationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA012NotificationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA012NotificationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA012NotificationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA012NotificationD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA012NotificationcD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for NotificationAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18NotificationActionVmMd, &_s17RealityFoundation18NotificationActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for NotificationAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE16__registerCommon6engine_y0A3Kit8__EngineCSg_AaB_pSgAA0C5EventVy0C4TypeQzGctFZAA013PlayAnimationcD0V_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(1, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA013PlayAnimationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(2, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA013PlayAnimationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(4, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA013PlayAnimationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(8, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA013PlayAnimationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(16, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA013PlayAnimationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(32, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA013PlayAnimationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(64, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA013PlayAnimationcD0V_Tt0G5, 0);
  _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA013PlayAnimationD0V_Tt2B5(128, a1, _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA013PlayAnimationcD0V_Tt0G5, 0);
  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AnimationResource.actionHandlerCreators + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAnimationAction), (v6 & 1) != 0))
  {
    swift_endAccess();
    _StringGuts.grow(_:)(34);

    strcpy(v20, "Handler for ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19PlayAnimationActionVmMd, &_s17RealityFoundation19PlayAnimationActionVmMR);
    v7 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v7);

    MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E4510);
    v9 = v20[0];
    v8 = v20[1];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static AnimationLogger.logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v20);
      _os_log_impl(&dword_1C1358000, v11, v12, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:);
  *(v16 + 24) = v15;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = static AnimationResource.actionHandlerCreators;
  static AnimationResource.actionHandlerCreators = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(thunk for @escaping @callee_guaranteed (@guaranteed AnimationPlaybackController, @unowned ActionEventData, @unowned Bool, @unowned Double, @unowned Double, @guaranteed __Engine, @unowned UnsafeRawPointer, @guaranteed Entity?) -> (@out ActionHandlerProtocol?)partial apply, v16, &type metadata for PlayAnimationAction, isUniquelyReferenced_nonNull_native);
  static AnimationResource.actionHandlerCreators = v19;
  return swift_endAccess();
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(__int128 *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  result = specialized ActionEventData.action<A>()(&v39);
  v21 = v39 | (v40 << 16);
  if ((v21 & 0xFF0000) == 0x20000)
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    WORD4(v24) = v39;
    BYTE10(v24) = BYTE2(v21) & 1;
    BYTE11(v24) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09EmphasizeD0VGMR) & 1;
    *&v24 = a1;
    *&v25 = a6;
    BYTE8(v25) = a3 & 1;
    *&v26 = a9;
    *(&v26 + 1) = a10;
    *&v28 = 0;
    v27 = a4;
    BYTE8(v28) = 1;
    *&v29 = 0;
    BYTE8(v29) = 1;
    *&v30 = 0;
    BYTE8(v30) = 1;
    v22 = a2[3];
    v33 = a2[2];
    v34 = v22;
    v35 = a2[4];
    v23 = *a2;
    v32 = a2[1];
    v31 = v23;
    v36 = a5;

    a7(&v24);
    v37[10] = v34;
    v37[11] = v35;
    v38 = v36;
    v37[6] = v30;
    v37[7] = v31;
    v37[8] = v32;
    v37[9] = v33;
    v37[2] = v26;
    v37[3] = v27;
    v37[4] = v28;
    v37[5] = v29;
    v37[0] = v24;
    v37[1] = v25;
    return outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation11ActionEventVyAA09EmphasizeC0VGMd, &_s17RealityFoundation11ActionEventVyAA09EmphasizeC0VGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v41);
  if (*(&v44 + 1))
  {
    *(&v23 + 1) = v41;
    *&v24 = v42;
    BYTE8(v24) = v43 & 1;
    v25 = v44;
    *&v26 = v45;
    BYTE8(v26) = v46 & 1;
    BYTE9(v26) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09PlayAudioD0VGMR) & 1;
    *&v23 = a1;
    *&v27 = a6;
    BYTE8(v27) = a3 & 1;
    *&v28 = a9;
    *(&v28 + 1) = a10;
    *&v30 = 0;
    v29 = a4;
    BYTE8(v30) = 1;
    *&v31 = 0;
    BYTE8(v31) = 1;
    *&v32 = 0;
    BYTE8(v32) = 1;
    v20 = a2[3];
    v35 = a2[2];
    v36 = v20;
    v37 = a2[4];
    v21 = *a2;
    v34 = a2[1];
    v33 = v21;
    v38 = a5;

    a7(&v23);
    v39[12] = v35;
    v39[13] = v36;
    v39[14] = v37;
    v40 = v38;
    v39[8] = v31;
    v39[9] = v32;
    v39[10] = v33;
    v39[11] = v34;
    v39[4] = v27;
    v39[5] = v28;
    v39[6] = v29;
    v39[7] = v30;
    v39[0] = v23;
    v39[1] = v24;
    v39[2] = v25;
    v39[3] = v26;
    return outlined destroy of BodyTrackingComponent?(v39, &_s17RealityFoundation11ActionEventVyAA09PlayAudioC0VGMd, &_s17RealityFoundation11ActionEventVyAA09PlayAudioC0VGMR);
  }

  else
  {
    result = outlined consume of SetEntityPropertyAction<Bool>?(v41, v42, v43, v44, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySiGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySiGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &v44);
  if (*(&v47 + 1))
  {
    v24 = v44;
    v25 = a5;
    v20 = v45;
    BYTE8(v27) = v46 & 1;
    v28 = v47;
    *&v29 = v48;
    BYTE8(v29) = v49 & 1;
    BYTE9(v29) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySiGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySiGGMR) & 1;
    *(&v26 + 1) = v24;
    *&v27 = v20;
    *&v26 = a1;
    *&v30 = a6;
    BYTE8(v30) = a3 & 1;
    *&v31 = a9;
    *(&v31 + 1) = a10;
    *&v33 = 0;
    v32 = a4;
    BYTE8(v33) = 1;
    *&v34 = 0;
    BYTE8(v34) = 1;
    *&v35 = 0;
    BYTE8(v35) = 1;
    v21 = a2[3];
    v38 = a2[2];
    v39 = v21;
    v40 = a2[4];
    v22 = *a2;
    v37 = a2[1];
    v36 = v22;
    v41 = v25;

    a7(&v26);
    v42[12] = v38;
    v42[13] = v39;
    v42[14] = v40;
    v43 = v41;
    v42[8] = v34;
    v42[9] = v35;
    v42[10] = v36;
    v42[11] = v37;
    v42[4] = v30;
    v42[5] = v31;
    v42[6] = v32;
    v42[7] = v33;
    v42[0] = v26;
    v42[1] = v27;
    v42[2] = v28;
    v42[3] = v29;
    return outlined destroy of BodyTrackingComponent?(v42, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySiGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySiGGMR);
  }

  else
  {
    result = outlined consume of SetEntityPropertyAction<Bool>?(v44, v45, v46, v47, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &v44);
  if (*(&v47 + 1))
  {
    v24 = v44;
    v25 = a5;
    v20 = v45;
    BYTE8(v27) = v46 & 1;
    v28 = v47;
    *&v29 = v48;
    BYTE8(v29) = v49 & 1;
    BYTE9(v29) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMR) & 1;
    *(&v26 + 1) = v24;
    *&v27 = v20;
    *&v26 = a1;
    *&v30 = a6;
    BYTE8(v30) = a3 & 1;
    *&v31 = a9;
    *(&v31 + 1) = a10;
    *&v33 = 0;
    v32 = a4;
    BYTE8(v33) = 1;
    *&v34 = 0;
    BYTE8(v34) = 1;
    *&v35 = 0;
    BYTE8(v35) = 1;
    v21 = a2[3];
    v38 = a2[2];
    v39 = v21;
    v40 = a2[4];
    v22 = *a2;
    v37 = a2[1];
    v36 = v22;
    v41 = v25;

    a7(&v26);
    v42[12] = v38;
    v42[13] = v39;
    v42[14] = v40;
    v43 = v41;
    v42[8] = v34;
    v42[9] = v35;
    v42[10] = v36;
    v42[11] = v37;
    v42[4] = v30;
    v42[5] = v31;
    v42[6] = v32;
    v42[7] = v33;
    v42[0] = v26;
    v42[1] = v27;
    v42[2] = v28;
    v42[3] = v29;
    return outlined destroy of BodyTrackingComponent?(v42, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD2VySfGGGMR);
  }

  else
  {
    result = outlined consume of SetEntityPropertyAction<Bool>?(v44, v45, v46, v47, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySdGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySdGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &v44);
  if (*(&v47 + 1))
  {
    v24 = v44;
    v25 = a5;
    v20 = v45;
    BYTE8(v27) = v46 & 1;
    v28 = v47;
    *&v29 = v48;
    BYTE8(v29) = v49 & 1;
    BYTE9(v29) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySdGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySdGGMR) & 1;
    *(&v26 + 1) = v24;
    *&v27 = v20;
    *&v26 = a1;
    *&v30 = a6;
    BYTE8(v30) = a3 & 1;
    *&v31 = a9;
    *(&v31 + 1) = a10;
    *&v33 = 0;
    v32 = a4;
    BYTE8(v33) = 1;
    *&v34 = 0;
    BYTE8(v34) = 1;
    *&v35 = 0;
    BYTE8(v35) = 1;
    v21 = a2[3];
    v38 = a2[2];
    v39 = v21;
    v40 = a2[4];
    v22 = *a2;
    v37 = a2[1];
    v36 = v22;
    v41 = v25;

    a7(&v26);
    v42[12] = v38;
    v42[13] = v39;
    v42[14] = v40;
    v43 = v41;
    v42[8] = v34;
    v42[9] = v35;
    v42[10] = v36;
    v42[11] = v37;
    v42[4] = v30;
    v42[5] = v31;
    v42[6] = v32;
    v42[7] = v33;
    v42[0] = v26;
    v42[1] = v27;
    v42[2] = v28;
    v42[3] = v29;
    return outlined destroy of BodyTrackingComponent?(v42, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySdGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySdGGMR);
  }

  else
  {
    result = outlined consume of SetEntityPropertyAction<Bool>?(v44, v45, v46, v47, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v39);
  if (v41 == 0xFF)
  {
    result = outlined consume of SetEntityEnabledAction?(v39, v40, 255);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    *(&v23 + 1) = v39;
    *&v24 = v40;
    WORD4(v24) = v41 & 0x101;
    BYTE10(v24) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
    *&v23 = a1;
    *&v25 = a6;
    BYTE8(v25) = a3 & 1;
    *&v26 = a9;
    *(&v26 + 1) = a10;
    *&v28 = 0;
    v27 = a4;
    BYTE8(v28) = 1;
    *&v29 = 0;
    BYTE8(v29) = 1;
    *&v30 = 0;
    BYTE8(v30) = 1;
    v21 = a2[3];
    v33 = a2[2];
    v34 = v21;
    v35 = a2[4];
    v22 = *a2;
    v32 = a2[1];
    v31 = v22;
    v36 = a5;

    a7(&v23);
    v37[10] = v33;
    v37[11] = v34;
    v37[12] = v35;
    v38 = v36;
    v37[6] = v29;
    v37[7] = v30;
    v37[8] = v31;
    v37[9] = v32;
    v37[2] = v25;
    v37[3] = v26;
    v37[4] = v27;
    v37[5] = v28;
    v37[0] = v23;
    v37[1] = v24;
    return outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation11ActionEventVyAA016SetEntityEnabledC0VGMd, &_s17RealityFoundation11ActionEventVyAA016SetEntityEnabledC0VGMR);
  }

  return result;
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(_OWORD *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v26);
  if (v28)
  {
    v24[5] = v30;
    v24[6] = v31;
    LOBYTE(v24[7]) = v32;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    BYTE1(v24[7]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vy0A3Kit9TransformVGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[7] + 1) = a6;
    LOBYTE(v24[8]) = a3 & 1;
    *(&v24[8] + 1) = a9;
    *&v24[9] = a10;
    v24[10] = 0uLL;
    *(&v24[9] + 1) = a4;
    LOBYTE(v24[11]) = 1;
    *(&v24[11] + 1) = 0;
    LOBYTE(v24[12]) = 1;
    *(&v24[12] + 1) = 0;
    LOBYTE(v24[13]) = 1;
    v20 = a2[2];
    v21 = a2[4];
    *(&v24[16] + 8) = a2[3];
    *(&v24[17] + 8) = v21;
    v22 = a2[1];
    *(&v24[13] + 8) = *a2;
    *(&v24[15] + 8) = v20;
    *(&v24[14] + 8) = v22;
    *(&v24[18] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vy0A3Kit9TransformVGGMR);
  }

  else
  {
    __dst[4] = v30;
    __dst[5] = v31;
    LOBYTE(__dst[6]) = v32;
    __dst[0] = v26;
    __dst[1] = v27;
    __dst[2] = v28;
    __dst[3] = v29;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &v26);
  if (v28)
  {
    v24[3] = v28;
    v24[4] = v29;
    LOBYTE(v24[5]) = v30;
    v24[1] = v26;
    v24[2] = v27;
    BYTE1(v24[5]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[5] + 1) = a6;
    LOBYTE(v24[6]) = a3 & 1;
    *(&v24[6] + 1) = a9;
    *&v24[7] = a10;
    v24[8] = 0uLL;
    *(&v24[7] + 1) = a4;
    LOBYTE(v24[9]) = 1;
    *(&v24[9] + 1) = 0;
    LOBYTE(v24[10]) = 1;
    *(&v24[10] + 1) = 0;
    LOBYTE(v24[11]) = 1;
    v20 = a2[1];
    *(&v24[11] + 8) = *a2;
    v21 = a2[2];
    v22 = a2[3];
    *(&v24[15] + 8) = a2[4];
    *(&v24[14] + 8) = v22;
    *(&v24[13] + 8) = v21;
    *(&v24[12] + 8) = v20;
    *(&v24[16] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySo10simd_quatfaGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySo10simd_quatfaGGMR);
  }

  else
  {
    __dst[2] = v28;
    __dst[3] = v29;
    LOBYTE(__dst[4]) = v30;
    __dst[0] = v26;
    __dst[1] = v27;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &v26);
  if (v28)
  {
    v24[3] = v28;
    v24[4] = v29;
    LOBYTE(v24[5]) = v30;
    v24[1] = v26;
    v24[2] = v27;
    BYTE1(v24[5]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[5] + 1) = a6;
    LOBYTE(v24[6]) = a3 & 1;
    *(&v24[6] + 1) = a9;
    *&v24[7] = a10;
    v24[8] = 0uLL;
    *(&v24[7] + 1) = a4;
    LOBYTE(v24[9]) = 1;
    *(&v24[9] + 1) = 0;
    LOBYTE(v24[10]) = 1;
    *(&v24[10] + 1) = 0;
    LOBYTE(v24[11]) = 1;
    v20 = a2[1];
    *(&v24[11] + 8) = *a2;
    v21 = a2[2];
    v22 = a2[3];
    *(&v24[15] + 8) = a2[4];
    *(&v24[14] + 8) = v22;
    *(&v24[13] + 8) = v21;
    *(&v24[12] + 8) = v20;
    *(&v24[16] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD4VySfGGGMR);
  }

  else
  {
    __dst[2] = v28;
    __dst[3] = v29;
    LOBYTE(__dst[4]) = v30;
    __dst[0] = v26;
    __dst[1] = v27;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &v26);
  if (v28)
  {
    v24[3] = v28;
    v24[4] = v29;
    LOBYTE(v24[5]) = v30;
    v24[1] = v26;
    v24[2] = v27;
    BYTE1(v24[5]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[5] + 1) = a6;
    LOBYTE(v24[6]) = a3 & 1;
    *(&v24[6] + 1) = a9;
    *&v24[7] = a10;
    v24[8] = 0uLL;
    *(&v24[7] + 1) = a4;
    LOBYTE(v24[9]) = 1;
    *(&v24[9] + 1) = 0;
    LOBYTE(v24[10]) = 1;
    *(&v24[10] + 1) = 0;
    LOBYTE(v24[11]) = 1;
    v20 = a2[1];
    *(&v24[11] + 8) = *a2;
    v21 = a2[2];
    v22 = a2[3];
    *(&v24[15] + 8) = a2[4];
    *(&v24[14] + 8) = v22;
    *(&v24[13] + 8) = v21;
    *(&v24[12] + 8) = v20;
    *(&v24[16] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD3VySfGGGMR);
  }

  else
  {
    __dst[2] = v28;
    __dst[3] = v29;
    LOBYTE(__dst[4]) = v30;
    __dst[0] = v26;
    __dst[1] = v27;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMR, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &v26);
  if (v26 == 1)
  {
    __dst[2] = v28;
    __dst[3] = v29;
    __dst[4] = v30;
    __dst[5] = v31;
    __dst[0] = v26;
    __dst[1] = v27;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGSgMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v24[3] = v28;
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[1] = v26;
    v24[2] = v27;
    LOBYTE(v24[7]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[7] + 1) = a6;
    LOBYTE(v24[8]) = a3 & 1;
    *(&v24[8] + 1) = a9;
    *&v24[9] = a10;
    v24[10] = 0uLL;
    *(&v24[9] + 1) = a4;
    LOBYTE(v24[11]) = 1;
    *(&v24[11] + 1) = 0;
    LOBYTE(v24[12]) = 1;
    *(&v24[12] + 1) = 0;
    LOBYTE(v24[13]) = 1;
    v21 = a2[2];
    v22 = a2[4];
    *(&v24[16] + 8) = a2[3];
    *(&v24[17] + 8) = v22;
    v23 = a2[1];
    *(&v24[13] + 8) = *a2;
    *(&v24[15] + 8) = v21;
    *(&v24[14] + 8) = v23;
    *(&v24[18] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA17BlendShapeWeightsVGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMR, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &v26);
  if (v26 == 1)
  {
    __dst[2] = v28;
    __dst[3] = v29;
    __dst[4] = v30;
    __dst[5] = v31;
    __dst[0] = v26;
    __dst[1] = v27;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGSgMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v24[3] = v28;
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[1] = v26;
    v24[2] = v27;
    LOBYTE(v24[7]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[7] + 1) = a6;
    LOBYTE(v24[8]) = a3 & 1;
    *(&v24[8] + 1) = a9;
    *&v24[9] = a10;
    v24[10] = 0uLL;
    *(&v24[9] + 1) = a4;
    LOBYTE(v24[11]) = 1;
    *(&v24[11] + 1) = 0;
    LOBYTE(v24[12]) = 1;
    *(&v24[12] + 1) = 0;
    LOBYTE(v24[13]) = 1;
    v21 = a2[2];
    v22 = a2[4];
    *(&v24[16] + 8) = a2[3];
    *(&v24[17] + 8) = v22;
    v23 = a2[1];
    *(&v24[13] + 8) = *a2;
    *(&v24[15] + 8) = v21;
    *(&v24[14] + 8) = v23;
    *(&v24[18] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA15JointTransformsVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA15JointTransformsVGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &v26);
  if (v32 == 1)
  {
    __dst[4] = v30;
    __dst[5] = v31;
    __dst[6] = v32;
    __dst[0] = v26;
    __dst[1] = v27;
    __dst[2] = v28;
    __dst[3] = v29;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    LOBYTE(v24[8]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[8] + 1) = a6;
    LOBYTE(v24[9]) = a3 & 1;
    *(&v24[9] + 1) = a9;
    *&v24[10] = a10;
    v24[11] = 0uLL;
    *(&v24[10] + 1) = a4;
    LOBYTE(v24[12]) = 1;
    *(&v24[12] + 1) = 0;
    LOBYTE(v24[13]) = 1;
    *(&v24[13] + 1) = 0;
    LOBYTE(v24[14]) = 1;
    v21 = a2[2];
    v22 = a2[4];
    *(&v24[17] + 8) = a2[3];
    *(&v24[18] + 8) = v22;
    *(&v24[16] + 8) = v21;
    v23 = a2[1];
    *(&v24[14] + 8) = *a2;
    *(&v24[15] + 8) = v23;
    *(&v24[19] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD2VySfGGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySdGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySdGGMR, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &v26);
  if (v32 == 1)
  {
    __dst[4] = v30;
    __dst[5] = v31;
    __dst[6] = v32;
    __dst[0] = v26;
    __dst[1] = v27;
    __dst[2] = v28;
    __dst[3] = v29;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVySdGSgMd, &_s17RealityFoundation14FromToByActionVySdGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    LOBYTE(v24[8]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySdGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySdGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[8] + 1) = a6;
    LOBYTE(v24[9]) = a3 & 1;
    *(&v24[9] + 1) = a9;
    *&v24[10] = a10;
    v24[11] = 0uLL;
    *(&v24[10] + 1) = a4;
    LOBYTE(v24[12]) = 1;
    *(&v24[12] + 1) = 0;
    LOBYTE(v24[13]) = 1;
    *(&v24[13] + 1) = 0;
    LOBYTE(v24[14]) = 1;
    v21 = a2[2];
    v22 = a2[4];
    *(&v24[17] + 8) = a2[3];
    *(&v24[18] + 8) = v22;
    *(&v24[16] + 8) = v21;
    v23 = a2[1];
    *(&v24[14] + 8) = *a2;
    *(&v24[15] + 8) = v23;
    *(&v24[19] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySdGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySdGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v26);
  if (v31 == 1)
  {
    __dst[2] = v28;
    __dst[3] = v29;
    __dst[4] = v30;
    __dst[5] = v31;
    __dst[0] = v26;
    __dst[1] = v27;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVySfGSgMd, &_s17RealityFoundation14FromToByActionVySfGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v24[3] = v28;
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[1] = v26;
    v24[2] = v27;
    LOBYTE(v24[7]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR) & 1;
    *&v24[0] = a1;
    *(&v24[7] + 1) = a6;
    LOBYTE(v24[8]) = a3 & 1;
    *(&v24[8] + 1) = a9;
    *&v24[9] = a10;
    v24[10] = 0uLL;
    *(&v24[9] + 1) = a4;
    LOBYTE(v24[11]) = 1;
    *(&v24[11] + 1) = 0;
    LOBYTE(v24[12]) = 1;
    *(&v24[12] + 1) = 0;
    LOBYTE(v24[13]) = 1;
    v21 = a2[2];
    v22 = a2[4];
    *(&v24[16] + 8) = a2[3];
    *(&v24[17] + 8) = v22;
    v23 = a2[1];
    *(&v24[13] + 8) = *a2;
    *(&v24[15] + 8) = v21;
    *(&v24[14] + 8) = v23;
    *(&v24[18] + 1) = a5;

    a7(v24);
    memcpy(__dst, v24, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySfGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySfGGMR);
  }

  return result;
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(__int128 *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v45);
  v20 = v49;
  if (v49)
  {
    v32 = a7;
    v21 = v46;
    v22 = v47;
    v31 = a5;
    v23 = v48;
    v29 = v50;
    v30 = v45;
    v28 = v51;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySSGGMR);
    *(&v38 + 1) = a9;
    *&v39 = a10;
    v25 = *a2;
    *&v43[24] = a2[1];
    v26 = a2[3];
    *&v43[40] = a2[2];
    BYTE8(v34) = v22 & 1;
    *&v35 = v23;
    *(&v35 + 1) = v20;
    *&v36 = v29;
    *(&v36 + 1) = v28;
    LOBYTE(v37) = v24 & 1;
    *(&v33 + 1) = v30;
    *&v34 = v21;
    *&v33 = a1;
    *(&v37 + 1) = a6;
    LOBYTE(v38) = a3 & 1;
    v40 = 0uLL;
    *(&v39 + 1) = a4;
    LOBYTE(v41) = 1;
    *(&v41 + 1) = 0;
    LOBYTE(v42) = 1;
    *(&v42 + 1) = 0;
    v43[0] = 1;
    *&v43[56] = v26;
    *&v43[72] = a2[4];
    *&v43[8] = v25;
    *&v43[88] = v31;

    v32(&v33);
    v44[12] = *&v43[32];
    v44[13] = *&v43[48];
    v44[14] = *&v43[64];
    v44[15] = *&v43[80];
    v44[8] = v41;
    v44[9] = v42;
    v44[10] = *v43;
    v44[11] = *&v43[16];
    v44[4] = v37;
    v44[5] = v38;
    v44[6] = v39;
    v44[7] = v40;
    v44[0] = v33;
    v44[1] = v34;
    v44[2] = v35;
    v44[3] = v36;
    return outlined destroy of BodyTrackingComponent?(v44, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySSGGMR);
  }

  else
  {
    result = outlined consume of SetEntityPropertyAction<String>?(v45, v46, v47, v48, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v43);
  v20 = v47;
  if (v47)
  {
    v29 = v43;
    v31 = a7;
    v21 = v44;
    v22 = v45;
    v30 = a5;
    v23 = v46;
    v28 = v48;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySbGGMR);
    *(&v36 + 1) = a9;
    *&v37 = a10;
    v25 = *a2;
    *&v41[24] = a2[1];
    v26 = a2[3];
    *&v41[40] = a2[2];
    BYTE8(v33) = v22 & 1;
    *&v34 = v23;
    *(&v34 + 1) = v20;
    LOBYTE(v35) = v28;
    BYTE1(v35) = v24 & 1;
    *(&v32 + 1) = v29;
    *&v33 = v21;
    *&v32 = a1;
    *(&v35 + 1) = a6;
    LOBYTE(v36) = a3 & 1;
    v38 = 0uLL;
    *(&v37 + 1) = a4;
    LOBYTE(v39) = 1;
    *(&v39 + 1) = 0;
    LOBYTE(v40) = 1;
    *(&v40 + 1) = 0;
    v41[0] = 1;
    *&v41[56] = v26;
    *&v41[72] = a2[4];
    *&v41[8] = v25;
    *&v41[88] = v30;

    v31(&v32);
    v42[12] = *&v41[48];
    v42[13] = *&v41[64];
    v42[14] = *&v41[80];
    v42[8] = v40;
    v42[9] = *v41;
    v42[10] = *&v41[16];
    v42[11] = *&v41[32];
    v42[4] = v36;
    v42[5] = v37;
    v42[6] = v38;
    v42[7] = v39;
    v42[0] = v32;
    v42[1] = v33;
    v42[2] = v34;
    v42[3] = v35;
    return outlined destroy of BodyTrackingComponent?(v42, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySbGGMR);
  }

  else
  {
    result = outlined consume of SetEntityPropertyAction<Bool>?(v43, v44, v45, v46, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v44);
  v20 = v48;
  if (v48)
  {
    v32 = a7;
    v21 = v45;
    v31 = a5;
    v22 = v46;
    v28 = v47;
    v29 = v50;
    v30 = v44;
    v23 = v49;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySfGGMR);
    *(&v37 + 1) = a9;
    *&v38 = a10;
    v25 = *a2;
    *&v42[24] = a2[1];
    v26 = a2[3];
    *&v42[40] = a2[2];
    BYTE8(v34) = v22 & 1;
    *&v35 = v28;
    *(&v35 + 1) = v20;
    LODWORD(v36) = v23;
    BYTE4(v36) = v29 & 1;
    BYTE5(v36) = v24 & 1;
    *(&v33 + 1) = v30;
    *&v34 = v21;
    *&v33 = a1;
    *(&v36 + 1) = a6;
    LOBYTE(v37) = a3 & 1;
    v39 = 0uLL;
    *(&v38 + 1) = a4;
    LOBYTE(v40) = 1;
    *(&v40 + 1) = 0;
    LOBYTE(v41) = 1;
    *(&v41 + 1) = 0;
    v42[0] = 1;
    *&v42[56] = v26;
    *&v42[72] = a2[4];
    *&v42[8] = v25;
    *&v42[88] = v31;

    v32(&v33);
    v43[12] = *&v42[48];
    v43[13] = *&v42[64];
    v43[14] = *&v42[80];
    v43[8] = v41;
    v43[9] = *v42;
    v43[10] = *&v42[16];
    v43[11] = *&v42[32];
    v43[4] = v37;
    v43[5] = v38;
    v43[6] = v39;
    v43[7] = v40;
    v43[0] = v33;
    v43[1] = v34;
    v43[2] = v35;
    v43[3] = v36;
    return outlined destroy of BodyTrackingComponent?(v43, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySfGGMR);
  }

  else
  {
    result = outlined consume of SetEntityPropertyAction<Bool>?(v44, v45, v46, v47, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

{
  result = specialized ActionEventData.action<A>()(&v36);
  v21 = v39 | (v40 << 32);
  if ((v21 & 0xFF0000000000) == 0x20000000000)
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    LODWORD(v25) = v36;
    v26 = v37;
    v27 = v38;
    LODWORD(v28) = v39;
    BYTE4(v28) = BYTE4(v21);
    BYTE5(v28) = BYTE5(v21) & 1;
    BYTE6(v28) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR) & 1;
    *&v24 = a1;
    *(&v28 + 1) = a6;
    LOBYTE(v29) = a3 & 1;
    *(&v29 + 1) = a9;
    *&v30 = a10;
    v31 = 0uLL;
    *(&v30 + 1) = a4;
    LOBYTE(v32) = 1;
    *(&v32 + 1) = 0;
    LOBYTE(v33) = 1;
    *(&v33 + 1) = 0;
    v34[0] = 1;
    v22 = *a2;
    *&v34[24] = a2[1];
    v23 = a2[3];
    *&v34[40] = a2[2];
    *&v34[56] = v23;
    *&v34[72] = a2[4];
    *&v34[8] = v22;
    *&v34[88] = a5;

    a7(&v24);
    v35[12] = *&v34[32];
    v35[13] = *&v34[48];
    v35[14] = *&v34[64];
    v35[15] = *&v34[80];
    v35[8] = v32;
    v35[9] = v33;
    v35[10] = *v34;
    v35[11] = *&v34[16];
    v35[4] = v28;
    v35[5] = v29;
    v35[6] = v30;
    v35[7] = v31;
    v35[0] = v24;
    v35[1] = v25;
    v35[2] = v26;
    v35[3] = v27;
    return outlined destroy of BodyTrackingComponent?(v35, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMd, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v43);
  v20 = v45;
  if (v45 == 0xFF)
  {
    result = outlined consume of OrbitEntityAction?(v43, v44, 255);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    v22 = v48;
    v27 = v44;
    v28 = v46;
    v29 = v43;
    v30 = a5;
    v23 = v47;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
    *(&v36 + 1) = a9;
    *&v37 = a10;
    v25 = *a2;
    *&v41[24] = a2[1];
    v26 = a2[3];
    *&v41[40] = a2[2];
    LOBYTE(v33) = v20 & 1;
    DWORD1(v33) = HIDWORD(v20);
    *&v34 = v28;
    *(&v34 + 1) = v23;
    LOWORD(v35) = v22 & 0x101;
    BYTE2(v35) = v24 & 1;
    *&v32 = v29;
    *(&v32 + 1) = v27;
    *&v31 = a1;
    *(&v35 + 1) = a6;
    LOBYTE(v36) = a3 & 1;
    v38 = 0uLL;
    *(&v37 + 1) = a4;
    LOBYTE(v39) = 1;
    *(&v39 + 1) = 0;
    LOBYTE(v40) = 1;
    *(&v40 + 1) = 0;
    v41[0] = 1;
    *&v41[56] = v26;
    *&v41[72] = a2[4];
    *&v41[8] = v25;
    *&v41[88] = v30;

    a7(&v31);
    v42[12] = *&v41[32];
    v42[13] = *&v41[48];
    v42[14] = *&v41[64];
    v42[15] = *&v41[80];
    v42[8] = v39;
    v42[9] = v40;
    v42[10] = *v41;
    v42[11] = *&v41[16];
    v42[4] = v35;
    v42[5] = v36;
    v42[6] = v37;
    v42[7] = v38;
    v42[0] = v31;
    v42[1] = v32;
    v42[2] = v33;
    v42[3] = v34;
    return outlined destroy of BodyTrackingComponent?(v42, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMd, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v42);
  v20 = v44;
  if (v44 == 0xFF)
  {
    result = outlined consume of OrbitEntityAction?(v42, v43, 255);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  else
  {
    v22 = v43;
    v27 = v45;
    v28 = v42;
    v29 = a5;
    v23 = v46;
    v24 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
    *(&v35 + 1) = a9;
    *&v36 = a10;
    v25 = *a2;
    *&v40[24] = a2[1];
    v26 = a2[3];
    *&v40[40] = a2[2];
    LOBYTE(v32) = v20 & 1;
    *&v33 = v27;
    *(&v33 + 1) = v23;
    LOBYTE(v34) = v24 & 1;
    *&v31 = v28;
    *(&v31 + 1) = v22;
    *&v30 = a1;
    *(&v34 + 1) = a6;
    LOBYTE(v35) = a3 & 1;
    v37 = 0uLL;
    *(&v36 + 1) = a4;
    LOBYTE(v38) = 1;
    *(&v38 + 1) = 0;
    LOBYTE(v39) = 1;
    *(&v39 + 1) = 0;
    v40[0] = 1;
    *&v40[56] = v26;
    *&v40[72] = a2[4];
    *&v40[8] = v25;
    *&v40[88] = v29;

    a7(&v30);
    v41[12] = *&v40[32];
    v41[13] = *&v40[48];
    v41[14] = *&v40[64];
    v41[15] = *&v40[80];
    v41[8] = v38;
    v41[9] = v39;
    v41[10] = *v40;
    v41[11] = *&v40[16];
    v41[4] = v34;
    v41[5] = v35;
    v41[6] = v36;
    v41[7] = v37;
    v41[0] = v30;
    v41[1] = v31;
    v41[2] = v32;
    v41[3] = v33;
    return outlined destroy of BodyTrackingComponent?(v41, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMd, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v38);
  v20 = v39;
  if (v39)
  {
    v27 = a7;
    v21 = v38;
    v22 = v40;
    v23 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR);
    *(&v31 + 1) = a9;
    *&v32 = a10;
    v24 = *a2;
    *&v36[24] = a2[1];
    v25 = a2[3];
    *&v36[40] = a2[2];
    *&v29 = v20;
    *(&v29 + 1) = v22;
    LOBYTE(v30) = v23 & 1;
    *&v28 = a1;
    *(&v28 + 1) = v21;
    *(&v30 + 1) = a6;
    LOBYTE(v31) = a3 & 1;
    v33 = 0uLL;
    *(&v32 + 1) = a4;
    LOBYTE(v34) = 1;
    *(&v34 + 1) = 0;
    LOBYTE(v35) = 1;
    *(&v35 + 1) = 0;
    v36[0] = 1;
    *&v36[56] = v25;
    *&v36[72] = a2[4];
    *&v36[8] = v24;
    *&v36[88] = a5;

    v27(&v28);
    v37[10] = *&v36[32];
    v37[11] = *&v36[48];
    v37[12] = *&v36[64];
    v37[13] = *&v36[80];
    v37[6] = v34;
    v37[7] = v35;
    v37[8] = *v36;
    v37[9] = *&v36[16];
    v37[2] = v30;
    v37[3] = v31;
    v37[4] = v32;
    v37[5] = v33;
    v37[0] = v28;
    v37[1] = v29;
    return outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMd, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMR);
  }

  else
  {
    result = outlined consume of NotificationAction?(v38, 0);
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(_OWORD *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v27);
  v43[12] = v39;
  v43[13] = v40;
  v43[14] = v41;
  v43[15] = v42;
  v43[8] = v35;
  v43[9] = v36;
  v43[10] = v37;
  v43[11] = v38;
  v43[4] = v31;
  v43[5] = v32;
  v43[6] = v33;
  v43[7] = v34;
  v43[0] = v27;
  v43[1] = v28;
  v43[2] = v29;
  v43[3] = v30;
  if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(v43) == 1)
  {
    __dst[12] = v39;
    __dst[13] = v40;
    __dst[14] = v41;
    __dst[15] = v42;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[10] = v37;
    __dst[11] = v38;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[0] = v27;
    __dst[1] = v28;
    __dst[2] = v29;
    __dst[3] = v30;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[13] = v39;
    v25[14] = v40;
    v25[15] = v41;
    v25[16] = v42;
    v25[9] = v35;
    v25[10] = v36;
    v25[11] = v37;
    v25[12] = v38;
    v25[5] = v31;
    v25[6] = v32;
    v25[7] = v33;
    v25[8] = v34;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;
    v25[4] = v30;
    LOBYTE(v25[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[17] + 1) = a6;
    LOBYTE(v25[18]) = a3 & 1;
    *(&v25[18] + 1) = a9;
    *&v25[19] = a10;
    *(&v25[19] + 1) = a4;
    v25[20] = 0uLL;
    LOBYTE(v25[21]) = 1;
    *(&v25[21] + 1) = 0;
    LOBYTE(v25[22]) = 1;
    LOBYTE(v25[23]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[26] + 8) = a2[3];
    *(&v25[27] + 8) = v23;
    v24 = a2[2];
    *(&v25[24] + 8) = v22;
    *(&v25[25] + 8) = v24;
    *(&v25[23] + 8) = v21;
    *(&v25[22] + 1) = 0;
    *(&v25[28] + 1) = a5;

    a7(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v27);
  v37[6] = v33;
  v37[7] = v34;
  v37[8] = v35;
  v37[9] = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[4] = v31;
  v37[5] = v32;
  v37[0] = v27;
  v37[1] = v28;
  if (_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg_0(v37) == 1)
  {
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[2] = v29;
    __dst[3] = v30;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[0] = v27;
    __dst[1] = v28;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[7] = v33;
    v25[8] = v34;
    v25[9] = v35;
    v25[10] = v36;
    v25[3] = v29;
    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[1] = v27;
    v25[2] = v28;
    LOBYTE(v25[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[11] + 1) = a6;
    LOBYTE(v25[12]) = a3 & 1;
    *(&v25[12] + 1) = a9;
    *&v25[13] = a10;
    v25[14] = 0uLL;
    *(&v25[13] + 1) = a4;
    LOBYTE(v25[15]) = 1;
    LOBYTE(v25[16]) = 1;
    *(&v25[15] + 1) = 0;
    *(&v25[16] + 1) = 0;
    LOBYTE(v25[17]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[20] + 8) = a2[3];
    *(&v25[21] + 8) = v23;
    v24 = a2[2];
    *(&v25[18] + 8) = v22;
    *(&v25[19] + 8) = v24;
    *(&v25[17] + 8) = v21;
    *(&v25[22] + 1) = a5;

    a7(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v27);
  v37[6] = v33;
  v37[7] = v34;
  v37[8] = v35;
  v37[9] = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[4] = v31;
  v37[5] = v32;
  v37[0] = v27;
  v37[1] = v28;
  if (_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg_0(v37) == 1)
  {
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[2] = v29;
    __dst[3] = v30;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[0] = v27;
    __dst[1] = v28;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[7] = v33;
    v25[8] = v34;
    v25[9] = v35;
    v25[10] = v36;
    v25[3] = v29;
    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[1] = v27;
    v25[2] = v28;
    LOBYTE(v25[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[11] + 1) = a6;
    LOBYTE(v25[12]) = a3 & 1;
    *(&v25[12] + 1) = a9;
    *&v25[13] = a10;
    v25[14] = 0uLL;
    *(&v25[13] + 1) = a4;
    LOBYTE(v25[15]) = 1;
    LOBYTE(v25[16]) = 1;
    *(&v25[15] + 1) = 0;
    *(&v25[16] + 1) = 0;
    LOBYTE(v25[17]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[20] + 8) = a2[3];
    *(&v25[21] + 8) = v23;
    v24 = a2[2];
    *(&v25[18] + 8) = v22;
    *(&v25[19] + 8) = v24;
    *(&v25[17] + 8) = v21;
    *(&v25[22] + 1) = a5;

    a7(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMR);
  }

  return result;
}

{
  specialized ActionEventData.action<A>()(&v27);
  v37[6] = v33;
  v37[7] = v34;
  v37[8] = v35;
  v37[9] = v36;
  v37[2] = v29;
  v37[3] = v30;
  v37[4] = v31;
  v37[5] = v32;
  v37[0] = v27;
  v37[1] = v28;
  if (_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg_0(v37) == 1)
  {
    __dst[6] = v33;
    __dst[7] = v34;
    __dst[8] = v35;
    __dst[9] = v36;
    __dst[2] = v29;
    __dst[3] = v30;
    __dst[4] = v31;
    __dst[5] = v32;
    __dst[0] = v27;
    __dst[1] = v28;
    result = outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  else
  {
    v25[7] = v33;
    v25[8] = v34;
    v25[9] = v35;
    v25[10] = v36;
    v25[3] = v29;
    v25[4] = v30;
    v25[5] = v31;
    v25[6] = v32;
    v25[1] = v27;
    v25[2] = v28;
    LOBYTE(v25[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMR) & 1;
    *&v25[0] = a1;
    *(&v25[11] + 1) = a6;
    LOBYTE(v25[12]) = a3 & 1;
    *(&v25[12] + 1) = a9;
    *&v25[13] = a10;
    v25[14] = 0uLL;
    *(&v25[13] + 1) = a4;
    LOBYTE(v25[15]) = 1;
    LOBYTE(v25[16]) = 1;
    *(&v25[15] + 1) = 0;
    *(&v25[16] + 1) = 0;
    LOBYTE(v25[17]) = 1;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[4];
    *(&v25[20] + 8) = a2[3];
    *(&v25[21] + 8) = v23;
    v24 = a2[2];
    *(&v25[18] + 8) = v22;
    *(&v25[19] + 8) = v24;
    *(&v25[17] + 8) = v21;
    *(&v25[22] + 1) = a5;

    a7(v25);
    memcpy(__dst, v25, sizeof(__dst));
    return outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMR);
  }

  return result;
}

void specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(uint64_t a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(_OWORD *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(v25);
  if ((~v26 & 0xFF00000000) != 0)
  {
    v23[3] = v26;
    v23[4] = v27;
    v23[5] = v28[0];
    *(&v23[5] + 13) = *(v28 + 13);
    v23[1] = v25[0];
    v23[2] = v25[1];
    BYTE5(v23[6]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR) & 1;
    *&v23[0] = a1;
    *(&v23[6] + 1) = a6;
    LOBYTE(v23[7]) = a3 & 1;
    *(&v23[7] + 1) = a9;
    *&v23[8] = a10;
    v23[9] = 0uLL;
    *(&v23[8] + 1) = a4;
    LOBYTE(v23[10]) = 1;
    *(&v23[10] + 1) = 0;
    LOBYTE(v23[11]) = 1;
    *(&v23[11] + 1) = 0;
    LOBYTE(v23[12]) = 1;
    v20 = a2[2];
    v21 = a2[3];
    *(&v23[16] + 8) = a2[4];
    v22 = a2[1];
    *(&v23[12] + 8) = *a2;
    *(&v23[15] + 8) = v21;
    *(&v23[14] + 8) = v20;
    *(&v23[13] + 8) = v22;
    *(&v23[17] + 1) = a5;

    a7(v23);
    memcpy(__dst, v23, sizeof(__dst));
    outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMd, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMR);
  }

  else
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }
}

uint64_t specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(_BYTE *)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  specialized ActionEventData.action<A>()(&v46);
  if (*(&v46 + 1))
  {
    *&v24[8] = v46;
    *&v24[24] = v47;
    *&v24[40] = v48[0];
    *&v24[50] = *(v48 + 10);
    v24[66] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR) & 1;
    *v24 = a1;
    *&v24[72] = a6;
    LOBYTE(v25) = a3 & 1;
    *(&v25 + 1) = a9;
    *&v26 = a10;
    v27 = 0uLL;
    *(&v26 + 1) = a4;
    LOBYTE(v28) = 1;
    *(&v28 + 1) = 0;
    LOBYTE(v29) = 1;
    *(&v29 + 1) = 0;
    v30[0] = 1;
    v20 = a2[1];
    *&v30[8] = *a2;
    v21 = a2[2];
    v22 = a2[3];
    *&v30[72] = a2[4];
    *&v30[56] = v22;
    *&v30[40] = v21;
    *&v30[24] = v20;
    *&v30[88] = a5;

    a7(v24);
    v42 = *&v30[32];
    v43 = *&v30[48];
    v44 = *&v30[64];
    v45 = *&v30[80];
    v38 = v28;
    v39 = v29;
    v40 = *v30;
    v41 = *&v30[16];
    v34 = *&v24[64];
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v31 = *v24;
    v32 = *&v24[16];
    *v33 = *&v24[32];
    *&v33[16] = *&v24[48];
    return outlined destroy of BodyTrackingComponent?(&v31, &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMd, &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMR);
  }

  else
  {
    v31 = v46;
    v32 = v47;
    *v33 = v48[0];
    *&v33[10] = *(v48 + 10);
    result = outlined destroy of BodyTrackingComponent?(&v31, &_s17RealityFoundation19PlayAnimationActionVSgMd, &_s17RealityFoundation19PlayAnimationActionVSgMR);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[24];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v34, &v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v27 + 1);
  outlined destroy of BodyTrackingComponent?(&v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EmphasizeAction), (v10 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v11 = *(v8 + 56) + 16 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    swift_endAccess();
    v14 = *a1;
    v15 = *(a1 + 10);
    v28 = *(a1 + 9);
    v29 = v15;
    v30 = *(a1 + 11);
    v16 = *(a1 + 8);
    v26 = *(a1 + 7);
    v27 = v16;
    v17 = *(a1 + 24);
    *&v16 = a1[4];
    *&v15 = a1[5];
    v18 = a1[6];
    v19 = a1[2];
    v31 = v14;
    v25 = v17;
    v23 = v15;
    v24 = v16;
    v21 = v2;
    v22 = v18;
    v20 = v19;

    v13(v32, &v31, &v26, &v25, &v24, &v23, &v22, &v21, &v20);

    outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v34 = v32[0];
    v35 = v32[1];
    v36 = v33;
  }

  v26 = v34;
  v27 = v35;
  *&v28 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    return *&v32[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[30];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v34, &v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v27 + 1);
  outlined destroy of BodyTrackingComponent?(&v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAudioAction), (v10 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 1;
    }

    v11 = *(v8 + 56) + 16 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    swift_endAccess();
    v14 = *a1;
    v15 = *(a1 + 13);
    v28 = *(a1 + 12);
    v29 = v15;
    v30 = *(a1 + 14);
    v16 = *(a1 + 11);
    v26 = *(a1 + 10);
    v27 = v16;
    v17 = *(a1 + 72);
    *&v16 = a1[10];
    *&v15 = a1[11];
    v18 = a1[12];
    v19 = a1[8];
    v31 = v14;
    v25 = v17;
    v23 = v15;
    v24 = v16;
    v21 = v2;
    v22 = v18;
    v20 = v19;

    v13(v32, &v31, &v26, &v25, &v24, &v23, &v22, &v21, &v20);

    outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v34 = v32[0];
    v35 = v32[1];
    v36 = v33;
  }

  v26 = v34;
  v27 = v35;
  *&v28 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    return *&v32[0];
  }

  else
  {
    return 1;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[37];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v36, &v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v29 + 1);
  outlined destroy of BodyTrackingComponent?(&v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if (v11)
    {
      v12 = *(v8 + 56) + 16 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      swift_endAccess();
      v15 = *a1;
      v16 = *(a1 + 33);
      v17 = *(a1 + 35);
      v30 = *(a1 + 31);
      v31 = v16;
      v18 = *(a1 + 29);
      v32 = v17;
      v28 = *(a1 + 27);
      v29 = v18;
      v19 = *(a1 + 128);
      *&v18 = a1[17];
      *&v16 = a1[18];
      v20 = a1[19];
      v21 = a1[15];
      v33 = v15;
      v27 = v19;
      v25 = v16;
      v26 = v18;
      v23 = v2;
      v24 = v20;
      v22 = v21;

      v14(v34, &v33, &v28, &v27, &v26, &v25, &v24, &v23, &v22);

      outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v36 = v34[0];
      v37 = v34[1];
      v38 = v35;
LABEL_8:
      v28 = v36;
      v29 = v37;
      *&v30 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v36, &v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v29 + 1);
  outlined destroy of BodyTrackingComponent?(&v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if (v11)
    {
      v12 = *(v8 + 56) + 16 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      swift_endAccess();
      v15 = *a1;
      v16 = *(a1 + 23);
      v17 = *(a1 + 27);
      v30 = *(a1 + 25);
      v31 = v17;
      v32 = *(a1 + 29);
      v28 = *(a1 + 21);
      v29 = v16;
      v18 = *(a1 + 80);
      *&v16 = a1[11];
      v19 = a1[12];
      v20 = a1[13];
      v21 = a1[9];
      v33 = v15;
      v27 = v18;
      v25 = v19;
      v26 = v16;
      v23 = v2;
      v24 = v20;
      v22 = v21;

      v14(v34, &v33, &v28, &v27, &v26, &v25, &v24, &v23, &v22);

      outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v36 = v34[0];
      v37 = v34[1];
      v38 = v35;
LABEL_8:
      v28 = v36;
      v29 = v37;
      *&v30 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[33];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v44, &v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v37 + 1);
  outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v14)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v19)
    {
      v20 = *(v16 + 56) + 16 * v18;
      v22 = *v20;
      v21 = *(v20 + 8);
      swift_endAccess();
      v23 = *a1;
      v24 = *(a1 + 25);
      v25 = *(a1 + 29);
      v38 = *(a1 + 27);
      v39 = v25;
      v40 = *(a1 + 31);
      v36 = *(a1 + 23);
      v37 = v24;
      v26 = *(a1 + 96);
      *&v24 = a1[13];
      v27 = a1[14];
      v28 = a1[15];
      v29 = a1[11];
      v41 = v23;
      v35 = v26;
      v33 = v27;
      v34 = v24;
      v31 = v10;
      v32 = v28;
      v30 = v29;

      v22(v42, &v41, &v36, &v35, &v34, &v33, &v32, &v31, &v30);

      outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v44 = v42[0];
      v45 = v42[1];
      v46 = v43;
LABEL_8:
      v36 = v44;
      v37 = v45;
      *&v38 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[30];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v43);
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v43, &v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v36 + 1);
  outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v14)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v19)
    {
      v20 = *(v16 + 56) + 16 * v18;
      v22 = *v20;
      v21 = *(v20 + 8);
      swift_endAccess();
      v23 = *a1;
      v24 = *(a1 + 13);
      v37 = *(a1 + 12);
      v38 = v24;
      v39 = *(a1 + 14);
      v25 = *(a1 + 11);
      v35 = *(a1 + 10);
      v36 = v25;
      v26 = *(a1 + 72);
      *&v25 = a1[10];
      *&v24 = a1[11];
      v27 = a1[12];
      v28 = a1[8];
      v40 = v23;
      v34 = v26;
      v32 = v24;
      v33 = v25;
      v30 = v10;
      v31 = v27;
      v29 = v28;

      v22(v41, &v40, &v35, &v34, &v33, &v32, &v31, &v30, &v29);

      outlined destroy of BodyTrackingComponent?(&v43, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v43 = v41[0];
      v44 = v41[1];
      v45 = v42;
LABEL_8:
      v35 = v43;
      v36 = v44;
      *&v37 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v43, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[29];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v44, &v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v37 + 1);
  outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v14)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v19)
    {
      v20 = *(v16 + 56) + 16 * v18;
      v22 = *v20;
      v21 = *(v20 + 8);
      swift_endAccess();
      v23 = *a1;
      v24 = *(a1 + 21);
      v25 = *(a1 + 25);
      v38 = *(a1 + 23);
      v39 = v25;
      v40 = *(a1 + 27);
      v36 = *(a1 + 19);
      v37 = v24;
      v26 = *(a1 + 64);
      *&v24 = a1[9];
      v27 = a1[10];
      v28 = a1[11];
      v29 = a1[7];
      v41 = v23;
      v35 = v26;
      v33 = v27;
      v34 = v24;
      v31 = v10;
      v32 = v28;
      v30 = v29;

      v22(v42, &v41, &v36, &v35, &v34, &v33, &v32, &v31, &v30);

      outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v44 = v42[0];
      v45 = v42[1];
      v46 = v43;
LABEL_8:
      v36 = v44;
      v37 = v45;
      *&v38 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v12 = a1[37];
  swift_beginAccess();
  v13 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v15 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v13 + 56) + 40 * v14, &v46);
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v46, &v38, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v16 = *(&v39 + 1);
  outlined destroy of BodyTrackingComponent?(&v38, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v16)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3), v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v21 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v46, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      goto LABEL_16;
    }

    v22 = *(v18 + 56) + 16 * v20;
    v24 = *v22;
    v23 = *(v22 + 8);
    swift_endAccess();
    v25 = *a1;
    v26 = *(a1 + 33);
    v27 = *(a1 + 35);
    v40 = *(a1 + 31);
    v41 = v26;
    v28 = *(a1 + 29);
    v42 = v27;
    v38 = *(a1 + 27);
    v39 = v28;
    v29 = *(a1 + 128);
    *&v28 = a1[17];
    *&v26 = a1[18];
    v30 = a1[19];
    v31 = a1[15];
    v43 = v25;
    v37 = v29;
    v35 = v26;
    v36 = v28;
    v33 = v12;
    v34 = v30;
    v32 = v31;

    v24(v44, &v43, &v38, &v37, &v36, &v35, &v34, &v33, &v32);

    outlined destroy of BodyTrackingComponent?(&v46, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v46 = v44[0];
    v47 = v44[1];
    v48 = v45;
  }

  v38 = v46;
  v39 = v47;
  *&v40 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    *&result = 1;
    *a6 = xmmword_1C1887610;
  }

  return result;
}

__n128 _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v4 = a1[57];
  swift_beginAccess();
  v5 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v6, &v39);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v39, &v30, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v8 = v31.n128_u64[1];
  outlined destroy of BodyTrackingComponent?(&v30, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v8)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR), v11 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v12 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v39, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      LOBYTE(v36) = 1;
      goto LABEL_17;
    }

    v13 = *(v9 + 56) + 16 * v11;
    v15 = *v13;
    v14 = *(v13 + 8);
    swift_endAccess();
    v16 = *a1;
    v17 = *(a1 + 53);
    v32 = *(a1 + 51);
    v33 = v17;
    v34 = *(a1 + 55);
    v18 = *(a1 + 49);
    v30 = *(a1 + 47);
    v31 = v18;
    v19 = *(a1 + 288);
    v18.n128_u64[0] = a1[37];
    *&v17 = a1[38];
    v20 = a1[39];
    v21 = a1[35];
    v35 = v16;
    v29 = v19;
    v27 = v17;
    v28 = v18.n128_u64[0];
    v25 = v4;
    v26 = v20;
    v24 = v21;

    v15(&v36, &v35, &v30, &v29, &v28, &v27, &v26, &v25, &v24);

    outlined destroy of BodyTrackingComponent?(&v39, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  v36 = v39;
  v37 = v40;
  v38 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
  if (!swift_dynamicCast())
  {
    LOBYTE(v35) = 1;
LABEL_17:
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    LOBYTE(v34) = 1;
    goto LABEL_18;
  }

  LOBYTE(v34) = 0;
LABEL_18:
  v22 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v22;
  *(a2 + 64) = v34;
  result = v31;
  *a2 = v30;
  *(a2 + 16) = result;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, int8x16_t *a6@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v12 = a1[45];
  swift_beginAccess();
  v13 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v15 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v13 + 56) + 40 * v14, &v51);
  }

  else
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v51, &v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v16 = v43.i64[1];
  outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v16)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3), v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v26 & 1) == 0))
    {
      swift_endAccess();
      result = outlined destroy of BodyTrackingComponent?(&v51, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v20 = 0uLL;
      v22 = 1;
      v21 = 0uLL;
      goto LABEL_18;
    }

    v27 = *(v23 + 56) + 16 * v25;
    v29 = *v27;
    v28 = *(v27 + 8);
    swift_endAccess();
    v30 = *a1;
    v31 = *(a1 + 41);
    v44 = *(a1 + 39);
    v45 = v31;
    v46 = *(a1 + 43);
    v32 = *(a1 + 37);
    v42 = *(a1 + 35);
    v43 = v32;
    v33 = *(a1 + 192);
    v32.i64[0] = a1[25];
    *&v31 = a1[26];
    v34 = a1[27];
    v35 = a1[23];
    v47 = v30;
    v41 = v33;
    v39 = v31;
    v40 = v32.i64[0];
    v37 = v12;
    v38 = v34;
    v36 = v35;

    v29(&v48, &v47, &v42, &v41, &v40, &v39, &v38, &v37, &v36);

    outlined destroy of BodyTrackingComponent?(&v51, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  v42 = v51;
  v43 = v52;
  *&v44 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = vdupq_n_s64(v18);
  v20 = vandq_s8(v48, v19);
  v21 = vandq_s8(v49, v19);
  v22 = result ^ 1;
LABEL_18:
  *a6 = v20;
  a6[1] = v21;
  a6[2].i8[0] = v22;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = a1[39];
  swift_beginAccess();
  v11 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v11 + 56) + 40 * v12, &v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v44, &v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v14 = *(&v37 + 1);
  outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v14)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3), v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v19 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v20 = *(v16 + 56) + 16 * v18;
    v22 = *v20;
    v21 = *(v20 + 8);
    swift_endAccess();
    v23 = *a1;
    v24 = *(a1 + 31);
    v25 = *(a1 + 35);
    v38 = *(a1 + 33);
    v39 = v25;
    v40 = *(a1 + 37);
    v36 = *(a1 + 29);
    v37 = v24;
    v26 = *(a1 + 144);
    *&v24 = a1[19];
    v27 = a1[20];
    v28 = a1[21];
    v29 = a1[17];
    v41 = v23;
    v35 = v26;
    v33 = v27;
    v34 = v24;
    v31 = v10;
    v32 = v28;
    v30 = v29;

    v22(v42, &v41, &v36, &v35, &v34, &v33, &v32, &v31, &v30);

    outlined destroy of BodyTrackingComponent?(&v44, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v44 = v42[0];
    v45 = v42[1];
    v46 = v43;
  }

  v36 = v44;
  v37 = v45;
  *&v38 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    return *&v42[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[37];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v36, &v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v29 + 1);
  outlined destroy of BodyTrackingComponent?(&v28, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR), v10 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v11 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v12 = *(v8 + 56) + 16 * v10;
    v14 = *v12;
    v13 = *(v12 + 8);
    swift_endAccess();
    v15 = *a1;
    v16 = *(a1 + 33);
    v17 = *(a1 + 35);
    v30 = *(a1 + 31);
    v31 = v16;
    v18 = *(a1 + 29);
    v32 = v17;
    v28 = *(a1 + 27);
    v29 = v18;
    v19 = *(a1 + 128);
    *&v18 = a1[17];
    *&v16 = a1[18];
    v20 = a1[19];
    v21 = a1[15];
    v33 = v15;
    v27 = v19;
    v25 = v16;
    v26 = v18;
    v23 = v2;
    v24 = v20;
    v22 = v21;

    v14(v34, &v33, &v28, &v27, &v26, &v25, &v24, &v23, &v22);

    outlined destroy of BodyTrackingComponent?(&v36, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v36 = v34[0];
    v37 = v34[1];
    v38 = v35;
  }

  v28 = v36;
  v29 = v37;
  *&v30 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
  if (swift_dynamicCast())
  {
    return *&v34[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v4 = a1[35];
  swift_beginAccess();
  v5 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v6, &v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v37, &v29, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v8 = *(&v30 + 1);
  outlined destroy of BodyTrackingComponent?(&v29, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v8)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for BillboardAction), (v12 & 1) == 0))
    {
      swift_endAccess();
      result = outlined destroy of BodyTrackingComponent?(&v37, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      *a2 = 0;
      *(a2 + 4) = 256;
      return result;
    }

    v13 = *(v10 + 56) + 16 * v11;
    v15 = *v13;
    v14 = *(v13 + 8);
    swift_endAccess();
    v16 = *a1;
    v17 = *(a1 + 27);
    v18 = *(a1 + 31);
    v31 = *(a1 + 29);
    v32 = v18;
    v33 = *(a1 + 33);
    v29 = *(a1 + 25);
    v30 = v17;
    v19 = *(a1 + 112);
    *&v17 = a1[15];
    v20 = a1[16];
    v21 = a1[17];
    v22 = a1[13];
    v34 = v16;
    v28 = v19;
    v26 = v20;
    v27 = v17;
    v24 = v4;
    v25 = v21;
    v23 = v22;

    v15(v35, &v34, &v29, &v28, &v27, &v26, &v25, &v24, &v23);

    outlined destroy of BodyTrackingComponent?(&v37, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v37 = v35[0];
    v38 = v35[1];
    v39 = v36;
  }

  v29 = v37;
  v30 = v38;
  *&v31 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *(a2 + 4) = 0;
    *a2 = 0;
  }

  *(a2 + 5) = result ^ 1;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v38);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v38, &v29, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v30 + 1);
  outlined destroy of BodyTrackingComponent?(&v29, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SpinAction), (v12 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v38, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 0;
    }

    v13 = *(v10 + 56) + 16 * v11;
    v15 = *v13;
    v14 = *(v13 + 8);
    swift_endAccess();
    v16 = *a1;
    v17 = *(a1 + 23);
    v18 = *(a1 + 27);
    v31 = *(a1 + 25);
    v32 = v18;
    v33 = *(a1 + 29);
    v29 = *(a1 + 21);
    v30 = v17;
    v19 = *(a1 + 80);
    *&v17 = a1[11];
    v20 = a1[12];
    v21 = a1[13];
    v22 = a1[9];
    v34 = v16;
    v28 = v19;
    v26 = v20;
    v27 = v17;
    v24 = v2;
    v25 = v21;
    v23 = v22;

    v15(&v35, &v34, &v29, &v28, &v27, &v26, &v25, &v24, &v23);

    outlined destroy of BodyTrackingComponent?(&v38, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  v29 = v38;
  v30 = v39;
  *&v31 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v7 = swift_dynamicCast();
  v8 = v7;
  if (v7)
  {
    result = v35;
  }

  else
  {
    result = 0;
    v35 = 0uLL;
    LOBYTE(v36) = 0;
  }

  BYTE1(v36) = v8 ^ 1;
  return result;
}

double _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v4 = a1[31];
  swift_beginAccess();
  v5 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v6, &v52);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v52, &v40, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v8 = *(&v41 + 1);
  outlined destroy of BodyTrackingComponent?(&v40, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v8)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for OrbitEntityAction), (v13 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v52, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      goto LABEL_16;
    }

    v14 = *(v11 + 56) + 16 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    swift_endAccess();
    v17 = *a1;
    v18 = *(a1 + 23);
    v19 = *(a1 + 27);
    v42 = *(a1 + 25);
    v43 = v19;
    v44 = *(a1 + 29);
    v40 = *(a1 + 21);
    v41 = v18;
    v20 = *(a1 + 80);
    *&v18 = a1[11];
    v21 = a1[12];
    v22 = a1[13];
    v23 = a1[9];
    v36 = v17;
    v35 = v20;
    v33 = v21;
    v34 = v18;
    v31 = v4;
    v32 = v22;
    v30 = v23;

    v16(&v37, &v36, &v40, &v35, &v34, &v33, &v32, &v31, &v30);

    outlined destroy of BodyTrackingComponent?(&v52, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v52 = v37;
    v53 = v38;
    v54 = v39;
  }

  v37 = v52;
  v38 = v53;
  v39 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a2, v9);
    return result;
  }

LABEL_16:
  _s17RealityFoundation24OrbitEntityActionHandlerVSgWOi0_(&v40);
  v24 = v49;
  a2[8] = v48;
  a2[9] = v24;
  v25 = v51;
  a2[10] = v50;
  a2[11] = v25;
  v26 = v45;
  a2[4] = v44;
  a2[5] = v26;
  v27 = v47;
  a2[6] = v46;
  a2[7] = v27;
  v28 = v41;
  *a2 = v40;
  a2[1] = v28;
  result = *&v42;
  v29 = v43;
  a2[2] = v42;
  a2[3] = v29;
  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v35);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v35, &v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v28 + 1);
  outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for ImpulseAction);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v13 = *v11;
      v12 = *(v11 + 8);
      swift_endAccess();
      v14 = *a1;
      v15 = *(a1 + 23);
      v16 = *(a1 + 27);
      v29 = *(a1 + 25);
      v30 = v16;
      v31 = *(a1 + 29);
      v27 = *(a1 + 21);
      v28 = v15;
      v17 = *(a1 + 80);
      *&v15 = a1[11];
      v18 = a1[12];
      v19 = a1[13];
      v20 = a1[9];
      v32 = v14;
      v26 = v17;
      v24 = v18;
      v25 = v15;
      v22 = v2;
      v23 = v19;
      v21 = v20;

      v13(v33, &v32, &v27, &v26, &v25, &v24, &v23, &v22, &v21);

      outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v35 = v33[0];
      v36 = v33[1];
      v37 = v34;
LABEL_8:
      v27 = v35;
      v28 = v36;
      *&v29 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[26];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v34, &v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v27 + 1);
  outlined destroy of BodyTrackingComponent?(&v26, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SetEntityEnabledAction);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v13 = *v11;
      v12 = *(v11 + 8);
      swift_endAccess();
      v14 = *a1;
      v15 = *(a1 + 11);
      v28 = *(a1 + 10);
      v29 = v15;
      v30 = *(a1 + 12);
      v16 = *(a1 + 9);
      v26 = *(a1 + 8);
      v27 = v16;
      v17 = *(a1 + 40);
      *&v16 = a1[6];
      *&v15 = a1[7];
      v18 = a1[8];
      v19 = a1[4];
      v31 = v14;
      v25 = v17;
      v23 = v15;
      v24 = v16;
      v21 = v2;
      v22 = v18;
      v20 = v19;

      v13(v32, &v31, &v26, &v25, &v24, &v23, &v22, &v21, &v20);

      outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v34 = v32[0];
      v35 = v32[1];
      v36 = v33;
LABEL_8:
      v26 = v34;
      v27 = v35;
      *&v28 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v34, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[27];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v35);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v35, &v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v28 + 1);
  outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (v6)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for actionHandlerCreators != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static AnimationResource.actionHandlerCreators;
  if (*(static AnimationResource.actionHandlerCreators + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for NotificationAction);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v13 = *v11;
      v12 = *(v11 + 8);
      swift_endAccess();
      v14 = *a1;
      v15 = *(a1 + 19);
      v16 = *(a1 + 23);
      v29 = *(a1 + 21);
      v30 = v16;
      v31 = *(a1 + 25);
      v27 = *(a1 + 17);
      v28 = v15;
      v17 = *(a1 + 48);
      *&v15 = a1[7];
      v18 = a1[8];
      v19 = a1[9];
      v20 = a1[5];
      v32 = v14;
      v26 = v17;
      v24 = v18;
      v25 = v15;
      v22 = v2;
      v23 = v19;
      v21 = v20;

      v13(v33, &v32, &v27, &v26, &v25, &v24, &v23, &v22, &v21);

      outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      v35 = v33[0];
      v36 = v33[1];
      v37 = v34;
LABEL_8:
      v27 = v35;
      v28 = v36;
      *&v29 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return swift_dynamicCast() ^ 1;
    }
  }

  swift_endAccess();
  outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  return 1;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(uint64_t *a1)
{
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v2 = a1[31];
  swift_beginAccess();
  v3 = static AnimationResource.actionHandlers;
  if (*(static AnimationResource.actionHandlers + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v5 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v4, &v35);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
  }

  swift_endAccess();
  outlined init with copy of [String : String](&v35, &v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  v6 = *(&v28 + 1);
  outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (!v6)
  {
    if (one-time initialization token for actionHandlerCreators != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = static AnimationResource.actionHandlerCreators;
    if (!*(static AnimationResource.actionHandlerCreators + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAnimationAction), (v10 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
      return 1;
    }

    v11 = *(v8 + 56) + 16 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    swift_endAccess();
    v14 = *a1;
    v15 = *(a1 + 23);
    v16 = *(a1 + 27);
    v29 = *(a1 + 25);
    v30 = v16;
    v31 = *(a1 + 29);
    v27 = *(a1 + 21);
    v28 = v15;
    v17 = *(a1 + 80);
    *&v15 = a1[11];
    v18 = a1[12];
    v19 = a1[13];
    v20 = a1[9];
    v32 = v14;
    v26 = v17;
    v24 = v18;
    v25 = v15;
    v22 = v2;
    v23 = v19;
    v21 = v20;

    v13(v33, &v32, &v27, &v26, &v25, &v24, &v23, &v22, &v21);

    outlined destroy of BodyTrackingComponent?(&v35, &_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
    v35 = v33[0];
    v36 = v33[1];
    v37 = v34;
  }

  v27 = v35;
  v28 = v36;
  *&v29 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  if (swift_dynamicCast())
  {
    return *&v33[0];
  }

  else
  {
    return 1;
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09EmphasizecD0V_Tt0B5(uint64_t a1)
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
    v15 = v32;
    v17 = result;
    v18 = v14;
    EmphasizeActionHandler.actionStarted(event:)(v19);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v16[3] = &type metadata for EmphasizeActionHandler;
    v16[4] = &protocol witness table for EmphasizeActionHandler;
    v16[0] = v17;
    v16[1] = v18;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v16, v15);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09PlayAudiocD0V_Tt0B5(__int128 *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v31 = a1[12];
  v32 = v1;
  v3 = a1[13];
  v33 = a1[14];
  v4 = a1[9];
  v5 = a1[7];
  v27 = a1[8];
  v28 = v4;
  v6 = a1[9];
  v7 = a1[11];
  v29 = a1[10];
  v30 = v7;
  v8 = a1[5];
  v9 = a1[3];
  v23 = a1[4];
  v24 = v8;
  v10 = a1[5];
  v11 = a1[7];
  v25 = a1[6];
  v26 = v11;
  v12 = a1[1];
  v20[0] = *a1;
  v20[1] = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  v21 = a1[2];
  v22 = v13;
  v35[12] = v31;
  v35[13] = v3;
  v35[14] = a1[14];
  v35[8] = v27;
  v35[9] = v6;
  v35[10] = v29;
  v35[11] = v2;
  v35[4] = v23;
  v35[5] = v10;
  v35[6] = v25;
  v35[7] = v5;
  v35[0] = v15;
  v35[1] = v14;
  v34 = *(a1 + 30);
  v36 = *(a1 + 30);
  v35[2] = v21;
  v35[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v35);
  if (result != 1)
  {
    v17 = v36;
    v19 = result;
    PlayAudioActionHandler.actionStarted(event:)(v20);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v18[3] = &type metadata for PlayAudioActionHandler;
    v18[4] = &protocol witness table for PlayAudioActionHandler;
    v18[0] = v19;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v18, v17);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, a1[19], &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
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

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAA15JointTransformsVG_Tt0B5(uint64_t *a1)
{
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(a1, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, &v6);
  v2 = v6;
  if (v6 == 1)
  {
    v3 = 1;
  }

  else
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, a1[19], &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
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

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA04SpincD0V_Tt0B5(__int128 *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v38 = a1[12];
  v39 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v40 = a1[14];
  v41 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v34 = a1[8];
  v35 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v36 = a1[10];
  v37 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v30 = a1[4];
  v31 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v32 = a1[6];
  v33 = v12;
  v13 = a1[1];
  v27[0] = *a1;
  v27[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v28 = a1[2];
  v29 = v14;
  v42[12] = v38;
  v42[13] = v3;
  v17 = a1[15];
  v42[14] = v40;
  v43 = v17;
  v42[8] = v34;
  v42[9] = v7;
  v42[10] = v36;
  v42[11] = v2;
  v42[4] = v30;
  v42[5] = v11;
  v42[6] = v32;
  v42[7] = v6;
  v42[0] = v16;
  v42[1] = v15;
  v42[2] = v28;
  v42[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v42);
  if ((v20 & 0x100) == 0)
  {
    v21 = *(&v43 + 1);
    *&v25 = result;
    *(&v25 + 1) = v19;
    v26 = v20 & 1;
    SpinActionHandler.actionStarted(event:)(v27);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v24[3] = &type metadata for SpinActionHandler;
    v24[4] = &protocol witness table for SpinActionHandler;
    v22 = swift_allocObject();
    v24[0] = v22;
    v23 = v26;
    *(v22 + 16) = v25;
    *(v22 + 32) = v23;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v24, v21);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09EmphasizeD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EmphasizeAction), (v12 & 1) != 0))
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
    aBlock[3] = &block_descriptor_133;
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
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for EmphasizeAction, v34);
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

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09PlayAudioD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for PlayAudioAction), (v12 & 1) != 0))
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
    aBlock[3] = &block_descriptor_147;
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
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for PlayAudioAction, v34);
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

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VyAH9TransformVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_164;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySSG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_178;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySbG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_192_0;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySiG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_206;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySo10simd_quatfaG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_223;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD4VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_238;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD3VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_253;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0Vys5SIMD2VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_267;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySdG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_281;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA03Setc8PropertyD0VySfG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_295;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA17BlendShapeWeightsVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_309_1;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAA15JointTransformsVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_323;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VyAH9TransformVG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_345;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySo10simd_quatfaG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_369;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD4VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_391;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD3VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_413_0;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0Vys5SIMD2VySfGG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_429;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySdG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_443;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA08FromToByD0VySfG_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
  v8 = swift_allocObject();
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
  v9 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
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
  v11 = static AnimationResource.actionSubscriptions;
  if (*(static AnimationResource.actionSubscriptions + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();

    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  else
  {
    swift_endAccess();
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (!*(v14 + 16))
    {
      goto LABEL_34;
    }
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v16)
  {
    v17 = a3;
    v18 = (*(v14 + 56) + 16 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (a2)
    {
      v21 = *(a2 + 24);
      result = REEngineGetEventBus();
    }

    else
    {
      type metadata accessor for __ServiceLocator();
      v23 = static __ServiceLocator.shared.getter();
      swift_beginAccess();
      v37 = a4;
      v24 = *(v23 + 16);

      v25 = v24;
      a4 = v37;
      result = MEMORY[0x1C68FE250](v25);
      if (!result)
      {
        goto LABEL_40;
      }
    }

    MEMORY[0x1C68F9800](result, v20, v19);
    a3 = v17;
  }

LABEL_34:
  if (a2)
  {
    v26 = *(a2 + 24);
    REEngineGetEventBus();
LABEL_37:
    v29 = swift_allocObject();
    v29[2] = v8;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_457;
    v30 = _Block_copy(aBlock);

    RETimelineEventFilter();
    v31 = REEventBusSubscribeWithMatch();
    v33 = v32;
    _Block_release(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, a1, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    swift_beginAccess();

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v39 = static AnimationResource.actionSubscriptions;
    static AnimationResource.actionSubscriptions = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v38, v36);
    static AnimationResource.actionSubscriptions = v39;
    swift_endAccess();
  }

  type metadata accessor for __ServiceLocator();
  v27 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v28 = *(v27 + 16);

  result = MEMORY[0x1C68FE250](v28);
  if (result)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA09BillboardD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for BillboardAction), (v12 & 1) != 0))
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
    aBlock[3] = &block_descriptor_471;
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
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for BillboardAction, v34);
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

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA04SpinD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for SpinAction), (v12 & 1) != 0))
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
    aBlock[3] = &block_descriptor_491;
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
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for SpinAction, v34);
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

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA05OrbitcD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for OrbitEntityAction), (v12 & 1) != 0))
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
    aBlock[3] = &block_descriptor_515_0;
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
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for OrbitEntityAction, v34);
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

uint64_t _s17RealityFoundation12EntityActionPAAE11__subscribe2to__yAA0D9EventTypeV_0A3Kit8__EngineCSgyAA0dG0VyxGctFZAA07ImpulseD0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (*(static AnimationResource.actionSubscriptions + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for ImpulseAction), (v12 & 1) != 0))
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
    aBlock[3] = &block_descriptor_531;
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
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &type metadata for ImpulseAction, v34);
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