uint64_t LayerCakeCaptureSoundModule.updateFaders(at:)(double a1)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v1 + 72);
  if (v5 >> 62)
  {
    goto LABEL_35;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      result = swift_beginAccess();
      v7 = 4;
      v8 = 0x27E189000uLL;
      v9 = logger;
      v10 = &unk_278B8A000;
      v32 = v2;
      while (1)
      {
        v11 = v7 - 4;
        v12 = *(v2 + 32);
        if ((v7 - 4) >= *(v12 + 16))
        {
          break;
        }

        v13 = *(v12 + 8 * v7);
        if (v13)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v15 = Strong;
            v16 = *(v13 + 32);

            if (v16 <= a1)
            {
              if ([v15 isPlaying])
              {
                v17 = (a1 - v16) / 0.3;
                if (v17 <= 1.0)
                {
                  v18 = (a1 - v16) / 0.3;
                }

                else
                {
                  v18 = 1.0;
                }

                if (v17 > 0.0)
                {
                  v19 = v18;
                }

                else
                {
                  v19 = 0.0;
                }

                *&v19 = v19;
                if (*(v13 + 24))
                {
                  *&v19 = 1.0 - *&v19;
                }

                [v15 setVolume_];
              }

              if (v16 + 0.3 < a1)
              {
                *(v13 + 48) = 1;
              }
            }

            else
            {
            }
          }

          else
          {
          }

          if (*(v13 + 48) == 1)
          {
            if (*(v8 + 2136) != -1)
            {
              swift_once();
            }

            v20 = type metadata accessor for Logger();
            __swift_project_value_buffer(v20, v9);
            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = v10;
              v24 = v9;
              v25 = v8;
              v26 = swift_slowAlloc();
              *v26 = 134349056;
              *(v26 + 4) = v11;
              _os_log_impl(&dword_23B824000, v21, v22, "Removing expired fader layer %{public}ld...", v26, 0xCu);
              v27 = v26;
              v8 = v25;
              v9 = v24;
              v10 = v23;
              v2 = v32;
              MEMORY[0x23EEB0B70](v27, -1, -1);
            }

            v28 = swift_unknownObjectWeakLoadStrong();
            [v28 v10[349]];

            swift_beginAccess();
            NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = *(v2 + 32);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 32) = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0);
              *(v2 + 32) = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
            }

            if (v11 >= *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 16))
            {
              goto LABEL_34;
            }

            v31 = *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 8 * v7);
            *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 8 * v7) = 0;
            *(v2 + 32) = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
            swift_endAccess();
          }
        }

        ++v7;
        if (!--v6)
        {
          return result;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = __CocoaSet.count.getter();
      if (result < 0)
      {
        __break(1u);
      }

      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t LayerCakeCaptureSoundModule.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  return v0;
}

uint64_t LayerCakeCaptureSoundModule.__deallocating_deinit()
{
  LayerCakeCaptureSoundModule.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type SoundManager.State and conformance SoundManager.State()
{
  result = lazy protocol witness table cache variable for type SoundManager.State and conformance SoundManager.State;
  if (!lazy protocol witness table cache variable for type SoundManager.State and conformance SoundManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SoundManager.State and conformance SoundManager.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Fader.Direction and conformance Fader.Direction()
{
  result = lazy protocol witness table cache variable for type Fader.Direction and conformance Fader.Direction;
  if (!lazy protocol witness table cache variable for type Fader.Direction and conformance Fader.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Fader.Direction and conformance Fader.Direction);
  }

  return result;
}

uint64_t protocol witness for CaptureSoundModule.update(t:) in conformance LayerCakeCaptureSoundModule(double a1)
{
  v3 = *v1;
  result = LayerCakeCaptureSoundModule.updateFaders(at:)(a1);
  *(v3 + 104) = a1;
  return result;
}

id @nonobjc AVAudioFile.init(forReading:)(uint64_t a1)
{
  v2 = v1;
  v16 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v16);
  v5 = v4;
  v15 = 0;
  v6 = [v2 initForReading:v4 error:&v15];

  v7 = v15;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized static SoundManager.loadAudioFileFromBundle(named:)(uint64_t a1, unint64_t a2)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v64 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v56[-v12];
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v14 = static SoundManager.bundle;
  v15 = MEMORY[0x23EEAF480](a1, a2);
  v16 = MEMORY[0x23EEAF480](7758199, 0xE300000000000000);
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    lazy protocol witness table accessor for type SoundManager.Error and conformance SoundManager.Error();
    swift_allocError();
    *v34 = a1;
    v34[1] = a2;
    swift_willThrow();

    goto LABEL_12;
  }

  v61 = a1;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, logger);
  v62 = v5[2];
  v63 = v13;
  v62(v11, v13, v4);

  v59 = v19;
  v20 = a2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v60 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v57 = v22;
    v25 = v24;
    v58 = swift_slowAlloc();
    v66[0] = v58;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v20, v66);
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v5;
    v28 = v4;
    v30 = v29;
    v31 = v27[1];
    v31(v11, v28);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v30, v66);
    v4 = v28;
    v5 = v27;

    *(v25 + 14) = v32;
    _os_log_impl(&dword_23B824000, v21, v57, "Got fileUrl for audio resource %s as %s", v25, 0x16u);
    v33 = v58;
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v33, -1, -1);
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  else
  {

    v31 = v5[1];
    v31(v11, v4);
  }

  v35 = v63;
  v15 = v64;
  v62(v64, v63, v4);
  v36 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v37 = v65;
  v38 = @nonobjc AVAudioFile.init(forReading:)(v15);
  if (v37)
  {
    goto LABEL_11;
  }

  v41 = v38;
  v65 = v5;
  v42 = [v38 processingFormat];
  v43 = [v41 length];
  if ((v43 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v44 = v61;
  if (HIDWORD(v43))
  {
    goto LABEL_23;
  }

  v45 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v42 frameCapacity:v43];
  if (!v45)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v31;
      v51 = v4;
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_23B824000, v48, v49, "Can't create audio buffer!", v52, 2u);
      v53 = v52;
      v4 = v51;
      v31 = v50;
      MEMORY[0x23EEB0B70](v53, -1, -1);
    }

    lazy protocol witness table accessor for type SoundManager.Error and conformance SoundManager.Error();
    swift_allocError();
    v15 = v60;
    *v54 = v44;
    v54[1] = v15;
    swift_willThrow();

LABEL_11:
    v31(v35, v4);
    goto LABEL_12;
  }

  v15 = v45;
  v46 = v4;
  v66[0] = 0;
  if ([v41 readIntoBuffer:v45 error:v66])
  {
    v47 = v66[0];
    v31(v35, v4);
  }

  else
  {
    v55 = v66[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v31(v35, v46);
  }

LABEL_12:
  v39 = *MEMORY[0x277D85DE8];
  return v15;
}

void specialized SoundManager.setupAudioCategory()()
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Setting the audio session to soloAmbient and active...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = *MEMORY[0x277CB8048];
  v13[0] = 0;
  v6 = [v4 setCategory:v5 error:v13];
  v7 = v13[0];
  if (v6 && (v13[0] = 0, v8 = v7, v9 = [v4 setActive:1 withOptions:0 error:v13], v7 = v13[0], (v9 & 1) != 0))
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void specialized SoundManager.handleEngineConfigChange(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Notification and conformance Notification, MEMORY[0x277CC8900]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B824000, v8, v9, ">> Received audio engine config change: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

id specialized FilterPipeCaptureSoundModule.startLoop(playStartSound:)()
{
  result = v0[2];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0[11];
  if (!v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [result scheduleBuffer:v2 atTime:0 options:0 completionHandler:0];
  result = v0[2];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v0[12];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [result scheduleBuffer:v3 atTime:0 options:1 completionHandler:0];
  result = v0[2];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  LODWORD(v4) = 1.0;
  [result setVolume_];
  result = v0[2];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return [result play];
}

unint64_t lazy protocol witness table accessor for type SoundManager.Error and conformance SoundManager.Error()
{
  result = lazy protocol witness table cache variable for type SoundManager.Error and conformance SoundManager.Error;
  if (!lazy protocol witness table cache variable for type SoundManager.Error and conformance SoundManager.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SoundManager.Error and conformance SoundManager.Error);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in SoundManager.requestStandby(after:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in SoundManager.requestStandby(after:)();
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for StackableMiniView(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for StackableMiniView(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for StackableMiniView(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t StackableMiniView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v14 = *(a1 + 40);
  v20 = v2;
  v15 = *(v2 + 16);
  static Alignment.center.getter();
  v16 = *(a1 + 24);
  View.frame(width:height:alignment:)();
  v30 = v16;
  v31 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v6 + 8))(v9, v5);
  v29 = 0;
  Transaction.disablesAnimations.setter();
  v23 = v4;
  v24 = v16;
  v25 = v20;
  v26 = v13;
  v27 = WitnessTable;
  v28 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  type metadata accessor for BottomCenterView();
  type metadata accessor for TopCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView();
  type metadata accessor for RightCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  withTransaction<A>(_:_:)();

  return (*(v21 + 8))(v13, v10);
}

uint64_t closure #1 in StackableMiniView.body.getter()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for BottomCenterView();
  type metadata accessor for TopCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView();
  type metadata accessor for RightCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return Group<A>.init(content:)();
}

uint64_t closure #1 in closure #1 in StackableMiniView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v104 = a2;
  *&v105 = a3;
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v100 - v13;
  v15 = *(*(a1 + 8) + 16);
  v108 = a5;
  v109 = v8;
  v106 = v12;
  v107 = a4;
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = a4;
  v17 = v9;
  v18 = v15;
  v19 = dispatch thunk of ARView.__interfaceOrientation.getter();

  if (v19 > 2)
  {
    v34 = v17;
    if (v19 == 3)
    {
      v64 = v105;
      v65 = *(a1 + *(type metadata accessor for StackableMiniView() + 44));
      (*(v10 + 16))(v14, v104, v17);
      v66 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = v64;
      *(v67 + 24) = v16;
      (*(v10 + 32))(v67 + v66, v14, v17);
      v153 = v16;
      v154 = MEMORY[0x277CDF678];
      WitnessTable = swift_getWitnessTable();
      v152 = MEMORY[0x277CDFC48];
      swift_getWitnessTable();
      *&v182 = partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter;
      *(&v182 + 1) = v67;
      *&v183 = v65;
      v68 = type metadata accessor for RightCenterView();
      v69 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)(&v182, v68, v69);

      *&v105 = *(&v155 + 1);
      v182 = v155;
      *&v183 = v156;
      static ViewBuilder.buildExpression<A>(_:)(&v182, v68, v69);
      *&v104 = *(&v149 + 1);
      v179 = v149;
      v180 = v150;
      v70 = type metadata accessor for LeftCenterView();
      v71 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v179, v70, v68);
      v103 = *(&v182 + 1);
      LODWORD(v102) = BYTE8(v183);
      v142 = v182;
      v143 = v183;
      LOBYTE(v144) = BYTE8(v183);
      type metadata accessor for BottomCenterView();
      type metadata accessor for TopCenterView();
      v72 = type metadata accessor for _ConditionalContent();
      v73 = type metadata accessor for _ConditionalContent();
      v74 = swift_getWitnessTable();
      v75 = swift_getWitnessTable();
      v147 = v74;
      v148 = v75;
      v76 = swift_getWitnessTable();
      v145 = v71;
      v146 = v69;
      v101 = v73;
      v77 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v142, v72, v73);
      outlined consume of StateObject<_RealityViewCameraModel>.Storage();
      v142 = v179;
      v143 = v180;
      v144 = v181;
      v48 = type metadata accessor for _ConditionalContent();
      v140 = v76;
      v141 = v77;
    }

    else
    {
      a4 = v16;
      if (v19 != 4)
      {
        goto LABEL_14;
      }

      v35 = v105;
      v36 = *(a1 + *(type metadata accessor for StackableMiniView() + 44));
      (*(v10 + 16))(v14, v104, v34);
      v37 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v35;
      *(v38 + 24) = v16;
      (*(v10 + 32))(v38 + v37, v14, v34);
      v138 = v16;
      v139 = MEMORY[0x277CDF678];
      v136 = swift_getWitnessTable();
      v137 = MEMORY[0x277CDFC48];
      swift_getWitnessTable();
      *&v182 = partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter;
      *(&v182 + 1) = v38;
      *&v183 = v36;
      v39 = type metadata accessor for LeftCenterView();
      v40 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)(&v182, v39, v40);

      *&v105 = *(&v155 + 1);
      v182 = v155;
      *&v183 = v156;
      static ViewBuilder.buildExpression<A>(_:)(&v182, v39, v40);
      *&v104 = *(&v149 + 1);
      v179 = v149;
      v180 = v150;
      type metadata accessor for RightCenterView();
      v41 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(&v179, v39);
      v102 = v183;
      v103 = v182;
      v142 = v182;
      v143 = v183;
      LOBYTE(v144) = BYTE8(v183);
      type metadata accessor for BottomCenterView();
      type metadata accessor for TopCenterView();
      v42 = type metadata accessor for _ConditionalContent();
      v43 = type metadata accessor for _ConditionalContent();
      v44 = swift_getWitnessTable();
      v45 = swift_getWitnessTable();
      v134 = v44;
      v135 = v45;
      v46 = swift_getWitnessTable();
      v132 = v40;
      v133 = v41;
      v101 = v43;
      v47 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v142, v42, v43);
      outlined consume of StateObject<_RealityViewCameraModel>.Storage();
      v142 = v179;
      v143 = v180;
      v144 = v181;
      v48 = type metadata accessor for _ConditionalContent();
      v130 = v46;
      v131 = v47;
    }

    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(&v142, v48);
    goto LABEL_12;
  }

  v9 = v17;
  a4 = v16;
  if (v19 >= 2)
  {
    if (v19 == 2)
    {
      v49 = v105;
      v50 = *(a1 + *(type metadata accessor for StackableMiniView() + 44));
      (*(v10 + 16))(v14, v104, v9);
      v51 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v49;
      *(v52 + 24) = v16;
      (*(v10 + 32))(v52 + v51, v14, v9);
      v128 = v16;
      v129 = MEMORY[0x277CDF678];
      v126 = swift_getWitnessTable();
      v127 = MEMORY[0x277CDFC48];
      swift_getWitnessTable();
      *&v182 = partial apply for closure #2 in closure #1 in closure #1 in StackableMiniView.body.getter;
      *(&v182 + 1) = v52;
      *&v183 = v50;
      v53 = type metadata accessor for TopCenterView();
      v54 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)(&v182, v53, v54);

      *&v105 = *(&v155 + 1);
      v182 = v155;
      *&v183 = v156;
      static ViewBuilder.buildExpression<A>(_:)(&v182, v53, v54);
      *&v104 = *(&v149 + 1);
      v179 = v149;
      v180 = v150;
      v55 = type metadata accessor for BottomCenterView();
      v56 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v179, v55, v53);
      v102 = v183;
      v103 = v182;
      v142 = v182;
      v143 = v183;
      LOBYTE(v144) = BYTE8(v183);
      v57 = type metadata accessor for _ConditionalContent();
      type metadata accessor for LeftCenterView();
      type metadata accessor for RightCenterView();
      type metadata accessor for _ConditionalContent();
      v124 = v56;
      v125 = v54;
      v101 = MEMORY[0x277CE0340];
      v58 = v57;
      v59 = swift_getWitnessTable();
      v60 = swift_getWitnessTable();
      v61 = swift_getWitnessTable();
      v122 = v60;
      v123 = v61;
      v62 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(&v142, v58);
      outlined consume of StateObject<_RealityViewCameraModel>.Storage();
      v142 = v179;
      v143 = v180;
      v144 = v181;
      v63 = type metadata accessor for _ConditionalContent();
      v120 = v59;
      v121 = v62;
      swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(&v142, v63);
      goto LABEL_12;
    }

