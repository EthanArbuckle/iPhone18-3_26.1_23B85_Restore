uint64_t __RKEntityInteractionsComponent.Registration.deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKEntityInteractionsComponent.Registration.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

uint64_t static __RKEntityInteractionsComponent.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKEntityInteractionsComponent.registration = a1;
}

uint64_t key path setter for static __RKEntityInteractionsComponent.registration : __RKEntityInteractionsComponent.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKEntityInteractionsComponent.registration = v1;
}

uint64_t Entity.__interactions.getter()
{
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(static __RKEntityInteractionsComponent.registration + 3);
  v2 = *(v0 + 16);
  if (!REEntityGetCustomComponent())
  {
    return MEMORY[0x1E69E7CC0];
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(Object + 16))
  {
  }

  return __RKEntityInteractionsComponent.decodedJSON()();
}

uint64_t Entity.__interactions.setter(uint64_t a1)
{
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration)
  {
  }

  v3 = *(static __RKEntityInteractionsComponent.registration + 3);
  if (*(a1 + 16))
  {
    v4 = *(v1 + 16);
    if (REEntityGetCustomComponent() || (v5 = *(v1 + 16), REEntityAddComponentByClass()))
    {
      if (RECustomComponentGetObject())
      {
        return __RKEntityInteractionsComponent.specifications.setter(a1);
      }
    }
  }

  v7 = *(v1 + 16);
  result = REEntityGetCustomComponent();
  if (result)
  {
    v8 = *(v1 + 16);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

void (*Entity.__interactions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration && (v5 = *(static __RKEntityInteractionsComponent.registration + 3), v6 = *(v1 + 16), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
  {
    if (*(Object + 16))
    {
    }

    else
    {
      v8 = __RKEntityInteractionsComponent.decodedJSON()();
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 24) = v8;
  return Entity.__interactions.modify;
}

void Entity.__interactions.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v2[4];
    v5 = *(*a1 + 24);

    Entity.__interactions.setter(v6);
    v7 = v2[3];
LABEL_9:

    goto LABEL_10;
  }

  if (!static __RKEntityInteractionsComponent.registration)
  {
    goto LABEL_9;
  }

  v8 = *(static __RKEntityInteractionsComponent.registration + 3);
  v9 = v2[4];
  if (*(v3 + 16))
  {
    v10 = *(v9 + 16);
    if (REEntityGetCustomComponent() || (v11 = *(v9 + 16), REEntityAddComponentByClass()))
    {
      if (RECustomComponentGetObject())
      {
        __RKEntityInteractionsComponent.specifications.setter(v3);
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v12 = *(*a1 + 24);

  v13 = *(v9 + 16);
  if (REEntityGetCustomComponent())
  {
    v14 = *(v9 + 16);
    REEntityRemoveComponentByClass();
  }

LABEL_10:

  free(v2);
}

uint64_t getEnumTagSinglePayload for __RKEntityInteractionsComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityInteractionsComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionsComponent.Registration.RegistrationError and conformance __RKEntityInteractionsComponent.Registration.RegistrationError);
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized __RKEntityInteractionsComponent.willRemove(componentRef:)()
{
  v1 = v0;
  v21 = 91;
  v22 = 0xE100000000000000;
  if (swift_weakLoadStrong())
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v6 = v21;
  v5 = v22;
  v7 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v7, &v21);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v21 = v6;
    v22 = v5;
    v14 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v14, &v21);
LABEL_27:
    v21 = v6;
    v22 = v5;
    v20 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v20, &v21);

    return;
  }

  v9 = *(v0 + 24);
  if (!v9)
  {

LABEL_26:
    swift_weakAssign();
    goto LABEL_27;
  }

  v10 = *(Strong + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_22;
  }

  v12 = SceneNullable;
  v13 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v13)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v12);
  }

  Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
LABEL_22:
    v21 = v6;
    v22 = v5;
    v19 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v19, &v21);

LABEL_25:
    *(v1 + 24) = 0;
    goto LABEL_26;
  }

  v21 = v6;
  v22 = v5;
  v15 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v15, &v21);
  if (!(v9 >> 62))
  {
    v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_24:

    swift_unknownObjectRelease();

    goto LABEL_25;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1C68F41F0](i, v9);
      }

      else
      {
        v18 = *(v9 + 8 * i + 32);
      }

      __RKEntityInteractionManager.__removeInteraction(_:)(v18);
    }

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t specialized __RKEntityInteractionsComponent.didActivate(componentRef:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v101 - v8;
  Strong = swift_weakLoadStrong();
  v112 = 91;
  v113 = 0xE100000000000000;
  if (Strong)
  {
    v110 = 0;
    v111 = 0xE000000000000000;
    v108 = Strong;
    _print_unlocked<A, B>(_:_:)();
    v11 = v110;
    v12 = v111;
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v13 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v13);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v15 = v112;
  v14 = v113;
  v16 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v16, &v112);
  v17 = swift_weakLoadStrong();
  if (!v17)
  {
    v112 = v15;
    v113 = v14;
    v26 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v26, &v112);
LABEL_28:
    v112 = v15;
    v113 = v14;
    v45 = static os_log_type_t.debug.getter();
    v46 = &v112;
LABEL_29:
    specialized InteractionsLogger.log(_:_:)(v45, v46);
  }

  v18 = v17;
  v112 = v15;
  v113 = v14;
  v19 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v19, &v112);
  v20 = *(v0 + 40);
  if (v20 != 2 && (v20 & 1) != 0)
  {
    v112 = v15;
    v113 = v14;
    v21 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v21, &v112);
LABEL_27:

    goto LABEL_28;
  }

  v22 = *(v18 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
LABEL_26:
    v112 = v15;
    v113 = v14;
    v44 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v44, &v112);
    goto LABEL_27;
  }

  v24 = SceneNullable;
  v25 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v25)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v24);
  }

  v27 = Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v29 = v28;
  swift_beginAccess();
  if (*(v29 + 26) != 1)
  {
    v110 = v15;
    v111 = v14;
    v48 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v48, &v110, partial apply for implicit closure #7 in __RKEntityInteractionsComponent.didActivate(componentRef:), v29);
    swift_unknownObjectRelease();

    goto LABEL_80;
  }

  v101 = v29;
  v102 = v9;
  v106 = v27;
  v103 = v3;
  v104 = v2;
  swift_retain_n();
  v30 = *(v18 + 16);
  REAnchorComponentGetComponentType();
  isUniquelyReferenced_nonNull_native = v18;
  if (REEntityGetComponentByClass())
  {
LABEL_16:
    v32 = *(isUniquelyReferenced_nonNull_native + 16);

    REAnchorComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();

    if (ComponentByClass)
    {
      v110 = v15;
      v111 = v14;
      v34 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v34, &v110);
      *(v1 + 40) = 1;
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v36 = (v35 + 16);
      v37 = *(v18 + 16);

      ChildCount = REEntityGetChildCount();
      if (ChildCount < 0)
      {
LABEL_92:
        __break(1u);
      }

      else
      {
        v39 = ChildCount;
        if (!ChildCount)
        {

LABEL_82:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_1C1898160;
          *(v89 + 32) = v18;
          *v36 = v89;

          goto LABEL_83;
        }

        v40 = 0;
        do
        {
          v41 = *(v18 + 16);
          if (v40 >= REEntityGetChildCount())
          {
            __break(1u);
            goto LABEL_89;
          }

          ++v40;
        }

        while (v39 != v40);

        v110 = v18;

        v42 = specialized Entity.ChildCollection.filter(recursive:_:)(1, &v110);

        *v36 = v42;

        if (!v42)
        {
          goto LABEL_82;
        }

        MEMORY[0x1C68F3650](v43);
        if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_24:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_83:
          v90 = MEMORY[0x1C68F3280](0x747365544358, 0xE600000000000000);
          v91 = NSClassFromString(v90);

          if (v91 && (v92 = v101, swift_beginAccess(), (*(v92 + 25) & 1) != 0))
          {

            swift_unknownObjectRelease();
          }

          else
          {
            v93 = specialized static __ServiceLocator.shared.getter();
            swift_beginAccess();
            v94 = *(v93 + 24);
            swift_unownedRetainStrong();
            static DispatchTime.now()();
            v95 = v35;
            v96 = v102;
            + infix(_:_:)();
            v97 = v104;
            v105 = *(v103 + 8);
            v105(v6, v104);
            v98 = swift_allocObject();
            v107 = isUniquelyReferenced_nonNull_native;
            v99 = v98;
            swift_weakInit();

            v100 = swift_allocObject();
            *(v100 + 16) = v99;
            *(v100 + 24) = v95;

            __Engine.asyncAfterOnEngineQueue(deadline:_:)(v96, partial apply for closure #2 in __RKEntityInteractionsComponent.didActivate(componentRef:), v100);

            swift_unknownObjectRelease();

            v105(v96, v97);
          }

          v109[0] = v15;
          v109[1] = v14;
          v45 = static os_log_type_t.debug.getter();
          v46 = v109;
          goto LABEL_29;
        }
      }

      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_24;
    }

LABEL_79:

    v110 = v15;
    v111 = v14;
    v88 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v88, &v110);

    swift_unknownObjectRelease();
LABEL_80:
    v110 = v15;
    v111 = v14;
    v45 = static os_log_type_t.debug.getter();
    v46 = &v110;
    goto LABEL_29;
  }

  isUniquelyReferenced_nonNull_native = v18;
  v107 = v6;
  v105 = v1;
  while (1)
  {
    v50 = *(isUniquelyReferenced_nonNull_native + 16);
    Parent = REEntityGetParent();
    if (!Parent)
    {

      goto LABEL_79;
    }

    v35 = Parent;
    if (!REEntityGetSwiftObject())
    {
      break;
    }

    type metadata accessor for Entity();
    isUniquelyReferenced_nonNull_native = swift_dynamicCastClassUnconditional();
LABEL_33:
    v49 = *(isUniquelyReferenced_nonNull_native + 16);
    REAnchorComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      goto LABEL_16;
    }
  }

  if (REEntityIsBeingDestroyed())
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v52 = static SceneManager.customComponentTypeObjectIdToHandles;
  if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v54 & 1) != 0))
  {
    v55 = *(*(v52 + 56) + 8 * v53);
  }

  else
  {
    v56 = v15;
    v15 = isUniquelyReferenced_nonNull_native;
    swift_endAccess();
    v6 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = static SceneManager.customComponentTypeObjectIdToHandles;
    v108 = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
    v60 = *(v57 + 16);
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      goto LABEL_90;
    }

    v63 = v58;
    if (*(v57 + 24) >= v62)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
      v64 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_95;
      }

      v59 = v64;
    }

    isUniquelyReferenced_nonNull_native = v15;
    v66 = v108;
    v15 = v56;
    if (v63)
    {
      *(*(v108 + 56) + 8 * v59) = v6;
      v1 = v105;
    }

    else
    {
      *(v108 + 8 * (v59 >> 6) + 64) |= 1 << v59;
      *(v66[6] + 8 * v59) = &type metadata for __EntityInfoComponent;
      *(v66[7] + 8 * v59) = v6;
      v67 = v66[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      v1 = v105;
      if (v68)
      {
        goto LABEL_91;
      }

      v66[2] = v69;
    }

    static SceneManager.customComponentTypeObjectIdToHandles = v66;
  }

  swift_endAccess();
  CustomComponent = REEntityGetCustomComponent();
  v6 = v107;
  if (!CustomComponent)
  {
    goto LABEL_75;
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
    goto LABEL_75;
  }

  v72 = *Object;
  if (*(Object + 8))
  {
    v73 = 1;
  }

  else
  {
    v73 = v72 == 0;
  }

  if (v73)
  {
    v74 = *(Object + 8);
  }

  else
  {
    v75 = *v72;
    v76 = String.init(utf8String:)();
    if (v77)
    {
      v78 = v76;
    }

    else
    {
      v78 = 0;
    }

    if (v77)
    {
      v79 = v77;
    }

    else
    {
      v79 = 0xE000000000000000;
    }

    v72 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v75 == 42, v78, v79);

    type metadata accessor for IntrospectionDataCleanupHelper();
    *(swift_allocObject() + 16) = v72;
  }

  if (v72)
  {
    v80 = String.init(utf8String:)();
    if (v81)
    {
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0xE000000000000000;
    }

    v83 = MEMORY[0x1C68F3280](v80, v82);

    v84 = NSClassFromString(v83);

    if (v84)
    {
      swift_getObjCClassMetadata();
      type metadata accessor for Entity();
      v85 = swift_dynamicCastMetatype();
      if (v85)
      {
        v86 = (*(v85 + 232))();
        v87 = *(v86 + 16);

        MEMORY[0x1C68F9740](v87, 0);
        *(v86 + 16) = v35;
        MEMORY[0x1C68F9740](v35, v86);

LABEL_76:

        isUniquelyReferenced_nonNull_native = v86;
        goto LABEL_33;
      }
    }

LABEL_75:
    v86 = makeEntity(for:)(v35);
    goto LABEL_76;
  }

  __break(1u);
LABEL_95:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of __RKEntityInteractionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of __RKEntityInteractionSpecification(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityInteractionSpecification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with take of __RKEntityInteractionSpecification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __RKEntityInteractionSpecification(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
    lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification and conformance __RKEntityInteractionSpecification(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for __RKEntityInteractionSpecification(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKEntityInteractionsComponent.Registration.RegistrationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for __RKEntityInteractionsComponent.Registration.RegistrationError(_WORD *result, int a2, int a3)
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

void DirectionalLightComponent.Shadow.maximumDistance.setter(float a1)
{
  *(v1 + 12) = LODWORD(a1);
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 4) = a1;
}

uint64_t *(*DirectionalLightComponent.Shadow.maximumDistance.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return DirectionalLightComponent.Shadow.maximumDistance.modify;
}

uint64_t *DirectionalLightComponent.Shadow.maximumDistance.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 2);
  *(v1 + 12) = v2;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  *(v1 + 4) = v2;
  return result;
}

double DirectionalLightComponent.Shadow.init()@<D0>(uint64_t a1@<X8>)
{
  result = 2048.00048;
  *a1 = 0x40A000003F800000;
  *(a1 + 8) = 3;
  *(a1 + 12) = 1084227584;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  return result;
}

void DirectionalLightComponent.Shadow.init(maximumDistance:depthBias:)(uint64_t a1@<X8>, unsigned int a2@<S0>, float a3@<S1>)
{
  *a1 = a3;
  *(a1 + 4) = *&a2;
  *(a1 + 8) = 3;
  *(a1 + 12) = a2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
}

uint64_t DirectionalLightComponent.Shadow.shadowProjection.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *(v1 + 12) = *result;
  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static DirectionalLightComponent.Shadow.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  REDirectionalLightShadowMapComponentGetDepthBias();
  v5 = v4;
  REDirectionalLightShadowMapComponentGetDistance();
  v7 = v6;
  CullMode = REDirectionalLightShadowMapComponentGetCullModeEx();
  AutomaticallyAdjustsShadowProjection = REDirectionalLightShadowMapComponentGetAutomaticallyAdjustsShadowProjection();
  REDirectionalLightShadowMapComponentGetZNear();
  v11 = v10;
  REDirectionalLightShadowMapComponentGetZFar();
  v13 = v12;
  result = REDirectionalLightShadowMapComponentGetOrthographicScale();
  v16 = v11 | (v13 << 32);
  if (AutomaticallyAdjustsShadowProjection)
  {
    v16 = v7;
    v15 = 0.0;
  }

  v17 = 1;
  if (!CullMode)
  {
    v17 = 3;
  }

  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v17;
  *(a2 + 12) = v16;
  *(a2 + 20) = v15;
  *(a2 + 24) = AutomaticallyAdjustsShadowProjection;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *DirectionalLightComponent.Shadow.init(shadowProjection:depthBias:cullMode:)@<X0>(uint64_t *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *result;
  v5 = *(result + 2);
  v6 = *(result + 12);
  v7 = *a2;
  *a3 = a4;
  *(a3 + 4) = 1084227584;
  *(a3 + 8) = v7;
  *(a3 + 12) = v4;
  *(a3 + 20) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t DirectionalLightComponent.Shadow.__toCore(_:)(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 3);
  v6 = v1[5];
  v7 = *(v1 + 24);
  REDirectionalLightShadowMapComponentSetDepthBias();
  if (v7)
  {
    REDirectionalLightShadowMapComponentSetDistance();
  }

  else
  {
    REDirectionalLightShadowMapComponentSetZNear();
    REDirectionalLightShadowMapComponentSetZFar();
    REDirectionalLightShadowMapComponentSetOrthographicScale();
  }

  REDirectionalLightShadowMapComponentSetAutomaticallyAdjustsShadowProjection();
  REDirectionalLightShadowMapComponentSetCullMode();
  result = RENetworkMarkComponentDirty();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void DirectionalLightComponent.init(cgColor:intensity:isRealWorldProxy:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 12) = a2;
}

void static DirectionalLightComponent.__fromCore(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  REDirectionalLightComponentGetColorGamut3F();
  REDirectionalLightComponentGetIntensity();
  v5 = v4;
  LOBYTE(v3) = REDirectionalLightComponentGetIsProxy();
  v6 = RECreateCGColorFromColorGamut();

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 12) = v3;
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t DirectionalLightComponent.__toCore(_:)(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 12);
  RECGColorToColorGamut();
  REDirectionalLightComponentSetColorGamut3F();
  REDirectionalLightComponentSetIntensity();
  REDirectionalLightComponentSetIsProxy();
  result = RENetworkMarkComponentDirty();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static DirectionalLightComponent.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = a2[2];
  v7 = *(a2 + 12);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v4 ^ v7 ^ 1) & (v3 == v6);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DirectionalLightComponent(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = a2[2];
  v7 = *(a2 + 12);
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v4 ^ v7 ^ 1) & (v3 == v6);
}