LABEL_14:
    LocalizedStringKey.init(stringLiteral:)();
    *&v104 = Text.init(_:tableName:bundle:comment:)();
    v89 = v88;
    *&v105 = v90;
    *&v179 = v104;
    *(&v179 + 1) = v88;
    v92 = v91 & 1;
    LOBYTE(v180) = v91 & 1;
    v181 = v90;
    v177 = a4;
    v178 = MEMORY[0x277CDF678];
    v175 = swift_getWitnessTable();
    v176 = MEMORY[0x277CDFC48];
    swift_getWitnessTable();
    type metadata accessor for BottomCenterView();
    type metadata accessor for TopCenterView();
    type metadata accessor for _ConditionalContent();
    type metadata accessor for LeftCenterView();
    type metadata accessor for RightCenterView();
    type metadata accessor for _ConditionalContent();
    v93 = type metadata accessor for _ConditionalContent();
    v94 = swift_getWitnessTable();
    v95 = swift_getWitnessTable();
    v173 = v94;
    v174 = v95;
    v96 = swift_getWitnessTable();
    v97 = swift_getWitnessTable();
    v98 = swift_getWitnessTable();
    v171 = v97;
    v172 = v98;
    v99 = swift_getWitnessTable();
    v169 = v96;
    v170 = v99;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(&v179, v93, MEMORY[0x277CE0BD8]);
    outlined consume of Text.Storage(v104, v89, v92);

    goto LABEL_13;
  }

LABEL_4:
  v20 = v105;
  v21 = *(a1 + *(type metadata accessor for StackableMiniView() + 44));
  (*(v10 + 16))(v14, v104, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = a4;
  (*(v10 + 32))(v23 + v22, v14, v9);
  v118 = a4;
  v119 = MEMORY[0x277CDF678];
  v116 = swift_getWitnessTable();
  v117 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  *&v182 = partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter;
  *(&v182 + 1) = v23;
  *&v183 = v21;
  v24 = type metadata accessor for BottomCenterView();
  v25 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v182, v24, v25);

  *&v105 = *(&v155 + 1);
  v182 = v155;
  *&v183 = v156;
  static ViewBuilder.buildExpression<A>(_:)(&v182, v24, v25);
  *&v104 = *(&v149 + 1);
  v179 = v149;
  v180 = v150;
  type metadata accessor for TopCenterView();
  v26 = swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(first:)(&v179, v24);
  v103 = v183;
  LODWORD(v102) = BYTE8(v183);
  v142 = v182;
  v143 = v183;
  LOBYTE(v144) = BYTE8(v183);
  v27 = type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView();
  type metadata accessor for RightCenterView();
  type metadata accessor for _ConditionalContent();
  v114 = v25;
  v115 = v26;
  v101 = MEMORY[0x277CE0340];
  v28 = v27;
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v112 = v30;
  v113 = v31;
  v32 = swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(first:)(&v142, v28);
  outlined consume of StateObject<_RealityViewCameraModel>.Storage();
  v142 = v179;
  v143 = v180;
  v144 = v181;
  v33 = type metadata accessor for _ConditionalContent();
  v110 = v29;
  v111 = v32;
  swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(first:)(&v142, v33);
LABEL_12:
  outlined consume of _ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>.Storage<A>();

LABEL_13:
  v78 = v184;
  v104 = v182;
  v105 = v183;
  v167 = v107;
  v168 = MEMORY[0x277CDF678];
  v165 = swift_getWitnessTable();
  v166 = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  type metadata accessor for BottomCenterView();
  type metadata accessor for TopCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView();
  type metadata accessor for RightCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  v79 = type metadata accessor for _ConditionalContent();
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v163 = v80;
  v164 = v81;
  v82 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  v161 = v83;
  v162 = v84;
  v85 = swift_getWitnessTable();
  v159 = v82;
  v160 = v85;
  v157 = swift_getWitnessTable();
  v158 = MEMORY[0x277CE0BC8];
  v86 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v182, v79, v86);
  return outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>, Text>.Storage<A>(v104, *(&v104 + 1), v105, *(&v105 + 1), v78);
}

uint64_t closure #2 in closure #1 in closure #1 in StackableMiniView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v12[2] = a3;
  v12[3] = MEMORY[0x277CDF678];
  v12[0] = swift_getWitnessTable();
  v12[1] = MEMORY[0x277CDFC48];
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v5, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v9, v5, WitnessTable);
  return (*(v6 + 8))(v9, v5);
}

uint64_t partial apply for closure #1 in StackableMiniView.body.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #1 in StackableMiniView.body.getter();
}

uint64_t outlined consume of _ConditionalContent<_ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>, Text>.Storage<A>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {

    return outlined consume of _ConditionalContent<_ConditionalContent<BottomCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, TopCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>, _ConditionalContent<LeftCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>, RightCenterView<ModifiedContent<ModifiedContent<A, _FrameLayout>, _FixedSizeLayout>>>>.Storage<A>();
  }
}

uint64_t partial apply for closure #4 in closure #1 in closure #1 in StackableMiniView.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ModifiedContent();
  v3 = *(type metadata accessor for ModifiedContent() - 8);
  return closure #2 in closure #1 in closure #1 in StackableMiniView.body.getter(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v1, v2);
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 16);
  type metadata accessor for ModifiedContent();
  v2 = *(type metadata accessor for ModifiedContent() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t RightCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  static ViewBuilder.buildExpression<A>(_:)(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t closure #1 in RightCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  v26 = 0;
  v27 = 1;
  v28[0] = &v26;
  (*(v12 + 16))(v16, v18, v11);
  v24 = 0;
  v25 = 1;
  v28[1] = v16;
  v28[2] = &v24;
  v23[0] = MEMORY[0x277CE1180];
  v23[1] = v11;
  v23[2] = MEMORY[0x277CE1180];
  v22[10] = MEMORY[0x277CE1170];
  v22[11] = WitnessTable;
  v22[12] = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v28, 3uLL, v23);
  v20(v18, v11);
  return (v20)(v16, v11);
}

uint64_t closure #1 in closure #1 in RightCenterView.body.getter@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a1;
  v31 = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v28 = &v28 - v21;
  v29(v20);
  static Edge.Set.trailing.getter();
  View.padding(_:_:)();
  (*(v6 + 8))(v9, a2);
  static Edge.Set.trailing.getter();
  v22 = MEMORY[0x277CDF918];
  v37[4] = a3;
  v37[5] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v30 + 8))(v13, v10);
  v37[2] = WitnessTable;
  v37[3] = v22;
  v24 = swift_getWitnessTable();
  v25 = v28;
  static ViewBuilder.buildExpression<A>(_:)(v19, v14, v24);
  v26 = *(v15 + 8);
  v26(v19, v14);
  v35 = 0;
  v36 = 1;
  v37[0] = &v35;
  (*(v15 + 16))(v19, v25, v14);
  v37[1] = v19;
  v34[0] = MEMORY[0x277CE1180];
  v34[1] = v14;
  v32 = MEMORY[0x277CE1170];
  v33 = v24;
  static ViewBuilder.buildBlock<each A>(_:)(v37, 2uLL, v34);
  v26(v25, v14);
  return (v26)(v19, v14);
}

uint64_t LeftCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  static ViewBuilder.buildExpression<A>(_:)(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t closure #1 in LeftCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  v26 = 0;
  v27 = 1;
  v28[0] = &v26;
  (*(v12 + 16))(v16, v18, v11);
  v24 = 0;
  v25 = 1;
  v28[1] = v16;
  v28[2] = &v24;
  v23[0] = MEMORY[0x277CE1180];
  v23[1] = v11;
  v23[2] = MEMORY[0x277CE1180];
  v22[10] = MEMORY[0x277CE1170];
  v22[11] = WitnessTable;
  v22[12] = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v28, 3uLL, v23);
  v20(v18, v11);
  return (v20)(v16, v11);
}

uint64_t closure #1 in closure #1 in LeftCenterView.body.getter@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a1;
  v31 = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v28 = &v28 - v21;
  v29(v20);
  static Edge.Set.leading.getter();
  View.padding(_:_:)();
  (*(v6 + 8))(v9, a2);
  static Edge.Set.leading.getter();
  v22 = MEMORY[0x277CDF918];
  v37[4] = a3;
  v37[5] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v30 + 8))(v13, v10);
  v37[2] = WitnessTable;
  v37[3] = v22;
  v24 = swift_getWitnessTable();
  v25 = v28;
  static ViewBuilder.buildExpression<A>(_:)(v19, v14, v24);
  v26 = *(v15 + 8);
  v26(v19, v14);
  (*(v15 + 16))(v19, v25, v14);
  v35 = 0;
  v36 = 1;
  v37[0] = v19;
  v37[1] = &v35;
  v34[0] = v14;
  v34[1] = MEMORY[0x277CE1180];
  v32 = v24;
  v33 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v37, 2uLL, v34);
  v26(v25, v14);
  return (v26)(v19, v14);
}

uint64_t BottomCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  static ViewBuilder.buildExpression<A>(_:)(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t closure #1 in BottomCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  v24 = 0;
  v25 = 1;
  v26[0] = &v24;
  (*(v12 + 16))(v16, v18, v11);
  v26[1] = v16;
  v23[0] = MEMORY[0x277CE1180];
  v23[1] = v11;
  v22[9] = MEMORY[0x277CE1170];
  v22[10] = WitnessTable;
  static ViewBuilder.buildBlock<each A>(_:)(v26, 2uLL, v23);
  v20(v18, v11);
  return (v20)(v16, v11);
}

uint64_t TopCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  static ViewBuilder.buildExpression<A>(_:)(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

uint64_t closure #1 in TopCenterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v22[1] = a5;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for HStack();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a1;
  v22[7] = a2;
  *&v22[8] = a6;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v16, v11);
  (*(v12 + 16))(v16, v18, v11);
  v24 = 0;
  v25 = 1;
  v26[0] = v16;
  v26[1] = &v24;
  v23[0] = v11;
  v23[1] = MEMORY[0x277CE1180];
  v22[9] = WitnessTable;
  v22[10] = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v26, 2uLL, v23);
  v20(v18, v11);
  return (v20)(v16, v11);
}

uint64_t closure #1 in closure #1 in BottomCenterView.body.getter@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v36 = a3;
  v38 = a5;
  v35 = *(a2 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModifiedContent();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v34 = &v33 - v22;
  v23 = a1(v21);
  v24 = a4;
  a4(v23);
  v25 = v36;
  View.padding(_:_:)();
  v26 = (*(v35 + 8))(v10, a2);
  v24(v26);
  v27 = MEMORY[0x277CDF918];
  v47[5] = v25;
  v47[6] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v37 + 8))(v14, v11);
  v47[3] = WitnessTable;
  v47[4] = v27;
  v29 = swift_getWitnessTable();
  v30 = v34;
  static ViewBuilder.buildExpression<A>(_:)(v20, v15, v29);
  v31 = *(v16 + 8);
  v31(v20, v15);
  v45 = 0;
  v46 = 1;
  v47[0] = &v45;
  (*(v16 + 16))(v20, v30, v15);
  v43 = 0;
  v44 = 1;
  v47[1] = v20;
  v47[2] = &v43;
  v42[0] = MEMORY[0x277CE1180];
  v42[1] = v15;
  v42[2] = MEMORY[0x277CE1180];
  v39 = MEMORY[0x277CE1170];
  v40 = v29;
  v41 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v47, 3uLL, v42);
  v31(v30, v15);
  return (v31)(v20, v15);
}

uint64_t type metadata instantiation function for RightCenterView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for LeftCenterView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for TopCenterView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for BottomCenterView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #1 in TopCenterView.body.getter@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  return closure #1 in closure #1 in BottomCenterView.body.getter(*(v2 + 32), *(v2 + 16), *(v2 + 24), a1, a2);
}

uint64_t GestureComponent.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  _bridgeAnythingToObjectiveC<A>(_:)();
  GestureComponent.init(object:)();
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

Swift::Void __swiftcall InteractiveCameraTransformManager.onStartDrag(pointView:)(CGPoint_optional pointView)
{
  v2 = v1;
  is_nil = pointView.is_nil;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if ((*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection + 64) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl))
    {
      v8 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl);

      v12.is_nil = is_nil;
      TurnTableCameraControl.onStartDrag(pointView:)(v12);

      static DispatchTime.now()();
      v9 = type metadata accessor for DispatchTime();
      (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
      v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
      swift_beginAccess();
      outlined assign with take of DispatchTime?(v7, v2 + v10);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t InteractiveCameraTransformManager.init(radius:springDelay:springTime:)(float a1, double a2, double a3)
{
  *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_time) = 0;
  v7 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_arCameraTransform);
  Transform.init()();
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v11 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld);
  v12 = *(MEMORY[0x277D860B8] + 16);
  v13 = *(MEMORY[0x277D860B8] + 32);
  v14 = *(MEMORY[0x277D860B8] + 48);
  *v11 = *MEMORY[0x277D860B8];
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v15 = v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection;
  v35 = 1;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 1;
  *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl) = 0;
  *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture) = 0;
  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
  v17 = type metadata accessor for DispatchTime();
  (*(*(v17 - 8) + 56))(&v16[v3], 1, 1, v17);
  *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking) = 0;
  *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boxProjectionPadding) = 1066192077;
  if (a2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_springDelay) = a2;
    if (a3 > 0.0)
    {
      *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_springTime) = a3;
      v34.receiver = v3;
      v34.super_class = type metadata accessor for InteractiveCameraTransformManager();
      v18 = objc_msgSendSuper2(&v34, sel_init);
      v19 = objc_allocWithZone(type metadata accessor for DragGestureRecognizer());
      v16 = v18;
      v20 = specialized DragGestureRecognizer.init(draggable:)(v16, v19);
      v21 = *&v16[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture];
      *&v16[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture] = v20;

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of InteractiveCameraTransformManager.init(radius:springDelay:springTime:));
      v33 = v22;
      type metadata accessor for TurnTableCameraControl();
      v3 = swift_allocObject();
      *(v3 + 24) = 0;
      swift_unknownObjectWeakInit();
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of InteractiveCameraTransformManager.init(radius:springDelay:springTime:));
      *(v3 + 80) = v23;
      *(v3 + 128) = 0;
      *(v3 + 136) = 0;
      *(v3 + 144) = 1;
      result = Transform.init()();
      *(v3 + 160) = v25;
      *(v3 + 176) = v26;
      *(v3 + 192) = v27;
      if (one-time initialization token for minElevation == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  result = swift_once();
LABEL_4:
  v28 = static TurnTableCameraControl.SphericalCoordinates.minElevation;
  if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation > 1.5608)
  {
    __break(1u);
  }

  else
  {
    v29 = 0.0;
    if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation < 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = *&static TurnTableCameraControl.SphericalCoordinates.minElevation;
    }

    if (a1 > 0.0)
    {
      v29 = a1;
    }

    *(v3 + 40) = 0;
    *(v3 + 44) = v30;
    *(v3 + 48) = v28;
    *(v3 + 52) = 1070057517;
    *(v3 + 56) = v29;
    *(v3 + 60) = 0x7F80000000000000;
    *(v3 + 80) = v33;
    *(v3 + 32) = vdup_n_s32(0x3C23D70Au);
    *(v3 + 24) = &protocol witness table for InteractiveCameraTransformManager;
    swift_unknownObjectWeakAssign();

    v31 = *(v3 + 64);
    *(v3 + 96) = *(v3 + 40);
    *(v3 + 112) = *(v3 + 56);
    *(v3 + 120) = v31;
    v32 = *&v16[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl];
    *&v16[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl] = v3;

    return v16;
  }

  return result;
}