_BYTE *(*DirectionalLightComponent.Shadow.cullModeOverride.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return DirectionalLightComponent.Shadow.cullModeOverride.modify;
}

void DirectionalLightComponent.Shadow.shadowProjection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 12);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

uint64_t *(*DirectionalLightComponent.Shadow.shadowProjection.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 20);
  v3 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 12);
  *(a1 + 16) = v2;
  *(a1 + 20) = v3;
  return DirectionalLightComponent.Shadow.shadowProjection.modify;
}

uint64_t *DirectionalLightComponent.Shadow.shadowProjection.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 4);
  v3 = *(result + 20);
  *(v1 + 12) = result[1];
  *(v1 + 20) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t DirectionalLightComponent.Shadow.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - v10;
  v12 = *(v1 + 8);
  v13 = *(v1 + 12);
  v14 = *(v1 + 20);
  v15 = *(v1 + 24);
  v9.n128_u64[0] = *v1;
  v20 = v9;
  v22 = v9.n128_u64[0];
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1897FD0;
  *(v16 + 32) = 0xD000000000000010;
  *(v16 + 40) = 0x80000001C18DE1D0;
  *(v16 + 48) = v13;
  *(v16 + 56) = v14;
  *(v16 + 60) = v15;
  *(v16 + 72) = &type metadata for DirectionalLightComponent.Shadow.ShadowProjectionType;
  *(v16 + 80) = 0x6169426874706564;
  *(v16 + 88) = 0xE900000000000073;
  v17 = MEMORY[0x1E69E6448];
  *(v16 + 96) = v20.n128_u32[0];
  *(v16 + 120) = v17;
  *(v16 + 128) = 0xD000000000000010;
  *(v16 + 136) = 0x80000001C18DE1F0;
  *(v16 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  *(v16 + 144) = v12;
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

BOOL specialized static DirectionalLightComponent.Shadow.ShadowProjectionType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 12))
  {
    return (*(a2 + 12) & 1) != 0 && *&v2 == *&v3;
  }

  if (*(a2 + 12))
  {
    return 0;
  }

  v5 = HIDWORD(*a1);
  v7 = *(&v2 + 1) == *(&v3 + 1) && *&v2 == COERCE_FLOAT(*a2);
  return v7 && *(a1 + 2) == *(a2 + 2);
}

uint64_t specialized static DirectionalLightComponent.Shadow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = *(a2 + 8);
  v9 = *(a2 + 12);
  v10 = *(a2 + 24);
  if (v4 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }

LABEL_12:
    if (v7)
    {
      if (*&v5 == *&v9)
      {
        v11 = *(a2 + 24);
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        return 1;
      }
    }

    else if ((*(a2 + 24) & 1) == 0)
    {
      v12 = HIDWORD(v9);
      v13 = *&v5 == COERCE_FLOAT(*(a2 + 12)) && *(&v5 + 1) == *&v12;
      if (v13 && v6 == *(a2 + 20))
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if (v8 != 3 && v4 == v8)
  {
    goto LABEL_12;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  result = lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    type metadata accessor for CGColorRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectionalLightComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for DirectionalLightComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectionalLightComponent.Shadow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DirectionalLightComponent.Shadow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DirectionalLightComponent.Shadow.ShadowProjectionType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DirectionalLightComponent.Shadow.ShadowProjectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t one-time initialization function for UpdateLoop(uint64_t a1)
{
  return one-time initialization function for UpdateLoop(a1, 0x6F4C657461647055, 0xEA0000000000706FLL, &static __REOSLog.UpdateLoop);
}

{
  return one-time initialization function for UpdateLoop(a1, static __RESignpostID.UpdateLoop, &one-time initialization token for UpdateLoop, &static __REOSLog.UpdateLoop);
}

uint64_t one-time initialization function for ARQL(uint64_t a1)
{
  return one-time initialization function for UpdateLoop(a1, 1280397889, 0xE400000000000000, &static __REOSLog.ARQL);
}

{
  return one-time initialization function for UpdateLoop(a1, static __RESignpostID.ARQL, &one-time initialization token for ARQL, &static __REOSLog.ARQL);
}

uint64_t one-time initialization function for RealityComposer(uint64_t a1)
{
  return one-time initialization function for UpdateLoop(a1, 0x437974696C616552, 0xEF7265736F706D6FLL, &static __REOSLog.RealityComposer);
}

{
  return one-time initialization function for UpdateLoop(a1, static __RESignpostID.RealityComposer, one-time initialization token for RealityComposer, &static __REOSLog.RealityComposer);
}

uint64_t one-time initialization function for UpdateLoop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

id static __REOSLog.UpdateLoop.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t one-time initialization function for UpdateLoop(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = type metadata accessor for OSSignpostID();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return OSSignpostID.init(log:)();
}

uint64_t static __RESignpostID.UpdateLoop.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSSignpostID();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t __REOSSignpostScope.__allocating_init(osLog:signpostID:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a1;
  v15 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  v16 = type metadata accessor for OSSignpostID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14 + v15, a2, v16);
  v18 = a1;
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v17 + 8))(a2, v16);
  return v14;
}

uint64_t __REOSSignpostScope.init(osLog:signpostID:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 40) = a1;
  v8 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5 + v8, a2, v9);
  v11 = a1;
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v10 + 8))(a2, v9);
  return v5;
}

uint64_t __REOSSignpostScope.deinit()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  v10 = *(v0 + 32);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID, v1);
  v11 = v6;
  os_signpost(_:dso:log:name:signpostID:)();

  v12 = *(v2 + 8);
  v12(v5, v1);

  v12((v0 + v9), v1);
  return v0;
}

uint64_t __REOSSignpostScope.__deallocating_deinit()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID;
  v10 = *(v0 + 32);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10RealityKit19__REOSSignpostScope_signpostID, v1);
  v11 = v6;
  os_signpost(_:dso:log:name:signpostID:)();

  v12 = *(v2 + 8);
  v12(v5, v1);

  v12((v0 + v9), v1);
  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for __REOSSignpostScope()
{
  result = type metadata singleton initialization cache for __REOSSignpostScope;
  if (!type metadata singleton initialization cache for __REOSSignpostScope)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for __REOSSignpostScope()
{
  result = type metadata accessor for OSSignpostID();
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::Int __RKSimulationSceneCoordinatorState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKSimulationSceneCoordinatorState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKSimulationSceneCoordinatorState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for __RKSimulationSceneCoordinator();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  static __RKSimulationSceneCoordinator.shared = v0;
  return result;
}

{
  type metadata accessor for __RKActiveSceneManager();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = 0;
  *(result + 24) = v1;
  static __RKActiveSceneManager.shared = result;
  return result;
}

{
  type metadata accessor for SystemRegistry();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  static SystemRegistry.shared = result;
  return result;
}

uint64_t __RKSimulationSceneCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  return v0;
}

uint64_t static __RKSimulationSceneCoordinator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static __RKSimulationSceneCoordinator.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static __RKSimulationSceneCoordinator.shared = a1;
}

uint64_t (*static __RKSimulationSceneCoordinator.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static __RKSimulationSceneCoordinator.shared.modify;
}

uint64_t key path getter for static __RKSimulationSceneCoordinator.shared : __RKSimulationSceneCoordinator.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static __RKSimulationSceneCoordinator.shared;
}

uint64_t key path setter for static __RKSimulationSceneCoordinator.shared : __RKSimulationSceneCoordinator.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static __RKSimulationSceneCoordinator.shared = v1;
}

uint64_t __RKSimulationSceneCoordinator.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  return v0;
}

uint64_t __RKSimulationSceneCoordinator.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t __RKSimulationSceneCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*__RKSimulationSceneCoordinator.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return __RKSimulationSceneCoordinator.delegate.modify;
}

void __RKSimulationSceneCoordinator.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t __RKSimulationSceneCoordinator.simulationState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t __RKSimulationSceneCoordinator.simulationState.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t __RKSimulationSceneCoordinator.changeToScene(with:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v1, a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __RKSimulationSceneCoordinator.__deallocating_deinit()
{
  outlined destroy of weak __RKSimulationSceneCoordinatorDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type __RKSimulationSceneCoordinatorState and conformance __RKSimulationSceneCoordinatorState()
{
  result = lazy protocol witness table cache variable for type __RKSimulationSceneCoordinatorState and conformance __RKSimulationSceneCoordinatorState;
  if (!lazy protocol witness table cache variable for type __RKSimulationSceneCoordinatorState and conformance __RKSimulationSceneCoordinatorState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKSimulationSceneCoordinatorState and conformance __RKSimulationSceneCoordinatorState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKSimulationSceneCoordinatorState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKSimulationSceneCoordinatorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int EnvironmentBlendingComponent.EnvironmentType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

Swift::Int EnvironmentBlendingComponent.BlendingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t static EnvironmentBlendingComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = REOcclusionComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t EnvironmentBlendingComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REOcclusionComponentSetEnabled();

  return MEMORY[0x1EEDFD5A8](v2, 0);
}

unint64_t lazy protocol witness table accessor for type EnvironmentBlendingComponent.EnvironmentType and conformance EnvironmentBlendingComponent.EnvironmentType()
{
  result = lazy protocol witness table cache variable for type EnvironmentBlendingComponent.EnvironmentType and conformance EnvironmentBlendingComponent.EnvironmentType;
  if (!lazy protocol witness table cache variable for type EnvironmentBlendingComponent.EnvironmentType and conformance EnvironmentBlendingComponent.EnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentBlendingComponent.EnvironmentType and conformance EnvironmentBlendingComponent.EnvironmentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentBlendingComponent.BlendingMode and conformance EnvironmentBlendingComponent.BlendingMode()
{
  result = lazy protocol witness table cache variable for type EnvironmentBlendingComponent.BlendingMode and conformance EnvironmentBlendingComponent.BlendingMode;
  if (!lazy protocol witness table cache variable for type EnvironmentBlendingComponent.BlendingMode and conformance EnvironmentBlendingComponent.BlendingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentBlendingComponent.BlendingMode and conformance EnvironmentBlendingComponent.BlendingMode);
  }

  return result;
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance EnvironmentBlendingComponent@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = REOcclusionComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance EnvironmentBlendingComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REOcclusionComponentSetEnabled();

  return MEMORY[0x1EEDFD5A8](v2, 0);
}

uint64_t getEnumTagSinglePayload for EnvironmentBlendingComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t FromToByAnimation.name.getter()
{
  if (v0[20])
  {
    v1 = v0[19];
    v2 = v0[20];
  }

  else if (*(v0[25] + 16))
  {
    v3 = v0[20];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path setter for FromToByAnimation.name : <A>FromToByAnimation<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FromToByAnimation.name.setter(v1, v2);
}

uint64_t FromToByAnimation.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t (*FromToByAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = FromToByAnimation.name.getter();
  a1[1] = v3;
  return FromToByAnimation.name.modify;
}

uint64_t FromToByAnimation.name.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 160);
  if (a2)
  {
    v6 = a1[1];

    *(v3 + 152) = v4;
    *(v3 + 160) = v2;
  }

  else
  {
    v8 = *(v3 + 160);

    *(v3 + 152) = v4;
    *(v3 + 160) = v2;
  }

  return result;
}

uint64_t FromToByAnimation.blendLayer.getter()
{
  if (*(v0 + 192) != 1)
  {
    return *(v0 + 188);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t FromToByAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = 0;
  return result;
}

uint64_t *(*FromToByAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 192) == 1)
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 188);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.blendLayer.modify;
}

uint64_t *FromToByAnimation.blendLayer.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 188) = *(result + 2);
  *(v1 + 192) = 0;
  return result;
}

uint64_t FromToByAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 184);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 200) + 16);
    if (v5)
    {
      v8 = *(v1 + 168);
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

double key path getter for FromToByAnimation.bindTarget : <A>FromToByAnimation<A>@<D0>(uint64_t a1@<X8>)
{
  FromToByAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t key path setter for FromToByAnimation.bindTarget : <A>FromToByAnimation<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  outlined copy of BindTarget(v4[0], v1, v2);
  return FromToByAnimation.bindTarget.setter(v4);
}

uint64_t FromToByAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 168), *(v1 + 176), *(v1 + 184));
  *(v1 + 168) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  return result;
}

uint64_t (*FromToByAnimation.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  FromToByAnimation.bindTarget.getter(a1);
  return FromToByAnimation.bindTarget.modify;
}

uint64_t FromToByAnimation.bindTarget.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v2, v4);
    outlined consume of BindTarget?(*(v5 + 168), *(v5 + 176), *(v5 + 184));
    *(v5 + 168) = v3;
    *(v5 + 176) = v2;
    *(v5 + 184) = v4;

    return outlined consume of BindTarget(v3, v2, v4);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v5 + 168), *(v5 + 176), *(v5 + 184));
    *(v5 + 168) = v3;
    *(v5 + 176) = v2;
    *(v5 + 184) = v4;
  }

  return result;
}

uint64_t FromToByAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 194))
  {
    result = *(*(v1 + 200) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 193);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*FromToByAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 194))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 193);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.fillMode.modify;
}

uint64_t FromToByAnimation.isAdditive.getter()
{
  LODWORD(v1) = *(v0 + 195);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 200) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

_BYTE *(*FromToByAnimation.isAdditive.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 195);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return FromToByAnimation.isAdditive.modify;
}

__n128 FromToByAnimation.timing.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 56));
  v4 = v3[1].n128_u32[0];
  v5 = v3[1].n128_u8[4];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u32[0] = v4;
  a2[1].n128_u8[4] = v5;
  return result;
}

double key path getter for FromToByAnimation.timing : <A>FromToByAnimation<A>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __n128 *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for FromToByAnimation();
  FromToByAnimation.timing.getter(v7, &v11);
  v8 = v12;
  v9 = v13;
  result = v11.n128_f64[0];
  *a3 = v11;
  a3[1].n128_u32[0] = v8;
  a3[1].n128_u8[4] = v9;
  return result;
}

double key path setter for FromToByAnimation.timing : <A>FromToByAnimation<A>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = a1[1].n128_u32[0];
  v7 = a1[1].n128_u8[4];
  v10 = *a1;
  v11 = v6;
  v12 = v7;
  v8 = type metadata accessor for FromToByAnimation();
  *&result = FromToByAnimation.timing.setter(&v10, v8).n128_u64[0];
  return result;
}

__n128 FromToByAnimation.timing.setter(__n128 *a1, uint64_t a2)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = (v2 + *(a2 + 56));
  result = *a1;
  *v5 = *a1;
  v5[1].n128_u32[0] = v3;
  v5[1].n128_u8[4] = v4;
  return result;
}

void (*FromToByAnimation.timing.modify(uint64_t *a1, uint64_t a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  v6 = v2 + *(a2 + 56);
  v7 = *(v6 + 16);
  v8 = *(v6 + 20);
  *v5 = *v6;
  *(v5 + 16) = v7;
  *(v5 + 20) = v8;
  return FromToByAnimation.timing.modify;
}

void FromToByAnimation.timing.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 20);
  v4 = *(v1 + 4) + *(*(v1 + 3) + 56);
  *v4 = *v1;
  *(v4 + 16) = v2;
  *(v4 + 20) = v3;
  free(v1);
}

uint64_t FromToByAnimation.trimStart.getter()
{
  if (*(v0 + 9))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *v0;
    v2 = *(v0 + 8);
  }

  return result;
}

uint64_t FromToByAnimation.trimStart.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t (*FromToByAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = FromToByAnimation.trimStart.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimStart.modify;
}

uint64_t FromToByAnimation.trimStart.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t FromToByAnimation.trimEnd.getter()
{
  if (*(v0 + 25))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  return result;
}

uint64_t FromToByAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  *(v2 + 25) = 0;
  return result;
}

uint64_t (*FromToByAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = FromToByAnimation.trimEnd.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimEnd.modify;
}

uint64_t FromToByAnimation.trimEnd.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t FromToByAnimation.trimDuration.getter()
{
  if (*(v0 + 41))
  {
    result = *(*(v0 + 144) + 16);
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
    result = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  return result;
}

uint64_t FromToByAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  *(v2 + 41) = 0;
  return result;
}

uint64_t (*FromToByAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = FromToByAnimation.trimDuration.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimDuration.modify;
}

uint64_t FromToByAnimation.trimDuration.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

double FromToByAnimation.offset.getter()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  v1 = *(v0 + 144);
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

double (*FromToByAnimation.offset.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = FromToByAnimation.offset.getter();
  return FromToByAnimation.offset.modify;
}

double FromToByAnimation.offset.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 48) = *a1;
  *(v1 + 56) = 0;
  return result;
}

double FromToByAnimation.delay.getter()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 144);
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

double (*FromToByAnimation.delay.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = FromToByAnimation.delay.getter();
  return FromToByAnimation.delay.modify;
}

double FromToByAnimation.delay.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 64) = *a1;
  *(v1 + 72) = 0;
  return result;
}

float FromToByAnimation.speed.getter()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 76);
  }

  v1 = *(v0 + 144);
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

float (*FromToByAnimation.speed.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = FromToByAnimation.speed.getter();
  return FromToByAnimation.speed.modify;
}

float FromToByAnimation.speed.modify(float *a1)
{
  v1 = *a1;
  result = a1[2];
  *(v1 + 76) = result;
  *(v1 + 80) = 0;
  return result;
}

uint64_t FromToByAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + 81);
  if (result == 4)
  {
    v3 = *(v1 + 144);
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

_BYTE *(*FromToByAnimation.repeatMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  FromToByAnimation.repeatMode.getter((a1 + 8));
  return FromToByAnimation.repeatMode.modify;
}

double FromToByAnimation.duration.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  if ((v2[8] & 1) == 0)
  {
    return *v2;
  }

  if (!*(*(v1 + 200) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

uint64_t FromToByAnimation.duration.setter(uint64_t result, double a2)
{
  v3 = v2 + *(result + 52);
  *v3 = a2;
  *(v3 + 8) = 0;
  return result;
}

double (*FromToByAnimation.duration.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = (v2 + *(a2 + 52));
  if (v4[1])
  {
    if (*(*(v2 + 200) + 16))
    {
      RETimelineDefinitionGetDuration();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return FromToByAnimation.duration.modify;
}

double FromToByAnimation.duration.modify(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16) + *(*(a1 + 8) + 52);
  *v2 = *a1;
  *(v2 + 8) = 0;
  return result;
}

uint64_t FromToByAnimation.init(name:from:to:by:duration:timing:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, int a14, char *a15, char *a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  v56 = a6[1];
  v57 = *a6;
  v54 = *(a6 + 20);
  v55 = *(a6 + 4);
  v44 = a8[1];
  v45 = *a8;
  v43 = *(a8 + 16);
  v42 = *a15;
  v46 = *a16;
  v29 = type metadata accessor for FromToByAnimation();
  v30 = v29[10];
  v31 = type metadata accessor for Optional();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v33(a9 + v30, 1, 1, v31);
  v47 = v29[11];
  v33(a9 + v47, 1, 1, v31);
  v49 = v29[12];
  v33(a9 + v49, 1, 1, v31);
  v50 = v29;
  v51 = a9 + v29[13];
  *(a9 + v29[15]) = 0;
  *(a9 + v29[16]) = 2;
  *(a9 + v29[17]) = 2;
  *(a9 + v29[18]) = 2;
  *(a9 + v29[19]) = 0;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *a9 = a17;
  *(a9 + 8) = a18 & 1;
  *(a9 + 9) = 0;
  *(a9 + 16) = a19;
  *(a9 + 24) = a20 & 1;
  *(a9 + 32) = a21;
  *(a9 + 40) = a22 & 1;
  *(a9 + 48) = a11;
  *(a9 + 56) = 0;
  *(a9 + 64) = a12;
  *(a9 + 72) = 0;
  *(a9 + 76) = a13;
  *(a9 + 80) = 0;
  *(a9 + 81) = v42;
  *(a9 + 88) = 0;
  *(a9 + 96) = a1;
  *(a9 + 104) = a2;
  *(a9 + 112) = xmmword_1C1898800;
  *(a9 + 128) = 0;
  *(a9 + 132) = 0;
  *(a9 + 136) = 0;
  *(a9 + 138) = 0;
  *(a9 + 144) = v34;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(a9 + 152) = a1;
  *(a9 + 160) = a2;
  *(a9 + 168) = v45;
  *(a9 + 176) = v44;
  *(a9 + 184) = v43;
  *(a9 + 185) = v59;
  *(a9 + 187) = v60;
  *(a9 + 188) = a14;
  *(a9 + 192) = 0;
  *(a9 + 193) = v46;
  *(a9 + 194) = 0;
  *(a9 + 195) = a7;
  *(a9 + 200) = v35;
  v36 = type metadata accessor for Optional();
  v37 = *(*(v36 - 8) + 8);
  v38 = v30;
  v37(a9 + v30, v36);
  v39 = *(v32 + 32);
  v39(a9 + v38, a3, v31);
  v33(a9 + v38, 0, 1, v31);
  v37(a9 + v47, v36);
  v39(a9 + v47, a4, v31);
  v33(a9 + v47, 0, 1, v31);
  v37(a9 + v49, v36);
  v39(a9 + v49, a5, v31);
  result = (v33)(a9 + v49, 0, 1, v31);
  *v51 = a10;
  *(v51 + 8) = 0;
  v41 = a9 + v50[14];
  *v41 = v57;
  *(v41 + 8) = v56;
  *(v41 + 16) = v55;
  *(v41 + 20) = v54;
  return result;
}

uint64_t specialized FromToByAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  if (!a1._rawValue)
  {
    v5 = v1[7];
    v6 = v1[5];
    v75 = v1[6];
    v76 = v5;
    v7 = v1[7];
    v77 = v1[8];
    v8 = v1[3];
    v9 = v1[1];
    v71 = v1[2];
    v72 = v8;
    v10 = v1[3];
    v11 = v1[5];
    v73 = v1[4];
    v74 = v11;
    v12 = v1[1];
    v70[0] = *v1;
    v70[1] = v12;
    v63 = v75;
    v64 = v7;
    v65 = v1[8];
    v59 = v71;
    v60 = v10;
    v61 = v73;
    v62 = v6;
    v78 = *(v1 + 18);
    v66 = *(v1 + 18);
    v57 = v70[0];
    v58 = v9;
    if (!TimelineClipProperties.isClipped.getter())
    {
      if (!*(*(v1 + 25) + 16))
      {
        return 0;
      }

      v16 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v16 + 120, &v57);
      v17 = *(&v58 + 1);
      v18 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      (*(v18 + 32))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v57);
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
      v13 = swift_allocObject();
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v13;
    }

    v63 = v75;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v70[0];
    v58 = v70[1];
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v53 = v75;
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v49 = v71;
    v50 = v72;
    v51 = v73;
    v52 = v74;
    v47 = v70[0];
    v48 = v70[1];
    outlined init with copy of TimelineClipProperties(v70, &v57);
    v13 = TimelineClipProperties.createClip()();
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
    v14 = &v57;
    goto LABEL_20;
  }

  v3 = *(v1 + 168);
  v68[0] = *(v1 + 152);
  v68[1] = v3;
  v68[2] = *(v1 + 184);
  v69 = *(v1 + 25);
  v4 = *(v1 + 168);
  v70[0] = *(v1 + 152);
  v70[1] = v4;
  v71 = *(v1 + 184);
  *&v72 = *(v1 + 25);
  outlined init with copy of TimelineBaseProperties(v68, &v57);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v45[0] = v70[0];
  v45[1] = v70[1];
  v45[2] = v71;
  v46 = v72;
  outlined destroy of TimelineBaseProperties(v45);
  if (*(v1 + 264))
  {
    if (*(v69 + 16))
    {
      RETimelineDefinitionGetDuration();
    }
  }

  else
  {
    v15 = *(v1 + 32);
  }

  RETimelineDefinitionSetDuration();
  v70[0] = v1[17];
  *(v70 + 13) = *(v1 + 285);
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v24 + 16))
  {
    RETimelineDefinitionSetEasingFunctionEx();
  }

  v25 = v1[7];
  v26 = v1[5];
  v63 = v1[6];
  v64 = v25;
  v27 = v1[7];
  v65 = v1[8];
  v28 = v1[3];
  v29 = v1[1];
  v59 = v1[2];
  v60 = v28;
  v30 = v1[3];
  v31 = v1[5];
  v61 = v1[4];
  v62 = v31;
  v32 = v1[1];
  v57 = *v1;
  v58 = v32;
  v75 = v63;
  v76 = v27;
  v77 = v1[8];
  v71 = v59;
  v72 = v30;
  v73 = v61;
  v74 = v26;
  v66 = *(v1 + 18);
  v78 = *(v1 + 18);
  v70[0] = v57;
  v70[1] = v29;
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
    outlined init with copy of TimelineClipProperties(&v57, v70);
    RERetain();
    outlined destroy of BodyTrackingComponent?(&v67, &_s17RealityFoundation18TimelineDefinitionCSgMd, &_s17RealityFoundation18TimelineDefinitionCSgMR);
    v71 = v41;
    v72 = v42;
    v73 = v43;
    v70[0] = v39;
    v70[1] = v40;
    *&v74 = v44;
    *(&v74 + 1) = v33;
    v78 = v38;
    v76 = v36;
    v77 = v37;
    v75 = v35;
    outlined init with copy of TimelineClipProperties(v70, &v47);
    if (*(v33 + 16))
    {

      closure #1 in TimelineClipProperties.createClip()(v70, &v47);

      outlined destroy of TimelineClipProperties(v70);
      v13 = v47;
    }

    else
    {

      outlined destroy of TimelineClipProperties(v70);
      v13 = 0;
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
    v14 = &v47;
LABEL_20:
    outlined destroy of TimelineClipProperties(v14);
    return v13;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v13 = TimelineDefinition.resource.getter();

  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v13;
}

{
  if (!a1._rawValue)
  {
    v5 = v1[7];
    v6 = v1[5];
    v75 = v1[6];
    v76 = v5;
    v7 = v1[7];
    v77 = v1[8];
    v8 = v1[3];
    v9 = v1[1];
    v71 = v1[2];
    v72 = v8;
    v10 = v1[3];
    v11 = v1[5];
    v73 = v1[4];
    v74 = v11;
    v12 = v1[1];
    v70[0] = *v1;
    v70[1] = v12;
    v63 = v75;
    v64 = v7;
    v65 = v1[8];
    v59 = v71;
    v60 = v10;
    v61 = v73;
    v62 = v6;
    v78 = *(v1 + 18);
    v66 = *(v1 + 18);
    v57 = v70[0];
    v58 = v9;
    if (!TimelineClipProperties.isClipped.getter())
    {
      if (!*(*(v1 + 25) + 16))
      {
        return 0;
      }

      v16 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v16 + 120, &v57);
      v17 = *(&v58 + 1);
      v18 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      (*(v18 + 32))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v57);
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
      v13 = swift_allocObject();
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v13;
    }

    v63 = v75;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v70[0];
    v58 = v70[1];
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v53 = v75;
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v49 = v71;
    v50 = v72;
    v51 = v73;
    v52 = v74;
    v47 = v70[0];
    v48 = v70[1];
    outlined init with copy of TimelineClipProperties(v70, &v57);
    v13 = TimelineClipProperties.createClip()();
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
    v14 = &v57;
    goto LABEL_20;
  }

  v3 = *(v1 + 168);
  v68[0] = *(v1 + 152);
  v68[1] = v3;
  v68[2] = *(v1 + 184);
  v69 = *(v1 + 25);
  v4 = *(v1 + 168);
  v70[0] = *(v1 + 152);
  v70[1] = v4;
  v71 = *(v1 + 184);
  *&v72 = *(v1 + 25);
  outlined init with copy of TimelineBaseProperties(v68, &v57);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v45[0] = v70[0];
  v45[1] = v70[1];
  v45[2] = v71;
  v46 = v72;
  outlined destroy of TimelineBaseProperties(v45);
  if (v1[19])
  {
    if (*(v69 + 16))
    {
      RETimelineDefinitionGetDuration();
    }
  }

  else
  {
    v15 = *(v1 + 37);
  }

  RETimelineDefinitionSetDuration();
  v70[0] = v1[20];
  *(v70 + 13) = *(v1 + 333);
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v24 + 16))
  {
    RETimelineDefinitionSetEasingFunctionEx();
  }

  v25 = v1[7];
  v26 = v1[5];
  v63 = v1[6];
  v64 = v25;
  v27 = v1[7];
  v65 = v1[8];
  v28 = v1[3];
  v29 = v1[1];
  v59 = v1[2];
  v60 = v28;
  v30 = v1[3];
  v31 = v1[5];
  v61 = v1[4];
  v62 = v31;
  v32 = v1[1];
  v57 = *v1;
  v58 = v32;
  v75 = v63;
  v76 = v27;
  v77 = v1[8];
  v71 = v59;
  v72 = v30;
  v73 = v61;
  v74 = v26;
  v66 = *(v1 + 18);
  v78 = *(v1 + 18);
  v70[0] = v57;
  v70[1] = v29;
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
    outlined init with copy of TimelineClipProperties(&v57, v70);
    RERetain();
    outlined destroy of BodyTrackingComponent?(&v67, &_s17RealityFoundation18TimelineDefinitionCSgMd, &_s17RealityFoundation18TimelineDefinitionCSgMR);
    v71 = v41;
    v72 = v42;
    v73 = v43;
    v70[0] = v39;
    v70[1] = v40;
    *&v74 = v44;
    *(&v74 + 1) = v33;
    v78 = v38;
    v76 = v36;
    v77 = v37;
    v75 = v35;
    outlined init with copy of TimelineClipProperties(v70, &v47);
    if (*(v33 + 16))
    {

      closure #1 in TimelineClipProperties.createClip()(v70, &v47);

      outlined destroy of TimelineClipProperties(v70);
      v13 = v47;
    }

    else
    {

      outlined destroy of TimelineClipProperties(v70);
      v13 = 0;
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
    v14 = &v47;
LABEL_20:
    outlined destroy of TimelineClipProperties(v14);
    return v13;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v13 = TimelineDefinition.resource.getter();

  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v13;
}