void InteractiveCameraTransformManager.computeRadiusToViewBox(boxToCameraDir:)(__n128 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection);
  if ((*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection + 64) & 1) == 0)
  {
    v4 = (v3 + 10);
    v5 = vld1q_dup_f64(v4);
    v31 = v5;
    v6 = (v3 + 14);
    v7 = vld1q_dup_f64(v6);
    v28 = v7;
    v36 = a1;
    v38 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld);
    v39 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld + 16);
    v40 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld + 32);
    v41 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld + 48);
    v8 = *v3;
    v9 = v3[5];
    Transform.init(matrix:)();
    v27 = v10;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of InteractiveCameraTransformManager.computeRadiusToViewBox(boxToCameraDir:));
    v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v11.f32[0]), v39, *v11.f32, 1), v40, v11, 2), v41, v11, 3);
    v34 = 0.0 - v36.n128_f32[2];
    Transform.init()();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of InteractiveCameraTransformManager.computeRadiusToViewBox(boxToCameraDir:));
    v30 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    v25 = atanf(1.0 / v8);
    v14 = atanf(1.0 / v9);
    *(inited + 32) = vadd_f32(__PAIR64__(LODWORD(v14), LODWORD(v25)), __PAIR64__(LODWORD(v14), LODWORD(v25)));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    v26 = v15;
    swift_setDeallocating();
    LODWORD(v16) = vdivq_f32(v28, v31).i32[2];
    v17 = vmulq_f32(v27, v27);
    v18 = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32));
    v19 = *(&v26 + 1);
    if (*(&v26 + 1) >= *&v26)
    {
      v19 = *&v26;
    }

    v32 = v16 + (((v18 * 0.5) * 1.1) / tanf(v19 * 0.5));
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_23B91A6D0;
    *v21.f32 = vsub_f32(0, v36.n128_u64[0]);
    v29 = *v21.f32;
    v21.i64[1] = LODWORD(v34);
    *v22.i64 = simd_quaternion(v30, v21);
    v37 = v22;
    *(v20 + 32) = vsub_f32(*v33.f32, vmul_n_f32(v29, v32));
    *(v20 + 40) = v33.f32[2] - (v34 * v32);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v20);
    v35 = v23;
    swift_setDeallocating();
    specialized simd_float4x4.init(translation:rotation:scale:)(v35, v37);
    specialized SIMD.subscript.getter(xmmword_23B91DE30, COERCE_DOUBLE(2), v24);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of InteractiveCameraTransformManager.computeRadiusToViewBox(boxToCameraDir:));
  }
}

double InteractiveCameraTransformManager.computeCurrentTransform()()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transform.init()();
  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld);
  v7 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld + 16);
  v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld + 32);
  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld + 48);
  Transform.init(matrix:)();
  v77 = v10;
  v78 = v11;
  v75 = v12;
  Transform.init()();
  v76 = v13;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of InteractiveCameraTransformManager.computeCurrentTransform());
  v15 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl);
  if (v15)
  {
    v16 = *(v15 + 160);
    v79 = *(v15 + 192);
  }

  else
  {
    v79 = v14;
    v16 = v76;
  }

  v76 = v16;
  v17 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking))
  {
    v18 = 0.0;
  }

  else
  {
    static DispatchTime.now()();
    InteractiveCameraTransformManager.interpolant(at:)();
    v18 = v19;
    (*(v2 + 8))(v5, v1);
    if (v18 > 0.0)
    {
      if (v18 <= 1.0)
      {
        v17 = v18;
      }

      else
      {
        v17 = 1.0;
      }
    }
  }

  v79 = vmlaq_n_f32(v79, vsubq_f32(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_arCameraTransform + 32), v79), (v17 * v17) / ((((v17 * v17) - v18) + ((v17 * v17) - v18)) + 1.0));
  v20 = v79.f32[2];
  *v21.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v75.i64, v78);
  v73 = v21;
  v74 = v22;
  v75 = v23;
  v78 = v24;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of InteractiveCameraTransformManager.computeCurrentTransform());
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v25.f32[0]), v74, *v25.f32, 1), v75, v25, 2), v78, v25, 3);
  v26.i32[3] = 0;
  *v27.i64 = specialized static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:)(v79, v26, v77.n128_u64[0]);
  *v28.f32 = vsub_f32(*v79.f32, *v27.f32);
  v29 = v27.f32[2];
  v28.f32[2] = v20 - v27.f32[2];
  v30 = vmulq_f32(v28, v28);
  *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
  *v30.f32 = vrsqrte_f32(v31);
  *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
  v32 = vmulq_n_f32(v28, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
  v33 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection);
  v34 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection + 64);
  v78 = v27;
  v79 = v32;
  if (v34)
  {
    v35 = MEMORY[0x277D860B8];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v77 = v35[3];
    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, logger);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_23B824000, v37, v38, "Computing the view to world with a nil projection!", v39, 2u);
      MEMORY[0x23EEB0B70](v39, -1, -1);
    }

    v40 = v77;
  }

  else
  {
    v41 = (v33 + 14);
    v42 = (v33 + 10);
    v43 = vld1q_dup_f64(v42);
    v72 = v43;
    v44 = vld1q_dup_f64(v41);
    v71 = v44;
    v32.i32[1] = 0;
    v32.f32[0] = 0.0 - v32.f32[2];
    v75 = v32;
    v45 = *v33;
    v46 = v33[5];
    Transform.init()();
    v74 = v47;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of InteractiveCameraTransformManager.computeCurrentTransform());
    v73 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    *&v50 = atanf(1.0 / v45);
    v70 = v50;
    v51 = atanf(1.0 / v46);
    *(inited + 32) = vadd_f32(__PAIR64__(LODWORD(v51), v70), __PAIR64__(LODWORD(v51), v70));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    v70 = v52;
    swift_setDeallocating();
    LODWORD(v53) = vdivq_f32(v71, v72).i32[2];
    v54 = vmulq_f32(v77, v77);
    v55 = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
    v56 = *(&v70 + 1);
    if (*(&v70 + 1) >= *&v70)
    {
      v56 = *&v70;
    }

    v57.f32[0] = v53 + (((v55 * 0.5) * 1.1) / tanf(v56 * 0.5));
    v77 = v57;
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_23B91A6D0;
    *v59.f32 = vsub_f32(0, *v79.f32);
    v72 = v59;
    v59.i64[1] = v75.u32[0];
    *v60.i64 = simd_quaternion(v73, v59);
    v73 = v60;
    v61 = v77.n128_f32[0];
    *(v58 + 32) = vsub_f32(*v78.f32, vmul_n_f32(*v72.f32, v77.n128_f32[0]));
    *(v58 + 40) = v29 - (v75.f32[0] * v61);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v58);
    v77 = v62;
    swift_setDeallocating();
    specialized simd_float4x4.init(translation:rotation:scale:)(v77.n128_f64[0], v73);
    v40 = v63;
  }

  specialized SIMD.subscript.getter(xmmword_23B91DE30, COERCE_DOUBLE(2), v40);
  v65 = vsubq_f32(v64, v78);
  v66 = vmulq_f32(v65, v65);
  v66.f32[0] = sqrtf(v66.f32[2] + vaddv_f32(*v66.f32));
  *v67.f32 = vadd_f32(*v78.f32, vmul_n_f32(*v79.f32, v66.f32[0]));
  v67.f32[2] = v29 + vmuls_lane_f32(v66.f32[0], v79, 2);
  v67.i32[3] = 0;
  v79 = v67;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of InteractiveCameraTransformManager.computeCurrentTransform());
  specialized static MathHelpers.computeCameraLookAtRotation(pos:lookAt:up:)(v79, v78, v68);
  return *&v76;
}

uint64_t InteractiveCameraTransformManager.interpolant(at:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
  swift_beginAccess();
  outlined init with copy of DispatchTime?(v0 + v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of DispatchTime?(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  v13 = DispatchTime.uptimeNanoseconds.getter();
  v14 = DispatchTime.uptimeNanoseconds.getter();
  result = (*(v7 + 8))(v10, v6);
  if (v13 < v14)
  {
    __break(1u);
  }

  else if ((v13 - v14) * 0.000000001 >= *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_springDelay))
  {
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_springTime);
  }

  return result;
}

id InteractiveCameraTransformManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveCameraTransformManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InteractiveCameraTransformManager()
{
  result = type metadata singleton initialization cache for InteractiveCameraTransformManager;
  if (!type metadata singleton initialization cache for InteractiveCameraTransformManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InteractiveCameraTransformManager()
{
  type metadata accessor for DispatchTime?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for DispatchTime?()
{
  if (!lazy cache variable for type metadata for DispatchTime?)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DispatchTime?);
    }
  }
}

uint64_t protocol witness for Draggable.onEndDrag(pointView:) in conformance InteractiveCameraTransformManager()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v9 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl);
  if (v6)
  {
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    *(v6 + 144) = 1;
    v7 = type metadata accessor for DispatchTime();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
    swift_beginAccess();
    outlined assign with take of DispatchTime?(v5, v0 + v8);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Draggable.onDrag(pointView:) in conformance InteractiveCameraTransformManager(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v12 - v7;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl))
  {
    v9 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl);

    v13.is_nil = a1;
    TurnTableCameraControl.onDrag(pointView:)(v13);

    static DispatchTime.now()();
    v10 = type metadata accessor for DispatchTime();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
    swift_beginAccess();
    outlined assign with take of DispatchTime?(v8, v2 + v11);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of DispatchTime?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DispatchTime?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TurnTableCameraControl.setFromCameraWorldPosition(cameraPositionWorld:)(float32x4_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v14[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>();
    v7 = SIMD.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_23B824000, v3, v4, "TurnTable: setting from worldPos= %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x23EEB0B70](v6, -1, -1);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v10 = vsubq_f32(a1, *(v1 + 80));
  v10.i32[3] = 0;
  specialized static TurnTableCameraControl.SphericalCoordinates.fromCartesian(pos:)(v14, v10);
  *(v1 + 40) = v14[0];
  *(v1 + 52) = *(v14 + 12);
  *&result = TurnTableCameraControl.update()().n128_u64[0];
  return result;
}

double TurnTableCameraControl.SphericalCoordinates.position()()
{
  v1 = *v0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TurnTableCameraControl.SphericalCoordinates.position());
  v25 = v2;
  v3 = __sincosf_stret(v1 * 0.5);
  v26 = vmulq_n_f32(v25, v3.__sinval);
  v4 = *(v0 + 4);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of TurnTableCameraControl.SphericalCoordinates.position());
  v24 = v5;
  v6 = __sincosf_stret(v4 * 0.5);
  v7 = vmulq_n_f32(v24, v6.__sinval);
  v7.i32[3] = LODWORD(v6.__cosval);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v10 = vrev64q_s32(v7);
  v10.i32[0] = v8.i32[1];
  v10.i32[3] = v8.i32[2];
  v28 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v7, v3.__cosval), v10, v26, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v26.f32, 1), vextq_s8(v9, v9, 8uLL), v26.f32[0]));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = 0;
  *(inited + 40) = *(v0 + 16);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v27 = v12;
  swift_setDeallocating();
  v13 = vmulq_f32(v28, xmmword_23B91C020);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v27.f32, 1);
  v17 = vrev64q_s32(v13);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  v18 = vmlaq_laneq_f32(vmlaq_n_f32(v16, vextq_s8(v15, v15, 8uLL), v27.f32[0]), v17, v27, 2);
  v19 = vnegq_f32(v18);
  v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
  v21 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v19, 8uLL), *v28.f32, 1), vextq_s8(v20, v20, 8uLL), v28.f32[0]);
  v22 = vrev64q_s32(v18);
  v22.i32[0] = v19.i32[1];
  v22.i32[3] = v19.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v18, v28, 3), v22, v28, 2), v21).u64[0];
  return result;
}

__n128 TurnTableCameraControl.update()()
{
  v5 = *(v0 + 80);
  v6 = *(v0 + 192);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TurnTableCameraControl.update());
  *&v2 = specialized static MathHelpers.computeCameraLookAtRotation(pos:lookAt:up:)(v6, v5, v1);
  *(v0 + 176) = v2;
  *v7 = *(v0 + 40);
  *&v7[12] = *(v0 + 52);
  *v3.i64 = TurnTableCameraControl.SphericalCoordinates.position()();
  result = vaddq_f32(v3, *(v0 + 80));
  result.n128_u32[3] = 0;
  *(v0 + 192) = result;
  return result;
}

uint64_t TurnTableCameraControl.__deallocating_deinit()
{
  outlined destroy of weak RangefinderDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

void protocol witness for Draggable.onEndDrag(pointView:) in conformance TurnTableCameraControl()
{
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
}

__n128 protocol witness for TransformProvider.transform.getter in conformance TurnTableCameraControl()
{
  result = *(v0 + 160);
  v2 = *(v0 + 176);
  v3 = *(v0 + 192);
  return result;
}

void specialized static TurnTableCameraControl.SphericalCoordinates.fromCartesian(pos:)(uint64_t a1@<X8>, float32x4_t a2@<Q0>)
{
  if (one-time initialization token for minElevation != -1)
  {
    v13 = a2;
    swift_once();
    a2 = v13;
  }

  v3 = *&static TurnTableCameraControl.SphericalCoordinates.minElevation;
  if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation > 1.5608)
  {
    __break(1u);
  }

  else
  {
    v4 = a2.f32[1];
    v5 = sqrtf(vmuls_lane_f32(a2.f32[2], a2, 2) + (vmulq_f32(a2, a2).f32[0] + vmuls_lane_f32(a2.f32[1], *a2.f32, 1)));
    v6 = atan2f(a2.f32[0], a2.f32[2]);
    v7 = v4 / v5;
    if ((v4 / v5) <= -1.0)
    {
      v7 = -1.0;
    }

    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    v8 = asinf(v7);
    v9 = -v8;
    v10 = v8 < -1.5608;
    v11 = 1.5608;
    if (!v10)
    {
      v11 = v9;
    }

    if (v11 <= v3)
    {
      v11 = v3;
    }

    v12 = 0.0;
    if (v5 > 0.0)
    {
      v12 = v5;
    }

    *a1 = v6;
    *(a1 + 4) = v11;
    *(a1 + 8) = v3;
    *(a1 + 12) = 1070057517;
    *(a1 + 16) = v12;
    *(a1 + 20) = 0x7F80000000000000;
  }
}

double UserFeedbackSystem.reticleAimScoreFilter.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + 40, &v7, &_s19_RealityKit_SwiftUI8Filter2D_pSgSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgSgMR);
  if (*(&v8 + 1) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(&v7, &_s19_RealityKit_SwiftUI8Filter2D_pSgSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgSgMR);
    v3 = specialized static ExperimentSettings.loadReticleDeltaFilterType(default:)(0xD00000000000003BLL);
    static Filter2DFactory.create(factoryString:)(v3, v4, a1);

    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v7, &_s19_RealityKit_SwiftUI8Filter2D_pSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgMR);
    swift_beginAccess();
    outlined assign with take of Filter2D??(&v7, v1 + 40);
    swift_endAccess();
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  return result;
}

uint64_t UserFeedbackSystem.__deallocating_deinit()
{
  outlined destroy of PerspectiveCameraComponent?(v0 + 40, &_s19_RealityKit_SwiftUI8Filter2D_pSgSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgSgMR);

  return swift_deallocClassInstance();
}

uint64_t outlined assign with take of Filter2D??(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI8Filter2D_pSgSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void specialized UserFeedbackSystem.update(at:arView:bboxWorld:)(void *a1, double a2, float32x4_t a3, double a4)
{
  v5 = v4;
  *(v5 + 16) = *(v5 + 32);
  *v7.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a4, a3);
  v49 = v7;
  v50 = v8;
  v51 = v9;
  *osloga = v10;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of UserFeedbackSystem.update(at:arView:bboxWorld:));
  oslogb = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v11.f32[0]), v50, *v11.f32, 1), v51, v11, 2), *osloga, v11, 3);
  dispatch thunk of ARView.cameraTransform.getter();
  v13 = vsubq_f32(oslogb, v12);
  if (sqrtf(vmuls_lane_f32(v13.f32[2], v13, 2) + vaddv_f32(vmul_f32(*v13.f32, *v13.f32))) <= 0.0001)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23B824000, oslog, v24, "cameraToBoxVector is too small to compute direction!", v25, 2u);
      MEMORY[0x23EEB0B70](v25, -1, -1);
    }
  }

  else
  {
    v14 = vmulq_f32(v13, v13);
    *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
    *v14.f32 = vrsqrte_f32(v15);
    *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
    v52 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
    dispatch thunk of ARView.cameraTransform.getter();
    *v66.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v17, v16);
    v48 = __invert_f4(v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6E0;
    *(inited + 32) = v52.i64[0];
    *(inited + 40) = v52.i32[2];
    *(inited + 44) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
    v53 = v19;
    swift_setDeallocating();
    v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48.columns[0], v53.f32[0]), v48.columns[1], *v53.f32, 1), v48.columns[2], v53, 2), v48.columns[3], v53, 3);
    v20.i32[3] = 0;
    v54 = v20;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of UserFeedbackSystem.update(at:arView:bboxWorld:));
    specialized static MathHelpers.angleBetween(_:_:)(v54, v21);
    if (v22 < 1.5708)
    {
      *&v26 = COERCE_DOUBLE(ARView.project(_:)());
      if (v28)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, logger);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_23B824000, v30, v31, "Can't project bbox center into the screen!", v32, 2u);
          MEMORY[0x23EEB0B70](v32, -1, -1);
        }
      }

      else
      {
        v33 = *&v26;
        v34 = v27;
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_23B91BFD0;
        [a1 center];
        *&v36 = v36 - v33;
        *(v35 + 32) = LODWORD(v36);
        [a1 center];
        v38 = v37 - v34;
        *(v35 + 36) = v38;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v35);
        v55 = v39;
        swift_setDeallocating();
        v40 = swift_initStackObject();
        *(v40 + 16) = xmmword_23B91BFD0;
        [a1 bounds];
        v41 = CGRectGetWidth(v67) * 0.5;
        *(v40 + 32) = *&v55 / v41;
        [a1 bounds];
        v42 = CGRectGetHeight(v68) * 0.5;
        *(v40 + 36) = *(&v55 + 1) / v42;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v40);
        v44 = v43;
        swift_setDeallocating();
        *(v5 + 16) = v44;
        UserFeedbackSystem.reticleAimScoreFilter.getter(v64);
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v64, &v62, &_s19_RealityKit_SwiftUI8Filter2D_pSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgMR);
        if (v63)
        {
          outlined init with take of Animation(&v62, v59);
          v45 = v60;
          v46 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          v47 = (*(v46 + 16))(v45, v46, *(v5 + 16));
          outlined destroy of PerspectiveCameraComponent?(v64, &_s19_RealityKit_SwiftUI8Filter2D_pSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgMR);
          *(v5 + 16) = v47;
          __swift_destroy_boxed_opaque_existential_0Tm(v59);
        }

        else
        {
          outlined destroy of PerspectiveCameraComponent?(v64, &_s19_RealityKit_SwiftUI8Filter2D_pSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgMR);
        }
      }
    }
  }
}