{
  if (!a1._rawValue)
  {
    v5 = v1[7];
    v6 = v1[5];
    v75 = v1[6];
    v76 = v5;
    v7 = v1[7];
    v77 = v1[8];
    v8 = v1[3];
    v9 = v1[1];
    v71 = v1[2];
    v72 = v8;
    v10 = v1[3];
    v11 = v1[5];
    v73 = v1[4];
    v74 = v11;
    v12 = v1[1];
    v70[0] = *v1;
    v70[1] = v12;
    v63 = v75;
    v64 = v7;
    v65 = v1[8];
    v59 = v71;
    v60 = v10;
    v61 = v73;
    v62 = v6;
    v78 = *(v1 + 18);
    v66 = *(v1 + 18);
    v57 = v70[0];
    v58 = v9;
    if (!TimelineClipProperties.isClipped.getter())
    {
      if (!*(*(v1 + 25) + 16))
      {
        return 0;
      }

      v16 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v16 + 120, &v57);
      v17 = *(&v58 + 1);
      v18 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      (*(v18 + 32))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v57);
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
      v13 = swift_allocObject();
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v13;
    }

    v63 = v75;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v70[0];
    v58 = v70[1];
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v53 = v75;
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v49 = v71;
    v50 = v72;
    v51 = v73;
    v52 = v74;
    v47 = v70[0];
    v48 = v70[1];
    outlined init with copy of TimelineClipProperties(v70, &v57);
    v13 = TimelineClipProperties.createClip()();
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
    v14 = &v57;
    goto LABEL_20;
  }

  v3 = *(v1 + 168);
  v68[0] = *(v1 + 152);
  v68[1] = v3;
  v68[2] = *(v1 + 184);
  v69 = *(v1 + 25);
  v4 = *(v1 + 168);
  v70[0] = *(v1 + 152);
  v70[1] = v4;
  v71 = *(v1 + 184);
  *&v72 = *(v1 + 25);
  outlined init with copy of TimelineBaseProperties(v68, &v57);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v45[0] = v70[0];
  v45[1] = v70[1];
  v45[2] = v71;
  v46 = v72;
  outlined destroy of TimelineBaseProperties(v45);
  if (v1[25])
  {
    if (*(v69 + 16))
    {
      RETimelineDefinitionGetDuration();
    }
  }

  else
  {
    v15 = *(v1 + 49);
  }

  RETimelineDefinitionSetDuration();
  v70[0] = v1[26];
  *(v70 + 13) = *(v1 + 429);
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v24 + 16))
  {
    RETimelineDefinitionSetEasingFunctionEx();
  }

  v25 = v1[7];
  v26 = v1[5];
  v63 = v1[6];
  v64 = v25;
  v27 = v1[7];
  v65 = v1[8];
  v28 = v1[3];
  v29 = v1[1];
  v59 = v1[2];
  v60 = v28;
  v30 = v1[3];
  v31 = v1[5];
  v61 = v1[4];
  v62 = v31;
  v32 = v1[1];
  v57 = *v1;
  v58 = v32;
  v75 = v63;
  v76 = v27;
  v77 = v1[8];
  v71 = v59;
  v72 = v30;
  v73 = v61;
  v74 = v26;
  v66 = *(v1 + 18);
  v78 = *(v1 + 18);
  v70[0] = v57;
  v70[1] = v29;
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
    outlined init with copy of TimelineClipProperties(&v57, v70);
    RERetain();
    outlined destroy of BodyTrackingComponent?(&v67, &_s17RealityFoundation18TimelineDefinitionCSgMd, &_s17RealityFoundation18TimelineDefinitionCSgMR);
    v71 = v41;
    v72 = v42;
    v73 = v43;
    v70[0] = v39;
    v70[1] = v40;
    *&v74 = v44;
    *(&v74 + 1) = v33;
    v78 = v38;
    v76 = v36;
    v77 = v37;
    v75 = v35;
    outlined init with copy of TimelineClipProperties(v70, &v47);
    if (*(v33 + 16))
    {

      closure #1 in TimelineClipProperties.createClip()(v70, &v47);

      outlined destroy of TimelineClipProperties(v70);
      v13 = v47;
    }

    else
    {

      outlined destroy of TimelineClipProperties(v70);
      v13 = 0;
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
    v14 = &v47;
LABEL_20:
    outlined destroy of TimelineClipProperties(v14);
    return v13;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v13 = TimelineDefinition.resource.getter();

  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v13;
}

{
  if (!a1._rawValue)
  {
    v5 = v1[7];
    v6 = v1[5];
    v75 = v1[6];
    v76 = v5;
    v7 = v1[7];
    v77 = v1[8];
    v8 = v1[3];
    v9 = v1[1];
    v71 = v1[2];
    v72 = v8;
    v10 = v1[3];
    v11 = v1[5];
    v73 = v1[4];
    v74 = v11;
    v12 = v1[1];
    v70[0] = *v1;
    v70[1] = v12;
    v63 = v75;
    v64 = v7;
    v65 = v1[8];
    v59 = v71;
    v60 = v10;
    v61 = v73;
    v62 = v6;
    v78 = *(v1 + 18);
    v66 = *(v1 + 18);
    v57 = v70[0];
    v58 = v9;
    if (!TimelineClipProperties.isClipped.getter())
    {
      if (!*(*(v1 + 25) + 16))
      {
        return 0;
      }

      v16 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v16 + 120, &v57);
      v17 = *(&v58 + 1);
      v18 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      (*(v18 + 32))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v57);
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
      v13 = swift_allocObject();
      v13[2] = v20;
      v13[3] = v21;
      v13[4] = v23;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v13;
    }

    v63 = v75;
    v64 = v76;
    v65 = v77;
    v66 = v78;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v57 = v70[0];
    v58 = v70[1];
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v53 = v75;
    v54 = v76;
    v55 = v77;
    v56 = v78;
    v49 = v71;
    v50 = v72;
    v51 = v73;
    v52 = v74;
    v47 = v70[0];
    v48 = v70[1];
    outlined init with copy of TimelineClipProperties(v70, &v57);
    v13 = TimelineClipProperties.createClip()();
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
    v14 = &v57;
    goto LABEL_20;
  }

  v3 = *(v1 + 168);
  v68[0] = *(v1 + 152);
  v68[1] = v3;
  v68[2] = *(v1 + 184);
  v69 = *(v1 + 25);
  v4 = *(v1 + 168);
  v70[0] = *(v1 + 152);
  v70[1] = v4;
  v71 = *(v1 + 184);
  *&v72 = *(v1 + 25);
  outlined init with copy of TimelineBaseProperties(v68, &v57);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v45[0] = v70[0];
  v45[1] = v70[1];
  v45[2] = v71;
  v46 = v72;
  outlined destroy of TimelineBaseProperties(v45);
  if (v1[15])
  {
    if (*(v69 + 16))
    {
      RETimelineDefinitionGetDuration();
    }
  }

  else
  {
    v15 = *(v1 + 29);
  }

  RETimelineDefinitionSetDuration();
  v70[0] = v1[16];
  *(v70 + 13) = *(v1 + 269);
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v24 + 16))
  {
    RETimelineDefinitionSetEasingFunctionEx();
  }

  v25 = v1[7];
  v26 = v1[5];
  v63 = v1[6];
  v64 = v25;
  v27 = v1[7];
  v65 = v1[8];
  v28 = v1[3];
  v29 = v1[1];
  v59 = v1[2];
  v60 = v28;
  v30 = v1[3];
  v31 = v1[5];
  v61 = v1[4];
  v62 = v31;
  v32 = v1[1];
  v57 = *v1;
  v58 = v32;
  v75 = v63;
  v76 = v27;
  v77 = v1[8];
  v71 = v59;
  v72 = v30;
  v73 = v61;
  v74 = v26;
  v66 = *(v1 + 18);
  v78 = *(v1 + 18);
  v70[0] = v57;
  v70[1] = v29;
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
    outlined init with copy of TimelineClipProperties(&v57, v70);
    RERetain();
    outlined destroy of BodyTrackingComponent?(&v67, &_s17RealityFoundation18TimelineDefinitionCSgMd, &_s17RealityFoundation18TimelineDefinitionCSgMR);
    v71 = v41;
    v72 = v42;
    v73 = v43;
    v70[0] = v39;
    v70[1] = v40;
    *&v74 = v44;
    *(&v74 + 1) = v33;
    v78 = v38;
    v76 = v36;
    v77 = v37;
    v75 = v35;
    outlined init with copy of TimelineClipProperties(v70, &v47);
    if (*(v33 + 16))
    {

      closure #1 in TimelineClipProperties.createClip()(v70, &v47);

      outlined destroy of TimelineClipProperties(v70);
      v13 = v47;
    }

    else
    {

      outlined destroy of TimelineClipProperties(v70);
      v13 = 0;
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
    v14 = &v47;
LABEL_20:
    outlined destroy of TimelineClipProperties(v14);
    return v13;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v13 = TimelineDefinition.resource.getter();

  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v13;
}

uint64_t FromToByAnimation.createResource()(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v42 = *(v2 + 16);
  v43 = v29;
  v42(&v38 - v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySfGMd, &_s17RealityFoundation17FromToByAnimationVySfGMR);
  if (!swift_dynamicCast())
  {
    (v42)(v22, v43, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySdGMd, &_s17RealityFoundation17FromToByAnimationVySdGMR);
    if (swift_dynamicCast())
    {
      memcpy(v46, v48, 0x140uLL);
      v30 = &_s17RealityFoundation17FromToByAnimationVySdGMd;
      v31 = &_s17RealityFoundation17FromToByAnimationVySdGMR;
      outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVySdGMd, &_s17RealityFoundation17FromToByAnimationVySdGMR);
      (v42)(v25, v43, a1);
      swift_dynamicCast();
      memcpy(v44, v45, 0x140uLL);
      v35 = FromToByAnimation<>.createResource()();
    }

    else
    {
      (v42)(v19, v43, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMR);
      if (!swift_dynamicCast())
      {
        (v42)(v16, v43, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMR);
        if (swift_dynamicCast())
        {
          memcpy(v46, v48, 0x170uLL);
          v30 = &_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMd;
          v31 = &_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMR;
          outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD3VySfGGMR);
          (v42)(v25, v43, a1);
          swift_dynamicCast();
          memcpy(v44, v45, 0x170uLL);
          v36 = FromToByAnimation<>.createResource()();
        }

        else
        {
          (v42)(v13, v43, a1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMR);
          if (swift_dynamicCast())
          {
            memcpy(v46, v48, 0x170uLL);
            v30 = &_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMd;
            v31 = &_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMR;
            outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD4VySfGGMR);
            (v42)(v25, v43, a1);
            swift_dynamicCast();
            memcpy(v44, v45, 0x170uLL);
            v36 = FromToByAnimation<>.createResource()();
          }

          else
          {
            (v42)(v41, v43, a1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMR);
            if (!swift_dynamicCast())
            {
              (v42)(v40, v43, a1);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR);
              if (swift_dynamicCast())
              {
                memcpy(v46, v48, sizeof(v46));
                v30 = &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd;
                v31 = &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR;
                outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR);
                (v42)(v25, v43, a1);
                swift_dynamicCast();
                memcpy(v44, v45, sizeof(v44));
                v33 = FromToByAnimation<>.createResource()();
                v34 = 464;
                goto LABEL_16;
              }

              (v42)(v39, v43, a1);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMR);
              if (swift_dynamicCast())
              {
                memcpy(v46, v48, 0x130uLL);
                v30 = &_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMd;
                v31 = &_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMR;
                outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMd, &_s17RealityFoundation17FromToByAnimationVyAA15JointTransformsVGMR);
                (v42)(v25, v43, a1);
                swift_dynamicCast();
                memcpy(v44, v45, 0x130uLL);
                v32 = FromToByAnimation<>.createResource()();
              }

              else
              {
                (v42)(v38, v43, a1);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation17FromToByAnimationVyAA17BlendShapeWeightsVGMR);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  return 0;
                }

                memcpy(v46, v48, 0x130uLL);
                v30 = &_s17RealityFoundation17FromToByAnimationVyAA17BlendShapeWeightsVGMd;
                v31 = &_s17RealityFoundation17FromToByAnimationVyAA17BlendShapeWeightsVGMR;
                outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation17FromToByAnimationVyAA17BlendShapeWeightsVGMR);
                (v42)(v25, v43, a1);
                swift_dynamicCast();
                memcpy(v44, v45, 0x130uLL);
                v32 = FromToByAnimation<>.createResource()();
              }

              goto LABEL_3;
            }

            memcpy(v46, v48, 0x170uLL);
            v30 = &_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMd;
            v31 = &_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMR;
            outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMd, &_s17RealityFoundation17FromToByAnimationVySo10simd_quatfaGMR);
            (v42)(v25, v43, a1);
            swift_dynamicCast();
            memcpy(v44, v45, 0x170uLL);
            v36 = FromToByAnimation<>.createResource()();
          }
        }

        v33 = v36;
        v34 = 368;
        goto LABEL_16;
      }

      memcpy(v46, v48, 0x140uLL);
      v30 = &_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMd;
      v31 = &_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMR;
      outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMd, &_s17RealityFoundation17FromToByAnimationVys5SIMD2VySfGGMR);
      (v42)(v25, v43, a1);
      swift_dynamicCast();
      memcpy(v44, v45, 0x140uLL);
      v35 = FromToByAnimation<>.createResource()();
    }

    v33 = v35;
    v34 = 320;
    goto LABEL_16;
  }

  memcpy(v46, v48, 0x130uLL);
  v30 = &_s17RealityFoundation17FromToByAnimationVySfGMd;
  v31 = &_s17RealityFoundation17FromToByAnimationVySfGMR;
  outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation17FromToByAnimationVySfGMd, &_s17RealityFoundation17FromToByAnimationVySfGMR);
  (v42)(v25, v43, a1);
  swift_dynamicCast();
  memcpy(v44, v45, 0x130uLL);
  v32 = FromToByAnimation<>.createResource()();
LABEL_3:
  v33 = v32;
  v34 = 304;
LABEL_16:
  memcpy(v47, v44, v34);
  outlined destroy of BodyTrackingComponent?(v47, v30, v31);
  return v33;
}

uint64_t FromToByAnimation<>.createResource()()
{
  __dst[39] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x130uLL);
  v1 = __dst[25];
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[30] & 1) != 0 && (__dst[26] & 0x10000000000) != 0 && (__dst[27] & 0x10000000000) != 0 && (__dst[28] & 0x10000000000) != 0)
    {
      v2._rawValue = 0;
      v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v2);
      goto LABEL_26;
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v4 = RETimelineDefinitionCreateFromToByFloatAnimation();

  if ((__dst[26] & 0x10000000000) != 0)
  {
    if (*(v1 + 16))
    {
      FloatFromValue = RETimelineDefinitionGetFloatFromValue();
      if (FloatFromValue)
      {
        v6 = *FloatFromValue;
      }
    }
  }

  RETimelineDefinitionSetFloatFromValue();
  if ((__dst[27] & 0x10000000000) != 0)
  {
    if (*(v1 + 16))
    {
      FloatToValue = RETimelineDefinitionGetFloatToValue();
      if (FloatToValue)
      {
        v8 = *FloatToValue;
      }
    }
  }

  RETimelineDefinitionSetFloatToValue();
  if ((__dst[28] & 0x10000000000) != 0)
  {
    if (*(v1 + 16))
    {
      FloatByValue = RETimelineDefinitionGetFloatByValue();
      if (FloatByValue)
      {
        v10 = *FloatByValue;
      }
    }
  }

  RETimelineDefinitionSetFloatByValue();
  v11._rawValue = v4;
  v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v11);
  RERelease();
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  __dst[41] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x140uLL);
  v1 = __dst[25];
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[33] & 1) != 0 && (__dst[27] & 0x100) != 0 && (__dst[29] & 0x100) != 0 && (__dst[31] & 0x100) != 0)
    {
      v2._rawValue = 0;
      v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v2);
      goto LABEL_26;
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v4 = RETimelineDefinitionCreateFromToByDoubleAnimation();

  if ((__dst[27] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      DoubleFromValue = RETimelineDefinitionGetDoubleFromValue();
      if (DoubleFromValue)
      {
        v6 = *DoubleFromValue;
      }
    }
  }

  RETimelineDefinitionSetDoubleFromValue();
  if ((__dst[29] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      DoubleToValue = RETimelineDefinitionGetDoubleToValue();
      if (DoubleToValue)
      {
        v8 = *DoubleToValue;
      }
    }
  }

  RETimelineDefinitionSetDoubleToValue();
  if ((__dst[31] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      DoubleByValue = RETimelineDefinitionGetDoubleByValue();
      if (DoubleByValue)
      {
        v10 = *DoubleByValue;
      }
    }
  }

  RETimelineDefinitionSetDoubleByValue();
  v11._rawValue = v4;
  v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v11);
  RERelease();
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  __dst[41] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x140uLL);
  v1 = __dst[25];
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[33] & 1) != 0 && (__dst[27] & 0x100) != 0 && (__dst[29] & 0x100) != 0 && (__dst[31] & 0x100) != 0)
    {
      v2._rawValue = 0;
      v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v2);
      goto LABEL_26;
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v4 = RETimelineDefinitionCreateFromToByFloat2Animation();

  if ((__dst[27] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float2FromValue = RETimelineDefinitionGetFloat2FromValue();
      if (Float2FromValue)
      {
        v6 = *Float2FromValue;
      }
    }
  }

  RETimelineDefinitionSetFloat2FromValue();
  if ((__dst[29] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float2ToValue = RETimelineDefinitionGetFloat2ToValue();
      if (Float2ToValue)
      {
        v8 = *Float2ToValue;
      }
    }
  }

  RETimelineDefinitionSetFloat2ToValue();
  if ((__dst[31] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float2ByValue = RETimelineDefinitionGetFloat2ByValue();
      if (Float2ByValue)
      {
        v10 = *Float2ByValue;
      }
    }
  }

  RETimelineDefinitionSetFloat2ByValue();
  v11._rawValue = v4;
  v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v11);
  RERelease();
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  __dst[47] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x170uLL);
  v1 = __dst[25];
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[38] & 1) != 0 && (__dst[28] & 0x100) != 0 && (__dst[32] & 0x100) != 0 && (__dst[36] & 0x100) != 0)
    {
      v2._rawValue = 0;
      v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v2);
      goto LABEL_26;
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v4 = RETimelineDefinitionCreateFromToByFloat3Animation();

  if ((__dst[28] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float3FromValue = RETimelineDefinitionGetFloat3FromValue();
      if (Float3FromValue)
      {
        v6 = *Float3FromValue;
      }
    }
  }

  RETimelineDefinitionSetFloat3FromValue();
  if ((__dst[32] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float3ToValue = RETimelineDefinitionGetFloat3ToValue();
      if (Float3ToValue)
      {
        v8 = *Float3ToValue;
      }
    }
  }

  RETimelineDefinitionSetFloat3ToValue();
  if ((__dst[36] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float3ByValue = RETimelineDefinitionGetFloat3ByValue();
      if (Float3ByValue)
      {
        v10 = *Float3ByValue;
      }
    }
  }

  RETimelineDefinitionSetFloat3ByValue();
  v11._rawValue = v4;
  v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v11);
  RERelease();
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  __dst[47] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x170uLL);
  v1 = __dst[25];
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[38] & 1) != 0 && (__dst[28] & 0x100) != 0 && (__dst[32] & 0x100) != 0 && (__dst[36] & 0x100) != 0)
    {
      v2._rawValue = 0;
      v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v2);
      goto LABEL_26;
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v4 = RETimelineDefinitionCreateFromToByFloat4Animation();

  if ((__dst[28] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float4FromValue = RETimelineDefinitionGetFloat4FromValue();
      if (Float4FromValue)
      {
        v6 = *Float4FromValue;
      }
    }
  }

  RETimelineDefinitionSetFloat4FromValue();
  if ((__dst[32] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float4ToValue = RETimelineDefinitionGetFloat4ToValue();
      if (Float4ToValue)
      {
        v8 = *Float4ToValue;
      }
    }
  }

  RETimelineDefinitionSetFloat4ToValue();
  if ((__dst[36] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      Float4ByValue = RETimelineDefinitionGetFloat4ByValue();
      if (Float4ByValue)
      {
        v10 = *Float4ByValue;
      }
    }
  }

  RETimelineDefinitionSetFloat4ByValue();
  v11._rawValue = v4;
  v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v11);
  RERelease();
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  __dst[47] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x170uLL);
  v1 = __dst[25];
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[38] & 1) != 0 && (__dst[28] & 0x100) != 0 && (__dst[32] & 0x100) != 0 && (__dst[36] & 0x100) != 0)
    {
      v2._rawValue = 0;
      v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v2);
      goto LABEL_26;
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v4 = RETimelineDefinitionCreateFromToByQuaternionAnimation();

  if ((__dst[28] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      QuaternionFromValue = RETimelineDefinitionGetQuaternionFromValue();
      if (QuaternionFromValue)
      {
        v6 = *QuaternionFromValue;
      }
    }
  }

  RETimelineDefinitionSetQuaternionFromValue();
  if ((__dst[32] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      QuaternionToValue = RETimelineDefinitionGetQuaternionToValue();
      if (QuaternionToValue)
      {
        v8 = *QuaternionToValue;
      }
    }
  }

  RETimelineDefinitionSetQuaternionToValue();
  if ((__dst[36] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      QuaternionByValue = RETimelineDefinitionGetQuaternionByValue();
      if (QuaternionByValue)
      {
        v10 = *QuaternionByValue;
      }
    }
  }

  RETimelineDefinitionSetQuaternionByValue();
  v11._rawValue = v4;
  v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v11);
  RERelease();
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  __dst[59] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x1D0uLL);
  v1 = __dst[25];
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[50] & 1) != 0 && (__dst[32] & 0x100) != 0 && (__dst[40] & 0x100) != 0 && (__dst[48] & 0x100) != 0)
    {
      v2._rawValue = 0;
      v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v2);
      goto LABEL_29;
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v4 = RETimelineDefinitionCreateFromToBySRTAnimation();

  if ((__dst[32] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      SRTFromValue = RETimelineDefinitionGetSRTFromValue();
      if (SRTFromValue)
      {
        v6 = *SRTFromValue;
        v7 = SRTFromValue[1];
        v8 = SRTFromValue[2];
        if (one-time initialization token for identity != -1)
        {
          v23 = SRTFromValue[1];
          v26 = *SRTFromValue;
          v20 = SRTFromValue[2];
          swift_once();
        }
      }
    }
  }

  RETimelineDefinitionSetSRTFromValue();
  if ((__dst[40] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      SRTToValue = RETimelineDefinitionGetSRTToValue();
      if (SRTToValue)
      {
        v10 = *SRTToValue;
        v11 = SRTToValue[1];
        v12 = SRTToValue[2];
        if (one-time initialization token for identity != -1)
        {
          v24 = SRTToValue[1];
          v27 = *SRTToValue;
          v21 = SRTToValue[2];
          swift_once();
        }
      }
    }
  }

  RETimelineDefinitionSetSRTToValue();
  if ((__dst[48] & 0x100) != 0)
  {
    if (*(v1 + 16))
    {
      SRTByValue = RETimelineDefinitionGetSRTByValue();
      if (SRTByValue)
      {
        v14 = *SRTByValue;
        v15 = SRTByValue[1];
        v16 = SRTByValue[2];
        if (one-time initialization token for identity != -1)
        {
          v25 = SRTByValue[1];
          v28 = *SRTByValue;
          v22 = SRTByValue[2];
          swift_once();
        }
      }
    }
  }

  RETimelineDefinitionSetSRTByValue();
  v17._rawValue = v4;
  v3 = specialized FromToByAnimation.createResource(timelineDefinition:)(v17);
  RERelease();
LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return v3;
}

{
  memcpy(__dst, v0, sizeof(__dst));
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[30] & 1) != 0 && __dst[26] == 1 && __dst[27] == 1 && __dst[28] == 1 && !__dst[35])
    {
      v1._rawValue = 0;
      return specialized FromToByAnimation.createResource(timelineDefinition:)(v1);
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v3 = RETimelineDefinitionCreateFromToBySkeletalPoseAnimation();

  FromToByAnimation<>.fromValue.getter(&v27);
  if (v27)
  {
    v4 = *(v27 + 16);
    RETimelineDefinitionSetSkeletalPoseFromValue();

    v5 = FromToByAnimation<>.jointNames.getter();
    v6 = *(v5 + 2);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        String.utf8CString.getter();
        RETimelineDefinitionSetSkeletalPoseFromJointName();

        v8 += 2;
        ++v7;
      }

      while (v6 != v7);
    }
  }

  else
  {
    RETimelineDefinitionSetSkeletalPoseFromValue();
  }

  FromToByAnimation<>.toValue.getter(&v27);
  if (v27)
  {
    v11 = *(v27 + 16);
    RETimelineDefinitionSetSkeletalPoseToValue();

    v12 = FromToByAnimation<>.jointNames.getter();
    v13 = *(v12 + 2);
    if (v13)
    {
      v14 = 0;
      v15 = (v12 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        String.utf8CString.getter();
        RETimelineDefinitionSetSkeletalPoseToJointName();

        v15 += 2;
        ++v14;
      }

      while (v13 != v14);
    }
  }

  else
  {
    RETimelineDefinitionSetSkeletalPoseToValue();
  }

  FromToByAnimation<>.byValue.getter(&v27);
  if (v27)
  {
    v18 = *(v27 + 16);
    RETimelineDefinitionSetSkeletalPoseByValue();

    v19 = FromToByAnimation<>.jointNames.getter();
    v20 = *(v19 + 2);
    if (v20)
    {
      v21 = 0;
      v22 = (v19 + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        String.utf8CString.getter();
        RETimelineDefinitionSetSkeletalPoseByJointName();

        v22 += 2;
        ++v21;
      }

      while (v20 != v21);
    }
  }

  else
  {
    RETimelineDefinitionSetSkeletalPoseByValue();
  }

  v25._rawValue = v3;
  v2 = specialized FromToByAnimation.createResource(timelineDefinition:)(v25);
  RERelease();
  return v2;
}

{
  memcpy(__dst, v0, sizeof(__dst));
  if (!__dst[20])
  {
    if (LOBYTE(__dst[23]) == 255 && (__dst[24] & 1) != 0 && (__dst[24] & 0x10000) != 0 && BYTE3(__dst[24]) == 2 && (__dst[30] & 1) != 0 && __dst[26] == 1 && __dst[27] == 1 && __dst[28] == 1 && !__dst[37])
    {
      v1._rawValue = 0;
      return specialized FromToByAnimation.createResource(timelineDefinition:)(v1);
    }

    if (*(__dst[25] + 16))
    {
      RETimelineDefinitionGetName();
      String.init(cString:)();
    }
  }

  String.utf8CString.getter();

  v3 = RETimelineDefinitionCreateFromToByBlendShapeWeightsAnimation();

  FromToByAnimation<>.fromValue.getter(&v27);
  if (v27)
  {
    v4 = *(v27 + 16);
    RETimelineDefinitionSetBlendShapeWeightsFromValues();

    v5 = FromToByAnimation<>.weightNames.getter();
    v6 = *(v5 + 2);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        String.utf8CString.getter();
        RETimelineDefinitionSetBlendShapeWeightsFromWeightName();

        v8 += 2;
        ++v7;
      }

      while (v6 != v7);
    }
  }

  else
  {
    RETimelineDefinitionSetBlendShapeWeightsFromValues();
  }

  FromToByAnimation<>.toValue.getter(&v27);
  if (v27)
  {
    v11 = *(v27 + 16);
    RETimelineDefinitionSetBlendShapeWeightsToValues();

    v12 = FromToByAnimation<>.weightNames.getter();
    v13 = *(v12 + 2);
    if (v13)
    {
      v14 = 0;
      v15 = (v12 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        String.utf8CString.getter();
        RETimelineDefinitionSetBlendShapeWeightsToWeightName();

        v15 += 2;
        ++v14;
      }

      while (v13 != v14);
    }
  }

  else
  {
    RETimelineDefinitionSetBlendShapeWeightsToValues();
  }

  FromToByAnimation<>.byValue.getter(&v27);
  if (v27)
  {
    v18 = *(v27 + 16);
    RETimelineDefinitionSetBlendShapeWeightsByValues();

    v19 = FromToByAnimation<>.weightNames.getter();
    v20 = *(v19 + 2);
    if (v20)
    {
      v21 = 0;
      v22 = (v19 + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        String.utf8CString.getter();
        RETimelineDefinitionSetBlendShapeWeightsByWeightName();

        v22 += 2;
        ++v21;
      }

      while (v20 != v21);
    }
  }

  else
  {
    RETimelineDefinitionSetBlendShapeWeightsByValues();
  }

  v25._rawValue = v3;
  v2 = specialized FromToByAnimation.createResource(timelineDefinition:)(v25);
  RERelease();
  return v2;
}

uint64_t FromToByAnimation.generate()(uint64_t a1)
{
  result = FromToByAnimation.createResource()(a1);
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

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>(uint64_t **a1))()
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
  v2[4] = FromToByAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance FromToByAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = FromToByAnimation.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t FromToByAnimation<>.fromValue.getter()
{
  if (*(v0 + 213))
  {
    if (*(*(v0 + 200) + 16) && (FloatFromValue = RETimelineDefinitionGetFloatFromValue()) != 0)
    {
      v2 = 0;
      v3 = *FloatFromValue;
    }

    else
    {
      v3 = 0;
      v2 = 1;
    }
  }

  else
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 212) & 1;
  }

  return v3 | (v2 << 32);
}

uint64_t key path getter for FromToByAnimation<>.fromValue : FromToByAnimation<Float>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 213))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetFloatFromValue();
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
    v4 = *(result + 208);
    v3 = *(result + 212) & 1;
  }

  *a2 = v4;
  *(a2 + 4) = v3;
  return result;
}

uint64_t FromToByAnimation<>.fromValue.setter(uint64_t result)
{
  *(v1 + 208) = result;
  *(v1 + 212) = BYTE4(result) & 1;
  *(v1 + 213) = 0;
  return result;
}

uint64_t *(*FromToByAnimation<>.fromValue.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 213))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      FloatFromValue = RETimelineDefinitionGetFloatFromValue();
      if (FloatFromValue)
      {
        v5 = 0;
        LODWORD(v2) = *FloatFromValue;
      }

      else
      {
        LODWORD(v2) = 0;
        v5 = 1;
      }

      a1 = v3;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 208);
    v5 = *(v1 + 212) & 1;
  }

  *(a1 + 8) = v2;
  *(a1 + 12) = v5;
  return FromToByAnimation<>.fromValue.modify;
}

uint64_t *FromToByAnimation<>.fromValue.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 12) != 0;
  *(v1 + 208) = *(result + 2);
  *(v1 + 212) = v2;
  *(v1 + 213) = 0;
  return result;
}

unint64_t FromToByAnimation<>.toValue.getter()
{
  if (*(v0 + 221))
  {
    if (*(*(v0 + 200) + 16) && (FloatToValue = RETimelineDefinitionGetFloatToValue()) != 0)
    {
      v2 = 0;
      v3 = *FloatToValue;
    }

    else
    {
      v3 = 0;
      v2 = 1;
    }
  }

  else
  {
    v3 = *(v0 + 216);
    v2 = *(v0 + 220) & 1;
  }

  return v3 | (v2 << 32);
}

uint64_t key path getter for FromToByAnimation<>.toValue : FromToByAnimation<Float>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 221))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetFloatToValue();
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
    v4 = *(result + 216);
    v3 = *(result + 220) & 1;
  }

  *a2 = v4;
  *(a2 + 4) = v3;
  return result;
}

uint64_t FromToByAnimation<>.toValue.setter(uint64_t result)
{
  *(v1 + 216) = result;
  *(v1 + 220) = BYTE4(result) & 1;
  *(v1 + 221) = 0;
  return result;
}

uint64_t *(*FromToByAnimation<>.toValue.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 221))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      FloatToValue = RETimelineDefinitionGetFloatToValue();
      if (FloatToValue)
      {
        v5 = 0;
        LODWORD(v2) = *FloatToValue;
      }

      else
      {
        LODWORD(v2) = 0;
        v5 = 1;
      }

      a1 = v3;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 216);
    v5 = *(v1 + 220) & 1;
  }

  *(a1 + 8) = v2;
  *(a1 + 12) = v5;
  return FromToByAnimation<>.toValue.modify;
}

uint64_t *FromToByAnimation<>.toValue.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 12) != 0;
  *(v1 + 216) = *(result + 2);
  *(v1 + 220) = v2;
  *(v1 + 221) = 0;
  return result;
}