uint64_t Gesture.targetedToAnyEntity()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17 - v8;
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v2, a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = default argument 4 of TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)();
  return TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)(v12, v9, getEnumTag for FreeformCloudRenderer.Error, 0, v15, a2);
}

uint64_t default argument 4 of TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)()
{
  v0 = type metadata accessor for TargetingEntityGesture.EntityTargetState();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return TargetingEntityGesture.EntityTargetState.init()();
}

uint64_t TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *a5;
  (*(*(*(*a5 + 80) - 8) + 32))(a6, a1, *(*a5 + 80));
  v12 = *(v11 + 88);
  v13 = type metadata accessor for TargetingEntityGesture();
  v14 = v13[9];
  swift_weakInit();

  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(a2, a6 + v13[10], &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
  v15 = (a6 + v13[11]);
  *v15 = a3;
  v15[1] = a4;
  v16 = (a6 + v13[12]);
  result = property wrapper backing initializer of TargetingEntityGesture.state(a5);
  *v16 = result;
  v16[1] = v18;
  return result;
}

uint64_t Gesture.targetedToEntity(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v3, a1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = default argument 4 of TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)();

  return TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)(v13, v10, getEnumTag for FreeformCloudRenderer.Error, 0, v16, a2);
}

uint64_t Gesture.targetedToEntity(where:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - v10;
  v12 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v3, a2);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a1, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  v18 = default argument 4 of TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)();
  return TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)(v14, v11, getEnumTag for FreeformCloudRenderer.Error, 0, v18, a3);
}

uint64_t Gesture.targetedToInteraction(enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - v13;
  v15 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v5, a3);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);

  v20 = default argument 4 of TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)();
  return TargetingEntityGesture.init(wrapped:entity:query:triggerEnabled:state:)(v17, v14, a1, a2, v20, a4);
}

uint64_t TargetingEntityGesture.EntityTargetState.entity.getter()
{
  v3 = *(*v0 + 80);
  KeyPath = swift_getKeyPath();
  TargetingEntityGesture.EntityTargetState.access<A>(keyPath:)(KeyPath);

  return swift_weakLoadStrong();
}

uint64_t TargetingEntityGesture.EntityTargetState.entity.setter()
{
  v1 = *v0;
  swift_weakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
  v6 = *(v1 + 80);
  lazy protocol witness table accessor for type Entity? and conformance <A> A?();
  LOBYTE(v1) = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v1)
  {
    swift_weakAssign();
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    TargetingEntityGesture.EntityTargetState.withMutation<A, B>(keyPath:_:)(v5);
  }
}

uint64_t TargetingEntityGesture.EntityTargetState.view.getter()
{
  v3 = *(*v0 + 80);
  KeyPath = swift_getKeyPath();
  TargetingEntityGesture.EntityTargetState.access<A>(keyPath:)(KeyPath);

  return swift_unknownObjectWeakLoadStrong();
}

void TargetingEntityGesture.EntityTargetState.view.setter(void *a1)
{
  v3 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6ARViewCSgMd, &_s10RealityKit6ARViewCSgMR);
  v7 = *(v3 + 80);
  lazy protocol witness table accessor for type ARView? and conformance <A> A?();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v3)
  {
    swift_unknownObjectWeakAssign();
  }

  else
  {
    MEMORY[0x28223BE20](v4);
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath);
    TargetingEntityGesture.EntityTargetState.withMutation<A, B>(keyPath:_:)(v6);
  }
}

__n128 TargetingEntityGesture.EntityTargetState.defaultPlane.getter@<Q0>(uint64_t a1@<X8>)
{
  v6 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  TargetingEntityGesture.EntityTargetState.access<A>(keyPath:)(KeyPath);

  v4 = *(v1 + 80);
  *(a1 + 32) = *(v1 + 64);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v1 + 96);
  result = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

uint64_t TargetingEntityGesture.EntityTargetState.defaultPlane.setter(__int128 *a1)
{
  v2 = v1;
  v18 = *(v1 + 4);
  v19 = *(v1 + 5);
  v20 = *(v1 + 96);
  v16 = *(v1 + 2);
  v17 = *(v1 + 3);
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 64);
  v11 = *a1;
  v12 = a1[1];
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
  v10 = *(v4 + 80);
  lazy protocol witness table accessor for type simd_float4x4? and conformance <A> A?();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v6 = a1[3];
    *(v2 + 4) = a1[2];
    *(v2 + 5) = v6;
    *(v2 + 96) = *(a1 + 64);
    v7 = a1[1];
    *(v2 + 2) = *a1;
    *(v2 + 3) = v7;
  }

  else
  {
    MEMORY[0x28223BE20](result);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    TargetingEntityGesture.EntityTargetState.withMutation<A, B>(keyPath:_:)(v9);
  }

  return result;
}

uint64_t TargetingEntityGesture.EntityTargetState.ray.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  TargetingEntityGesture.EntityTargetState.access<A>(keyPath:)(KeyPath);

  v4 = direct field offset for TargetingEntityGesture.EntityTargetState._ray;
  swift_beginAccess();
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v4, a1, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
}

uint64_t key path setter for TargetingEntityGesture.EntityTargetState.ray : <A>TargetingEntityGesture<A>.EntityTargetState(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v10 - v6, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v8 = *a2;
  return TargetingEntityGesture.EntityTargetState.ray.setter(v7);
}

uint64_t TargetingEntityGesture.EntityTargetState.ray.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = direct field offset for TargetingEntityGesture.EntityTargetState._ray;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + v9, v8, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v14[0] = *(v4 + 80);
  lazy protocol witness table accessor for type CollisionCastHit? and conformance <A> A?();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = outlined destroy of PerspectiveCameraComponent?(v8, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  if (v4)
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v8, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
    swift_beginAccess();
    outlined assign with take of CollisionCastHit?(v8, v2 + v9);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v10);
    v14[-1] = v14[0];
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x28223BE20](KeyPath);
    *&v14[-1] = v2;
    *(&v14[-1] + 1) = a1;
    TargetingEntityGesture.EntityTargetState.withMutation<A, B>(keyPath:_:)(v12);
  }

  return outlined destroy of PerspectiveCameraComponent?(a1, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
}

uint64_t closure #1 in TargetingEntityGesture.EntityTargetState.ray.setter(uint64_t a1, uint64_t a2)
{
  v4 = direct field offset for TargetingEntityGesture.EntityTargetState._ray;
  swift_beginAccess();
  outlined assign with copy of CollisionCastHit?(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t TargetingEntityGesture.EntityTargetState.access<A>(keyPath:)(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t TargetingEntityGesture.EntityTargetState.withMutation<A, B>(keyPath:_:)(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t TargetingEntityGesture.EntityTargetState.deinit()
{
  swift_weakDestroy();
  MEMORY[0x23EEB0C40](v0 + 24);
  outlined destroy of PerspectiveCameraComponent?(v0 + direct field offset for TargetingEntityGesture.EntityTargetState._ray, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v1 = direct field offset for TargetingEntityGesture.EntityTargetState._$observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TargetingEntityGesture.EntityTargetState.__deallocating_deinit()
{
  v0 = *TargetingEntityGesture.EntityTargetState.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t TargetingEntityGesture.EntityTargetState.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return TargetingEntityGesture.EntityTargetState.init()();
}

uint64_t TargetingEntityGesture.EntityTargetState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9[-v3];
  swift_weakInit();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9[0] = 1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  v5 = type metadata accessor for CollisionCastHit();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = direct field offset for TargetingEntityGesture.EntityTargetState._ray;
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v4, v0 + direct field offset for TargetingEntityGesture.EntityTargetState._ray, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v6((v0 + v7), 1, 1, v5);
  ObservationRegistrar.init()();
  return v0;
}

uint64_t property wrapper backing initializer of TargetingEntityGesture.state(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  type metadata accessor for TargetingEntityGesture.EntityTargetState();
  State.init(wrappedValue:)();
  return v4;
}

uint64_t TargetingEntityGesture.state.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v7 = *v2;
  v8 = v2[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for TargetingEntityGesture.EntityTargetState();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v6;
}

uint64_t TargetingEntityGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TargetingEntityGesture.buildTargetingEntityGesture()(a1);
  *a2 = result;
  return result;
}

uint64_t TargetingEntityGesture.buildTargetingEntityGesture()(uint64_t a1)
{
  v53 = *(a1 - 8);
  v51 = *(v53 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v3);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v11;
  v48 = *(v9 + 24);
  v39 = type metadata accessor for PlatformViewHitTestFilterGesture();
  v45 = *(v39 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v39);
  v50 = &v35 - v13;
  swift_getAssociatedTypeWitness();
  v52 = type metadata accessor for EntityTargetValue();
  WitnessTable = swift_getWitnessTable();
  v41 = type metadata accessor for _MapGesture();
  v44 = *(v41 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v49 = &v35 - v15;
  v42 = swift_getWitnessTable();
  v43 = type metadata accessor for _EndedGesture();
  v16 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v38 = &v35 - v17;
  v18 = *(v7 + 16);
  v47 = v1;
  v19 = v6;
  v18(v11, v1, v6);
  v20 = v53;
  v46 = *(v53 + 16);
  v46(v5, v1, a1);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  v23 = v48;
  *(v22 + 24) = v48;
  v24 = *(v20 + 32);
  v53 = v20 + 32;
  v36 = v24;
  v24(v22 + v21, v5, a1);
  PlatformViewHitTestFilterGesture.init(_:filter:)();
  v35 = a1;
  v46(v5, v47, a1);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v23;
  v26 = v36;
  v36(v25 + v21, v5, a1);
  v27 = v50;
  v28 = v39;
  Gesture.map<A>(_:)();

  (*(v45 + 8))(v27, v28);
  v29 = v35;
  v46(v5, v47, v35);
  v30 = swift_allocObject();
  v31 = v48;
  *(v30 + 16) = v19;
  *(v30 + 24) = v31;
  v26(v30 + v21, v5, v29);
  v32 = v41;
  v33 = v49;
  Gesture.onEnded(_:)();

  (*(v44 + 8))(v33, v32);
  swift_getWitnessTable();
  return AnyGesture.init<A>(_:)();
}

uint64_t closure #1 in TargetingEntityGesture.buildTargetingEntityGesture()(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for TargetingEntityGesture();
  specialized TargetingEntityGesture.populateState(from:at:with:)(a1, *&a2, *&a3, 0, v6);
  TargetingEntityGesture.state.getter(v6);
  v7 = TargetingEntityGesture.EntityTargetState.view.getter();

  if (!v7)
  {
    return 0;
  }

  TargetingEntityGesture.state.getter(v6);
  v8 = TargetingEntityGesture.EntityTargetState.entity.getter();

  if (!v8)
  {
    return 0;
  }

  v9 = TargetingEntityGesture.check(against:)(v8, v6);

  return v9 & 1;
}

uint64_t TargetingEntityGesture.check(against:)(uint64_t a1, int *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = a2[9];
  if (!swift_weakLoadStrong())
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + a2[10], v8, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v14, v8, v9);
      v23 = a1;
      v18 = QueryPredicate.evaluate(value:)();
      (*(v10 + 8))(v14, v9);
      return v18 & 1;
    }

    outlined destroy of PerspectiveCameraComponent?(v8, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGSgMR);
    v19 = v2 + a2[11];
    v20 = *(v19 + 8);
    if (((*v19)(a1) & 1) == 0)
    {
      v18 = 1;
      return v18 & 1;
    }

    dispatch thunk of Entity.scene.getter();
    type metadata accessor for Entity();
    static QueryPredicate.canInteract(on:)();

    v23 = a1;
    v18 = QueryPredicate.evaluate(value:)();
    goto LABEL_8;
  }

  type metadata accessor for Entity();
  if ((static Entity.== infix(_:_:)() & 1) == 0)
  {
    static QueryPredicate.isDescendant(of:)();
    v23 = a1;
    v18 = QueryPredicate.evaluate(value:)();

LABEL_8:
    (*(v10 + 8))(v16, v9);
    return v18 & 1;
  }

  v18 = 1;
  return v18 & 1;
}

void closure #2 in TargetingEntityGesture.buildTargetingEntityGesture()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;
  v15 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TargetingEntityGesture();
  TargetingEntityGesture.state.getter(v10);
  v11 = TargetingEntityGesture.EntityTargetState.entity.getter();

  if (v11)
  {
    TargetingEntityGesture.state.getter(v10);
    v12 = TargetingEntityGesture.EntityTargetState.view.getter();

    if (v12)
    {
      type metadata accessor for PlatformViewHitTestFilterGesture.Value();
      PlatformViewHitTestFilterGesture.Value.gestureValue.getter();
      v13 = v12;
      TargetingEntityGesture.state.getter(v10);
      TargetingEntityGesture.EntityTargetState.defaultPlane.getter(v16);

      TargetingEntityGesture.state.getter(v10);
      TargetingEntityGesture.EntityTargetState.ray.getter(v5);

      EntityTargetValue.init(gestureValue:entity:view:defaultPlane:ray:)(v9, v11, v12, v16, v5, AssociatedTypeWitness, v15);

      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t EntityTargetValue.init(gestureValue:entity:view:defaultPlane:ray:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for EntityTargetValue();
  v14 = v13[8];
  v15 = a7 + v13[9];
  v16 = v13[10];
  v17 = type metadata accessor for CollisionCastHit();
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  *(a7 + v13[7]) = a2;
  *(a7 + v14) = a3;
  v18 = *(a4 + 48);
  *(v15 + 32) = *(a4 + 32);
  *(v15 + 48) = v18;
  *(v15 + 64) = *(a4 + 64);
  v19 = *(a4 + 16);
  *v15 = *a4;
  *(v15 + 16) = v19;

  return outlined assign with take of CollisionCastHit?(a5, a7 + v16);
}

uint64_t closure #3 in TargetingEntityGesture.buildTargetingEntityGesture()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v7 - v2;
  v4 = type metadata accessor for TargetingEntityGesture();
  TargetingEntityGesture.state.getter(v4);
  TargetingEntityGesture.EntityTargetState.entity.setter();

  TargetingEntityGesture.state.getter(v4);
  TargetingEntityGesture.EntityTargetState.view.setter(0);

  TargetingEntityGesture.state.getter(v4);
  v9 = 1;
  memset(v7, 0, sizeof(v7));
  v8 = 1;
  TargetingEntityGesture.EntityTargetState.defaultPlane.setter(v7);

  TargetingEntityGesture.state.getter(v4);
  v5 = type metadata accessor for CollisionCastHit();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  TargetingEntityGesture.EntityTargetState.ray.setter(v3);
}

uint64_t EntityTargetValue.entity.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*EntityTargetValue.entity.modify(uint64_t a1, uint64_t a2))()
{
  result = closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad();
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t EntityTapTriggerGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EntityTapTriggerGesture.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for TapGesture();
  v32 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLVy0cD003TapG0VGMd, &_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLVy0cD003TapG0VGMR);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_EndedGestureVy012_RealityKit_aB0015TargetingEntityD033_43235DF0F4E52FD9E99591297D6CB7EALLVyAA03TapD0VGGMd, &_s7SwiftUI13_EndedGestureVy012_RealityKit_aB0015TargetingEntityD033_43235DF0F4E52FD9E99591297D6CB7EALLVyAA03TapD0VGGMR);
  v11 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - v12;
  v13 = *v1;
  v30 = v1[1];
  v31 = v13;
  TapGesture.init(count:)();
  (*(v3 + 16))(v10, v6, v2);
  v14 = v7[10];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLV0F11TargetStateCy0cD003TapG0V_GMd, &_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLV0F11TargetStateCy0cD003TapG0V_GMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  swift_weakInit();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v39 = 1;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 1;
  v20 = direct field offset for TargetingEntityGesture.EntityTargetState._ray;
  v21 = type metadata accessor for CollisionCastHit();
  v22 = *(*(v21 - 8) + 56);
  v22(v19 + v20, 1, 1, v21);
  v22(v19 + v20, 1, 1, v21);
  ObservationRegistrar.init()();
  v23 = v7[9];
  swift_weakInit();
  v24 = &v10[v7[11]];
  v25 = v30;
  *v24 = v31;
  *(v24 + 1) = v25;
  v26 = &v10[v7[12]];
  v36 = v19;

  State.init(wrappedValue:)();
  (*(v3 + 8))(v6, v32);
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type TargetingEntityGesture<TapGesture> and conformance TargetingEntityGesture<A>, &_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLVy0cD003TapG0VGMd, &_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLVy0cD003TapG0VGMR);
  Gesture.onEnded(_:)();
  outlined destroy of PerspectiveCameraComponent?(v10, &_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLVy0cD003TapG0VGMd, &_s19_RealityKit_SwiftUI22TargetingEntityGesture33_43235DF0F4E52FD9E99591297D6CB7EALLVy0cD003TapG0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI17EntityTargetValueVyytGMd, &_s19_RealityKit_SwiftUI17EntityTargetValueVyytGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EndedGesture<TargetingEntityGesture<TapGesture>> and conformance _EndedGesture<A>, &_s7SwiftUI13_EndedGestureVy012_RealityKit_aB0015TargetingEntityD033_43235DF0F4E52FD9E99591297D6CB7EALLVyAA03TapD0VGGMd, &_s7SwiftUI13_EndedGestureVy012_RealityKit_aB0015TargetingEntityD033_43235DF0F4E52FD9E99591297D6CB7EALLVyAA03TapD0VGGMR);
  result = AnyGesture.init<A>(_:)();
  *v35 = result;
  return result;
}