unint64_t FromToByAnimation<>.byValue.getter()
{
  if (*(v0 + 229))
  {
    if (*(*(v0 + 200) + 16) && (FloatByValue = RETimelineDefinitionGetFloatByValue()) != 0)
    {
      v2 = 0;
      v3 = *FloatByValue;
    }

    else
    {
      v3 = 0;
      v2 = 1;
    }
  }

  else
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 228) & 1;
  }

  return v3 | (v2 << 32);
}

uint64_t key path getter for FromToByAnimation<>.byValue : FromToByAnimation<Float>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 229))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetFloatByValue();
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
    v4 = *(result + 224);
    v3 = *(result + 228) & 1;
  }

  *a2 = v4;
  *(a2 + 4) = v3;
  return result;
}

uint64_t FromToByAnimation<>.byValue.setter(uint64_t result)
{
  *(v1 + 224) = result;
  *(v1 + 228) = BYTE4(result) & 1;
  *(v1 + 229) = 0;
  return result;
}

uint64_t *(*FromToByAnimation<>.byValue.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 229))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      FloatByValue = RETimelineDefinitionGetFloatByValue();
      if (FloatByValue)
      {
        v5 = 0;
        LODWORD(v2) = *FloatByValue;
      }

      else
      {
        LODWORD(v2) = 0;
        v5 = 1;
      }

      a1 = v3;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 224);
    v5 = *(v1 + 228) & 1;
  }

  *(a1 + 8) = v2;
  *(a1 + 12) = v5;
  return FromToByAnimation<>.byValue.modify;
}

uint64_t *FromToByAnimation<>.byValue.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 12) != 0;
  *(v1 + 224) = *(result + 2);
  *(v1 + 228) = v2;
  *(v1 + 229) = 0;
  return result;
}

uint64_t FromToByAnimation<>.fromValue.getter()
{
  return FromToByAnimation<>.fromValue.getter(MEMORY[0x1E6998CD8]);
}

{
  return FromToByAnimation<>.fromValue.getter(MEMORY[0x1E6998CF8]);
}

uint64_t FromToByAnimation<>.fromValue.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  *(v2 + 217) = 0;
  return result;
}

uint64_t (*FromToByAnimation<>.fromValue.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 217))
  {
    if (*(*(v1 + 200) + 16) && (DoubleFromValue = RETimelineDefinitionGetDoubleFromValue()) != 0)
    {
      v4 = 0;
      v5 = *DoubleFromValue;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 208);
    v4 = *(v1 + 216);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation<>.fromValue.modify;
}

uint64_t FromToByAnimation<>.fromValue.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 208) = *result;
  *(v1 + 216) = v2;
  return result;
}

uint64_t FromToByAnimation<>.toValue.getter()
{
  return FromToByAnimation<>.toValue.getter(MEMORY[0x1E6998CE0]);
}

{
  return FromToByAnimation<>.toValue.getter(MEMORY[0x1E6998D00]);
}

uint64_t FromToByAnimation<>.toValue.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  *(v2 + 233) = 0;
  return result;
}

uint64_t (*FromToByAnimation<>.toValue.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 233))
  {
    if (*(*(v1 + 200) + 16) && (DoubleToValue = RETimelineDefinitionGetDoubleToValue()) != 0)
    {
      v4 = 0;
      v5 = *DoubleToValue;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 224);
    v4 = *(v1 + 232);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation<>.toValue.modify;
}

uint64_t FromToByAnimation<>.toValue.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 224) = *result;
  *(v1 + 232) = v2;
  return result;
}

uint64_t FromToByAnimation<>.byValue.getter()
{
  return FromToByAnimation<>.byValue.getter(MEMORY[0x1E6998CD0]);
}

{
  return FromToByAnimation<>.byValue.getter(MEMORY[0x1E6998CF0]);
}

uint64_t FromToByAnimation<>.byValue.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  *(v2 + 249) = 0;
  return result;
}

uint64_t (*FromToByAnimation<>.byValue.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 249))
  {
    if (*(*(v1 + 200) + 16) && (DoubleByValue = RETimelineDefinitionGetDoubleByValue()) != 0)
    {
      v4 = 0;
      v5 = *DoubleByValue;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 240);
    v4 = *(v1 + 248);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation<>.byValue.modify;
}

uint64_t FromToByAnimation<>.byValue.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 240) = *result;
  *(v1 + 248) = v2;
  return result;
}

uint64_t FromToByAnimation<>.fromValue.getter(uint64_t (*a1)(void))
{
  if (*(v1 + 217))
  {
    if (*(*(v1 + 200) + 16))
    {
      result = a1(*(*(v1 + 200) + 16));
      if (result)
      {
        return *result;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(v1 + 208);
    v3 = *(v1 + 216);
  }

  return result;
}

uint64_t key path getter for FromToByAnimation<>.fromValue : FromToByAnimation<Double>@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(result + 217))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v3 = a3;
      result = a2();
      if (result)
      {
        v4 = 0;
        v5 = *result;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

      a3 = v3;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(result + 208);
    v4 = *(result + 216);
  }

  *a3 = v5;
  *(a3 + 8) = v4 & 1;
  return result;
}

uint64_t (*FromToByAnimation<>.fromValue.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 217))
  {
    if (*(*(v1 + 200) + 16) && (Float2FromValue = RETimelineDefinitionGetFloat2FromValue()) != 0)
    {
      v4 = 0;
      v5 = *Float2FromValue;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 208);
    v4 = *(v1 + 216);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation<>.fromValue.modify;
}

uint64_t FromToByAnimation<>.toValue.getter(uint64_t (*a1)(void))
{
  if (*(v1 + 233))
  {
    if (*(*(v1 + 200) + 16))
    {
      result = a1(*(*(v1 + 200) + 16));
      if (result)
      {
        return *result;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(v1 + 224);
    v3 = *(v1 + 232);
  }

  return result;
}

uint64_t key path getter for FromToByAnimation<>.toValue : FromToByAnimation<Double>@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(result + 233))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v3 = a3;
      result = a2();
      if (result)
      {
        v4 = 0;
        v5 = *result;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

      a3 = v3;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(result + 224);
    v4 = *(result + 232);
  }

  *a3 = v5;
  *(a3 + 8) = v4 & 1;
  return result;
}

uint64_t (*FromToByAnimation<>.toValue.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 233))
  {
    if (*(*(v1 + 200) + 16) && (Float2ToValue = RETimelineDefinitionGetFloat2ToValue()) != 0)
    {
      v4 = 0;
      v5 = *Float2ToValue;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 224);
    v4 = *(v1 + 232);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation<>.toValue.modify;
}

uint64_t FromToByAnimation<>.byValue.getter(uint64_t (*a1)(void))
{
  if (*(v1 + 249))
  {
    if (*(*(v1 + 200) + 16))
    {
      result = a1(*(*(v1 + 200) + 16));
      if (result)
      {
        return *result;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(v1 + 240);
    v3 = *(v1 + 248);
  }

  return result;
}

uint64_t key path getter for FromToByAnimation<>.byValue : FromToByAnimation<Double>@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(result + 249))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v3 = a3;
      result = a2();
      if (result)
      {
        v4 = 0;
        v5 = *result;
      }

      else
      {
        v5 = 0;
        v4 = 1;
      }

      a3 = v3;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(result + 240);
    v4 = *(result + 248);
  }

  *a3 = v5;
  *(a3 + 8) = v4 & 1;
  return result;
}

uint64_t (*FromToByAnimation<>.byValue.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 249))
  {
    if (*(*(v1 + 200) + 16) && (Float2ByValue = RETimelineDefinitionGetFloat2ByValue()) != 0)
    {
      v4 = 0;
      v5 = *Float2ByValue;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 240);
    v4 = *(v1 + 248);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation<>.byValue.modify;
}

void *FromToByAnimation<>.fromValue.getter()
{
  return FromToByAnimation<>.fromValue.getter(MEMORY[0x1E6998D18]);
}

{
  return FromToByAnimation<>.fromValue.getter(MEMORY[0x1E6998D38]);
}

{
  return FromToByAnimation<>.fromValue.getter(MEMORY[0x1E6998D60]);
}

uint64_t (*FromToByAnimation<>.fromValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 225))
  {
    if (*(*(v1 + 200) + 16) && (Float3FromValue = RETimelineDefinitionGetFloat3FromValue()) != 0)
    {
      v6 = 0;
      v7 = *Float3FromValue;
      v8 = Float3FromValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 208);
    v8 = *(v1 + 216);
    v6 = *(v1 + 224);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.fromValue.modify;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 225))
  {
    if (*(*(v1 + 200) + 16) && (Float4FromValue = RETimelineDefinitionGetFloat4FromValue()) != 0)
    {
      v6 = 0;
      v7 = *Float4FromValue;
      v8 = Float4FromValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 208);
    v8 = *(v1 + 216);
    v6 = *(v1 + 224);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.fromValue.modify;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 225))
  {
    if (*(*(v1 + 200) + 16) && (QuaternionFromValue = RETimelineDefinitionGetQuaternionFromValue()) != 0)
    {
      v6 = 0;
      v7 = *QuaternionFromValue;
      v8 = QuaternionFromValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 208);
    v8 = *(v1 + 216);
    v6 = *(v1 + 224);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.fromValue.modify;
}

void *FromToByAnimation<>.toValue.getter()
{
  return FromToByAnimation<>.toValue.getter(MEMORY[0x1E6998D20]);
}

{
  return FromToByAnimation<>.toValue.getter(MEMORY[0x1E6998D40]);
}

{
  return FromToByAnimation<>.toValue.getter(MEMORY[0x1E6998D68]);
}

uint64_t (*FromToByAnimation<>.toValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 257))
  {
    if (*(*(v1 + 200) + 16) && (Float3ToValue = RETimelineDefinitionGetFloat3ToValue()) != 0)
    {
      v6 = 0;
      v7 = *Float3ToValue;
      v8 = Float3ToValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 240);
    v8 = *(v1 + 248);
    v6 = *(v1 + 256);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.toValue.modify;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 257))
  {
    if (*(*(v1 + 200) + 16) && (Float4ToValue = RETimelineDefinitionGetFloat4ToValue()) != 0)
    {
      v6 = 0;
      v7 = *Float4ToValue;
      v8 = Float4ToValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 240);
    v8 = *(v1 + 248);
    v6 = *(v1 + 256);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.toValue.modify;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 257))
  {
    if (*(*(v1 + 200) + 16) && (QuaternionToValue = RETimelineDefinitionGetQuaternionToValue()) != 0)
    {
      v6 = 0;
      v7 = *QuaternionToValue;
      v8 = QuaternionToValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 240);
    v8 = *(v1 + 248);
    v6 = *(v1 + 256);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.toValue.modify;
}

void *FromToByAnimation<>.byValue.getter()
{
  return FromToByAnimation<>.byValue.getter(MEMORY[0x1E6998D10]);
}

{
  return FromToByAnimation<>.byValue.getter(MEMORY[0x1E6998D30]);
}

{
  return FromToByAnimation<>.byValue.getter(MEMORY[0x1E6998D58]);
}

uint64_t (*FromToByAnimation<>.byValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 289))
  {
    if (*(*(v1 + 200) + 16) && (Float3ByValue = RETimelineDefinitionGetFloat3ByValue()) != 0)
    {
      v6 = 0;
      v7 = *Float3ByValue;
      v8 = Float3ByValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 272);
    v8 = *(v1 + 280);
    v6 = *(v1 + 288);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.byValue.modify;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 289))
  {
    if (*(*(v1 + 200) + 16) && (Float4ByValue = RETimelineDefinitionGetFloat4ByValue()) != 0)
    {
      v6 = 0;
      v7 = *Float4ByValue;
      v8 = Float4ByValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 272);
    v8 = *(v1 + 280);
    v6 = *(v1 + 288);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.byValue.modify;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (*(v1 + 289))
  {
    if (*(*(v1 + 200) + 16) && (QuaternionByValue = RETimelineDefinitionGetQuaternionByValue()) != 0)
    {
      v6 = 0;
      v7 = *QuaternionByValue;
      v8 = QuaternionByValue[1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = *(v1 + 272);
    v8 = *(v1 + 280);
    v6 = *(v1 + 288);
  }

  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v6 & 1;
  return FromToByAnimation<>.byValue.modify;
}

void *FromToByAnimation<>.fromValue.getter(uint64_t (*a1)(void))
{
  if (*(v1 + 225))
  {
    if (*(*(v1 + 200) + 16))
    {
      result = a1(*(*(v1 + 200) + 16));
      if (result)
      {
        v3 = result;
        result = *result;
        v4 = v3[1];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(v1 + 208);
    v5 = *(v1 + 216);
    v6 = *(v1 + 224);
  }

  return result;
}

uint64_t key path getter for FromToByAnimation<>.fromValue : FromToByAnimation<SIMD3<Float>>@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(result + 225))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v3 = a3;
      result = a2();
      if (result)
      {
        v4 = 0;
        v5 = *result;
        v6 = *(result + 8);
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v4 = 1;
      }

      a3 = v3;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(result + 208);
    v6 = *(result + 216);
    v4 = *(result + 224);
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v4 & 1;
  return result;
}

uint64_t FromToByAnimation<>.fromValue.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 208) = result;
  *(v3 + 216) = a2;
  *(v3 + 224) = a3 & 1;
  *(v3 + 225) = 0;
  return result;
}

void FromToByAnimation<>.fromValue.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = *(v1 + 16);
  *(v2 + 208) = *v1;
  *(v2 + 224) = v3;
  free(v1);
}

void *FromToByAnimation<>.toValue.getter(uint64_t (*a1)(void))
{
  if (*(v1 + 257))
  {
    if (*(*(v1 + 200) + 16))
    {
      result = a1(*(*(v1 + 200) + 16));
      if (result)
      {
        v3 = result;
        result = *result;
        v4 = v3[1];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(v1 + 240);
    v5 = *(v1 + 248);
    v6 = *(v1 + 256);
  }

  return result;
}

uint64_t key path getter for FromToByAnimation<>.toValue : FromToByAnimation<SIMD3<Float>>@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(result + 257))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v3 = a3;
      result = a2();
      if (result)
      {
        v4 = 0;
        v5 = *result;
        v6 = *(result + 8);
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v4 = 1;
      }

      a3 = v3;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(result + 240);
    v6 = *(result + 248);
    v4 = *(result + 256);
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v4 & 1;
  return result;
}

uint64_t FromToByAnimation<>.toValue.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 240) = result;
  *(v3 + 248) = a2;
  *(v3 + 256) = a3 & 1;
  *(v3 + 257) = 0;
  return result;
}

void FromToByAnimation<>.toValue.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = *(v1 + 16);
  *(v2 + 240) = *v1;
  *(v2 + 256) = v3;
  free(v1);
}

void *FromToByAnimation<>.byValue.getter(uint64_t (*a1)(void))
{
  if (*(v1 + 289))
  {
    if (*(*(v1 + 200) + 16))
    {
      result = a1(*(*(v1 + 200) + 16));
      if (result)
      {
        v3 = result;
        result = *result;
        v4 = v3[1];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = *(v1 + 272);
    v5 = *(v1 + 280);
    v6 = *(v1 + 288);
  }

  return result;
}

uint64_t key path getter for FromToByAnimation<>.byValue : FromToByAnimation<SIMD3<Float>>@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(result + 289))
  {
    result = *(*(result + 200) + 16);
    if (result)
    {
      v3 = a3;
      result = a2();
      if (result)
      {
        v4 = 0;
        v5 = *result;
        v6 = *(result + 8);
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v4 = 1;
      }

      a3 = v3;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(result + 272);
    v6 = *(result + 280);
    v4 = *(result + 288);
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v4 & 1;
  return result;
}

uint64_t FromToByAnimation<>.byValue.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  *(v3 + 289) = 0;
  return result;
}

void FromToByAnimation<>.byValue.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = *(v1 + 16);
  *(v2 + 272) = *v1;
  *(v2 + 288) = v3;
  free(v1);
}

void FromToByAnimation<>.fromValue.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 257))
  {
    if (*(*(v1 + 200) + 16))
    {
      v2 = a1;
      SRTFromValue = RETimelineDefinitionGetSRTFromValue();
      if (SRTFromValue)
      {
        v5 = *SRTFromValue;
        v4 = SRTFromValue[1];
        v7 = SRTFromValue[2];
        v6 = SRTFromValue[3];
        v9 = SRTFromValue[4];
        v8 = SRTFromValue[5];
        a1 = v2;
        if (one-time initialization token for identity != -1)
        {
          v11 = SRTFromValue[1];
          v13 = SRTFromValue[3];
          v14 = *SRTFromValue;
          v16 = SRTFromValue[2];
          v12 = SRTFromValue[5];
          v15 = SRTFromValue[4];
          swift_once();
          v5 = v14;
          v9 = v15;
          v8 = v12;
          v6 = v13;
          v7 = v16;
          v4 = v11;
          a1 = v2;
        }

        v10 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 0;
        v7 = 0;
        v6 = 0;
        v9 = 0;
        v8 = 0;
        v10 = 1;
        a1 = v2;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v10 = 1;
    }
  }

  else
  {
    v9 = *(v1 + 240);
    v8 = *(v1 + 248);
    v7 = *(v1 + 224);
    v6 = *(v1 + 232);
    v5 = *(v1 + 208);
    v4 = *(v1 + 216);
    v10 = *(v1 + 256);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v9;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10 & 1;
}

__n128 FromToByAnimation<>.fromValue.setter(uint64_t a1)
{
  v2 = *(a1 + 48) & 1;
  v3 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v3;
  result = *(a1 + 32);
  *(v1 + 240) = result;
  *(v1 + 256) = v2;
  return result;
}

void (*FromToByAnimation<>.fromValue.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  if (*(v1 + 257))
  {
    if (*(*(v1 + 200) + 16) && (SRTFromValue = RETimelineDefinitionGetSRTFromValue()) != 0)
    {
      v7 = *SRTFromValue;
      v6 = SRTFromValue[1];
      v9 = SRTFromValue[2];
      v8 = SRTFromValue[3];
      v11 = SRTFromValue[4];
      v10 = SRTFromValue[5];
      if (one-time initialization token for identity != -1)
      {
        v16 = SRTFromValue[2];
        v17 = SRTFromValue[1];
        v14 = *SRTFromValue;
        v18 = SRTFromValue[5];
        v19 = SRTFromValue[3];
        v15 = SRTFromValue[4];
        swift_once();
        v11 = v15;
        v9 = v16;
        v10 = v18;
        v8 = v19;
        v7 = v14;
        v6 = v17;
      }

      v12 = 0;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v11 = 0;
      v10 = 0;
      v12 = 1;
    }
  }

  else
  {
    v11 = *(v1 + 240);
    v10 = *(v1 + 248);
    v9 = *(v1 + 224);
    v8 = *(v1 + 232);
    v7 = *(v1 + 208);
    v6 = *(v1 + 216);
    v12 = *(v1 + 256);
  }

  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v9;
  *(v4 + 24) = v8;
  *(v4 + 32) = v11;
  *(v4 + 40) = v10;
  *(v4 + 48) = v12 & 1;
  return FromToByAnimation<>.fromValue.modify;
}

void FromToByAnimation<>.fromValue.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[1];
  v4 = v2[2];
  v5 = *(v2 + 48);
  if (a2)
  {
    v7 = *(v2 + 48);
  }

  else
  {
    v8 = *(v2 + 48);
  }

  v6 = *(v2 + 7);
  *(v6 + 208) = *v2;
  *(v6 + 224) = v3;
  *(v6 + 240) = v4;
  *(v6 + 256) = v5;
  *(v6 + 257) = 0;
  free(v2);
}

void FromToByAnimation<>.toValue.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 321))
  {
    if (*(*(v1 + 200) + 16))
    {
      v2 = a1;
      SRTToValue = RETimelineDefinitionGetSRTToValue();
      if (SRTToValue)
      {
        v5 = *SRTToValue;
        v4 = SRTToValue[1];
        v7 = SRTToValue[2];
        v6 = SRTToValue[3];
        v9 = SRTToValue[4];
        v8 = SRTToValue[5];
        a1 = v2;
        if (one-time initialization token for identity != -1)
        {
          v11 = SRTToValue[1];
          v13 = SRTToValue[3];
          v14 = *SRTToValue;
          v16 = SRTToValue[2];
          v12 = SRTToValue[5];
          v15 = SRTToValue[4];
          swift_once();
          v5 = v14;
          v9 = v15;
          v8 = v12;
          v6 = v13;
          v7 = v16;
          v4 = v11;
          a1 = v2;
        }

        v10 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 0;
        v7 = 0;
        v6 = 0;
        v9 = 0;
        v8 = 0;
        v10 = 1;
        a1 = v2;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v10 = 1;
    }
  }

  else
  {
    v9 = *(v1 + 304);
    v8 = *(v1 + 312);
    v7 = *(v1 + 288);
    v6 = *(v1 + 296);
    v5 = *(v1 + 272);
    v4 = *(v1 + 280);
    v10 = *(v1 + 320);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v9;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10 & 1;
}

__n128 FromToByAnimation<>.toValue.setter(uint64_t a1)
{
  v2 = *(a1 + 48) & 1;
  v3 = *(a1 + 16);
  *(v1 + 272) = *a1;
  *(v1 + 288) = v3;
  result = *(a1 + 32);
  *(v1 + 304) = result;
  *(v1 + 320) = v2;
  return result;
}

void (*FromToByAnimation<>.toValue.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  if (*(v1 + 321))
  {
    if (*(*(v1 + 200) + 16) && (SRTToValue = RETimelineDefinitionGetSRTToValue()) != 0)
    {
      v7 = *SRTToValue;
      v6 = SRTToValue[1];
      v9 = SRTToValue[2];
      v8 = SRTToValue[3];
      v11 = SRTToValue[4];
      v10 = SRTToValue[5];
      if (one-time initialization token for identity != -1)
      {
        v16 = SRTToValue[2];
        v17 = SRTToValue[1];
        v14 = *SRTToValue;
        v18 = SRTToValue[5];
        v19 = SRTToValue[3];
        v15 = SRTToValue[4];
        swift_once();
        v11 = v15;
        v9 = v16;
        v10 = v18;
        v8 = v19;
        v7 = v14;
        v6 = v17;
      }

      v12 = 0;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v11 = 0;
      v10 = 0;
      v12 = 1;
    }
  }

  else
  {
    v11 = *(v1 + 304);
    v10 = *(v1 + 312);
    v9 = *(v1 + 288);
    v8 = *(v1 + 296);
    v7 = *(v1 + 272);
    v6 = *(v1 + 280);
    v12 = *(v1 + 320);
  }

  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v9;
  *(v4 + 24) = v8;
  *(v4 + 32) = v11;
  *(v4 + 40) = v10;
  *(v4 + 48) = v12 & 1;
  return FromToByAnimation<>.toValue.modify;
}

void FromToByAnimation<>.toValue.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[1];
  v4 = v2[2];
  v5 = *(v2 + 48);
  if (a2)
  {
    v7 = *(v2 + 48);
  }

  else
  {
    v8 = *(v2 + 48);
  }

  v6 = *(v2 + 7);
  *(v6 + 272) = *v2;
  *(v6 + 288) = v3;
  *(v6 + 304) = v4;
  *(v6 + 320) = v5;
  *(v6 + 321) = 0;
  free(v2);
}

void FromToByAnimation<>.byValue.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 385))
  {
    if (*(*(v1 + 200) + 16))
    {
      v2 = a1;
      SRTByValue = RETimelineDefinitionGetSRTByValue();
      if (SRTByValue)
      {
        v5 = *SRTByValue;
        v4 = SRTByValue[1];
        v7 = SRTByValue[2];
        v6 = SRTByValue[3];
        v9 = SRTByValue[4];
        v8 = SRTByValue[5];
        a1 = v2;
        if (one-time initialization token for identity != -1)
        {
          v11 = SRTByValue[1];
          v13 = SRTByValue[3];
          v14 = *SRTByValue;
          v16 = SRTByValue[2];
          v12 = SRTByValue[5];
          v15 = SRTByValue[4];
          swift_once();
          v5 = v14;
          v9 = v15;
          v8 = v12;
          v6 = v13;
          v7 = v16;
          v4 = v11;
          a1 = v2;
        }

        v10 = 0;
      }

      else
      {
        v5 = 0;
        v4 = 0;
        v7 = 0;
        v6 = 0;
        v9 = 0;
        v8 = 0;
        v10 = 1;
        a1 = v2;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v10 = 1;
    }
  }

  else
  {
    v9 = *(v1 + 368);
    v8 = *(v1 + 376);
    v7 = *(v1 + 352);
    v6 = *(v1 + 360);
    v5 = *(v1 + 336);
    v4 = *(v1 + 344);
    v10 = *(v1 + 384);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v9;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10 & 1;
}

__n128 FromToByAnimation<>.byValue.setter(uint64_t a1)
{
  v2 = *(a1 + 48) & 1;
  v3 = *(a1 + 16);
  *(v1 + 336) = *a1;
  *(v1 + 352) = v3;
  result = *(a1 + 32);
  *(v1 + 368) = result;
  *(v1 + 384) = v2;
  return result;
}

void (*FromToByAnimation<>.byValue.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  if (*(v1 + 385))
  {
    if (*(*(v1 + 200) + 16) && (SRTByValue = RETimelineDefinitionGetSRTByValue()) != 0)
    {
      v7 = *SRTByValue;
      v6 = SRTByValue[1];
      v9 = SRTByValue[2];
      v8 = SRTByValue[3];
      v11 = SRTByValue[4];
      v10 = SRTByValue[5];
      if (one-time initialization token for identity != -1)
      {
        v16 = SRTByValue[2];
        v17 = SRTByValue[1];
        v14 = *SRTByValue;
        v18 = SRTByValue[5];
        v19 = SRTByValue[3];
        v15 = SRTByValue[4];
        swift_once();
        v11 = v15;
        v9 = v16;
        v10 = v18;
        v8 = v19;
        v7 = v14;
        v6 = v17;
      }

      v12 = 0;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v11 = 0;
      v10 = 0;
      v12 = 1;
    }
  }

  else
  {
    v11 = *(v1 + 368);
    v10 = *(v1 + 376);
    v9 = *(v1 + 352);
    v8 = *(v1 + 360);
    v7 = *(v1 + 336);
    v6 = *(v1 + 344);
    v12 = *(v1 + 384);
  }

  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v9;
  *(v4 + 24) = v8;
  *(v4 + 32) = v11;
  *(v4 + 40) = v10;
  *(v4 + 48) = v12 & 1;
  return FromToByAnimation<>.byValue.modify;
}

void FromToByAnimation<>.byValue.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[1];
  v4 = v2[2];
  v5 = *(v2 + 48);
  if (a2)
  {
    v7 = *(v2 + 48);
  }

  else
  {
    v8 = *(v2 + 48);
  }

  v6 = *(v2 + 7);
  *(v6 + 336) = *v2;
  *(v6 + 352) = v3;
  *(v6 + 368) = v4;
  *(v6 + 384) = v5;
  *(v6 + 385) = 0;
  free(v2);
}

char *FromToByAnimation<>.jointNames.getter()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 280);

    return v1;
  }

  v3 = *(v0 + 200);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  SkeletalPoseFromJointCount = RETimelineDefinitionGetSkeletalPoseFromJointCount();
  if (!SkeletalPoseFromJointCount)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = SkeletalPoseFromJointCount;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, SkeletalPoseFromJointCount & ~(SkeletalPoseFromJointCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v1 = result;
    v8 = 0;
    while (1)
    {
      SkeletalPoseFromJointName = RETimelineDefinitionGetSkeletalPoseFromJointName();
      if (SkeletalPoseFromJointName)
      {
        SkeletalPoseFromJointName = String.init(cString:)();
        v10 = *(v1 + 2);
        v9 = *(v1 + 3);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          v15 = v12;
LABEL_13:
          v16 = SkeletalPoseFromJointName;
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v11, 1, v1);
          SkeletalPoseFromJointName = v16;
          v12 = v15;
        }
      }

      else
      {
        v10 = *(v1 + 2);
        v9 = *(v1 + 3);
        v11 = v10 + 1;
        v12 = 0xE000000000000000;
        if (v10 >= v9 >> 1)
        {
          v15 = 0xE000000000000000;
          goto LABEL_13;
        }
      }

      ++v8;
      *(v1 + 2) = v11;
      v13 = &v1[16 * v10];
      *(v13 + 4) = SkeletalPoseFromJointName;
      *(v13 + 5) = v12;
      if (v6 == v8)
      {
        return v1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t FromToByAnimation<>.jointNames.setter(uint64_t a1)
{
  v3 = *(v1 + 280);

  *(v1 + 280) = a1;
  return result;
}

uint64_t (*FromToByAnimation<>.jointNames.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  memcpy(v5, v1, sizeof(v5));
  v3 = *(v1 + 280);
  a1[2] = v3;
  v7 = *(v1 + 288);
  v6 = v3;
  *a1 = FromToByAnimation<>.jointNames.getter();
  return FromToByAnimation<>.jointNames.modify;
}

uint64_t FromToByAnimation<>.jointNames.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 280) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 280) = v4;
  }

  return result;
}

uint64_t FromToByAnimation<>.fromValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v1 + 200);
    if (*(v4 + 16))
    {
      v5 = a1;
      v6 = *(v4 + 16);
      SkeletalPoseFromJointCount = RETimelineDefinitionGetSkeletalPoseFromJointCount();
      if (SkeletalPoseFromJointCount && (v8 = SkeletalPoseFromJointCount, (SkeletalPoseFromValue = RETimelineDefinitionGetSkeletalPoseFromValue()) != 0))
      {
        v10 = SkeletalPoseFromValue;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo5RESRTa_Tt1g5Tm(v8, 0, &_ss23_ContiguousArrayStorageCySo5RESRTaGMd, &_ss23_ContiguousArrayStorageCySo5RESRTaGMR);
        memcpy(v3 + 4, v10, 48 * v8);
      }

      else
      {
        v3 = 0;
      }

      v2 = 1;
      a1 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;

  return sub_1C135AFE0(v2);
}

{
  v2 = *(v1 + 208);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v1 + 200);
    if (*(v4 + 16))
    {
      v5 = a1;
      v6 = *(v4 + 16);
      BlendShapeWeightsFromWeightCount = RETimelineDefinitionGetBlendShapeWeightsFromWeightCount();
      if (BlendShapeWeightsFromWeightCount && (v8 = BlendShapeWeightsFromWeightCount, (BlendShapeWeightsFromValue = RETimelineDefinitionGetBlendShapeWeightsFromValue()) != 0))
      {
        v10 = BlendShapeWeightsFromValue;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5Tm(v8, 0, &_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        memcpy(v3 + 4, v10, 4 * v8);
      }

      else
      {
        v3 = 0;
      }

      v2 = 1;
      a1 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;

  return sub_1C135AFE0(v2);
}

uint64_t FromToByAnimation<>.fromValue.setter(uint64_t *a1)
{
  v2 = *a1;
  result = _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(v1 + 208));
  *(v1 + 208) = v2;
  return result;
}

uint64_t (*FromToByAnimation<>.fromValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  FromToByAnimation<>.fromValue.getter(a1);
  return FromToByAnimation<>.fromValue.modify;
}

{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  FromToByAnimation<>.fromValue.getter(a1);
  return FromToByAnimation<>.fromValue.modify;
}

uint64_t FromToByAnimation<>.toValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v1 + 200);
    if (*(v4 + 16))
    {
      v5 = a1;
      v6 = *(v4 + 16);
      SkeletalPoseToJointCount = RETimelineDefinitionGetSkeletalPoseToJointCount();
      if (SkeletalPoseToJointCount && (v8 = SkeletalPoseToJointCount, (SkeletalPoseToValue = RETimelineDefinitionGetSkeletalPoseToValue()) != 0))
      {
        v10 = SkeletalPoseToValue;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo5RESRTa_Tt1g5Tm(v8, 0, &_ss23_ContiguousArrayStorageCySo5RESRTaGMd, &_ss23_ContiguousArrayStorageCySo5RESRTaGMR);
        memcpy(v3 + 4, v10, 48 * v8);
      }

      else
      {
        v3 = 0;
      }

      v2 = 1;
      a1 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;

  return sub_1C135AFE0(v2);
}