uint64_t static EntityTargetValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Entity();
  v4 = *(type metadata accessor for EntityTargetValue() + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  return static Entity.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <A> EntityTargetValue<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static EntityTargetValue<A>.== infix(_:_:)(a1, a2);
}

void type metadata completion function for TargetingEntityGesture.EntityTargetState()
{
  type metadata accessor for CollisionCastHit?(319, &lazy cache variable for type metadata for CollisionCastHit?, MEMORY[0x277CDACF8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void type metadata completion function for EntityTargetValue(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Entity();
    if (v3 <= 0x3F)
    {
      type metadata accessor for CollisionCastHit?(319, &lazy cache variable for type metadata for ARView?, MEMORY[0x277CDB688]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for CollisionCastHit?(319, &lazy cache variable for type metadata for simd_float4x4?, type metadata accessor for simd_float4x4);
        if (v5 <= 0x3F)
        {
          type metadata accessor for CollisionCastHit?(319, &lazy cache variable for type metadata for CollisionCastHit?, MEMORY[0x277CDACF8]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EntityTargetValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for CollisionCastHit();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  if (v11)
  {
    v17 = *(*(v8 - 8) + 64);
  }

  else
  {
    v17 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v16 + 65;
  if (a2 <= v14)
  {
    goto LABEL_36;
  }

  v19 = v17 + ((v18 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF0)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v23 < 2)
    {
LABEL_36:
      if (v7 == v14)
      {
        v27 = *(v6 + 48);

        return v27(a1, v7, v5);
      }

      else
      {
        v28 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v30 = (*(v10 + 48))((v18 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF0)) & ~v16);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (*v28 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_36;
  }

LABEL_23:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v14 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for EntityTargetValue(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v28 = *(v7 - 8);
  v8 = *(v28 + 84);
  v9 = 0;
  v10 = *(type metadata accessor for CollisionCastHit() - 8);
  v11 = *(v10 + 84);
  v12 = *(v28 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v8 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v8;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!v11)
  {
    ++v15;
  }

  v18 = ((v14 + 65 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF0)) & ~v14) + v15;
  if (a3 <= v17)
  {
    goto LABEL_26;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v17 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v9 = 4;
      if (v17 < a2)
      {
        goto LABEL_27;
      }

LABEL_15:
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          *&a1[v18] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v18] = 0;
      }

      else if (v9)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v8 == v17)
      {
        v23 = *(v28 + 56);

        v23(a1, a2, v8, v7);
      }

      else
      {
        v25 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v16 & 0x80000000) != 0)
        {
          v27 = *(v10 + 56);

          v27((v14 + 65 + ((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF0)) & ~v14, (a2 + 1));
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *v25 = v26;
        }
      }

      return;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v9 = v20;
    }

    else
    {
      v9 = 0;
    }

LABEL_26:
    if (v17 < a2)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v9 = 1;
  if (v17 >= a2)
  {
    goto LABEL_15;
  }

LABEL_27:
  v21 = ~v17 + a2;
  if (v18 < 4)
  {
    v22 = (v21 >> (8 * v18)) + 1;
    if (v18)
    {
      v24 = v21 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v24;
          if (v9 <= 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          *a1 = v21;
          if (v9 <= 1)
          {
            goto LABEL_56;
          }
        }

LABEL_29:
        if (v9 == 2)
        {
          *&a1[v18] = v22;
        }

        else
        {
          *&a1[v18] = v22;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v9 <= 1)
    {
      goto LABEL_56;
    }

    goto LABEL_29;
  }

  bzero(a1, v18);
  *a1 = v21;
  v22 = 1;
  if (v9 > 1)
  {
    goto LABEL_29;
  }

LABEL_56:
  if (v9)
  {
    a1[v18] = v22;
  }
}

void type metadata accessor for CollisionCastHit?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for TargetingEntityGesture(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for QueryPredicate<Entity>?();
    if (v4 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 24);
        type metadata accessor for TargetingEntityGesture.EntityTargetState();
        type metadata accessor for State();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TargetingEntityGesture(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v16 + 7;
  if (v13 < a2)
  {
    v18 = ((((v17 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v13 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_27:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        return v13 + (v25 | v24) + 1;
      }
    }
  }

  if (v7 == v13)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  v28 = (((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15;
  if (v12 == v13)
  {
    if (v11 >= 2)
    {
      v30 = (*(v10 + 48))(v28);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *((v17 + v28) & 0xFFFFFFFFFFFFFFF8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  return (v29 + 1);
}

void storeEnumTagSinglePayload for TargetingEntityGesture(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v27 = *(v7 - 8);
  v8 = *(v27 + 84);
  v9 = 0;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR) - 8);
  v11 = *(v10 + 84);
  v12 = *(v27 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v13;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  if (!v11)
  {
    ++v15;
  }

  v17 = v15 + 7;
  v18 = ((((v17 + ((v14 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((((v17 + ((v14 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v16 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v9 = v20;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((((v17 + ((v14 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a2 - v16;
    }

    else
    {
      v21 = 1;
    }

    if (((((v17 + ((v14 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v22 = ~v16 + a2;
      bzero(a1, ((((v17 + ((v14 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v18) = v21;
      }

      else
      {
        *(a1 + v18) = v21;
      }
    }

    else if (v9)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v18) = 0;
  }

  else if (v9)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v8 == v16)
  {
    v23 = *(v27 + 56);

    v23(a1, a2, v8, v7);
  }

  else
  {
    v24 = (((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
    if (v13 == v16)
    {
      v25 = *(v10 + 56);

      v25(v24, (a2 + 1));
    }

    else
    {
      v26 = ((v17 + v24) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = (a2 - 1);
      }
    }
  }
}

void type metadata accessor for QueryPredicate<Entity>?()
{
  if (!lazy cache variable for type metadata for QueryPredicate<Entity>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for QueryPredicate<Entity>?);
    }
  }
}

uint64_t partial apply for closure #1 in TargetingEntityGesture.buildTargetingEntityGesture()(void *a1, double a2, double a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(*(type metadata accessor for TargetingEntityGesture() - 8) + 80);

  return closure #1 in TargetingEntityGesture.buildTargetingEntityGesture()(a1, a2, a3);
}

void partial apply for closure #2 in TargetingEntityGesture.buildTargetingEntityGesture()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for TargetingEntityGesture() - 8) + 80);

  closure #2 in TargetingEntityGesture.buildTargetingEntityGesture()(a1, a2);
}

uint64_t objectdestroyTm_9()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for TargetingEntityGesture();
  v4 = *(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v4 + 32) & ~v4;
  v7 = v0 + v6;
  (*(*(v2 - 8) + 8))(v0 + v6, v2);
  v8 = v3[9];
  swift_weakDestroy();
  v9 = v3[10];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v7 + v3[11] + 8);

  v13 = (v7 + v3[12]);
  v14 = *v13;

  v15 = v13[1];

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v4 | 7);
}

uint64_t partial apply for closure #3 in TargetingEntityGesture.buildTargetingEntityGesture()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for TargetingEntityGesture() - 8) + 80);

  return closure #3 in TargetingEntityGesture.buildTargetingEntityGesture()();
}

uint64_t outlined assign with take of CollisionCastHit?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double specialized simd_float4x4.init(translation:rotation:scale:)(double a1, float32x4_t a2)
{
  v3 = simd_matrix4x4(a2);
  simd_float4x4.scale(_:)();
  SIMD4<>._xyz.getter();
  SIMD4<>._xyz.setter();
  return v3;
}

void specialized TargetingEntityGesture.populateState(from:at:with:)(void *x0_0, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *&v62 = a5;
  v61 = a4;
  v59 = a2;
  v60 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v54 - v8;
  v9 = type metadata accessor for CollisionGroup();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v15 = *(Type - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](Type);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CollisionCastHit();
  v58 = *(v19 - 8);
  v20 = *(v58 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v57 = &v54 - v24;
  if (x0_0)
  {
    type metadata accessor for ARView();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      v54 = v19;
      v27 = x0_0;
      TargetingEntityGesture.state.getter(v62);
      v55 = v27;
      TargetingEntityGesture.EntityTargetState.view.setter(v26);

      if (v61)
      {
        v28 = v55;
      }

      else
      {
        (*(v15 + 104))(v18, *MEMORY[0x277CDAE48], Type);
        static CollisionGroup.all.getter();
        v29 = ARView.hitTest(_:requireInputTarget:query:mask:)();
        (*(v10 + 8))(v13, v9);
        (*(v15 + 8))(v18, Type);
        if (*(v29 + 16))
        {
          v30 = v58;
          v31 = *(v58 + 16);
          v32 = v54;
          v31(v23, v29 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v54);

          v33 = v57;
          (*(v30 + 32))(v57, v23, v32);
          v34 = v62;
          TargetingEntityGesture.state.getter(v62);
          CollisionCastHit.entity.getter();
          TargetingEntityGesture.EntityTargetState.entity.setter();

          TargetingEntityGesture.state.getter(v34);
          v35 = v56;
          v31(v56, v33, v32);
          (*(v30 + 56))(v35, 0, 1, v32);
          TargetingEntityGesture.EntityTargetState.ray.setter(v35);

          dispatch thunk of ARView.scene.getter();
          active = dispatch thunk of Scene.internalActiveCamera.getter();

          if (active)
          {
            TargetingEntityGesture.state.getter(v34);
            _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of TargetingEntityGesture.populateState(from:at:with:));
            v63 = v37;
            type metadata accessor for Entity();
            HasTransform.transformMatrix(relativeTo:)();
            *v38.i64 = simd_quaternion(v68);
            v39 = vmulq_f32(v38, xmmword_23B91C020);
            v40 = vnegq_f32(v39);
            v41 = vtrn2q_s32(v39, vtrn1q_s32(v39, v40));
            v42 = vmlaq_f32(vmulq_f32(vextq_s8(v39, v40, 8uLL), 0), 0, vextq_s8(v41, v41, 8uLL));
            v43 = vrev64q_s32(v39);
            v43.i32[0] = v40.i32[1];
            v43.i32[3] = v40.i32[2];
            v44 = vaddq_f32(v43, v42);
            v45 = vnegq_f32(v44);
            v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
            v47 = vrev64q_s32(v44);
            v47.i32[0] = v45.i32[1];
            v47.i32[3] = v45.i32[2];
            *v48.i64 = simd_quaternion(v63, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v44, v38, 3), v47, v38, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v38.f32, 1), vextq_s8(v46, v46, 8uLL), v38.f32[0])));
            v63 = v48;
            CollisionCastHit.position.getter();
            v62 = v49;
            static simd_quatf.identity.getter();
            *&v50 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v62, v63);
            v64 = 0;
            v65[0] = v50;
            v65[1] = v51;
            v65[2] = v52;
            v65[3] = v53;
            v66 = 0;
            TargetingEntityGesture.EntityTargetState.defaultPlane.setter(v65);

            (*(v30 + 8))(v33, v32);
            return;
          }

          (*(v30 + 8))(v33, v32);
        }

        else
        {
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type CollisionCastHit? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CollisionCastHit? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CollisionCastHit? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
    lazy protocol witness table accessor for type CollisionCastHit and conformance CollisionCastHit(&lazy protocol witness table cache variable for type CollisionCastHit and conformance CollisionCastHit, MEMORY[0x277CDACF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionCastHit? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined assign with copy of CollisionCastHit?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type simd_float4x4? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type simd_float4x4? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type simd_float4x4? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
    lazy protocol witness table accessor for type CollisionCastHit and conformance CollisionCastHit(&lazy protocol witness table cache variable for type simd_float4x4 and conformance simd_float4x4, type metadata accessor for simd_float4x4);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type simd_float4x4? and conformance <A> A?);
  }

  return result;
}

__n128 partial apply for closure #1 in TargetingEntityGesture.EntityTargetState.defaultPlane.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 32);
  v3 = *(v2 + 48);
  v5 = *(v2 + 16);
  *(v1 + 96) = *(v2 + 64);
  *(v1 + 64) = v4;
  *(v1 + 80) = v3;
  *(v1 + 48) = v5;
  result = *v2;
  *(v1 + 32) = *v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ARView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ARView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ARView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit6ARViewCSgMd, &_s10RealityKit6ARViewCSgMR);
    lazy protocol witness table accessor for type CollisionCastHit and conformance CollisionCastHit(&lazy protocol witness table cache variable for type ARView and conformance NSObject, MEMORY[0x277CDB688]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #1 in TargetingEntityGesture.EntityTargetState.view.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

unint64_t lazy protocol witness table accessor for type Entity? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Entity? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Entity? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit6EntityCSgMd, &_s10RealityKit6EntityCSgMR);
    lazy protocol witness table accessor for type CollisionCastHit and conformance CollisionCastHit(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CollisionCastHit and conformance CollisionCastHit(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in TargetingEntityGesture.EntityTargetState.entity.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_weakAssign();
}

id closure #1 in variable initialization expression of static VoxelRenderer.mtlLibrary()
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mtlDevice != -1)
  {
    swift_once();
  }

  v0 = static VoxelRenderer.mtlDevice;
  if (one-time initialization token for bundle != -1)
  {
    v7 = static VoxelRenderer.mtlDevice;
    swift_once();
    v0 = v7;
  }

  v8[0] = 0;
  v1 = [v0 newDefaultLibraryWithBundle:static VoxelRenderer.bundle error:v8];
  if (v1)
  {
    v2 = v8[0];
  }

  else
  {
    v3 = v8[0];
    v4 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t VoxelRenderer.init(view:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = xmmword_23B923CF0;
  *(v1 + 64) = xmmword_23B91DE30;
  *(v1 + 80) = 2;
  if (one-time initialization token for mtlDevice != -1)
  {
    swift_once();
  }

  *(v1 + 16) = static VoxelRenderer.mtlDevice;
  swift_unknownObjectRetain();
  v6 = VoxelRenderer.makeCubePrimitive()();
  v7 = *(v4 + 40);
  *(v4 + 40) = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v6)
  {
    swift_unknownObjectRelease();
    VoxelRenderer.initRenderPipeline(colorPixelFormat:)([a1 colorPixelFormat]);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "Can't make cube primitive!", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    lazy protocol witness table accessor for type VoxelRenderer.Error and conformance VoxelRenderer.Error();
    swift_allocError();
    swift_willThrow();
  }

LABEL_12:

  return v4;
}

void VoxelRenderer.render(encoder:uniforms:pointCloud:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v6 = dispatch thunk of OCDataBuffer.count.getter();

  if (v6 <= 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_16;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No point cloud points, can't render!";
    goto LABEL_15;
  }

  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v7 = v2[2];
  v8 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

  if (v8)
  {
    v9 = MEMORY[0x23EEAF480](0xD000000000000014, 0x800000023B92A090);
    [a1 pushDebugGroup_];

    [a1 setCullMode_];
    [a1 setDepthStencilState_];
    if (v3[3])
    {
      [a1 setRenderPipelineState_];
      [a1 setVertexBuffer:v3[5] offset:0 atIndex:0];
      [a1 setVertexBuffer:a2 offset:0 atIndex:1];
      [a1 setVertexBuffer:v8 offset:0 atIndex:2];
      [a1 drawPrimitives:3 vertexStart:0 vertexCount:36 instanceCount:v6];
      [a1 popDebugGroup];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Can't get coverage point clouds MTLBuffer!";
LABEL_15:
    _os_log_impl(&dword_23B824000, oslog, v11, v13, v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

LABEL_16:
}

void VoxelRenderer.initRenderPipeline(colorPixelFormat:)(uint64_t a1)
{
  v3 = v2;
  v5 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
  [v5 setDepthCompareFunction_];
  [v5 setDepthWriteEnabled_];
  v6 = [*(v1 + 16) newDepthStencilStateWithDescriptor_];
  if (v6)
  {
    v7 = *(v1 + 32);
    *(v1 + 32) = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    VoxelRenderer.makeRenderPipelineState(colorPixelFormat:mtlVertexDescriptor:)(a1, 0);
    v9 = v8;

    swift_unknownObjectRelease();
    if (!v3)
    {
      v10 = *(v1 + 24);
      *(v1 + 24) = v9;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v12, v13, "Can't make depth stencil state!", v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    lazy protocol witness table accessor for type VoxelRenderer.Error and conformance VoxelRenderer.Error();
    swift_allocError();
    swift_willThrow();
  }
}

void VoxelRenderer.makeRenderPipelineState(colorPixelFormat:mtlVertexDescriptor:)(uint64_t a1, uint64_t a2)
{
  v43[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mtlLibrary != -1)
  {
    swift_once();
  }

  v5 = static VoxelRenderer.mtlLibrary;
  if (!static VoxelRenderer.mtlLibrary)
  {
    lazy protocol witness table accessor for type VoxelRenderer.Error and conformance VoxelRenderer.Error();
    swift_allocError();
    swift_willThrow();
    goto LABEL_32;
  }

  swift_unknownObjectRetain();
  v6 = MEMORY[0x23EEAF480](0xD000000000000024, 0x800000023B92A030);
  v7 = [v5 newFunctionWithName_];

  v42 = v7;
  if (!v7)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, logger);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000023B92A030, v43);
      _os_log_impl(&dword_23B824000, v31, v32, "Can't find vertex function: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x23EEB0B70](v34, -1, -1);
      MEMORY[0x23EEB0B70](v33, -1, -1);
    }

    lazy protocol witness table accessor for type VoxelRenderer.Error and conformance VoxelRenderer.Error();
    swift_allocError();
    swift_willThrow();
    goto LABEL_31;
  }

  v8 = MEMORY[0x23EEAF480](0xD000000000000025, 0x800000023B92A060);
  v9 = [v5 newFunctionWithName_];

  if (!v9)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, logger);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000023B92A060, v43);
      _os_log_impl(&dword_23B824000, v36, v37, "Can't find fragment function: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x23EEB0B70](v39, -1, -1);
      MEMORY[0x23EEB0B70](v38, -1, -1);
    }

    lazy protocol witness table accessor for type VoxelRenderer.Error and conformance VoxelRenderer.Error();
    swift_allocError();
    swift_willThrow();
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  v11 = MEMORY[0x23EEAF480](0x69507265646E6552, 0xEE00656E696C6570);
  [v10 setLabel_];

  [v10 setVertexFunction_];
  [v10 setFragmentFunction_];
  if (a2)
  {
    [v10 setVertexDescriptor_];
  }

  v12 = [v10 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
    __break(1u);
    goto LABEL_34;
  }

  [v13 setPixelFormat_];

  v14 = [v10 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v15 setBlendingEnabled_];

  v16 = [v10 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  if (!v17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v17 setRgbBlendOperation_];

  v18 = [v10 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v19 setAlphaBlendOperation_];

  v20 = [v10 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v21 setSourceRGBBlendFactor_];

  v22 = [v10 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v23 setSourceAlphaBlendFactor_];

  v24 = [v10 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v25 setDestinationRGBBlendFactor_];

  v26 = [v10 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript_];

  if (v27)
  {
    [v27 setDestinationAlphaBlendFactor_];

    [v10 setDepthAttachmentPixelFormat_];
    [v10 setStencilAttachmentPixelFormat_];
    v28 = *(v2 + 16);
    v43[0] = 0;
    if ([v28 newRenderPipelineStateWithDescriptor:v10 error:v43])
    {
      v29 = v43[0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_32:
      v41 = *MEMORY[0x277D85DE8];
      return;
    }

    v40 = v43[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_30;
  }

LABEL_40:
  __break(1u);
}

uint64_t VoxelRenderer.makeCubePrimitive()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23ObjectCaptureCubeVertexVGMd, &_ss23_ContiguousArrayStorageCySo23ObjectCaptureCubeVertexVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23B91AE90;
  *(v2 + 32) = xmmword_23B923D00;
  *(v2 + 48) = 0;
  *(v2 + 64) = xmmword_23B923D10;
  *(v2 + 80) = 0x3F80000000000000;
  *(v2 + 96) = xmmword_23B923D20;
  *(v2 + 112) = 1065353216;
  *(v2 + 128) = xmmword_23B923D10;
  *(v2 + 144) = 0x3F80000000000000;
  *(v2 + 160) = xmmword_23B923D30;
  __asm { FMOV            V11.2S, #1.0 }

  *(v2 + 176) = _D11;
  *(v2 + 192) = xmmword_23B923D20;
  *(v2 + 208) = 1065353216;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23B91AE90;
  *(v8 + 32) = xmmword_23B923D40;
  *(v8 + 48) = 0;
  *(v8 + 64) = xmmword_23B923D50;
  *(v8 + 80) = 0x3F80000000000000;
  *(v8 + 96) = xmmword_23B923D60;
  *(v8 + 112) = 1065353216;
  *(v8 + 128) = xmmword_23B923D50;
  *(v8 + 144) = 0x3F80000000000000;
  *(v8 + 160) = xmmword_23B923D70;
  *(v8 + 176) = _D11;
  *(v8 + 192) = xmmword_23B923D60;
  *(v8 + 208) = 1065353216;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23B91AE90;
  *(v9 + 32) = xmmword_23B923D00;
  *(v9 + 48) = 0;
  *(v9 + 64) = xmmword_23B923D20;
  *(v9 + 80) = 0x3F80000000000000;
  *(v9 + 96) = xmmword_23B923D80;
  *(v9 + 112) = 1065353216;
  *(v9 + 128) = xmmword_23B923D20;
  *(v9 + 144) = 0x3F80000000000000;
  *(v9 + 160) = xmmword_23B923D90;
  *(v9 + 176) = _D11;
  *(v9 + 192) = xmmword_23B923D80;
  *(v9 + 208) = 1065353216;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23B91AE90;
  *(v10 + 32) = xmmword_23B923DA0;
  *(v10 + 48) = 0;
  *(v10 + 64) = xmmword_23B923DB0;
  *(v10 + 80) = 0x3F80000000000000;
  *(v10 + 96) = xmmword_23B923D50;
  *(v10 + 112) = 1065353216;
  *(v10 + 128) = xmmword_23B923DB0;
  *(v10 + 144) = 0x3F80000000000000;
  *(v10 + 160) = xmmword_23B923D70;
  *(v10 + 176) = _D11;
  *(v10 + 192) = xmmword_23B923D50;
  *(v10 + 208) = 1065353216;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23B91AE90;
  *(v11 + 32) = xmmword_23B923DC0;
  *(v11 + 48) = 0;
  *(v11 + 64) = xmmword_23B923DD0;
  *(v11 + 80) = 0x3F80000000000000;
  *(v11 + 96) = xmmword_23B923DE0;
  *(v11 + 112) = 1065353216;
  *(v11 + 128) = xmmword_23B923DD0;
  *(v11 + 144) = 0x3F80000000000000;
  *(v11 + 160) = xmmword_23B923DF0;
  *(v11 + 176) = _D11;
  *(v11 + 192) = xmmword_23B923DE0;
  *(v11 + 208) = 1065353216;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23B91AE90;
  *(v12 + 32) = xmmword_23B923E00;
  *(v12 + 48) = 0;
  *(v12 + 64) = xmmword_23B923E10;
  *(v12 + 80) = 0x3F80000000000000;
  *(v12 + 96) = xmmword_23B923E20;
  *(v12 + 112) = 1065353216;
  *(v12 + 128) = xmmword_23B923E10;
  *(v12 + 144) = 0x3F80000000000000;
  *(v12 + 160) = xmmword_23B923E30;
  *(v12 + 176) = _D11;
  *(v12 + 192) = xmmword_23B923E20;
  *(v12 + 208) = 1065353216;
  specialized Array.append<A>(contentsOf:)(v8);
  specialized Array.append<A>(contentsOf:)(v9);
  specialized Array.append<A>(contentsOf:)(v10);
  specialized Array.append<A>(contentsOf:)(v11);
  result = specialized Array.append<A>(contentsOf:)(v12);
  v14 = *(v2 + 16);
  if (v14 >> 58)
  {
    __break(1u);
  }

  else
  {
    v15 = [*(v1 + 16) newBufferWithBytes:v2 + 32 length:32 * v14 options:0];

    return v15;
  }

  return result;
}

uint64_t VoxelRenderer.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type VoxelRenderer.Error and conformance VoxelRenderer.Error()
{
  result = lazy protocol witness table cache variable for type VoxelRenderer.Error and conformance VoxelRenderer.Error;
  if (!lazy protocol witness table cache variable for type VoxelRenderer.Error and conformance VoxelRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoxelRenderer.Error and conformance VoxelRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoxelRenderer.Error and conformance VoxelRenderer.Error;
  if (!lazy protocol witness table cache variable for type VoxelRenderer.Error and conformance VoxelRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoxelRenderer.Error and conformance VoxelRenderer.Error);
  }

  return result;
}

uint64_t ViewAdaptor.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  *&v8 = a2;
  *(&v8 + 1) = a3;
  v9 = a4;
  v4 = type metadata accessor for ViewAdaptor.Representation();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v7, v4, WitnessTable);
  v7 = v10;
  v8 = v11;
  v9 = v12;
  static ViewBuilder.buildExpression<A>(_:)(&v7, v4, WitnessTable);
}

uint64_t protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ViewAdaptor<A>.Representation(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(a2 + 16);
  return specialized ViewAdaptor.Representation.makeUIView(context:)(*v2);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ViewAdaptor<A>.Representation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ViewAdaptor<A>.Representation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance ViewAdaptor<A>.Representation()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void specialized KeyframeAnimation.sample(at:)(double a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (a1 < 0.0)
  {
    if (v4)
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 64);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4 && *(v3 - 16 + 48 * v4) < a1)
  {
    v7 = v3 - 16 + 48 * v4;
    v8 = *(v7 + 16);
    v9 = *(v7 + 32);
    return;
  }

  v10 = *(v1 + 24);
  if (v10 >= v4)
  {
    goto LABEL_22;
  }

  v11 = v3 + 32;
  if (*(v3 + 32 + 48 * v10) > a1)
  {
    goto LABEL_11;
  }

  if (v10 + 1 >= v4)
  {
    goto LABEL_26;
  }

  if (*(v11 + 48 * (v10 + 1)) < a1)
  {
LABEL_11:
    v12 = a1;
    v2 = 0;
    v10 = specialized KeyframeAnimation.findLeftIndex(t:)(a1);
    *(v1 + 24) = v10;
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    v4 = *(v3 + 16);
    a1 = v12;
  }

  if (v10 < v4)
  {
    if (v10 + 1 < v4)
    {
      v23 = v11 + 48 * v10;
      v24 = v11 + 48 * (v10 + 1);
      v25 = (a1 - *v23) / (*v24 - *v23);
      specialized static PlatterAnimVar.lerp(a:b:alpha:)(*(v23 + 16), *(v23 + 32), *(v24 + 16), *(v24 + 32), v25);
      return;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  swift_once();
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    v19 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_23B824000, v15, v16, "Unexpected error sampling animation: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x23EEB0B70](v18, -1, -1);
    MEMORY[0x23EEB0B70](v17, -1, -1);
  }

  if (*(v3 + 16))
  {
    v26 = *(v3 + 64);
    v27 = *(v3 + 48);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized KeyframeAnimation.findLeftIndex(t:)(double a1)
{
  v2 = v1;
  if (a1 < 0.0 || (v4 = *(v1 + 16), (v5 = *(v4 + 16)) != 0) && *(v4 + 48 * v5 - 16) < a1)
  {
    if (one-time initialization token for logger != -1)
    {
LABEL_23:
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349312;
      *(v9 + 4) = a1;
      *(v9 + 12) = 2050;
      v10 = *(v2 + 16);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = *(v10 + 48 * v11 - 16);
      }

      else
      {
        v12 = 0x7FF0000000000000;
      }

      *(v9 + 14) = v12;
      v21 = v9;
      _os_log_impl(&dword_23B824000, v7, v8, "Indexing animation out of range: %{public}f not in [0,%{public}f]", v9, 0x16u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI17KeyframeAnimationC5ErrorOyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GMd, &_s19_RealityKit_SwiftUI17KeyframeAnimationC5ErrorOyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GMR);
    lazy protocol witness table accessor for type KeyframeAnimation<PlatterAnimVar>.Error and conformance KeyframeAnimation<A>.Error();
    swift_allocError();
    *v22 = 3;
    return swift_willThrow();
  }

  else
  {
    v13 = 0;
    v14 = v5 - 2;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v15 = v5 - 1;
    v16 = (v4 + 80);
    do
    {
      if (v15 == v13)
      {
        __break(1u);
        goto LABEL_23;
      }

      v17 = v13 + 1;
      v18 = *v16;
      v16 += 6;
    }

    while (v18 < a1 && v13++ < v14);
    if (v14 >= v17 - 1)
    {
      return v17 - 1;
    }

    else
    {
      return v14;
    }
  }
}

uint64_t makeRadialPlatterAnimation(baseColor:pulseColor:duration:)(__n128 a1, __n128 a2, double a3)
{
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
    v6 = *(v5 + 3);
    v8 = v6 >> 1;
  }

  v10 = a3 + a3;
  *(v5 + 2) = v9;
  v11 = &v5[48 * v7];
  v11[2].n128_u64[0] = 0;
  v13 = a2;
  v12 = a1;
  v11[3] = a1;
  v11[4] = a1;
  v14 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 2, 1, v5);
    v13 = a2;
    v12 = a1;
  }

  *(v5 + 2) = v14;
  v15 = &v5[48 * v9];
  v15[2].n128_f64[0] = v10 * 0.125;
  v15[3] = v13;
  v15[4] = v12;
  v16 = *(v5 + 3);
  v17 = v7 + 3;
  if ((v7 + 3) > (v16 >> 1))
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v7 + 3, 1, v5);
    v13 = a2;
    v12 = a1;
  }

  *(v5 + 2) = v17;
  v18 = &v5[48 * v14];
  v18[2].n128_f64[0] = v10 * 0.25;
  v18[3] = v13;
  v18[4] = v13;
  v19 = *(v5 + 3);
  v20 = v7 + 4;
  if ((v7 + 4) > (v19 >> 1))
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v7 + 4, 1, v5);
    v13 = a2;
    v12 = a1;
  }

  *(v5 + 2) = v20;
  v21 = &v5[48 * v17];
  v21[2].n128_f64[0] = v10 * 0.375;
  v21[3] = v12;
  v21[4] = v13;
  v22 = *(v5 + 3);
  if ((v7 + 5) > (v22 >> 1))
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v7 + 5, 1, v5);
    v12 = a1;
  }

  *(v5 + 2) = v7 + 5;
  v23 = &v5[48 * v20];
  v23[2].n128_f64[0] = v10 * 0.5;
  v23[3] = v12;
  v23[4] = v12;
  v24 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI17KeyframeAnimationCyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLVGMd, &_s19_RealityKit_SwiftUI17KeyframeAnimationCyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = 0;
  specialized KeyframeAnimation.throwIfInvalid(_:)(v24);
  if (v3)
  {
  }

  return v25;
}

char *makeTriangleVerticesForCircle(center:radius:fromAngle:angleRange:numSamples:)(char *result, float32x2_t a2, float a3, float a4, float a5)
{
  if (a3 <= 0.0 || result < 3)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = result;
  v9 = 0;
  v10 = result - 1;
  v11 = a5 / (result - 1);
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = __sincosf_stret((v11 * v9) + a4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    }

    ++v9;
    *(v12 + 2) = v15 + 1;
    *&v12[8 * v15 + 32] = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v13.__sinval), LODWORD(v13.__cosval)), a3), a2);
  }

  while (v6 != v9);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v12 + 2);
  if (v16 < v6 || v16 < 2 || (v6 - 2) >= v16)
  {
    goto LABEL_24;
  }

  v17 = result;
  v18 = (v12 + 40);
  do
  {
    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    v21 = v19 >> 1;
    v22 = v20 + 1;
    if (v19 >> 1 <= v20)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
      v19 = *(v17 + 3);
      v21 = v19 >> 1;
    }

    *(v17 + 2) = v22;
    *&v17[8 * v20 + 32] = *&a2;
    v23 = *(v18 - 1);
    v24 = v20 + 2;
    if (v21 < (v20 + 2))
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 2, 1, v17);
    }

    *(v17 + 2) = v24;
    *&v17[8 * v22 + 32] = v23;
    v25 = *v18;
    v26 = *(v17 + 3);
    if ((v20 + 3) > (v26 >> 1))
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v20 + 3, 1, v17);
    }

    *(v17 + 2) = v20 + 3;
    *&v17[8 * v24 + 32] = v25;
    ++v18;
    --v10;
  }

  while (v10);

  return v17;
}

uint64_t one-time initialization function for platterBaseColor()
{
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for platterBaseColor);
  static PlatterRenderer.platterBaseColor = v1;
  return result;
}

void *one-time initialization function for platterRadialAnimation()
{
  if (one-time initialization token for platterBaseColor != -1)
  {
    swift_once();
  }

  v2 = static PlatterRenderer.platterBaseColor;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for platterRadialAnimation);
  result = makeRadialPlatterAnimation(baseColor:pulseColor:duration:)(v2, v0, 0.5);
  static PlatterRenderer.platterRadialAnimation = result;
  return result;
}

void PlatterRenderer.initRenderPipeline()()
{
  PlatterRenderer.initPlatterRenderPipeline()();
  if (!v1)
  {
    v2 = *(v0 + 16);
    v3 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
    [v3 setDepthCompareFunction_];
    [v3 setDepthWriteEnabled_];
    v4 = [v2 newDepthStencilStateWithDescriptor_];

    if (v4)
    {
      v5 = *(v0 + 48);
      *(v0 + 48) = v4;
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void PlatterRenderer.initPlatterRenderPipeline()()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v34[0] = 0;
  v2 = [v1 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v34];
  if (!v2)
  {
    v29 = v34[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type PlatterRenderer.Error and conformance PlatterRenderer.Error();
    swift_allocError();
    swift_willThrow();
LABEL_16:
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = v2;
  v4 = v34[0];
  v5 = MEMORY[0x23EEAF480](0xD000000000000022, 0x800000023B92A300);
  v6 = [v3 newFunctionWithName_];

  v7 = MEMORY[0x23EEAF480](0xD000000000000020, 0x800000023B92A330);
  v8 = [v3 newFunctionWithName_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  [v9 setDepthAttachmentPixelFormat_];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v11 setPixelFormat_];

  v12 = [v9 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v13 setBlendingEnabled_];

  v14 = [v9 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v15 setRgbBlendOperation_];

  v16 = [v9 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v17 setAlphaBlendOperation_];

  v18 = [v9 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v19 setSourceRGBBlendFactor_];

  v20 = [v9 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v21 setSourceAlphaBlendFactor_];

  v22 = [v9 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v23 setDestinationRGBBlendFactor_];

  v24 = [v9 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (v25)
  {
    [v25 setDestinationAlphaBlendFactor_];

    v34[0] = 0;
    v26 = [v1 newRenderPipelineStateWithDescriptor:v9 error:v34];
    v27 = v34[0];
    if (v26)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v28 = v0[4];
      v0[4] = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v27;
      v32 = _convertNSErrorToError(_:)();

      swift_willThrow();
      lazy protocol witness table accessor for type PlatterRenderer.Error and conformance PlatterRenderer.Error();
      swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
}

void *PlatterRenderer.makePlatterVertices()()
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of PlatterRenderer.makePlatterVertices());
  result = makeTriangleVerticesForCircle(center:radius:fromAngle:angleRange:numSamples:)(0x64, v1, 1.0, 0.0, 6.2832);
  v3 = result[2];
  *(v0 + 56) = v3;
  if (v3 >> 58)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = [*(v0 + 16) newBufferWithLength:32 * v3 options:0];
  v6 = *(v0 + 64);
  *(v0 + 64) = v5;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v7 = [v5 contents];
  result = v5;
  v9 = *(v0 + 56);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  if (v9 > v4[2])
  {
    goto LABEL_13;
  }

  v10 = v4 + 4;
  v11 = v7 + 1;
  do
  {
    v12 = *v10++;
    v8.i64[0] = v12;
    v11[-1] = vtrn2q_s32(vzip1q_s32(0, v8), 0);
    v11->i64[0] = v12;
    v11 += 2;
    --v9;
  }

  while (v9);
LABEL_8:
}

uint64_t PlatterRenderer.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];
  swift_unknownObjectRelease();
  v5 = v0[8];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void CaptureCircleRenderer.render(into:viewportSize:desc:)(void *a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 384) = a3;
  *(v4 + 392) = a4;
  CaptureCircleRenderer.renderCaptureBinTriangles(into:viewportSize:desc:)(a1, a2, a3, a4);
  v9 = *(v4 + 376);
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  memcpy(__dst, (v4 + 80), 0x121uLL);
  if (_s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOg(__dst) == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  memcpy(v21, __dst, sizeof(v21));

  specialized static PlatterRenderer.createPlatterUniforms(from:)(v21, __src);
  v10 = v9[5];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9[5];
  v12 = [swift_unknownObjectRetain() contents];
  v13 = v10;
  memcpy(v12, __src, 0x160uLL);
  v14 = [a1 renderCommandEncoderWithDescriptor_];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v17[0] = 0;
  v17[1] = 0;
  *&v17[2] = a3;
  *&v17[3] = a4;
  v18 = xmmword_23B91C510;
  [v14 setViewport_];
  v16 = v9[6];
  swift_unknownObjectRetain();
  [v15 setDepthStencilState_];
  if (v9[4])
  {
    [v15 setRenderPipelineState_];
    [v15 setVertexBuffer:v9[5] offset:0 atIndex:0];
    [v15 setVertexBuffer:v9[8] offset:0 atIndex:1];
    [v15 setFragmentBuffer:v9[5] offset:0 atIndex:0];
    [v15 drawPrimitives:3 vertexStart:0 vertexCount:v9[7]];
    [v15 endEncoding];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

LABEL_11:
  __break(1u);
}

void CaptureCircleRenderer.initRenderPipelines()()
{
  v2 = v0;
  CaptureCircleRenderer.initCaptureBinRenderPipeline()();
  if (!v1)
  {
    v3 = v0[4];
    v4 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
    [v4 setDepthCompareFunction_];
    [v4 setDepthWriteEnabled_];
    v5 = [v3 newDepthStencilStateWithDescriptor_];

    if (v5)
    {
      v6 = v2[7];
      v2[7] = v5;
      swift_unknownObjectRelease();
      v7 = v2[5];
      type metadata accessor for PlatterRenderer();
      v8 = swift_allocObject();
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0;
      *(v8 + 16) = v3;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      PlatterRenderer.initRenderPipeline()();
      if (!*(v8 + 64))
      {
        PlatterRenderer.makePlatterVertices()();
      }

      v9 = [v3 newBufferWithLength:352 options:0];
      v10 = *(v8 + 40);
      *(v8 + 40) = v9;
      swift_unknownObjectRelease();
      v11 = v2[47];
      v2[47] = v8;
    }

    else
    {
      __break(1u);
    }
  }
}

void CaptureCircleRenderer.initCaptureBinRenderPipeline()()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[4];
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v34[0] = 0;
  v2 = [v1 newDefaultLibraryWithBundle:static CaptureCircleRenderer.bundle error:v34];
  if (!v2)
  {
    v29 = v34[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error();
    swift_allocError();
    swift_willThrow();
LABEL_16:
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = v2;
  v4 = v34[0];
  v5 = MEMORY[0x23EEAF480](0xD000000000000032, 0x800000023B92A290);
  v6 = [v3 newFunctionWithName_];

  v7 = MEMORY[0x23EEAF480](0xD000000000000026, 0x800000023B92A2D0);
  v8 = [v3 newFunctionWithName_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  [v9 setDepthAttachmentPixelFormat_];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v11 setPixelFormat_];

  v12 = [v9 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v13 setBlendingEnabled_];

  v14 = [v9 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v15 setRgbBlendOperation_];

  v16 = [v9 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v17 setAlphaBlendOperation_];

  v18 = [v9 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v19 setSourceRGBBlendFactor_];

  v20 = [v9 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v21 setSourceAlphaBlendFactor_];

  v22 = [v9 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v23 setDestinationRGBBlendFactor_];

  v24 = [v9 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (v25)
  {
    [v25 setDestinationAlphaBlendFactor_];

    v34[0] = 0;
    v26 = [v1 newRenderPipelineStateWithDescriptor:v9 error:v34];
    v27 = v34[0];
    if (v26)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v28 = v0[6];
      v0[6] = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v27;
      v32 = _convertNSErrorToError(_:)();

      swift_willThrow();
      lazy protocol witness table accessor for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error();
      swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
}

uint64_t CaptureCircleRenderer.makeUniforms()@<X0>(uint64_t a1@<X8>)
{
  memset(__src, 0, sizeof(__src));
  memcpy(__dst, (v1 + 80), 0x121uLL);
  result = _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOg(__dst);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  memcpy(v26, __dst, sizeof(v26));
  specialized static PlatterRenderer.createPlatterUniforms(from:)(v26, __src);
  v8 = *(v1 + 64);
  if (v8)
  {
    v9 = *(v8 + 32);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v9))
    {
      v3 = *(v8 + 40);
      goto LABEL_7;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = 0.5;
  LODWORD(v9) = 24;
LABEL_7:
  memcpy(v24, (v1 + 80), 0x121uLL);
  result = _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOg(v24);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v5 = *&v24[35];
  if (!v8)
  {
    LODWORD(v2) = 0;
    v4 = 0.0;
LABEL_13:
    if (one-time initialization token for nearestNeighborThreshRads == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  v2 = *(v8 + 48);
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (!HIDWORD(v2))
  {
    v4 = *(v8 + 56);
    goto LABEL_13;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_14:
  v10 = v5;
  v11 = static CaptureCircle.nearestNeighborThreshRads;
  v12 = *(v1 + 456);
  v13 = *(v1 + 448);
  LOBYTE(v14) = *(v1 + 460);
  v15 = *(v1 + 464);
  v16 = *(v1 + 468);
  v17 = *(v1 + 472);
  v18 = *(v1 + 64);
  v23 = *(v1 + 432);
  if (v18 && (*(v18 + 248) & 1) == 0)
  {
    v14 = *(v18 + 232);
    v15 = *(v18 + 236);
    v16 = *(v18 + 240);
    v19 = (v10 - v15) / v16;
    if (v19 <= 1.0)
    {
      v20 = (v10 - v15) / v16;
    }

    else
    {
      v20 = 1.0;
    }

    v21 = 1.0 - v20;
    if (v19 > 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1.0;
    }

    v17 = 1.0 - (v22 * (v22 * v22));
  }

  result = memcpy(a1, __src, 0x160uLL);
  *(a1 + 352) = 0x40000000;
  *(a1 + 356) = v3;
  *(a1 + 360) = v10;
  *(a1 + 364) = v9;
  *(a1 + 368) = v2;
  *(a1 + 372) = v4;
  *(a1 + 376) = v11;
  *(a1 + 380) = v12;
  *(a1 + 384) = v23;
  *(a1 + 400) = v13;
  *(a1 + 408) = v14;
  *(a1 + 409) = 0;
  *(a1 + 411) = 0;
  *(a1 + 412) = v15;
  *(a1 + 416) = v16;
  *(a1 + 420) = v17;
  *(a1 + 424) = 0;
  return result;
}

id CaptureCircleRenderer.renderCaptureBinTriangles(into:viewportSize:desc:)(id result, uint64_t a2, double a3, double a4)
{
  if (v4[8])
  {
    result = [result renderCommandEncoderWithDescriptor_];
    if (result)
    {
      v7 = result;
      v8[0] = 0;
      v8[1] = 0;
      *&v8[2] = a3;
      *&v8[3] = a4;
      v9 = xmmword_23B91C510;
      [result setViewport_];
      result = [v7 setDepthStencilState_];
      if (v4[6])
      {
        [v7 setRenderPipelineState_];
        [v7 setVertexBuffer:v4[51] offset:0 atIndex:0];
        [v7 setVertexBuffer:v4[50] offset:0 atIndex:1];
        [v7 setVertexBuffer:v4[53] offset:0 atIndex:2];
        [v7 setFragmentBuffer:v4[51] offset:0 atIndex:0];
        [v7 setFragmentBuffer:v4[50] offset:0 atIndex:1];
        [v7 drawPrimitives:3 vertexStart:0 vertexCount:v4[52]];
        [v7 endEncoding];
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void CaptureCircleRenderer.updateCaptureBins()()
{
  v1 = v0[8];
  if (!v1)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_5:
      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, logger);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, oslog, v5, "No capturecircle!", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      return;
    }

LABEL_46:
    swift_once();
    goto LABEL_5;
  }

  v2 = v0[51];
  if (v2)
  {
    v3 = v0[8];

    goto LABEL_12;
  }

  v7 = *(v1 + 32);
  if ((v7 - 0x400000000000000) >> 59 != 31)
  {
    __break(1u);
    goto LABEL_48;
  }

  v8 = 32 * v7;
  v9 = v0[4];
  v10 = v0[8];

  v11 = [v9 newBufferWithLength:v8 options:0];
  v12 = v0[51];
  v0[51] = v11;
  swift_unknownObjectRelease();
  v2 = v0[51];
  if (!v2)
  {
LABEL_48:
    __break(1u);
    return;
  }

LABEL_12:
  v13 = [swift_unknownObjectRetain() contents];
  v14 = v2;
  v15 = *(v1 + 32);
  if (v15 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v15)
  {
    swift_beginAccess();
    v16 = 0;
    v17 = v13 + 12;
    v18 = v15;
    while (v16 != 0x100000000)
    {
      *(v17 - 3) = v16;
      if (v16 >= v18)
      {
        goto LABEL_39;
      }

      v19 = *(v1 + 72);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v34 = *(v1 + 72);

        v20 = MEMORY[0x23EEAFC40](v16, v19);
      }

      else
      {
        if (v16 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v20 = *(v19 + 8 * v16 + 32);
      }

      v21 = *(v20 + 40);

      v22 = v21;
      *(v17 - 1) = v22;
      if (v16 >= *(v1 + 32))
      {
        goto LABEL_40;
      }

      v23 = *(v1 + 72);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v35 = *(v1 + 72);

        v24 = MEMORY[0x23EEAFC40](v16, v23);
      }

      else
      {
        if (v16 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v24 = *(v23 + 8 * v16 + 32);
      }

      v25 = *(v24 + 36);

      *(v17 - 2) = v25;
      if (v16 >= *(v1 + 32))
      {
        goto LABEL_42;
      }

      v26 = *(v1 + 72);
      if ((v26 & 0xC000000000000001) != 0)
      {
        v36 = *(v1 + 72);

        v27 = MEMORY[0x23EEAFC40](v16, v26);
      }

      else
      {
        if (v16 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v27 = *(v26 + 8 * v16 + 32);
      }

      v28 = v16 + 1;
      v29 = *(v27 + 92);
      v30 = *(v27 + 32);

      v31 = 1.0 - (v29 / v30);
      if (v30 < v29)
      {
        v31 = 0.0;
      }

      *v17 = v31;
      v18 = *(v1 + 32);
      v32 = __sincosf_stret(((6.2832 / v18) * v16) + ((6.2832 / v18) * 0.5));
      *&v33 = -v32.__sinval;
      HIDWORD(v33) = LODWORD(v32.__cosval);
      *(v17 + 4) = __PAIR64__(LODWORD(v32.__sinval), LODWORD(v32.__cosval));
      *(v17 + 12) = v33;
      v17 += 32;
      ++v16;
      if (v15 == v28)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_31:
}

void *CaptureCircleRenderer.makeClonedBinVertices(binVerts:modelScale:)(void *result, float a2)
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = result;
    v5 = *(v3 + 32);
    v6 = result[2];
    v7 = v6 * v5;
    if ((v6 * v5) >> 64 != (v6 * v5) >> 63)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    *(v2 + 416) = v7;
    if ((v7 - 0x400000000000000) >> 59 != 31)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = [*(v2 + 32) newBufferWithLength:32 * v7 options:0];
    v9 = *(v2 + 424);
    *(v2 + 424) = v8;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    if (!v8)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v10 = [v8 contents];
    result = v8;
    if (v5 < 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v5)
    {
      v12 = 0;
      while (1)
      {
        v13 = v12 * v6;
        if ((v12 * v6) >> 64 != (v12 * v6) >> 63)
        {
          break;
        }

        if (v6)
        {
          v14 = HIDWORD(v12);
          if (HIDWORD(v12))
          {
            goto LABEL_18;
          }

          while (1)
          {
            v15 = v13 + v14;
            if (__OFADD__(v13, v14))
            {
              break;
            }

            v11.i64[0] = v4[v14++ + 4];
            v16 = &v10[32 * v15];
            v16[1].i32[0] = v12;
            *v11.i8 = vmul_n_f32(*v11.i8, a2);
            v11 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v11, 0)), 0);
            *v16 = v11;
            if (v6 == v14)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:
        if (++v12 == v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  return result;
}

char *CaptureCircleRenderer.makeSingleBinVerticesCapsule(width:)(float a1)
{
  v2 = v1;
  v4 = specialized CaptureCircleRenderer.makeSingleBinVerticesQuad(width:)();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureCircleRenderer.makeSingleBinVerticesCapsule(width:));
  v6 = makeTriangleVerticesForCircle(center:radius:fromAngle:angleRange:numSamples:)(0x14, v5, a1, 1.5708, -3.1416);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CaptureCircleRenderer.makeSingleBinVerticesCapsule(width:));
  result = makeTriangleVerticesForCircle(center:radius:fromAngle:angleRange:numSamples:)(0x14, v7, a1, 1.5708, 3.1416);
  v2[110] = 0;
  v9 = *(v6 + 2);
  if (HIDWORD(v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    goto LABEL_15;
  }

  v2[111] = v11;
  v12 = v11 + 1;
  v2[112] = v12;
  v13 = *(result + 2);
  if (HIDWORD(v13))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = __CFADD__(v12, v13);
  v14 = v12 + v13;
  if (v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v14 != 0;
  v15 = v14 - 1;
  if (!v10)
  {
    goto LABEL_18;
  }

  v2[113] = v15;
  v16 = v15 + 1;
  v2[108] = v16;
  v17 = *(v4 + 16);
  if (HIDWORD(v17))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = __CFADD__(v16, v17);
  v18 = v16 + v17;
  if (v10)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v18 != 0;
  v19 = v18 - 1;
  if (!v10)
  {
    goto LABEL_21;
  }

  v2[109] = v19;
  specialized Array.append<A>(contentsOf:)(result);
  specialized Array.append<A>(contentsOf:)(v4);
  result = v6;
  v20 = *(v6 + 2);
  if (!HIDWORD(v20))
  {
    v2[114] = v20;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *CaptureCircleRenderer.deinit()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  swift_unknownObjectRelease();
  v3 = v0[7];
  swift_unknownObjectRelease();
  v4 = v0[8];

  v5 = v0[47];

  v6 = v0[50];
  swift_unknownObjectRelease();
  v7 = v0[51];
  swift_unknownObjectRelease();
  v8 = v0[53];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CaptureCircleRenderer.__deallocating_deinit()
{
  CaptureCircleRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CommonCircleRenderState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 288))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CommonCircleRenderState(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *result = (a2 - 1);
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

  *(result + 288) = v3;
  return result;
}

uint64_t specialized KeyframeAnimation.throwIfInvalid(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 2)
  {
    v2 = 0;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI17KeyframeAnimationC5ErrorOyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GMd, &_s19_RealityKit_SwiftUI17KeyframeAnimationC5ErrorOyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GMR);
    lazy protocol witness table accessor for type KeyframeAnimation<PlatterAnimVar>.Error and conformance KeyframeAnimation<A>.Error();
    swift_allocError();
    *v7 = v2;
    return swift_willThrow();
  }

  v3 = *(result + 32);
  if (v3 != 0.0)
  {
    v2 = 1;
    goto LABEL_9;
  }

  v4 = (result + 80);
  while (--v1)
  {
    v5 = *v4;
    v4 += 6;
    v6 = v3 < v5;
    v3 = v5;
    if (!v6)
    {
      v2 = 2;
      goto LABEL_9;
    }
  }

  return result;
}

double specialized static PlatterRenderer.shotPulseDuration.getter()
{
  if (one-time initialization token for platterRadialAnimation != -1)
  {
    swift_once();
  }

  if (!static PlatterRenderer.platterRadialAnimation)
  {
    return 0.5;
  }

  v0 = *(static PlatterRenderer.platterRadialAnimation + 2);
  v1 = *(v0 + 16);
  if (v1)
  {
    return *(v0 + 48 * v1 - 16);
  }

  else
  {
    return INFINITY;
  }
}

float specialized static PlatterRenderer.computeScreenConstraintScale(from:)(simd_float4x4 *a1)
{
  v2 = a1[3].columns[0].f32[0];
  v3 = a1[3].columns[1].f32[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v20 = atanf(1.0 / v2);
  v5 = atanf(1.0 / v3);
  *(inited + 32) = vadd_f32(__PAIR64__(LODWORD(v5), LODWORD(v20)), __PAIR64__(LODWORD(v5), LODWORD(v20)));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v21 = v6;
  swift_setDeallocating();
  v19 = __invert_f4(a1[2]);
  v14 = a1[1].columns[0];
  v15 = a1[1].columns[1];
  v16 = a1[1].columns[2];
  v17 = a1[1].columns[3];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static PlatterRenderer.computeScreenConstraintScale(from:));
  v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v7.f32[0]), v15, *v7.f32, 1), v16, v7, 2), v17, v7, 3);
  v8 = a1->columns[0];
  v9 = a1->columns[1];
  v10 = a1->columns[2];
  v11 = a1->columns[3];
  Transform.init(matrix:)();
  return a1[4].columns[0].f32[0] * (tanf(0.5 * v21) * fabsf(COERCE_FLOAT(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(*&v19, *&v18), *(&v19 + 16), *(&v18 + 4) - vmuls_lane_f32(0.5, v12, 1)), *(&v19 + 32), v18, 2), *(&v19 + 48), v18, 3).i32[2])));
}

float specialized static PlatterRenderer.makeDepthHazeData(from:)(float32x4_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  Transform.init(matrix:)();
  v29 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  *(inited + 32) = vmul_f32(vzip1_s32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0x3F0000003F000000);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v9 = v8;
  swift_setDeallocating();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static PlatterRenderer.makeDepthHazeData(from:));
  *v28 = a1[4];
  *&v28[16] = a1[5];
  *&v28[32] = a1[6];
  *&v28[48] = a1[7];
  v21 = v10;
  v26 = a1[8];
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v28, v10.f32[0]), *&v28[16], *v10.f32, 1), *&v28[32], v10, 2), *&v28[48], v10, 3);
  v24 = a1[10];
  v25 = a1[9];
  v22 = a1[11];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static PlatterRenderer.makeDepthHazeData(from:));
  v12 = vsubq_f32(v27, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v11.f32[0]), v25, *v11.f32, 1), v24, v11, 2), v22, v11, 3));
  v13 = vmulq_f32(v12, v12);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  v19 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_23B91A6E0;
  *(v15 + 32) = v19.i64[0];
  *(v15 + 40) = v19.i32[2];
  *(v15 + 44) = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v15);
  v20 = v16;
  swift_setDeallocating();
  if (one-time initialization token for depthHazeFloor != -1)
  {
    swift_once();
  }

  if (one-time initialization token for depthHazeDistancePower != -1)
  {
    swift_once();
  }

  v17 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
  v30.columns[1] = v25;
  v30.columns[0] = v26;
  v30.columns[3] = v22;
  v30.columns[2] = v24;
  v23 = __invert_f4(v30);
  v31 = __invert_f4(*v28);
  v31.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31.columns[0], v20.f32[0]), v31.columns[1], *v20.f32, 1), v31.columns[2], v20, 2), v31.columns[3], v20, 3);
  v31.columns[2] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v28, v21.f32[0] - (v17 * v31.columns[0].f32[0])), *&v28[16], v21.f32[1] - vmuls_lane_f32(v17, *v31.columns[0].f32, 1)), *&v28[32], v21.f32[2] - vmuls_lane_f32(v17, v31.columns[0], 2)), *&v28[48], v21.f32[3] - vmuls_lane_f32(v17, v31.columns[0], 3));
  return vmuls_lane_f32(0.5, vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23.columns[0], v27.f32[0]), v23.columns[1], *v27.f32, 1), v23.columns[2], v27, 2), v23.columns[3], v27, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23.columns[0], v31.columns[2].f32[0]), v23.columns[1], *v31.columns[2].f32, 1), v23.columns[2], v31.columns[2], 2), v23.columns[3], v31.columns[2], 3)), 2);
}