{
  v2 = *(v1 + 216);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v1 + 200);
    if (*(v4 + 16))
    {
      v5 = a1;
      v6 = *(v4 + 16);
      BlendShapeWeightsToWeightCount = RETimelineDefinitionGetBlendShapeWeightsToWeightCount();
      if (BlendShapeWeightsToWeightCount && (v8 = BlendShapeWeightsToWeightCount, (BlendShapeWeightsToValue = RETimelineDefinitionGetBlendShapeWeightsToValue()) != 0))
      {
        v10 = BlendShapeWeightsToValue;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5Tm(v8, 0, &_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        memcpy(v3 + 4, v10, 4 * v8);
      }

      else
      {
        v3 = 0;
      }

      v2 = 1;
      a1 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;

  return sub_1C135AFE0(v2);
}

uint64_t FromToByAnimation<>.toValue.setter(uint64_t *a1)
{
  v2 = *a1;
  result = _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(v1 + 216));
  *(v1 + 216) = v2;
  return result;
}

uint64_t (*FromToByAnimation<>.toValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  FromToByAnimation<>.toValue.getter(a1);
  return FromToByAnimation<>.toValue.modify;
}

{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  FromToByAnimation<>.toValue.getter(a1);
  return FromToByAnimation<>.toValue.modify;
}

uint64_t FromToByAnimation<>.byValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v1 + 200);
    if (*(v4 + 16))
    {
      v5 = a1;
      v6 = *(v4 + 16);
      SkeletalPoseByJointCount = RETimelineDefinitionGetSkeletalPoseByJointCount();
      if (SkeletalPoseByJointCount && (v8 = SkeletalPoseByJointCount, (SkeletalPoseByValue = RETimelineDefinitionGetSkeletalPoseByValue()) != 0))
      {
        v10 = SkeletalPoseByValue;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo5RESRTa_Tt1g5Tm(v8, 0, &_ss23_ContiguousArrayStorageCySo5RESRTaGMd, &_ss23_ContiguousArrayStorageCySo5RESRTaGMR);
        memcpy(v3 + 4, v10, 48 * v8);
      }

      else
      {
        v3 = 0;
      }

      v2 = 1;
      a1 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;

  return sub_1C135AFE0(v2);
}

{
  v2 = *(v1 + 224);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v1 + 200);
    if (*(v4 + 16))
    {
      v5 = a1;
      v6 = *(v4 + 16);
      BlendShapeWeightsByWeightCount = RETimelineDefinitionGetBlendShapeWeightsByWeightCount();
      if (BlendShapeWeightsByWeightCount && (v8 = BlendShapeWeightsByWeightCount, (BlendShapeWeightsByValue = RETimelineDefinitionGetBlendShapeWeightsByValue()) != 0))
      {
        v10 = BlendShapeWeightsByValue;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5Tm(v8, 0, &_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        memcpy(v3 + 4, v10, 4 * v8);
      }

      else
      {
        v3 = 0;
      }

      v2 = 1;
      a1 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;

  return sub_1C135AFE0(v2);
}

uint64_t FromToByAnimation<>.byValue.setter(uint64_t *a1)
{
  v2 = *a1;
  result = _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(v1 + 224));
  *(v1 + 224) = v2;
  return result;
}

uint64_t (*FromToByAnimation<>.byValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  FromToByAnimation<>.byValue.getter(a1);
  return FromToByAnimation<>.byValue.modify;
}

{
  a1[1] = v1;
  memcpy(v4, v1, sizeof(v4));
  FromToByAnimation<>.byValue.getter(a1);
  return FromToByAnimation<>.byValue.modify;
}

uint64_t FromToByAnimation<>.isScaleAnimated.getter()
{
  v1 = *(v0 + 288);
  if (v1 == 2)
  {
    if (*(*(v0 + 200) + 16))
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

_BYTE *(*FromToByAnimation<>.isScaleAnimated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 288);
  if (v2 == 2)
  {
    if (*(*(v1 + 200) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return FromToByAnimation<>.isScaleAnimated.modify;
}

uint64_t FromToByAnimation<>.isRotationAnimated.getter()
{
  v1 = *(v0 + 289);
  if (v1 == 2)
  {
    if (*(*(v0 + 200) + 16))
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

_BYTE *(*FromToByAnimation<>.isRotationAnimated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 289);
  if (v2 == 2)
  {
    if (*(*(v1 + 200) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return FromToByAnimation<>.isRotationAnimated.modify;
}

uint64_t FromToByAnimation<>.isTranslationAnimated.getter()
{
  v1 = *(v0 + 290);
  if (v1 == 2)
  {
    if (*(*(v0 + 200) + 16))
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

_BYTE *(*FromToByAnimation<>.isTranslationAnimated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 290);
  if (v2 == 2)
  {
    if (*(*(v1 + 200) + 16))
    {
      v3 = a1;
      v4 = *(*(v1 + 200) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
      a1 = v3;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2 & 1;
  return FromToByAnimation<>.isTranslationAnimated.modify;
}

uint64_t FromToByAnimation<>.init(jointNames:name:isScaleAnimated:isRotationAnimated:isTranslationAnimated:from:to:by:duration:timing:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, uint64_t *a14, uint64_t *a15, char a16, uint64_t *a17, int a18, char *a19, char *a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v41 = *a7;
  v42 = *a8;
  v43 = *a14;
  v46 = a15[1];
  v47 = *a15;
  v44 = *(a15 + 20);
  v45 = *(a15 + 4);
  v38 = *a17;
  v37 = a17[1];
  v36 = *(a17 + 16);
  v32 = *a19;
  v40 = *a20;
  *(a9 + 208) = vdupq_n_s64(1uLL);
  *(a9 + 224) = 1;
  *(a9 + 296) = 0;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *a9 = a21;
  *(a9 + 8) = a22 & 1;
  *(a9 + 9) = 0;
  *(a9 + 16) = a23;
  *(a9 + 24) = a24 & 1;
  *(a9 + 25) = 0;
  *(a9 + 32) = a25;
  *(a9 + 40) = a26 & 1;
  *(a9 + 41) = 0;
  *(a9 + 48) = a11;
  *(a9 + 56) = 0;
  *(a9 + 64) = a12;
  *(a9 + 72) = 0;
  *(a9 + 76) = a13;
  *(a9 + 80) = 0;
  *(a9 + 81) = v32;
  *(a9 + 88) = 0;
  *(a9 + 96) = a2;
  *(a9 + 104) = a3;
  *(a9 + 112) = xmmword_1C1898800;
  *(a9 + 128) = 0;
  *(a9 + 132) = 0;
  *(a9 + 136) = 0;
  *(a9 + 138) = 0;
  *(a9 + 144) = v33;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  *(a9 + 168) = v38;
  *(a9 + 176) = v37;
  *(a9 + 184) = v36;
  *(a9 + 185) = v52;
  *(a9 + 187) = v53;
  *(a9 + 188) = a18;
  *(a9 + 192) = 0;
  *(a9 + 193) = v40;
  *(a9 + 194) = 0;
  *(a9 + 195) = a16;
  *(a9 + 200) = v34;
  *(a9 + 288) = a4;
  *(a9 + 289) = a5;
  *(a9 + 290) = a6;
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(a9 + 208));
  *(a9 + 208) = v41;
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(a9 + 216));
  *(a9 + 216) = v42;
  result = _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(a9 + 224));
  *(a9 + 224) = v43;
  *(a9 + 232) = a10;
  *(a9 + 240) = 0;
  *(a9 + 256) = v47;
  *(a9 + 264) = v46;
  *(a9 + 272) = v45;
  *(a9 + 276) = v44;
  *(a9 + 280) = a1;
  return result;
}

char *FromToByAnimation<>.weightNames.getter()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 296);

    return v1;
  }

  v3 = *(v0 + 200);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  BlendShapeWeightsFromWeightCount = RETimelineDefinitionGetBlendShapeWeightsFromWeightCount();
  if (!BlendShapeWeightsFromWeightCount)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = BlendShapeWeightsFromWeightCount;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsFromWeightCount & ~(BlendShapeWeightsFromWeightCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v1 = result;
    v8 = 0;
    while (1)
    {
      BlendShapeWeightsFromWeightName = RETimelineDefinitionGetBlendShapeWeightsFromWeightName();
      if (BlendShapeWeightsFromWeightName)
      {
        BlendShapeWeightsFromWeightName = String.init(cString:)();
        v10 = *(v1 + 2);
        v9 = *(v1 + 3);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          v15 = v12;
LABEL_13:
          v16 = BlendShapeWeightsFromWeightName;
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v11, 1, v1);
          BlendShapeWeightsFromWeightName = v16;
          v12 = v15;
        }
      }

      else
      {
        v10 = *(v1 + 2);
        v9 = *(v1 + 3);
        v11 = v10 + 1;
        v12 = 0xE000000000000000;
        if (v10 >= v9 >> 1)
        {
          v15 = 0xE000000000000000;
          goto LABEL_13;
        }
      }

      ++v8;
      *(v1 + 2) = v11;
      v13 = &v1[16 * v10];
      *(v13 + 4) = BlendShapeWeightsFromWeightName;
      *(v13 + 5) = v12;
      if (v6 == v8)
      {
        return v1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t FromToByAnimation<>.weightNames.setter(uint64_t a1)
{
  v3 = *(v1 + 296);

  *(v1 + 296) = a1;
  return result;
}

uint64_t (*FromToByAnimation<>.weightNames.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  memcpy(v5, v1, sizeof(v5));
  v3 = *(v1 + 37);
  a1[2] = v3;
  v6 = v3;
  *a1 = FromToByAnimation<>.weightNames.getter();
  return FromToByAnimation<>.weightNames.modify;
}

uint64_t FromToByAnimation<>.weightNames.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 296) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 296) = v4;
  }

  return result;
}

uint64_t FromToByAnimation<>.fromValue.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v5 + 208);
  if (a2)
  {
    v7 = *a1;

    a3(v6);
    *(v5 + 208) = v4;
  }

  else
  {
    result = (a3)(*(v5 + 208));
    *(v5 + 208) = v4;
  }

  return result;
}

uint64_t FromToByAnimation<>.toValue.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v5 + 216);
  if (a2)
  {
    v7 = *a1;

    a3(v6);
    *(v5 + 216) = v4;
  }

  else
  {
    result = (a3)(*(v5 + 216));
    *(v5 + 216) = v4;
  }

  return result;
}

uint64_t FromToByAnimation<>.byValue.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v5 + 224);
  if (a2)
  {
    v7 = *a1;

    a3(v6);
    *(v5 + 224) = v4;
  }

  else
  {
    result = (a3)(*(v5 + 224));
    *(v5 + 224) = v4;
  }

  return result;
}

uint64_t FromToByAnimation<>.init(weightNames:name:from:to:by:duration:timing:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, uint64_t *a14, int a15, char *a16, char *a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23)
{
  v38 = *a4;
  v39 = *a5;
  v40 = *a6;
  v44 = *a7;
  v43 = a7[1];
  v42 = *(a7 + 4);
  v41 = *(a7 + 20);
  v36 = *a14;
  v35 = a14[1];
  v34 = *(a14 + 16);
  v29 = *a16;
  v37 = *a17;
  *(a9 + 208) = vdupq_n_s64(1uLL);
  *(a9 + 224) = 1;
  *(a9 + 280) = 0;
  *(a9 + 288) = 514;
  *(a9 + 290) = 2;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *a9 = a18;
  *(a9 + 8) = a19 & 1;
  *(a9 + 9) = 0;
  *(a9 + 16) = a20;
  *(a9 + 24) = a21 & 1;
  *(a9 + 25) = 0;
  *(a9 + 32) = a22;
  *(a9 + 40) = a23 & 1;
  *(a9 + 41) = 0;
  *(a9 + 48) = a11;
  *(a9 + 56) = 0;
  *(a9 + 64) = a12;
  *(a9 + 72) = 0;
  *(a9 + 76) = a13;
  *(a9 + 80) = 0;
  *(a9 + 81) = v29;
  *(a9 + 88) = 0;
  *(a9 + 96) = a2;
  *(a9 + 104) = a3;
  *(a9 + 112) = xmmword_1C1898800;
  *(a9 + 128) = 0;
  *(a9 + 132) = 0;
  *(a9 + 136) = 0;
  *(a9 + 138) = 0;
  *(a9 + 144) = v30;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  *(a9 + 168) = v36;
  *(a9 + 176) = v35;
  *(a9 + 184) = v34;
  *(a9 + 185) = v47;
  *(a9 + 187) = v48;
  *(a9 + 188) = a15;
  *(a9 + 192) = 0;
  *(a9 + 193) = v37;
  *(a9 + 194) = 0;
  *(a9 + 195) = a8;
  *(a9 + 200) = v31;
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(a9 + 208));
  *(a9 + 208) = v38;
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(a9 + 216));
  *(a9 + 216) = v39;
  result = _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*(a9 + 224));
  *(a9 + 224) = v40;
  *(a9 + 232) = a10;
  *(a9 + 240) = 0;
  *(a9 + 256) = v44;
  *(a9 + 264) = v43;
  *(a9 + 272) = v42;
  *(a9 + 276) = v41;
  *(a9 + 296) = a1;
  return result;
}

uint64_t outlined copy of BindTarget?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined copy of BindTarget(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined copy of BindTarget(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u && (((1 << a3) & 0x33) != 0 || a3 == 2))
  {
  }

  return result;
}

uint64_t outlined consume of BindTarget?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of BindTarget(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of BindTarget(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u && (((1 << a3) & 0x33) != 0 || a3 == 2))
  {
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation32VirtualEnvironmentProbeComponentV0H0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation32VirtualEnvironmentProbeComponentV0H0VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMd, &_ss23_ContiguousArrayStorageCys6UInt64V16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlG0tGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation21BlendShapeWeightsDataVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21BlendShapeWeightsDataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation6System_pXpGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation6System_pXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation9SetupPair33_F4E16A453D8AE199771F0745BF89049ELLVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation9SetupPair33_F4E16A453D8AE199771F0745BF89049ELLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC20CameraViewDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation0D8RendererC20CameraViewDescriptorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11REShaderAPIVGMd, &_ss23_ContiguousArrayStorageCySo11REShaderAPIVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit18__MaterialResourceC04CoreF8FunctionVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit18__MaterialResourceC04CoreF8FunctionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23RESkeletalPoseMeshMapExaGMd, &_ss23_ContiguousArrayStorageCySo23RESkeletalPoseMeshMapExaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V5StackVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V5StackVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22StateMachineTransitionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22StateMachineTransitionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation012StateMachineF0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation012StateMachineF0VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21REBlendWeightsMeshMapaGMd, &_ss23_ContiguousArrayStorageCySo21REBlendWeightsMeshMapaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation41_Proto_BlendShapeWeightsAndMeshesGroup_v1VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation41_Proto_BlendShapeWeightsAndMeshesGroup_v1VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE4PartVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE4PartVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8SkeletonV5JointVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8SkeletonV5JointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorV0J20CompatibilityVariantVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit13VideoMaterialVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit13VideoMaterialVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE5ModelVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE5ModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8InstanceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8InstanceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8SkeletonVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8SkeletonVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15CoreIKTransformaGMd, &_ss23_ContiguousArrayStorageCySo15CoreIKTransformaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation14MeshDescriptorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedShapeDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedShapeDescriptorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 520);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[520 * v8])
    {
      memmove(v12, v13, 520 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32V_So13simd_float4x4atGMd, &_ss23_ContiguousArrayStorageCys6UInt32V_So13simd_float4x4atGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPys4Int8VGSgGMd, &_ss23_ContiguousArrayStorageCySPys4Int8VGSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE12WriteOptionsV6OptionOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE12WriteOptionsV6OptionOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22PiecewiseLinearPolygon33_958D9063BE5145611DD1DCE0DF8621CFLLVySrys5SIMD2VySdGGGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22PiecewiseLinearPolygon33_958D9063BE5145611DD1DCE0DF8621CFLLVySrys5SIMD2VySdGGGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}