float specialized static PlatterRenderer.makeShotAnimationState(from:)(uint64_t a1)
{
  if (one-time initialization token for platterBaseColor != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = *(a1 + 264);
  if (one-time initialization token for platterRadialAnimation != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v2 = v1;
  if (static PlatterRenderer.platterRadialAnimation)
  {
    v3 = *(static PlatterRenderer.platterRadialAnimation + 2);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v3 + 48 * v4 - 16);
    }

    else
    {
      v5 = INFINITY;
    }

    v6 = *(a1 + 280) - v2;
    if (v6 <= 0.0)
    {
      v6 = 0.0;
    }

    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    specialized KeyframeAnimation.sample(at:)(v7);
  }

  return v2;
}

void specialized static PlatterRenderer.createPlatterUniforms(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *(a1 + 64);
  v35 = *(a1 + 80);
  v36 = *(a1 + 96);
  v37 = *(a1 + 112);
  v38 = __invert_f4(*(a1 + 128));
  v33 = v38.columns[0];
  v31 = v38.columns[2];
  v32 = v38.columns[1];
  v39 = *(a1 + 192);
  v29 = v39.columns[0];
  v30 = v39.columns[3];
  v27 = v39.columns[2];
  v28 = v39.columns[1];
  v26 = v39.columns[3];
  v40 = __invert_f4(v39);
  v24 = v40.columns[1];
  v25 = v40.columns[0];
  v22 = v40.columns[3];
  v23 = v40.columns[2];
  v4 = specialized static PlatterRenderer.computeScreenConstraintScale(from:)(a1);
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  Transform.init(matrix:)();
  v10 = vmuls_lane_f32(-0.5, v9, 1);
  v11 = specialized static PlatterRenderer.makeDepthHazeData(from:)(a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = specialized static PlatterRenderer.makeShotAnimationState(from:)(a1);
  v19 = *(a1 + 272);
  *a2 = v34;
  *(a2 + 16) = v35;
  *(a2 + 32) = v36;
  *(a2 + 48) = v37;
  *(a2 + 64) = v33;
  *(a2 + 80) = v32;
  *(a2 + 96) = v31;
  *(a2 + 112) = v30;
  *(a2 + 128) = v29;
  *(a2 + 144) = v28;
  *(a2 + 160) = v27;
  *(a2 + 176) = v26;
  *(a2 + 192) = v25;
  *(a2 + 208) = v24;
  *(a2 + 224) = v23;
  *(a2 + 240) = v22;
  *(a2 + 256) = v4;
  *(a2 + 260) = v10;
  *(a2 + 264) = v11;
  *(a2 + 268) = v13;
  *(a2 + 272) = v15;
  *(a2 + 276) = v17;
  *(a2 + 280) = 0;
  *(a2 + 288) = v18;
  *(a2 + 300) = 0;
  *(a2 + 292) = 0;
  *(a2 + 304) = v20;
  *(a2 + 320) = v21;
  *(a2 + 336) = v19;
  *(a2 + 348) = 0;
  *(a2 + 340) = 0;
}

uint64_t _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOg(uint64_t a1)
{
  if (*(a1 + 288))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type KeyframeAnimation<PlatterAnimVar>.Error and conformance KeyframeAnimation<A>.Error()
{
  result = lazy protocol witness table cache variable for type KeyframeAnimation<PlatterAnimVar>.Error and conformance KeyframeAnimation<A>.Error;
  if (!lazy protocol witness table cache variable for type KeyframeAnimation<PlatterAnimVar>.Error and conformance KeyframeAnimation<A>.Error)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19_RealityKit_SwiftUI17KeyframeAnimationC5ErrorOyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GMd, &_s19_RealityKit_SwiftUI17KeyframeAnimationC5ErrorOyAA14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyframeAnimation<PlatterAnimVar>.Error and conformance KeyframeAnimation<A>.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error()
{
  result = lazy protocol witness table cache variable for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error;
  if (!lazy protocol witness table cache variable for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error;
  if (!lazy protocol witness table cache variable for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureCircleRenderer.Error and conformance CaptureCircleRenderer.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatterRenderer.Error and conformance PlatterRenderer.Error()
{
  result = lazy protocol witness table cache variable for type PlatterRenderer.Error and conformance PlatterRenderer.Error;
  if (!lazy protocol witness table cache variable for type PlatterRenderer.Error and conformance PlatterRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterRenderer.Error and conformance PlatterRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatterRenderer.Error and conformance PlatterRenderer.Error;
  if (!lazy protocol witness table cache variable for type PlatterRenderer.Error and conformance PlatterRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterRenderer.Error and conformance PlatterRenderer.Error);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E195718 == -1)
  {
    if (qword_27E195720)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27E195720)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E195710 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27E195704 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E195704 >= a3)
      {
        result = dword_27E195708 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27E195720;
  if (qword_27E195720)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E195720 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEB0420](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E195704, &dword_27E195708);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static MeshResource.generateBox(size:cornerRadius:)()
{
  return MEMORY[0x282128D10]();
}

{
  return MEMORY[0x282128D18]();
}

uint64_t Entity.Observable.Components.subscript.getter()
{
  return MEMORY[0x282129A80]();
}

{
  return MEMORY[0x282129A90]();
}

uint64_t Entity.Observable.Components.subscript.setter()
{
  return MEMORY[0x282129A88]();
}

{
  return MEMORY[0x282129A98]();
}

uint64_t Entity.ComponentSet.subscript.getter()
{
  return MEMORY[0x282129C30]();
}

{
  return MEMORY[0x282129C70]();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = MEMORY[0x28211E9E8](a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}