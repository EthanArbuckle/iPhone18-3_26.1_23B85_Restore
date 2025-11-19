void static NSPersistentContainer.defaultDirectoryURL.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t NSPersistentContainer.performBackgroundTask<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Optional();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](NSPersistentContainer.performBackgroundTask<A>(_:), 0, 0);
}

uint64_t NSPersistentContainer.performBackgroundTask<A>(_:)()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v3 - 8);
  *(v0 + 96) = v6;
  v8 = v6 + 56;
  v7 = *(v6 + 56);
  *(v0 + 104) = v7;
  *(v0 + 112) = v8 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v3);
  v9 = [v2 newBackgroundContext];
  *(v0 + 120) = v9;
  v10 = swift_allocObject();
  *(v0 + 128) = v10;
  v10[2] = v3;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v9;
  *(v0 + 152) = 0;

  v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = NSPersistentContainer.performBackgroundTask<A>(_:);
  v12 = *(v0 + 80);
  v13 = *(v0 + 40);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, (v0 + 152), partial apply for closure #1 in NSPersistentContainer._rethrowsHelper_performTask<A>(execute:rescue:), v10, v13);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = NSPersistentContainer.performBackgroundTask<A>(_:);
  }

  else
  {
    v3 = NSPersistentContainer.performBackgroundTask<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v19 = *(v7 + 8);
  v20 = *(v0 + 112);
  v19(v2, v6);
  v1(v4, 0, 1, v8);
  (*(v7 + 32))(v2, v4, v6);
  (*(v7 + 16))(v5, v2, v6);
  result = (*(v3 + 48))(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 56);
    v16 = *(v0 + 40);
    v17 = *(v0 + 16);

    v19(v11, v15);
    (*(v12 + 32))(v17, v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  swift_willThrow();
  v9 = v1;

  (*(v7 + 8))(v4, v8);

  v10 = v0[1];
  v11 = v0[18];

  return v10();
}

id partial apply for closure #1 in NSPersistentContainer._rethrowsHelper_performTask<A>(execute:rescue:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  result = (*(v0 + 24))(v3);
  if (!v1)
  {
    return [v3 reset];
  }

  return result;
}

uint64_t NSCoreDataCodableAdapterRegistry.register(adapter:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized NSCoreDataCodableAdapterRegistry.register(adapter:)(v4, v1, v2, v3);
}

uint64_t NSCoreDataCodableAdapterRegistry.register<A>(_:forName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = type metadata accessor for DefaultCodableAdapterFactory();
  v8[4] = &protocol witness table for DefaultCodableAdapterFactory<A>;
  v8[0] = a2;
  v8[1] = a3;
  v6 = *(v3 + OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock);
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v6 + 24));
  partial apply for closure #1 in NSCoreDataCodableAdapterRegistry.register(adapter:)((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
  __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t NSCoreDataCodableAdapterRegistry.register<A, B>(_:configurationProvider:forName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15[2] = a7;
  v15[5] = a10;
  v15[3] = type metadata accessor for DefaultCodableWithConfigurationAdapterFactory();
  v15[4] = &protocol witness table for DefaultCodableWithConfigurationAdapterFactory<A, B>;
  v15[0] = a3;
  v15[1] = a4;
  v13 = *(v10 + OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock);
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v13 + 24));
  closure #1 in NSCoreDataCodableAdapterRegistry.register(adapter:)partial apply((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
  __swift_destroy_boxed_opaque_existential_1(v15);
}

char *closure #1 in NSCoreDataCodableAdapterRegistry.register(adapter:)(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  outlined init with copy of NSCoreDataCodableAdapterFactory(v2, v45);
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *a1;
  v11 = v46;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v2) = v13;
    if (*(v11 + 24) < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v18 = v46;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8);
      if ((v2 & 1) == (v19 & 1))
      {
        goto LABEL_7;
      }

      v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v11;
LABEL_7:
      if (v2)
      {
LABEL_8:
        v20 = v12;

        v21 = (*(v18 + 56) + 40 * v20);
        __swift_destroy_boxed_opaque_existential_1(v21);
        result = sub_1856DAA18(v45, v21);
LABEL_27:
        *a1 = v18;
        return result;
      }

LABEL_26:
      result = specialized _NativeDictionary._insert(at:key:value:)(v12, v6, v8, v45, v18);
      goto LABEL_27;
    }
  }

  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CoreData06NSCoreD21CodableAdapterFactory_pGMd, &_ss18_DictionaryStorageCySS8CoreData06NSCoreD21CodableAdapterFactory_pGMR);
  v23 = static _DictionaryStorage.copy(original:)();
  v18 = v23;
  if (!*(v11 + 16))
  {
LABEL_25:

    v12 = v38;
    if (v2)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  result = (v23 + 64);
  v24 = (v11 + 64);
  v25 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v11 || result >= &v24[8 * v25])
  {
    result = memmove(result, v24, 8 * v25);
  }

  v26 = 0;
  *(v18 + 16) = *(v11 + 16);
  v27 = 1 << *(v11 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v11 + 64);
  v30 = (v27 + 63) >> 6;
  v39 = v30;
  if (v29)
  {
    do
    {
      v31 = __clz(__rbit64(v29));
      v43 = (v29 - 1) & v29;
LABEL_23:
      v34 = v31 | (v26 << 6);
      v41 = 16 * v34;
      v35 = (*(v11 + 48) + 16 * v34);
      v36 = v35[1];
      v42 = *v35;
      v40 = 40 * v34;
      outlined init with copy of NSCoreDataCodableAdapterFactory(*(v11 + 56) + 40 * v34, v44);
      v37 = (*(v18 + 48) + v41);
      *v37 = v42;
      v37[1] = v36;
      sub_1856DAA18(v44, *(v18 + 56) + v40);

      v30 = v39;
      v29 = v43;
    }

    while (v43);
  }

  v32 = v26;
  while (1)
  {
    v26 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v26 >= v30)
    {
      goto LABEL_25;
    }

    v33 = *(v11 + 64 + 8 * v26);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v43 = (v33 - 1) & v33;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void NSCoreDataCodableAdapterRegistry.encode(value:withAdapterNamed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock);
  os_unfair_lock_lock((v8 + 24));
  partial apply for closure #1 in NSCoreDataCodableAdapterRegistry.encode(value:withAdapterNamed:)((v8 + 16), v27);
  if (v4)
  {
    os_unfair_lock_unlock((v8 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v8 + 24));
    outlined init with copy of NSCoreDataCodableAdapter?(v27, &v21);
    if (v22)
    {
      sub_1856DAA18(&v21, &v23);
      v9 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v10 + 16))(a1, v9, v10);
      outlined destroy of NSCoreDataCodableAdapter?(v27, &_s8CoreData06NSCoreB14CodableAdapter_pSgMd, &_s8CoreData06NSCoreB14CodableAdapter_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    else
    {
      outlined destroy of NSCoreDataCodableAdapter?(&v21, &_s8CoreData06NSCoreB14CodableAdapter_pSgMd, &_s8CoreData06NSCoreB14CodableAdapter_pSgMR);
      v11 = *MEMORY[0x1E695D940];
      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v23 = 0xD000000000000025;
      v24 = 0x800000018592F300;
      MEMORY[0x1865F8660](a2, a3);
      MEMORY[0x1865F8660](0x646E756F6620, 0xE600000000000000);
      v12 = v23;
      v13 = v24;
      v14 = type metadata accessor for _NSCoreDataCodableError();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____NSCoreDataCodableError_exceptionName] = v11;
      *&v15[OBJC_IVAR____NSCoreDataCodableError_exceptionCode] = 134060;
      v16 = &v15[OBJC_IVAR____NSCoreDataCodableError_exceptionReason];
      *v16 = v12;
      v16[1] = v13;
      *&v15[OBJC_IVAR____NSCoreDataCodableError_exceptionUserInfo] = 0;
      v17 = v11;
      v18 = MEMORY[0x1865F8600](0xD00000000000001DLL, 0x800000018592F160);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v20.receiver = v15;
      v20.super_class = v14;
      objc_msgSendSuper2(&v20, sel_initWithDomain_code_userInfo_, v18, 1, isa);

      swift_willThrow();
      outlined destroy of NSCoreDataCodableAdapter?(v27, &_s8CoreData06NSCoreB14CodableAdapter_pSgMd, &_s8CoreData06NSCoreB14CodableAdapter_pSgMR);
    }
  }
}

void NSCoreDataCodableAdapterRegistry.decode(data:withAdapterNamed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock);
  os_unfair_lock_lock((v10 + 24));
  partial apply for closure #1 in NSCoreDataCodableAdapterRegistry.decode(data:withAdapterNamed:)((v10 + 16), v29);
  if (v5)
  {
    os_unfair_lock_unlock((v10 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v10 + 24));
    outlined init with copy of NSCoreDataCodableAdapter?(v29, &v23);
    if (v24)
    {
      sub_1856DAA18(&v23, &v25);
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(&v25, v27);
      (*(v12 + 24))(a1, a2, v11, v12);
      outlined destroy of NSCoreDataCodableAdapter?(v29, &_s8CoreData06NSCoreB14CodableAdapter_pSgMd, &_s8CoreData06NSCoreB14CodableAdapter_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    else
    {
      outlined destroy of NSCoreDataCodableAdapter?(&v23, &_s8CoreData06NSCoreB14CodableAdapter_pSgMd, &_s8CoreData06NSCoreB14CodableAdapter_pSgMR);
      v13 = *MEMORY[0x1E695D940];
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v25 = 0xD000000000000025;
      v26 = 0x800000018592F300;
      MEMORY[0x1865F8660](a3, a4);
      MEMORY[0x1865F8660](0x646E756F6620, 0xE600000000000000);
      v14 = v25;
      v15 = v26;
      v16 = type metadata accessor for _NSCoreDataCodableError();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____NSCoreDataCodableError_exceptionName] = v13;
      *&v17[OBJC_IVAR____NSCoreDataCodableError_exceptionCode] = 134060;
      v18 = &v17[OBJC_IVAR____NSCoreDataCodableError_exceptionReason];
      *v18 = v14;
      v18[1] = v15;
      *&v17[OBJC_IVAR____NSCoreDataCodableError_exceptionUserInfo] = 0;
      v19 = v13;
      v20 = MEMORY[0x1865F8600](0xD00000000000001DLL, 0x800000018592F160);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v22.receiver = v17;
      v22.super_class = v16;
      objc_msgSendSuper2(&v22, sel_initWithDomain_code_userInfo_, v20, 1, isa);

      swift_willThrow();
      outlined destroy of NSCoreDataCodableAdapter?(v29, &_s8CoreData06NSCoreB14CodableAdapter_pSgMd, &_s8CoreData06NSCoreB14CodableAdapter_pSgMR);
    }
  }
}

double closure #1 in NSCoreDataCodableAdapterRegistry.encode(value:withAdapterNamed:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v7 & 1) != 0))
  {
    outlined init with copy of NSCoreDataCodableAdapterFactory(*(v5 + 56) + 40 * v6, &v14);
    if (*(&v15 + 1))
    {
      outlined init with copy of NSCoreDataCodableAdapterFactory(&v14, v11);
      outlined destroy of NSCoreDataCodableAdapter?(&v14, &_s8CoreData06NSCoreB21CodableAdapterFactory_pSgMd, &_s8CoreData06NSCoreB21CodableAdapterFactory_pSgMR);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 16))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
      return result;
    }
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  outlined destroy of NSCoreDataCodableAdapter?(&v14, &_s8CoreData06NSCoreB21CodableAdapterFactory_pSgMd, &_s8CoreData06NSCoreB21CodableAdapterFactory_pSgMR);
  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

id NSCoreDataCodableAdapterRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NSCoreDataCodableAdapterRegistry.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySS8CoreData06NSCoreD21CodableAdapterFactory_pGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySDySS8CoreData06NSCoreD21CodableAdapterFactory_pGSo16os_unfair_lock_sVGMR);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id _NSCoreDataCodableError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DefaultCodableAdapterFactory.makeAdapter()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = JSONEncoder.init()();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = JSONDecoder.init()();
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = type metadata accessor for DefaultCodableAdapter();
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v11;
  a2[3] = v15;
  a2[4] = &protocol witness table for DefaultCodableAdapter<A>;
  *a2 = result;
  return result;
}

uint64_t DefaultCodableAdapter.__allocating_init()()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = JSONEncoder.init()();
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = JSONDecoder.init()();
  v10 = v1[10];
  v11 = v1[11];
  v12 = v1[12];
  type metadata accessor for DefaultCodableAdapter();
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v9;
  return result;
}

uint64_t DefaultCodableAdapter.__allocating_init(jsonEncoder:jsonDecoder:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DefaultCodableAdapter.init(jsonEncoder:jsonDecoder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *DefaultCodableAdapter.encode(encodable:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v30 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v30 - v13;
  outlined init with copy of Any(a1, &v31);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, v4);
    (*(v11 + 32))(v14, v10, v4);
    v17 = v1[2];
    v18 = *(v3 + 96);
    v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    (*(v11 + 8))(v14, v4);
  }

  else
  {
    v16(v10, 1, 1, v4);
    (*(v6 + 8))(v10, v5);
    v20 = *MEMORY[0x1E695D940];
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F8660](0xD000000000000015, 0x800000018592F140);
    v21 = _typeName(_:qualified:)();
    MEMORY[0x1865F8660](v21);

    v22 = v31;
    v23 = v32;
    v24 = type metadata accessor for _NSCoreDataCodableError();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____NSCoreDataCodableError_exceptionName] = v20;
    *&v25[OBJC_IVAR____NSCoreDataCodableError_exceptionCode] = 134060;
    v26 = &v25[OBJC_IVAR____NSCoreDataCodableError_exceptionReason];
    *v26 = v22;
    *(v26 + 1) = v23;
    *&v25[OBJC_IVAR____NSCoreDataCodableError_exceptionUserInfo] = 0;
    v27 = v20;
    v19 = MEMORY[0x1865F8600](0xD00000000000001DLL, 0x800000018592F160);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v30.receiver = v25;
    v30.super_class = v24;
    objc_msgSendSuper2(&v30, sel_initWithDomain_code_userInfo_, v19, 1, isa);

    swift_willThrow();
  }

  return v19;
}

uint64_t *DefaultCodableAdapter.decode(data:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  a1[3] = *(*v1 + 80);
  __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(v4 + 88);
  v6 = v1[3];
  result = dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t protocol witness for NSCoreDataCodableAdapter.init() in conformance DefaultCodableAdapter<A>@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultCodableAdapter.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t DefaultCodableWithConfigurationAdapterFactory.makeAdapter()@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = JSONEncoder.init()();
  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = JSONDecoder.init()();
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v12 = type metadata accessor for DefaultCodableWithConfigurationAdapter();
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v11;
  a2[3] = v12;
  a2[4] = &protocol witness table for DefaultCodableWithConfigurationAdapter<A, B>;
  *a2 = result;
  return result;
}

uint64_t DefaultCodableWithConfigurationAdapter.__allocating_init()()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = JSONEncoder.init()();
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = JSONDecoder.init()();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v7;
  return result;
}

void *DefaultCodableWithConfigurationAdapter.encode(encodable:)(uint64_t a1)
{
  v36 = *v1;
  v3 = v36[10];
  v37 = v36[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v39 = AssociatedTypeWitness;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v35 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  v14 = *(v3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v35 - v16;
  v44 = a1;
  outlined init with copy of Any(a1, &v42);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v3);
    (*(v14 + 32))(v17, v13, v3);
    v20 = v1[2];
    v21 = v36[15];
    v22 = v36[11];
    dispatch thunk of static EncodingConfigurationProviding.encodingConfiguration.getter();
    v23 = v40;
    v24 = dispatch thunk of JSONEncoder.encode<A>(_:configuration:)();
    if (!v23)
    {
      v20 = v24;
    }

    (*(v38 + 8))(v7, v39);
    (*(v14 + 8))(v17, v3);
  }

  else
  {
    v19(v13, 1, 1, v3);
    (*(v9 + 8))(v13, v8);
    v25 = *MEMORY[0x1E695D940];
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F8660](0xD000000000000015, 0x800000018592F140);
    v26 = _typeName(_:qualified:)();
    MEMORY[0x1865F8660](v26);

    v27 = v42;
    v28 = v43;
    v29 = type metadata accessor for _NSCoreDataCodableError();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____NSCoreDataCodableError_exceptionName] = v25;
    *&v30[OBJC_IVAR____NSCoreDataCodableError_exceptionCode] = 134060;
    v31 = &v30[OBJC_IVAR____NSCoreDataCodableError_exceptionReason];
    *v31 = v27;
    *(v31 + 1) = v28;
    *&v30[OBJC_IVAR____NSCoreDataCodableError_exceptionUserInfo] = 0;
    v32 = v25;
    v20 = MEMORY[0x1865F8600](0xD00000000000001DLL, 0x800000018592F160);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v41.receiver = v30;
    v41.super_class = v29;
    objc_msgSendSuper2(&v41, sel_initWithDomain_code_userInfo_, v20, 1, isa);

    swift_willThrow();
  }

  return v20;
}

uint64_t *DefaultCodableWithConfigurationAdapter.decode(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17[1] = a1;
  v17[2] = a2;
  v5 = *v3;
  v6 = *(*v3 + 96);
  v7 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v17 - v10;
  a3[3] = v7;
  __swift_allocate_boxed_opaque_existential_1(a3);
  v12 = v3[3];
  v13 = *(v5 + 112);
  v14 = *(v5 + 88);
  dispatch thunk of static DecodingConfigurationProviding.decodingConfiguration.getter();
  v15 = v19;
  dispatch thunk of JSONDecoder.decode<A>(_:from:configuration:)();
  if (!v15)
  {
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return __swift_deallocate_boxed_opaque_existential_0(a3);
}

uint64_t DefaultCodableAdapter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DefaultCodableAdapter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t protocol witness for NSCoreDataCodableAdapter.init() in conformance DefaultCodableWithConfigurationAdapter<A, B>@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultCodableWithConfigurationAdapter.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CoreData06NSCoreD21CodableAdapterFactory_pGMd, &_ss18_DictionaryStorageCySS8CoreData06NSCoreD21CodableAdapterFactory_pGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1856DAA18(v25, v37);
      }

      else
      {
        outlined init with copy of NSCoreDataCodableAdapterFactory(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1856DAA18(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1856DAA18(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized NSCoreDataCodableAdapterRegistry.register(adapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v8 = *(a2 + OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock);
  os_unfair_lock_lock((v8 + 24));
  closure #1 in NSCoreDataCodableAdapterRegistry.register(adapter:)partial apply((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1865FA960);
  }

  return result;
}

uint64_t type metadata instantiation function for DefaultCodableAdapterFactory()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for DefaultCodableWithConfigurationAdapterFactory()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of NSCoreDataCodableAdapter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CoreData06NSCoreB14CodableAdapter_pSgMd, &_s8CoreData06NSCoreB14CodableAdapter_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NSCoreDataCodableAdapter?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of NSCoreDataCodableAdapterFactory(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id NSAttributeDescription.type.getter@<X0>(void *a1@<X8>)
{
  result = [v1 attributeType];
  *a1 = result;
  return result;
}

id (*NSAttributeDescription.type.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 attributeType];
  return NSAttributeDescription.type.modify;
}

uint64_t static NSAttributeDescription.AttributeType.codable.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for codable != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static NSAttributeDescription.AttributeType.codable;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSAttributeDescription.AttributeType and conformance NSAttributeDescription.AttributeType()
{
  result = lazy protocol witness table cache variable for type NSAttributeDescription.AttributeType and conformance NSAttributeDescription.AttributeType;
  if (!lazy protocol witness table cache variable for type NSAttributeDescription.AttributeType and conformance NSAttributeDescription.AttributeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributeDescription.AttributeType and conformance NSAttributeDescription.AttributeType);
  }

  return result;
}

CFStringRef _swizzleManifestTypeDataXPC(void *a1, void *a2)
{
  v4 = [a2 sqlType];
  v5 = v4;
  v6 = 0;
  if (v4 <= 6)
  {
    if ((v4 - 4) >= 3)
    {
      if ((v4 - 2) < 2)
      {
        v7 = [a1 bytes];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
        v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v8, "longLongValue")}];
LABEL_18:
        v18 = v9;

        return v18;
      }

      if (v4 == 1)
      {
        v17 = [a1 bytes];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v17];
        v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(v8, "integerValue")}];
        goto LABEL_18;
      }

      return v6;
    }

    goto LABEL_20;
  }

  if (v4 <= 10)
  {
    if ((v4 - 7) < 2)
    {
      v10 = [a1 bytes];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v10];
      if (v5 == 7)
      {
        v12 = [objc_msgSend(a2 "propertyDescription")];
        v13 = objc_alloc(MEMORY[0x1E696AD98]);
        if (v12 == 600)
        {
          [v11 floatValue];
          v14 = [v13 initWithFloat:?];
        }

        else
        {
          [v11 doubleValue];
          v14 = [v13 initWithDouble:?];
        }
      }

      else
      {
        v21 = objc_alloc(MEMORY[0x1E695DF00]);
        [v11 doubleValue];
        v14 = [v21 initWithTimeIntervalSinceReferenceDate:?];
      }

      v6 = v14;

      return v6;
    }

    if (v4 != 9)
    {
      return v6;
    }

LABEL_20:
    if (CFDataGetLength(a1))
    {
      BytePtr = CFDataGetBytePtr(a1);
      v6 = CFStringCreateWithCString(0, BytePtr, 0x8000100u);
    }

    else
    {
      v6 = &stru_1EF3F1768;
    }

    if (v5 == 12)
    {
      v20 = MEMORY[0x1E695DFF8];
      goto LABEL_27;
    }

    if (v5 == 4)
    {
      v20 = MEMORY[0x1E696AB90];
LABEL_27:
      v18 = [[v20 alloc] initWithString:v6];
      CFRelease(v6);
      return v18;
    }

    return v6;
  }

  switch(v4)
  {
    case 11:
      if ([a1 length] != 16)
      {
        return 0;
      }

      v22 = objc_alloc(MEMORY[0x1E696AFB0]);
      v23 = [a1 bytes];

      return [v22 initWithUUIDBytes:v23];
    case 12:
      goto LABEL_20;
    case 15:
      v15 = [a2 propertyDescription];

      return [_PFRoutines retainedDecodeValue:a1 forTransformableAttribute:v15];
    default:
      return v6;
  }
}

void sub_1856EBB78(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);

    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1856EBBBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1856EBB98);
}

void sub_1856ECBF4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_1856ED0B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((v2 + *(v3 + 4028)));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1856ED1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856ED554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856ED8E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1856EDB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856EEDF8(_Unwind_Exception *exc_buf, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  if (a2 != 2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856EECF8);
  }

  v3 = objc_begin_catch(exc_buf);

  v4 = v3;
  objc_exception_rethrow();
}

void sub_1856EEF60(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856EEF1CLL);
  }

  JUMPOUT(0x1856EEEDCLL);
}

void sub_1856F1770(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856F15ACLL);
  }

  JUMPOUT(0x1856F1588);
}

void sub_1856F1798(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1856F1584);
  }

  JUMPOUT(0x1856F1470);
}

os_log_t ___pflogInitialize_block_invoke()
{
  result = os_log_create("com.apple.coredata", "warning");
  logcoredatasoftwarnings = result;
  return result;
}

os_log_t ___pflogInitialize_block_invoke_3()
{
  result = os_log_create("com.apple.coredata", "sql");
  logcoredatasql = result;
  return result;
}

os_log_t ___pflogInitialize_block_invoke_4()
{
  result = os_log_create("com.apple.coredata", "XPC");
  logcoredataxpc = result;
  return result;
}

os_log_t ___pflogInitialize_block_invoke_5()
{
  result = os_log_create("com.apple.coredata", "debug");
  logcoredatadebug = result;
  return result;
}

void sub_1856FBE3C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2 == 1)
  {
    v29 = objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1856FBD40);
  }

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(exc_buf);
}

void sub_185703494(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18570318CLL);
  }

  JUMPOUT(0x185703580);
}

void sub_1857034D4()
{
  if (v0)
  {
    objc_end_catch();
  }

  JUMPOUT(0x185703580);
}

void sub_185703528(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 4)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185701C74);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  JUMPOUT(0x185703580);
}

void sub_18570356C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18570353CLL);
  }

  JUMPOUT(0x185703580);
}

void sub_185703588(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x185703594);
  }

  JUMPOUT(0x185703580);
}

void sub_1857037D0(void *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x185701F68);
  }

  JUMPOUT(0x185703580);
}

void sub_185703814(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x185703818);
  }

  _Unwind_Resume(a1);
}

void sub_1857072E8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x18570718CLL);
    }

    v51 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857073E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857073B0);
  }

  JUMPOUT(0x185707420);
}

void sub_1857073F0()
{
  if (v0)
  {
    JUMPOUT(0x1857073F8);
  }

  JUMPOUT(0x1857073FCLL);
}

void sub_185707418(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18570741CLL);
  }

  objc_terminate();
}

void sub_1857097D0()
{
  objc_end_catch();
  _Block_object_dispose(&v1, 8);
  _Block_object_dispose(&v2, 8);
  _Block_object_dispose(&v3, 8);
  _Block_object_dispose((v0 - 208), 8);
  JUMPOUT(0x1857098E8);
}

void sub_185709EAC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_end_catch();
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  if (a2 != 2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x185709AFCLL);
  }

  v32 = objc_begin_catch(a1);
  objc_exception_rethrow();
}

void sub_185709F74()
{
  if (v0)
  {
    JUMPOUT(0x185709F7CLL);
  }

  JUMPOUT(0x185709F80);
}

void sub_18570A7C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x18570A518);
  }

  _Unwind_Resume(a1);
}

void sub_18570B168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v15 = objc_begin_catch(exception_object);
      if ([*(v13 + 3064) debugDefault])
      {
        v16 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v18 = [*(v11 + 72) name];
              v19 = *(v11 + 56);
              *(v14 - 128) = 138412802;
              *(v12 + 4) = v18;
              *(v14 - 116) = 2112;
              *(v12 + 14) = v19;
              *(v14 - 106) = 2112;
              *(v14 - 104) = v15;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: swallowed an exception during prefetching of %@, %@: %@\n", (v14 - 128), 0x20u);
            }
          }

          else
          {
            v20 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [*(v11 + 72) name];
              v22 = *(v11 + 56);
              *(v14 - 128) = 138412802;
              *(v12 + 4) = v21;
              *(v14 - 116) = 2112;
              *(v12 + 14) = v22;
              *(v14 - 106) = 2112;
              *(v14 - 104) = v15;
              _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: swallowed an exception during prefetching of %@, %@: %@\n", (v14 - 128), 0x20u);
            }
          }
        }

        v23 = *(v11 + 72);
        if (_pflogging_catastrophic_mode)
        {
          [v23 name];
          v24 = 1;
        }

        else
        {
          [v23 name];
          v24 = 8;
        }

        v31 = *(v11 + 56);
        _NSCoreDataLog_console(v24, "swallowed an exception during prefetching of %@, %@: %@");
        objc_autoreleasePoolPop(v16);
      }

      v25 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = [*(v11 + 72) name];
        v28 = *(v11 + 56);
        *(v14 - 128) = 138412802;
        *(v12 + 4) = v27;
        *(v14 - 116) = 2112;
        *(v12 + 14) = v28;
        *(v14 - 106) = 2112;
        *(v14 - 104) = v15;
        _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: swallowed an exception during XPC store prefetching of %@, %@: %@\n", (v14 - 128), 0x20u);
      }

      v26 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v29 = [*(v11 + 72) name];
        v30 = *(v11 + 56);
        *(v14 - 128) = 138412802;
        *(v12 + 4) = v29;
        *(v14 - 116) = 2112;
        *(v12 + 14) = v30;
        *(v14 - 106) = 2112;
        *(v14 - 104) = v15;
        _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: swallowed an exception during XPC store prefetching of %@, %@: %@", (v14 - 128), 0x20u);
      }

      *(*(*(v11 + 88) + 8) + 40) = 0;
      objc_end_catch();
      JUMPOUT(0x18570B12CLL);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18570C5D4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18570BB9CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18570CB40(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18570CB4CLL);
}

void sub_18570D8C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v2[2] = 0;

    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_18570DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18570DFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_18570E4B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    v15 = objc_begin_catch(a1);
    if (a2 == 2)
    {
      v16 = v15;
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Threw obc exception handling request %@"];
      v18 = *(*(v13 + 40) + 16);
      [_NSXPCStoreUtilities logMessage:v17 forComponent:?];
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: XPCStore sendMessage: Unhandled exception handling request.  %@\n", &buf, 0xCu);
      }

      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: XPCStore sendMessage: Unhandled exception handling request.  %@", &buf, 0xCu);
      }
    }

    else
    {
      v21 = *(*(v13 + 40) + 16);
      [_NSXPCStoreUtilities logMessage:@"Threw unknown exception handling request" forComponent:?];
      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: fault: XPCStore sendMessage: Unhandled unknown exception handling request\n", &buf, 2u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: XPCStore sendMessage: Unhandled unknown exception handling request", &buf, 2u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x18570E480);
  }

  _Unwind_Resume(a1);
}

void sub_18570F18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18570F798(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18570F638);
}

void sub_185712330(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1857121D4);
    }

    objc_begin_catch(exc_buf);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857123B0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185712388);
  }

  JUMPOUT(0x185712368);
}

void sub_185712BCC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185712B44);
  }

  JUMPOUT(0x185712AD8);
}

void sub_185712BF4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185712AD4);
}

void sub_1857136A4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857134CCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185713F3C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185713DBCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857145C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185714624(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857143E8);
  }

  JUMPOUT(0x185714610);
}

void sub_185714634(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18571463CLL);
  }

  JUMPOUT(0x185714610);
}

void sub_185714B44(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857149F8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185714FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 != 2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x185714ED0);
  }

  objc_begin_catch(exception_object);

  objc_exception_rethrow();
}

void sub_185715094(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18571506CLL);
  }

  JUMPOUT(0x185715054);
}

void sub_18571CA38(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18571C94CLL);
}

void sub_18571D7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18571DB6C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18571DB1CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18571F564()
{
  if (v0)
  {
    JUMPOUT(0x18571F56CLL);
  }

  JUMPOUT(0x18571F570);
}

void sub_18571F7A0(_Unwind_Exception *exc_buf, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  if (a2 != 2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18571F720);
  }

  v2 = objc_begin_catch(exc_buf);
  objc_exception_rethrow();
}

void sub_18571F834(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18571F804);
  }

  JUMPOUT(0x18571F7D8);
}

void sub_18571FAB8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x18571F9B4);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_18571FB40(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18571FB10);
  }

  JUMPOUT(0x18571FAF0);
}

void sub_1857207F4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185720538);
    }

    v15 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857208BC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185720888);
  }

  JUMPOUT(0x185720860);
}

void sub_185720EA4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185720E08);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_185720F3C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185720F0CLL);
  }

  JUMPOUT(0x185720EECLL);
}

void sub_185721110()
{
  if (v0)
  {
    JUMPOUT(0x185721118);
  }

  JUMPOUT(0x18572111CLL);
}

void sub_185724584(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x3B0], 8);
  _Block_object_dispose(&STACK[0x418], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Unwind_Resume(a1);
}

void sub_185728F50(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 3)
  {
    v4 = objc_begin_catch(exception_object);
    if (v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      if (v2)
      {
LABEL_7:
        objc_setProperty_nonatomic(v2, v5, v4, 48);
      }
    }

    else
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Caught a non-object exception in the connectionManager" userInfo:0];
      if (v2)
      {
        objc_setProperty_nonatomic(v2, v7, v6, 48);
      }
    }
  }

  objc_end_catch();
  JUMPOUT(0x185728DE8);
}

void sub_185729D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_18572A380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __CFString *a10, uint64_t a11, uint64_t a12, __CFString *a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    *(*(*(v13 + 64) + 8) + 24) = 0;
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    a10 = @"NSUnderlyingException";
    a11 = v16;
    a12 = v14;
    a13 = @"Import failed because creating the zone query hit an unhandled exception.";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a12 forKeys:&a10 count:2];
    *(*(*(v13 + 72) + 8) + 40) = [v15 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v17];
    objc_end_catch();
    JUMPOUT(0x18572A340);
  }

  _Unwind_Resume(exception_object);
}

void sub_18572A7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18572AA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __CFString *a10, uint64_t a11, uint64_t a12, __CFString *a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    *(*(*(v13 + 64) + 8) + 24) = 0;
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    a10 = @"NSUnderlyingException";
    a11 = v16;
    a12 = v14;
    a13 = @"Import failed because applying the zone query metadata changes hit an unhandled exception.";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a12 forKeys:&a10 count:2];
    *(*(*(v13 + 56) + 8) + 40) = [v15 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v17];
    objc_end_catch();
    JUMPOUT(0x18572AA00);
  }

  _Unwind_Resume(exception_object);
}

void __LoadCoreAnalytics_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  _MergedGlobals_66 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
  if (!_MergedGlobals_66 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v1 = 136315138;
    v2 = dlerror();
    _os_log_fault_impl(&dword_18565F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "### Failed to Soft Link: /System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics\n%s", &v1, 0xCu);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t (*initAnalyticsSendEvent())()
{
  if (qword_1ED4BE8E0 != -1)
  {
    dispatch_once(&qword_1ED4BE8E0, &__block_literal_global_3);
  }

  result = dlsym(_MergedGlobals_66, "AnalyticsSendEvent");
  softLinkAnalyticsSendEvent[0] = result;
  return result;
}

void _PFInvokeMutationMethodForEachMemberOfSet(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 count];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v12 - v7;
    if (v6 > 0x200)
    {
      v8 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v12 - v7, 8 * v6);
    }

    [a3 getObjects:v8];
    for (i = 0; i != v5; ++i)
    {
      v10 = *&v8[8 * i];
      method_invoke();
    }

    if (v5 >= 0x201)
    {
      NSZoneFree(0, v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_18572DEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18572E1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18572E4FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18572EB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18572F09C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_185730DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185730F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PFPerformDebugZombie(void *a1)
{
  if (a1)
  {
    Class = object_getClass(a1);
    if (Class)
    {
      name = 0;
      v3 = class_getName(Class);
      asprintf(&name, "_NSZombie_%s", v3);
      v4 = objc_lookUpClass(name);
      if (!v4)
      {
        v5 = objc_lookUpClass("_NSZombie_");
        v4 = objc_duplicateClass(v5, name, 0);
        if (!v4)
        {
          v4 = objc_lookUpClass(name);
        }
      }

      v6 = v4;
      if (name)
      {
        free(name);
      }

      objc_destructInstance(a1);
      object_setClass(a1, v6);
    }

    if (*MEMORY[0x1E696A270] == 1)
    {
      v7 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v7 = malloc_default_zone();
      }

      malloc_zone_free(v7, a1);
    }
  }
}

void _PFDeallocateObjects(void **to_be_freed, unsigned int num)
{
  v3 = to_be_freed;
  if (*MEMORY[0x1E696AA90])
  {
    if (num)
    {
      v7 = num;
      do
      {
        if (*v3)
        {
          _PFPerformDebugZombie(*v3);
        }

        ++v3;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (num)
    {
      v4 = num;
      v5 = to_be_freed;
      do
      {
        if (*v5)
        {
          objc_destructInstance(*v5);
        }

        ++v5;
        --v4;
      }

      while (v4);
    }

    v6 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v6 = malloc_default_zone();
    }

    malloc_zone_batch_free(v6, v3, num);
  }
}

Class _PFClassFromString(NSString *a1)
{
  if ([(NSString *)a1 hasPrefix:@"_NSZombie_"])
  {
    return 0;
  }

  return NSClassFromString(a1);
}

void *stack_reallocate(void *ptr, size_t size, uint64_t a3, void *a4)
{
  if (*a4 <= ptr && a4[2] > ptr)
  {
    return 0;
  }

  v7 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v7 = malloc_default_zone();
  }

  return malloc_type_zone_realloc(v7, ptr, size, 0x8084EDC0uLL);
}

void sub_18573D5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PFCeateStubFileAtPath(char *a1, int a2)
{
  if (a2)
  {
    result = open_dprotected_np(a1, 2562, a2, 0, 420);
    if (result != -1)
    {
      return result;
    }

    if (*__error() != 45)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return open(a1, 2562, 420);
}

void _writePFEncodedStringShapeIntoData(void *a1, void *a2, _BYTE *a3)
{
  v12 = 0;
  v6 = [a1 length];
  if ((((v6 + 7) & 0xFFFFFFF8) - v6) >= 1)
  {
    [a1 appendBytes:&v12 length:?];
  }

  v7 = [a2 length];
  [a1 appendBytes:&v12 length:8];
  [a1 appendBytes:&v12 length:4];
  v11 = bswap32(v7);
  [a1 appendBytes:&v11 length:4];
  [a1 appendBytes:&v12 length:8];
  if (v7)
  {
    v8 = v7 + 1;
    if (v7 <= 0x400)
    {
      v9 = v8 & 0xFFF;
      v10 = a3;
    }

    else
    {
      v9 = v8;
      v10 = malloc_type_malloc(v8, 0xD0AFBBA3uLL);
    }

    [a2 getBytes:v10 maxLength:0 usedLength:v7 encoding:0 options:? range:? remainingRange:?];
    v10[v7] = 0;
    [a1 appendBytes:v10 length:v9];
    if (v10 != a3)
    {
      free(v10);
    }
  }

  else
  {
    [a1 appendBytes:&v12 length:1];
  }
}

uint64_t _writeDataIntoData(void *a1, void *a2)
{
  v8 = 0;
  v4 = [a2 length];
  if ((((v4 + 3) & 0xFFFFFFFC) - v4) >= 1)
  {
    [a2 appendBytes:&v8 length:?];
  }

  v5 = [a1 length];
  v7 = bswap32(v5);
  [a2 appendBytes:&v7 length:4];
  result = [a2 appendBytes:&v8 length:4];
  if (v5)
  {
    return [a2 appendData:a1];
  }

  return result;
}

id _newReadDataFromBytes(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v3 = (*a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 + 4 > a3)
  {
    return 0;
  }

  v5 = *(a1 + v3);
  v6 = bswap32(v5);
  v7 = v3 + 8;
  v8 = v3 + 8 + v6;
  if (v8 > a3)
  {
    return 0;
  }

  *a2 = v8;
  if (v5)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEF0]);

    return [v10 initWithBytesNoCopy:a1 + v7 length:v6 freeWhenDone:0];
  }

  else
  {
    v11 = MEMORY[0x1E695DEF0];

    return objc_alloc_init(v11);
  }
}

uint64_t _writePFEncodedDataShapeIntoData(void *a1, void *a2)
{
  v8 = 0;
  v4 = [a1 length];
  if ((((v4 + 7) & 0xFFFFFFF8) - v4) >= 1)
  {
    [a1 appendBytes:&v8 length:?];
  }

  [a1 appendBytes:&v8 length:8];
  [a1 appendBytes:&v8 length:8];
  v5 = [a2 length];
  v7 = bswap32(v5);
  [a1 appendBytes:&v7 length:4];
  [a1 appendBytes:&v8 length:4];
  return [a1 appendBytes:objc_msgSend(a2 length:{"bytes"), v5}];
}

uint64_t _writePFEncodedArrayShapeIntoData(void *a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v8 = [a1 length];
  if ((((v8 + 7) & 0xFFFFFFF8) - v8) >= 1)
  {
    [a1 appendBytes:&v24 length:?];
  }

  [a1 appendBytes:&v24 length:8];
  [a1 appendBytes:&v24 length:8];
  [a1 appendBytes:&v24 length:4];
  v23 = bswap32([a2 count]);
  [a1 appendBytes:&v23 length:4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [a2 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (result)
  {
    v10 = result;
    v11 = 0;
    v12 = *v20;
    for (i = *v20; ; i = *v20)
    {
      if (i != v12)
      {
        objc_enumerationMutation(a2);
      }

      v14 = *(*(&v19 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v15 = [a3 indexForKey:{objc_msgSend(v14, "name")}];
      v18 = 0;
      if (a4)
      {
        goto LABEL_15;
      }

LABEL_17:
      v18 = bswap64(v15);
      [a1 appendBytes:&v18 length:8];
      if (++v11 >= v10)
      {
        result = [a2 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (!result)
        {
          goto LABEL_21;
        }

        v10 = result;
        v11 = 0;
      }
    }

    if (!a4)
    {
      v15 = [objc_msgSend(a3 objectForKey:{v14), "unsignedIntegerValue"}];
      goto LABEL_17;
    }

    if ([v14 isNSNumber])
    {
      v15 = [objc_msgSend(a4 objectForKey:{v14), "unsignedIntegerValue"}];
      v18 = 0x100000000000000;
      v16 = &v18;
    }

    else
    {
      v15 = [objc_msgSend(a3 objectForKey:{v14), "unsignedIntegerValue"}];
      v18 = 0;
LABEL_15:
      v16 = &v24;
    }

    [a1 appendBytes:v16 length:8];
    goto LABEL_17;
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _writeNSPropertyProxyIntoData(void *a1, void *a2, void *a3)
{
  v9 = 0;
  v5 = [objc_msgSend(a3 objectForKey:{objc_msgSend(a2, "_underlyingProperty")), "unsignedIntegerValue"}];
  v6 = [a1 length];
  if ((((v6 + 7) & 0xFFFFFFF8) - v6) >= 1)
  {
    [a1 appendBytes:&v9 length:?];
  }

  v8 = bswap32(v5);
  [a1 appendBytes:&v8 length:4];
  v8 = bswap32([a2 _entitysReferenceID]);
  [a1 appendBytes:&v8 length:4];
  [a1 appendBytes:&v9 length:8];
  [a1 appendBytes:&v9 length:8];
  [a1 appendBytes:&v9 length:8];
  return [a1 appendBytes:&v9 length:4];
}

uint64_t _writeKKDRow2IntoData(void *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 length];
  if ((((v4 + 7) & 0xFFFFFFF8) - v4) >= 1)
  {
    v12[0] = 0;
    [a1 appendBytes:v12 length:?];
  }

  _writeInt32IntoData(a1, *a2);
  _writeInt32IntoData(a1, *(a2 + 4));
  v5 = *(a2 + 8);
  _writeInt16IntoData(a1, v5);
  _writeInt16IntoData(a1, *(a2 + 10));
  v6 = *(a2 + 12);
  _writeInt16IntoData(a1, v6);
  result = _writeInt16IntoData(a1, *(a2 + 14));
  if (((v6 - v5) & 0x80000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v10 = 0;
    do
    {
      *(v12 + 2 * v10 - v9) = bswap32(*(a2 + 16 + 2 * v10)) >> 16;
      ++v10;
    }

    while (v8 != v10);
    result = [a1 appendBytes:? length:?];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _writeKKDMappingStrategyIntoData(void *a1, void *a2, void *a3)
{
  v16 = 0;
  v6 = [a1 length];
  if ((((v6 + 7) & 0xFFFFFFF8) - v6) >= 1)
  {
    [a1 appendBytes:&v16 length:?];
  }

  LODWORD(v7) = [a2 length];
  v8 = [a2 keys];
  [a1 appendBytes:&v16 length:8];
  [a1 appendBytes:&v16 length:8];
  [a1 appendBytes:&v16 length:8];
  [a1 appendBytes:&v16 length:8];
  [a1 appendBytes:&v16 length:8];
  v9 = a2[2];
  if (*v9)
  {
    v10 = 1;
      ;
    }
  }

  else
  {
    v10 = 1;
  }

  _writeInt32IntoData(a1, v7);
  for (result = _writeInt32IntoData(a1, v10); v10; --v10)
  {
    result = [a1 appendBytes:&v16 length:8];
  }

  v13 = *v9;
  if (*v9)
  {
    v14 = 1;
    do
    {
      result = _writeKKDRow2IntoData(a1, v13);
      v13 = v9[v14++];
    }

    while (v13);
  }

  v7 = v7;
  if (v7)
  {
    do
    {
      v15 = *v8++;
      result = _writeInt64IntoData(a1, [objc_msgSend(a3 objectForKey:{v15), "unsignedIntegerValue"}]);
      --v7;
    }

    while (v7);
  }

  return result;
}

void *_PFfastFactoryRelease1(void *a1)
{
  result = object_getIndexedIvars(a1);
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    v2 = result;
    v3 = result[5];
    if (v3)
    {
      CFRelease(v3);
      v2[5] = 0;
    }

    v2[6] = 0;
    v2[2] = 0;
    result = v2[3];
    if (result)
    {
      result = _PFfastFactoryRelease1();
      v2[3] = 0;
    }

    if (v2[1])
    {
      v2[1] = 0;
    }

    __dmb(0xBu);
  }

  return result;
}

objc_class *_PFFallbackFactoryForOID(void *a1)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  v4 = *(IndexedIvars + 3);
  if (v4)
  {
    return v4;
  }

  v5 = IndexedIvars;
  v6 = [a1 persistentStore];
  v7 = [a1 entity];
  v4 = [(_NSCoreManagedObjectID *)NSScalarObjectID64 classWithStore:v6 andEntity:v7];
  if (![(objc_class *)v4 _storeInfo1])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
      if (!v6 || !v7)
      {
        goto LABEL_10;
      }

      v9 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      v9 = [v6 entityForEntityDescription:v7];
    }

    v8 = v9;
LABEL_10:
    [(objc_class *)v4 _setStoreInfo1:v8];
  }

LABEL_11:
  v10 = 0;
  atomic_compare_exchange_strong(v5 + 3, &v10, v4);
  if (v10)
  {
    v11 = v5[3];

    return v11;
  }

  return v4;
}

void sub_185747FFC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185748068);
}

void sub_185748004(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185747E14);
    }

    objc_begin_catch(exc_buf);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_185748054(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185748018);
  }

  _Unwind_Resume(a1);
}

int8x8_t SetHostHeaderWithBigHeader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = vrev32_s8(*(a2 + 8));
  *(a1 + 16) = vrev64q_s8(*(a2 + 16));
  *(a1 + 32) = vrev64q_s8(*(a2 + 32));
  *(a1 + 48) = bswap64(*(a2 + 48));
  result = vrev32_s8(*(a2 + 56));
  *(a1 + 56) = result;
  return result;
}

void sub_185748EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v16 = objc_begin_catch(exception_object);
      if (v14)
      {
        if (!a14)
        {
          v17 = objc_alloc(MEMORY[0x1E695DF20]);
          v20 = *MEMORY[0x1E696A368];
          v18 = [v17 initWithObjectsAndKeys:v15];
          [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v18];
        }
      }

      v19 = v16;
      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x185748C9CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_18574946C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185749440);
  }

  _Unwind_Resume(a1);
}

void sub_18574947C(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x185749484);
  }

  _Unwind_Resume(a1);
}

void sub_18574948C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185749494);
  }

  objc_terminate();
}

void sub_185749AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exception_object);
      JUMPOUT(0x18574992CLL);
    }

    v15 = objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_185749C04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185749BC0);
  }

  _Unwind_Resume(a1);
}

void sub_185749C14(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x185749C1CLL);
  }

  _Unwind_Resume(a1);
}

void sub_185749C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185749C2CLL);
  }

  objc_terminate();
}

void sub_18574A100(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185749FECLL);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_18574A1A4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18574A178);
  }

  JUMPOUT(0x18574A144);
}

void sub_18574A314()
{
  if (v0)
  {
    JUMPOUT(0x18574A31CLL);
  }

  JUMPOUT(0x18574A320);
}

void sub_18574A890(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x18574A664);
    }

    objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  JUMPOUT(0x18574A884);
}

void sub_18574A8D4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18574A8A4);
  }

  JUMPOUT(0x18574A884);
}

void sub_18574DE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_18574E68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18574E6D8(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v3 = objc_begin_catch(exc_buf);
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 name];
        v7 = [v3 reason];
        v8 = [v3 userInfo];
        *(v2 - 112) = 138412802;
        v9 = v2 - 112;
        *(v9 + 4) = v6;
        *(v2 - 100) = 2112;
        *(v9 + 14) = v7;
        *(v2 - 90) = 2112;
        *(v2 - 88) = v8;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Caught an exception %@ (%@) while attempting to update Spotlight client state, %@.\n", (v2 - 112), 0x20u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v10 = [v3 name];
        v11 = [v3 reason];
        v12 = [v3 userInfo];
        *(v2 - 112) = 138412802;
        v13 = v2 - 112;
        *(v13 + 4) = v10;
        *(v2 - 100) = 2112;
        *(v13 + 14) = v11;
        *(v2 - 90) = 2112;
        *(v2 - 88) = v12;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: Caught an exception %@ (%@) while attempting to update Spotlight client state, %@.", (v2 - 112), 0x20u);
      }

      objc_end_catch();
      JUMPOUT(0x18574E60CLL);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x18574E610);
  }

  JUMPOUT(0x18574E6D0);
}

void sub_185750480(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  objc_begin_catch(exc_buf);
  if (!a42)
  {
    JUMPOUT(0x1857501F4);
  }

  JUMPOUT(0x1857501F0);
}

void sub_185752714(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18575266CLL);
  }

  JUMPOUT(0x18575264CLL);
}

void sub_185752724(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857525F8);
  }

  JUMPOUT(0x18575264CLL);
}

void sub_185752744(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185752648);
}

void sub_1857549F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_185754EC4(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185754CF0);
  }

  JUMPOUT(0x185754EB4);
}

void sub_185759BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18575AAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);

    objc_exception_throw(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_18575C424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _PF_Handler_SetNilValueForKeyIndex(id **a1, uint64_t a2, uint64_t a3)
{
  v5 = _PFEntityForManagedObject(a1);
  v6 = *(_kvcPropertysPrimitiveSetters(v5) + 8 * a3);
  _PF_CopyOnWrite_Snapshot(a1);
  result = snapshot_set_value_as_object(a1[3], a3, 0);
  if (v6)
  {
    result = isScalarTypeForKVCSetter(v6);
    if (result)
    {

      return _NSSetUsingKeyValueSetter();
    }
  }

  return result;
}

uint64_t _PF_InternalToOneRelationshipForeignKeyCache(unsigned int *a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if ((a1[4] & 0x30000) == 0x10000 || (a1[4] & 0x80) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 4);
  v8 = _PFEntityForManagedObject(a1);
  v9 = v8[14];
  v10 = a1[5];
  v11 = v10 ? a1 + v10 : 0;
  v13 = *(v9 + 96);
  v12 = *(v9 + 104);
  v15 = a2 >= v13;
  v14 = a2 - v13;
  v15 = !v15 || v14 >= v12;
  if (v15 || v7 == 0)
  {
    return 0;
  }

  v17 = *(a1 + 19);
  if (*(_kvcPropertysPrimitiveGetters(v8) + 8 * a2))
  {
    v18 = _NSGetUsingKeyValueGetter();
  }

  else
  {
    snapshot_get_value_as_object(*(a1 + 3), a2);
  }

  if (v18 == _CD_ScalarNull)
  {
    return 0;
  }

  if ((v11[(a2 >> 3) + -4 * v17] >> (a2 & 7)))
  {
    if (a3)
    {
      v18 = [v18 objectID];
LABEL_27:
      *a3 = v18;
    }
  }

  else if (a3)
  {
    goto LABEL_27;
  }

  return 1;
}

void _PFFaultHandlerFixRelationshipsPostMigration(int a1, id **a2, uint64_t a3, const __CFDictionary *a4)
{
  v4 = (*(a2 + 4) >> 15) & 7;
  if (v4 == 5 || v4 == 0)
  {
    v8 = _PFEntityForManagedObject(a2);
    v9 = v8;
    if (v8)
    {
      v25 = v8[14];
    }

    else
    {
      v25 = 0;
    }

    v10 = _kvcPropertysPrimitiveGetters(v8);
    v26 = _kvcPropertysPrimitiveSetters(v9);
    v11 = 0;
    v12 = *(a2 + 5);
    if (v12)
    {
      v13 = a2 + v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[-4 * *(a2 + 19)];
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = (v25 + 16 * *(&__const__PFFaultHandlerFixRelationshipsPostMigration_rangeIndices + v11));
      v19 = *v17;
      v18 = v17[1];
      if (*v17 < v18 + *v17)
      {
        do
        {
          if (((v14[v19 >> 3] >> (v19 & 7)) & 1) == 0)
          {
            if (*(v10 + 8 * v19))
            {
              v20 = _NSGetUsingKeyValueGetter();
            }

            else
            {
              snapshot_get_value_as_object(a2[3], v19);
            }

            if (v20)
            {
              v21 = v20 == _CD_ScalarNull;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              Value = CFDictionaryGetValue(a4, v20);
              if (Value)
              {
                v23 = Value;
                v24 = *(v26 + 8 * v19);
                _PF_CopyOnWrite_Snapshot(a2);
                if (v24)
                {
                  _NSSetUsingKeyValueSetter();
                }

                else
                {
                  snapshot_set_value_as_object(a2[3], v19, v23);
                }
              }
            }
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      v15 = 0;
      v11 = 1;
    }

    while ((v16 & 1) != 0);
  }
}

uint64_t _readFetchRequestIntoShellFromData(void *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v14 = a14;
  v15 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = v15 + 4;
  if (v15 + 4 > a4)
  {
    goto LABEL_125;
  }

  v18 = *(a2 + v15);
  v153[0] = v15 + 4;
  if (v18 != -20254786)
  {
    goto LABEL_125;
  }

  v19 = a8;
  v24 = a1;
  v25 = (v15 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = v25 + 4;
  if (v25 + 4 <= a4)
  {
    v27 = bswap32(*(a2 + v25));
    v153[0] = v26;
    v16 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v16 + v27 > a4)
  {
    if (a14)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A250];
      v30 = MEMORY[0x1E695DF20];
      v31 = @"Can't read entity: Not enough bytes left";
      goto LABEL_127;
    }

    return 0;
  }

  v32 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v33 = v32 + 4;
  if (v32 + 4 <= a4)
  {
    v34 = *(a2 + v32);
    v153[0] = v32 + 4;
    if (!v34)
    {
      v16 = v32 + 4;
      goto LABEL_39;
    }

    v35 = bswap32(v34);
    v36 = (a2 + ((v32 + 11) & 0xFFFFFFFFFFFFFFF8));
    v37 = v35;
    while (1)
    {
      v38 = (v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = v38 + 8;
      if (v38 + 8 <= a4)
      {
        v40 = *(a2 + v38);
        v153[0] = v39;
        v33 = v39;
        if (v40)
        {
          break;
        }
      }

      if (!--v37)
      {
        v145 = v36;
        v148 = v35;
        v43 = v36;
        while (1)
        {
          v44 = (v153[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v45 = v44 + 4;
          if (v44 + 4 <= a4)
          {
            v47 = bswap32(*(a2 + v44));
            v153[0] = v44 + 4;
            if (v47 == 2)
            {
              v52 = (v44 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              v53 = v52 + 4;
              if (v52 + 4 <= a4)
              {
                v54 = bswap32(*(a2 + v52));
                v153[0] = v53;
              }

              else
              {
                v54 = 0;
              }

              PropertyProxyFromBytes = *(a7 + 8 * v54);
              goto LABEL_25;
            }

            if (v47 == 1)
            {
              v49 = (v44 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              v50 = v49 + 4;
              if (v49 + 4 <= a4)
              {
                v51 = bswap32(*(a2 + v49));
                v153[0] = v50;
              }

              else
              {
                v51 = 0;
              }

              PropertyProxyFromBytes = *(a8 + 8 * v51);
              goto LABEL_25;
            }

            if (v47)
            {
              if (a14)
              {
                v28 = MEMORY[0x1E696ABC0];
                v29 = *MEMORY[0x1E696A250];
                v30 = MEMORY[0x1E695DF20];
                v31 = @"Invalid groupByProperty type in archive";
                goto LABEL_127;
              }

              goto LABEL_26;
            }

            v44 = (v44 + 7) & 0xFFFFFFFFFFFFFFFCLL;
            v45 = v44 + 4;
          }

          if (v45 <= a4)
          {
            v46 = bswap32(*(a2 + v44));
            v153[0] = v45;
          }

          else
          {
            v46 = 0;
          }

          PropertyProxyFromBytes = _newReadPropertyProxyFromBytes(a1, a2, v153, a4, *(a11 + 8 * v46), a7);
LABEL_25:
          *v43 = PropertyProxyFromBytes;
LABEL_26:
          ++v43;
          if (!--v35)
          {
            callBacks.version = 0;
            *&callBacks.retain = *(MEMORY[0x1E695E9C0] + 8);
            callBacks.copyDescription = *(MEMORY[0x1E695E9C0] + 24);
            callBacks.equal = 0;
            *(a5 + 16) = CFArrayCreate(*MEMORY[0x1E695E480], v145, v148, &callBacks);
            v16 = v153[0];
            v19 = a8;
            v24 = a1;
            goto LABEL_39;
          }
        }
      }
    }

LABEL_79:
    if (a14)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A250];
      v30 = MEMORY[0x1E695DF20];
      v31 = @"Cant' read entity: Properties buffer has content";
LABEL_127:
      v133 = [v28 errorWithDomain:v29 code:134060 userInfo:{objc_msgSend(v30, "dictionaryWithObject:forKey:", v31, @"Root cause"}];
      result = 0;
      *v14 = v133;
      return result;
    }

    return 0;
  }

LABEL_39:
  v55 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v56 = v55 + 4;
  if (v55 + 4 <= a4)
  {
    v57 = *(a2 + v55);
    v153[0] = v56;
    if (v57)
    {
      v58 = v24;
      v143 = *(a10 + 8 * bswap32(v57));
      callBacks.version = 0;
      v59 = MEMORY[0x1E695DFD8];
      v60 = objc_opt_class();
      v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
      v62 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v61 fromData:v143 error:&callBacks];
      if (!v62)
      {
        v134 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v135 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v137 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v135)
          {
            if (v137)
            {
              *buf = 0;
LABEL_146:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Can't decode predicate for fetch request\n", buf, 2u);
            }
          }

          else if (v137)
          {
            *buf = 0;
            goto LABEL_146;
          }
        }

LABEL_147:
        _NSCoreDataLog_console(1, "Can't decode predicate for fetch request");
LABEL_148:
        objc_autoreleasePoolPop(v134);
        if (v14)
        {
          *v14 = callBacks.version;
        }

        return 0;
      }

      *(a5 + 24) = v62;
      v24 = v58;
    }
  }

  v63 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  v64 = *(a5 + 32);
  if (!v64)
  {
    v65 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v65 = malloc_default_zone();
    }

    v64 = malloc_type_zone_calloc(v65, 1uLL, 0x18uLL, 0x1080040E11204F7uLL);
    *(a5 + 32) = v64;
  }

  v66 = (v153[0] + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = v66 + 8;
  if (v66 + 8 <= a4)
  {
    v68 = bswap64(*(a2 + v66));
    v153[0] = v67;
  }

  else
  {
    v68 = 0;
  }

  *v64 = v68;
  v69 = v153[0];
  v70 = (v153[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v71 = v70 + 4;
  if (v70 + 4 <= a4)
  {
    v72 = *(a2 + v70);
    v153[0] = v70 + 4;
    if (v72)
    {
      v73 = (a2 + ((v70 + 11) & 0xFFFFFFFFFFFFFFF8));
      v146 = bswap32(v72);
      v74 = v146;
      do
      {
        v75 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        v76 = v75 + 8;
        if (v75 + 8 <= a4)
        {
          v77 = *(a2 + v75);
          v153[0] = v76;
          v71 = v76;
          if (v77)
          {
            goto LABEL_79;
          }
        }

        --v74;
      }

      while (v74);
      v78 = v24;
      v144 = v73;
      v79 = v146;
      while (1)
      {
        v80 = (v153[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v81 = v80 + 4;
        if (v80 + 4 > a4)
        {
          goto LABEL_58;
        }

        v83 = bswap32(*(a2 + v80));
        v153[0] = v80 + 4;
        if (v83 == 2)
        {
          v88 = (v80 + 7) & 0xFFFFFFFFFFFFFFFCLL;
          v89 = v88 + 4;
          if (v88 + 4 <= a4)
          {
            v90 = bswap32(*(a2 + v88));
            v153[0] = v89;
          }

          else
          {
            v90 = 0;
          }

          v84 = *(a7 + 8 * v90);
          goto LABEL_66;
        }

        if (v83 == 1)
        {
          break;
        }

        if (!v83)
        {
          v80 = (v80 + 7) & 0xFFFFFFFFFFFFFFFCLL;
          v81 = v80 + 4;
LABEL_58:
          if (v81 <= a4)
          {
            v82 = bswap32(*(a2 + v80));
            v153[0] = v81;
          }

          else
          {
            v82 = 0;
          }

          v84 = _newReadPropertyProxyFromBytes(v78, a2, v153, a4, *(a11 + 8 * v82), a7);
LABEL_66:
          *v73 = v84;
          goto LABEL_67;
        }

        if (a14)
        {
          v28 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E696A250];
          v30 = MEMORY[0x1E695DF20];
          v31 = @"Invalid propertyToFetch type in archive";
          goto LABEL_127;
        }

LABEL_67:
        ++v73;
        if (!--v79)
        {
          callBacks.version = 0;
          *&callBacks.retain = *(MEMORY[0x1E695E9C0] + 8);
          callBacks.copyDescription = *(MEMORY[0x1E695E9C0] + 24);
          callBacks.equal = 0;
          *(a5 + 40) = CFArrayCreate(*MEMORY[0x1E695E480], v144, v146, &callBacks);
          v69 = v153[0];
          v24 = v78;
          v63 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
          goto LABEL_82;
        }
      }

      v85 = (v80 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v86 = v85 + 4;
      if (v85 + 4 <= a4)
      {
        v87 = bswap32(*(a2 + v85));
        v153[0] = v86;
      }

      else
      {
        v87 = 0;
      }

      v84 = *(v19 + 8 * v87);
      goto LABEL_66;
    }

    v69 = v70 + 4;
  }

LABEL_82:
  v91 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v92 = v91 + 4;
  if (v91 + 4 <= a4)
  {
    v95 = *(a2 + v91);
    v153[0] = v91 + 4;
    v93 = v95 == 0;
    v91 = (v91 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v94 = v91 + 4;
    v69 = v92;
  }

  else
  {
    v93 = 1;
    v94 = v91 + 4;
  }

  if (v94 <= a4)
  {
    v96 = bswap32(*(a2 + v91));
    v153[0] = v94;
    v69 = v94;
    if (!v93)
    {
      goto LABEL_87;
    }

LABEL_89:
    v97 = *(v19 + 8 * v96);
    v69 = v153[0];
    goto LABEL_90;
  }

  v96 = 0;
  if (v93)
  {
    goto LABEL_89;
  }

LABEL_87:
  v97 = *(a11 + 8 * v96);
LABEL_90:
  atomic_store(v97, (a5 + 48));
  v98 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v99 = v98 + 4;
  if (v98 + 4 <= a4)
  {
    v100 = *(a2 + v98);
    v153[0] = v99;
    v69 = v99;
    if (v100)
    {
      v149 = v24;
      v147 = v19;
      v101 = *(a10 + 8 * bswap32(v100));
      callBacks.version = 0;
      v102 = MEMORY[0x1E695DFD8];
      v103 = objc_opt_class();
      v104 = [v102 setWithObjects:{v103, objc_opt_class(), 0}];
      v105 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v104 fromData:v101 error:&callBacks];
      if (v105)
      {
        v106 = v105;
        if ((byte_1ED4BEECE & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v106 allowEvaluation];
          }
        }

        *(a5 + 56) = v106;
        v69 = v153[0];
        v19 = v147;
        v24 = v149;
        v63 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
        goto LABEL_97;
      }

      v134 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        v141 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v142 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v141)
        {
          if (v142)
          {
            *buf = 0;
            goto LABEL_146;
          }
        }

        else if (v142)
        {
          *buf = 0;
          goto LABEL_146;
        }
      }

      goto LABEL_147;
    }
  }

LABEL_97:
  v107 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v108 = v107 + 4;
  if (v107 + 4 <= a4)
  {
    v109 = *(a2 + v107);
    v153[0] = v108;
    v69 = v108;
    if (v109)
    {
      v110 = bswap32(v109);
      v150 = v24;
      PFEncodedArrayFromData = _newReadPFEncodedArrayFromData(v24, a2, v153, a4, a10, 0);
      v112 = 0;
      while (1)
      {
        v113 = [PFEncodedArrayFromData objectAtIndex:v112];
        callBacks.version = 0;
        v114 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        v115 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v114 fromData:v113 error:&callBacks];
        if (!v115)
        {
          break;
        }

        v116 = v115;
        if ((byte_1ED4BEECE & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v116 allowEvaluation];
          }
        }

        [PFEncodedArrayFromData _replaceObject:v116 atIndex:v112++];
        if (v110 == v112)
        {
          *(a5 + 64) = PFEncodedArrayFromData;
          v69 = v153[0];
          v14 = a14;
          v24 = v150;
          v63 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
          goto LABEL_106;
        }
      }

      v134 = objc_autoreleasePoolPush();
      v14 = a14;
      if (!_NSCoreDataIsOSLogEnabled(1))
      {
        goto LABEL_143;
      }

      v138 = _pflogging_catastrophic_mode;
      v139 = _PFLogGetLogStream(1);
      v140 = os_log_type_enabled(v139, OS_LOG_TYPE_ERROR);
      if (v138)
      {
        if (v140)
        {
          *buf = 0;
LABEL_153:
          _os_log_error_impl(&dword_18565F000, v139, OS_LOG_TYPE_ERROR, "CoreData: error: Can't decode sortDescriptor for fetch request\n", buf, 2u);
        }
      }

      else if (v140)
      {
        *buf = 0;
        goto LABEL_153;
      }

LABEL_143:
      _NSCoreDataLog_console(1, "Can't decode sortDescriptor for fetch request");
      goto LABEL_148;
    }
  }

LABEL_106:
  v117 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = v117 + 8;
  if (v117 + 8 <= a4)
  {
    v119 = bswap64(*(a2 + v117));
    v153[0] = v117 + 8;
    v117 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
    v120 = v117 + 8;
    v69 = v118;
  }

  else
  {
    v119 = 0;
    v120 = v117 + 8;
  }

  *(a5 + 72) = v119;
  if (v120 <= a4)
  {
    v121 = bswap64(*(a2 + v117));
    v153[0] = v120;
    v69 = v120;
  }

  else
  {
    v121 = 0;
  }

  *(a5 + 80) = v121;
  v122 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v123 = v122 + 4;
  if (v122 + 4 <= a4)
  {
    v124 = *(a2 + v122);
    v153[0] = v123;
    v69 = v123;
    if (v124)
    {
      *(a5 + 96) = _newReadPFEncodedArrayFromData(v24, a2, v153, a4, v19, 0);
      v69 = v153[0];
    }
  }

  v125 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v126 = v125 + 4;
  if (v125 + 4 <= a4)
  {
    v127 = bswap32(*(a2 + v125));
    v153[0] = v126;
    v69 = v126;
  }

  else
  {
    v127 = 0;
  }

  *(a5 + 104) = v127;
  v128 = *(a5 + 104);
  if ((v128 & 0x200) != 0)
  {
    atomic_store(1u, (*(a5 + v63[95]) + 16));
    v128 = *(a5 + 104);
  }

  if ((v128 & 0x800) != 0)
  {
    atomic_store(1u, (*(a5 + v63[95]) + 20));
    v128 = *(a5 + 104);
  }

  *(a5 + 104) = v128 & 0xFFFFFEFF;
  v129 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v130 = v129 + 4;
  if (v129 + 4 <= a4)
  {
    v131 = *(a2 + v129);
    v153[0] = v130;
    if (v131 == -20254786)
    {
      *a3 = v130;
      return 1;
    }
  }

LABEL_125:
  if (v14)
  {
    v28 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A250];
    v30 = MEMORY[0x1E695DF20];
    v31 = @"Can't read entity into shell: Missing entity frontside delimiter";
    goto LABEL_127;
  }

  return 0;
}

void sub_1857693C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_185769A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18576A464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18576A814(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v14 = objc_begin_catch(a1);
  if (a2 != 2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown exception thrown posting NSRemotePersistentStoreDidChangeNotification\n", &buf, 2u);
    }

    v16 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Unknown exception thrown posting NSRemotePersistentStoreDidChangeNotification", &buf, 2u);
    }

    objc_end_catch();
    JUMPOUT(0x18576A7ACLL);
  }

  v17 = v14;
  v14;
  v18 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      v19 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
    }

    else
    {
      v19 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
    }

    _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: Exception thrown posting NSRemotePersistentStoreDidChangeNotification: %@\n", &buf, 0xCu);
  }

LABEL_15:
  _NSCoreDataLog_console(1, "Exception thrown posting NSRemotePersistentStoreDidChangeNotification: %@");
  objc_autoreleasePoolPop(v18);
  objc_exception_rethrow();
}

void sub_18576A9D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x18576A7B4);
  }

  _Unwind_Resume(a1);
}

void sub_18576AA1C(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x18576AA24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18576AA2C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  return sub_18576AA30();
}

__CFString *descriptionForBranchRow(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return @"branch row pointer is NULL";
  }

  v4 = (*(a1 + 14) - *(a1 + 10));
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = (a1 + 16);
    do
    {
      v7 = *v6++;
      [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v7)}];
      --v4;
    }

    while (v4);
  }

  if ((a2 & 0x80000000) != 0)
  {
    v9 = &stru_1EF3F1768;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%d]", a2];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"branch row pointer%@ = %p flags.size = %d flags.operation = %d flags.parameter = %d flags.offset = %d lowerBound = %d lowerSlot = %d upperBound = %d upperSlot = %d generalSlots pointer = %p with contents = %@", v9, a1, *a1 & 7, (*a1 >> 3) & 0x3FF, *a1 >> 13, HIDWORD(*a1), *(a1 + 8), *(a1 + 10), *(a1 + 12), *(a1 + 14), a1 + 16, v5];

  return v10;
}

void sub_18576C5E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    if (!v2)
    {
      JUMPOUT(0x18576C398);
    }

    JUMPOUT(0x18576C384);
  }

  _Unwind_Resume(a1);
}

void sub_18576C60C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18576C618);
}

void sub_185778530(void *exc_buf, int a2)
{
  if (a2)
  {
    v4 = objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      v5 = v4;
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v7 = [v5 userInfo];
        *(v2 + 336) = 138412546;
        *(v2 + 340) = v5;
        *(v2 + 348) = 2112;
        *(v2 + 350) = v7;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Exception %@ ui %@ occurred in +[NSManagedObject classForEntity:]\n", (v2 + 336), 0x16u);
      }

      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = [v5 userInfo];
        *(v2 + 336) = 138412546;
        *(v2 + 340) = v5;
        *(v2 + 348) = 2112;
        *(v2 + 350) = v9;
        _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Exception %@ ui %@ occurred in +[NSManagedObject classForEntity:]", (v2 + 336), 0x16u);
      }

      objc_exception_rethrow();
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *(v2 + 336) = 0;
      _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown exception occurred in +[NSManagedObject classForEntity:]\n", (v2 + 336), 2u);
    }

    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *(v2 + 336) = 0;
      _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Unknown exception occurred in +[NSManagedObject classForEntity:]", (v2 + 336), 2u);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x1857787C4);
}

void sub_185778760(void *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    os_unfair_lock_unlock(&stru_1ED4BE9E4);
    objc_exception_rethrow();
  }

  JUMPOUT(0x1857787C4);
}

void sub_1857787BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_1857787C0(a1);
  }

  objc_terminate();
}

Class override_class_superclass(objc_class *a1)
{
  Superclass = class_getSuperclass(a1);

  return class_getSuperclass(Superclass);
}

void *_sharedIMPL_setPvfk_core(id **a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_setPrimitiveValue_forKey_);
  }

  v14 = a3;
  v7 = *(_PFEntityForManagedObject(a1) + 12);
  v8 = *(v7 + 24 + 8 * a4);
  v9 = *(*(*(v7 + 16) + 40) + 8 * a4);
  _PF_CopyOnWrite_Snapshot(a1);
  _PFManagedObject_coerceValueForKeyWithDescription(a1, &v14, v9, v8);
  v10 = *(a1 + 5);
  if (v10)
  {
    v11 = a1 + v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[-4 * *(a1 + 19)];
  v12[a4 >> 3] |= 1 << (a4 & 7);
  return snapshot_set_value_as_object(a1[3], a4, v14);
}

void _sharedIMPL_addObjectToOrderedSet_core(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v7 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a4) name];
    _PF_Handler_WillAccess_Property(a1, v8, a4);
    _sharedIMPL_pvfk_core(a1, v9, a4);
    v11 = v10;
    v12 = [v10 containsObject:a3];
    v13 = v12;
    v14 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{objc_msgSend(v11, "count"), v12 ^ 1u}];
    [a1 willChange:2 valuesAtIndexes:? forKey:?];
    if ((v13 & 1) == 0)
    {
      [v11 addObject:a3];
    }

    [a1 didChange:2 valuesAtIndexes:v14 forKey:v7];
  }
}

void _sharedIMPL_addOrderedSet_core(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = [a3 count];
  if (v7)
  {
    v8 = v7;
    v9 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a4) name];
    _PF_Handler_WillAccess_Property(a1, v10, a4);
    _sharedIMPL_pvfk_core(a1, v11, a4);
    v13 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v15 = &v26 - v14;
    v27 = v16;
    v26 = v9;
    if (v8 > 0x200)
    {
      v15 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v15, 8 * v8);
    }

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v28 = 0u;
    v17 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:{16, v26, v27}];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(a3);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          if (([v13 containsObject:v22] & 1) == 0)
          {
            *&v15[8 * v19++] = v22;
          }
        }

        v18 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    v23 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{objc_msgSend(v13, "count"), v19}];
    v24 = v26;
    [a1 willChange:2 valuesAtIndexes:v23 forKey:v26];
    [v13 addObjects:v15 count:v19];
    [a1 didChange:2 valuesAtIndexes:v23 forKey:v24];

    if (v8 >= 0x201)
    {
      NSZoneFree(0, v15);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void _sharedIMPL_removeObjectFromOrderedSet_core(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v7 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a4) name];
    _PF_Handler_WillAccess_Property(a1, v8, a4);
    _sharedIMPL_pvfk_core(a1, v9, a4);
    v11 = v10;
    v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = [v11 indexOfObject:a3];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v13 addIndex:v12];
    }

    [a1 willChange:3 valuesAtIndexes:v13 forKey:v7];
    [v11 removeObjectsAtIndexes:v13];
    [a1 didChange:3 valuesAtIndexes:v13 forKey:v7];
  }
}

void _sharedIMPL_removeObjectFromSet_core(_DWORD *a1, uint64_t a2, void *a3, unint64_t a4)
{
  values = a3;
  v6 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a4) name];
  v7 = a1[4];
  v8 = CFSetCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9F8]);
  if ((v7 & 0x200000) != 0)
  {
    _PF_ManagedObject_WillChangeValueForKeywithSetMutation(a1, sel_willChangeValueForKey_withSetMutation_usingObjects_, v6, 2, v8, a4);
  }

  else
  {
    [a1 willChangeValueForKey:v6 withSetMutation:2 usingObjects:v8];
  }

  _sharedIMPL_pvfk_core(a1, v9, a4);
  [v10 removeObject:values];
  if ((v7 & 0x200000) != 0)
  {
    _PF_ManagedObject_DidChangeValueForKeywithSetMutation(a1, sel_didChangeValueForKey_withSetMutation_usingObjects_, v6);
    if (!v8)
    {
      return;
    }

    goto LABEL_8;
  }

  [a1 didChangeValueForKey:v6 withSetMutation:2 usingObjects:v8];
  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }
}

void _sharedIMPL_removeObjectFromOrderedSetAtIndex_core(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a4) name];
  _PF_Handler_WillAccess_Property(a1, v8, a4);
  _sharedIMPL_pvfk_core(a1, v9, a4);
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13 = v12;
  v14 = v12;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 addIndex:a3];
    v13 = v14;
  }

  [a1 willChange:3 valuesAtIndexes:v13 forKey:v7];
  [v11 removeObjectsAtIndexes:v14];
  [a1 didChange:3 valuesAtIndexes:v14 forKey:v7];
}

uint64_t _sharedIMPL_removeOrderedSetAtIndexes_core(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a4) name];
  _PF_Handler_WillAccess_Property(a1, v8, a4);
  _sharedIMPL_pvfk_core(a1, v9, a4);
  v11 = v10;
  [a1 willChange:3 valuesAtIndexes:a3 forKey:v7];
  [v11 removeObjectsAtIndexes:a3];

  return [a1 didChange:3 valuesAtIndexes:a3 forKey:v7];
}

void _sharedIMPL_removeOrderedSet_core(void *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v7 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a4) name];
    _PF_Handler_WillAccess_Property(a1, v8, a4);
    _sharedIMPL_pvfk_core(a1, v9, a4);
    v11 = v10;
    v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(a3);
          }

          v17 = [v11 indexOfObject:*(*(&v19 + 1) + 8 * v16)];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v12 addIndex:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [a1 willChange:3 valuesAtIndexes:v12 forKey:v7];
    [v11 removeObjectsAtIndexes:v12];
    [a1 didChange:3 valuesAtIndexes:v12 forKey:v7];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void _sharedIMPL_insertObjectToOrderedSetAtIndex_core(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    v9 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a5) name];
    _PF_Handler_WillAccess_Property(a1, v10, a5);
    _sharedIMPL_pvfk_core(a1, v11, a5);
    v13 = v12;
    v14 = [v12 containsObject:a3];
    v15 = v14;
    v16 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a4, v14 ^ 1u}];
    [a1 willChange:2 valuesAtIndexes:? forKey:?];
    if ((v15 & 1) == 0)
    {
      [v13 insertObject:a3 atIndex:a4];
    }

    [a1 didChange:2 valuesAtIndexes:v16 forKey:v9];
  }
}

void _sharedIMPL_insertOrderedSetAtIndexes_core(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = [a3 count];
  if (v9)
  {
    v10 = v9;
    v11 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a5) name];
    _PF_Handler_WillAccess_Property(a1, v12, a5);
    _sharedIMPL_pvfk_core(a1, v13, a5);
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v17 = v16;
    v42 = &v41;
    if (v10 >= 0x201)
    {
      v18 = 1;
    }

    else
    {
      v18 = v10;
    }

    v19 = 8 * v18;
    MEMORY[0x1EEE9AC00](v16);
    v20 = v10;
    v22 = &v41 - v21;
    v23 = 8 * v20;
    v44 = v20;
    if (v20 > 0x200)
    {
      v22 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v22, 8 * v20);
    }

    v24 = [a4 lastIndex];
    v49[0] = 0;
    v49[1] = v24;
    v25 = v44;
    v26 = [a4 getIndexes:v22 maxCount:v44 inIndexRange:v49];
    MEMORY[0x1EEE9AC00](v26);
    v27 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = a1;
    v41 = v11;
    if (v25 > 0x200)
    {
      v27 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    }

    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v28 = [a3 countByEnumeratingWithState:&v45 objects:v50 count:{16, v41, v42}];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v46;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(a3);
          }

          v33 = *(*(&v45 + 1) + 8 * i);
          if (([v15 containsObject:v33] & 1) == 0)
          {
            *&v27[8 * v30] = v33;
            [v17 addIndex:*&v22[8 * v30++]];
          }
        }

        v29 = [a3 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v29);
    }

    else
    {
      v30 = 0;
    }

    if (v44 >= 0x201)
    {
      NSZoneFree(0, v22);
      v37 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v27 count:v30];
      v38 = v43;
      v39 = v41;
      [v43 willChange:2 valuesAtIndexes:v17 forKey:v41];
      [v15 insertObjects:v37 atIndexes:v17];
      [v38 didChange:2 valuesAtIndexes:v17 forKey:v39];

      NSZoneFree(0, v27);
    }

    else
    {
      v34 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v27 count:v30];
      v35 = v43;
      v36 = v41;
      [v43 willChange:2 valuesAtIndexes:v17 forKey:v41];
      [v15 insertObjects:v34 atIndexes:v17];
      [v35 didChange:2 valuesAtIndexes:v17 forKey:v36];
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

void _sharedIMPL_replaceObjectInOrderedSetAtIndex_core(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = a4;
  if (a4)
  {
    v9 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a5) name];
    _PF_Handler_WillAccess_Property(a1, v10, a5);
    _sharedIMPL_pvfk_core(a1, v11, a5);
    v13 = v12;
    v14 = [v12 containsObject:a4];
    v15 = v14;
    v16 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{a3, v14 ^ 1u}];
    [a1 willChange:4 valuesAtIndexes:v16 forKey:v9];
    if ((v15 & 1) == 0)
    {
      [v13 replaceObjectsInRange:a3 withObjects:1 count:{&v17, 1}];
    }

    [a1 didChange:4 valuesAtIndexes:v16 forKey:v9];
  }
}

void _sharedIMPL_replaceOrderedSetAtIndexes_core(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = [a3 count];
  if (v9)
  {
    v10 = v9;
    v11 = [*(*(_PFEntityForManagedObject(a1) + 12) + 24 + 8 * a5) name];
    _PF_Handler_WillAccess_Property(a1, v12, a5);
    _sharedIMPL_pvfk_core(a1, v13, a5);
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v17 = v16;
    v42 = &v41;
    if (v10 >= 0x201)
    {
      v18 = 1;
    }

    else
    {
      v18 = v10;
    }

    v19 = 8 * v18;
    MEMORY[0x1EEE9AC00](v16);
    v20 = v10;
    v22 = &v41 - v21;
    v23 = 8 * v20;
    v44 = v20;
    if (v20 > 0x200)
    {
      v22 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v22, 8 * v20);
    }

    v24 = [a4 lastIndex];
    v49[0] = 0;
    v49[1] = v24;
    v25 = v44;
    v26 = [a4 getIndexes:v22 maxCount:v44 inIndexRange:v49];
    MEMORY[0x1EEE9AC00](v26);
    v27 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = a1;
    v41 = v11;
    if (v25 > 0x200)
    {
      v27 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    }

    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v28 = [a3 countByEnumeratingWithState:&v45 objects:v50 count:{16, v41, v42}];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v46;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(a3);
          }

          v33 = *(*(&v45 + 1) + 8 * i);
          if (([v15 containsObject:v33] & 1) == 0)
          {
            *&v27[8 * v30] = v33;
            [v17 addIndex:*&v22[8 * v30++]];
          }
        }

        v29 = [a3 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v29);
    }

    else
    {
      v30 = 0;
    }

    if (v44 >= 0x201)
    {
      NSZoneFree(0, v22);
      v37 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v27 count:v30];
      v38 = v43;
      v39 = v41;
      [v43 willChange:4 valuesAtIndexes:v17 forKey:v41];
      [v15 replaceObjectsAtIndexes:v17 withObjects:v37];
      [v38 didChange:4 valuesAtIndexes:v17 forKey:v39];

      NSZoneFree(0, v27);
    }

    else
    {
      v34 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v27 count:v30];
      v35 = v43;
      v36 = v41;
      [v43 willChange:4 valuesAtIndexes:v17 forKey:v41];
      [v15 replaceObjectsAtIndexes:v17 withObjects:v34];
      [v35 didChange:4 valuesAtIndexes:v17 forKey:v36];
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

void _sharedIMPL_wcvfk_core(id a1, uint64_t a2, unint64_t a3)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_willChangeValueForKey_);
  }

  v5 = *(*(*(*(_PFEntityForManagedObject(a1) + 12) + 16) + 40) + 8 * a3);

  _PF_ManagedObject_WillChangeValueForKeyIndex(a1, sel_willChangeValueForKey_, v5, a3, 0);
}

void *_sharedIMPL_dcvfk_core(void *a1, uint64_t a2, unint64_t a3)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_didChangeValueForKey_);
  }

  v5 = *(*(*(*(_PFEntityForManagedObject(a1) + 12) + 16) + 40) + 8 * a3);

  return _PF_ManagedObject_DidChangeValueForKeyIndex(a1, sel_didChangeValueForKey_, v5, a3);
}

void generateAccessorWithFunctionPtrSignature(const char *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!strcmp(a1, "v@:Q"))
  {
    v6 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v7 = &__block_descriptor_48_e11__24__0_8Q16l;
    v8 = __generateAccessorWithFunctionPtrSignature_block_invoke;
    goto LABEL_15;
  }

  if (!strcmp(a1, "v@:I"))
  {
    v6 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v7 = &__block_descriptor_48_e11__20__0_8I16l;
    v8 = __generateAccessorWithFunctionPtrSignature_block_invoke_2;
    goto LABEL_15;
  }

  if (!strcmp(a1, "v@:Q@"))
  {
    v6 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v7 = &__block_descriptor_48_e14__32__0_8Q16_24l;
    v8 = __generateAccessorWithFunctionPtrSignature_block_invoke_3;
    goto LABEL_15;
  }

  if (!strcmp(a1, "v@:I@"))
  {
    v6 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v7 = &__block_descriptor_48_e14__28__0_8I16_20l;
    v8 = __generateAccessorWithFunctionPtrSignature_block_invoke_4;
    goto LABEL_15;
  }

  if (!strcmp(a1, "v@:@Q"))
  {
    v6 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v7 = &__block_descriptor_48_e14__32__0_8_16Q24l;
    v8 = __generateAccessorWithFunctionPtrSignature_block_invoke_5;
    goto LABEL_15;
  }

  if (!strcmp(a1, "v@:@I"))
  {
    v6 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v7 = &__block_descriptor_48_e14__28__0_8_16I24l;
    v8 = __generateAccessorWithFunctionPtrSignature_block_invoke_6;
    goto LABEL_15;
  }

  if (!strcmp(a1, "v@:@@"))
  {
    v6 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v7 = &__block_descriptor_48_e14__32__0_8_16_24l;
    v8 = __generateAccessorWithFunctionPtrSignature_block_invoke_7;
LABEL_15:
    v6[2] = v8;
    v6[3] = v7;
    v6[4] = a2;
    v6[5] = a3;
    imp_implementationWithBlock(v6);
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    v11 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v13 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
        *buf = 136315138;
        v22 = a1;
        goto LABEL_22;
      }
    }

    else if (v13)
    {
      *buf = 136315138;
      v22 = a1;
LABEL_22:
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: generateAccessorWithFunctionPtrSignature failed with unknown signature '%s'\n", buf, 0xCu);
    }
  }

  _NSCoreDataLog_console(1, "generateAccessorWithFunctionPtrSignature failed with unknown signature '%s'", a1);
  objc_autoreleasePoolPop(v10);
  __break(1u);
}

void *_sharedIMPL_setvfk_core_i2q(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___sharedIMPL_setvfk_core_i2q_block_invoke;
  v5[3] = &unk_1E6EC22C8;
  v5[4] = a1;
  v5[5] = a4;
  v5[6] = a3;
  return _sharedIMPL_setvfk_core_scalar(a1, a4, v5);
}

unsigned int *___sharedIMPL_setvfk_core_i2q_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
    v8 = *(a1 + 32);

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 24);
    v5 = *(a1 + 48);
    Class = object_getClass(v4);
    result = object_getIndexedIvars(Class);
    v4[(v3 >> 3) + 28] &= ~(1 << (v3 & 7));
    *&v4[result[v3 + 19]] = v5;
  }

  return result;
}

unsigned int *___sharedIMPL_setvfk_core_f_block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    LODWORD(a3) = *(a1 + 48);
    [MEMORY[0x1E696AD98] numberWithFloat:a3];
    v9 = *(a1 + 32);

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 24);
    v6 = *(a1 + 48);
    Class = object_getClass(v5);
    result = object_getIndexedIvars(Class);
    v5[(v4 >> 3) + 28] &= ~(1 << (v4 & 7));
    *&v5[result[v4 + 19]] = v6;
  }

  return result;
}

uint64_t _deallocateContextBackgroundThread(uint64_t a1)
{
  v2 = *(a1 + 24);
  [NSManagedObjectContext _dispose:v2];
  _PFDeallocateObject(v2);
  *(a1 + 24) = 0;
  return 0;
}

void sub_18577F19C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x18577F0D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_18577F230(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18577F238);
  }

  JUMPOUT(0x18577F224);
}

void sub_18577F270(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18577F244);
  }

  JUMPOUT(0x18577F224);
}

void sub_185780658(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185780A54);
  }

  objc_terminate();
}

void sub_185780660(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185780A54);
  }

  objc_terminate();
}

void sub_185780668(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x185780630);
}

void sub_1857806A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x185780700);
}

void sub_185780708(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v3 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3;
    v3;
    v5 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      if (!_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          if (objc_opt_respondsToSelector(v4, sel_userInfo))
          {
            [v4 userInfo];
            JUMPOUT(0x1857808F8);
          }

          JUMPOUT(0x1857808F4);
        }

        JUMPOUT(0x185780974);
      }

      JUMPOUT(0x1857808B8);
    }

    JUMPOUT(0x1857809D4);
  }

  v7 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      v8 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v9 = 0;
    }

    else
    {
      v8 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v9 = 0;
    }

    _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: error: Serious application error.  Unidentifiable exception was caught during Core Data change processing.  This is usually a bug within an observer of NSManagedObjectContextObjectsDidChangeNotification.\n", &v9, 2u);
  }

LABEL_15:
  _NSCoreDataLog_console(1, "Serious application error.  Unidentifiable exception was caught during Core Data change processing.  This is usually a bug within an observer of NSManagedObjectContextObjectsDidChangeNotification.");
  objc_autoreleasePoolPop(v7);
  objc_exception_rethrow();
}

void sub_185780734(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x185780788);
  }

  _Unwind_Resume(a1);
}

void sub_1857809E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x185780510);
  }

  _Unwind_Resume(a1);
}

void sub_185780A4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185780A50);
  }

  objc_terminate();
}

void sub_185781974(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v10 = objc_begin_catch(exc_buf);
      [NSManagedObjectContext _handleError:v10 withError:&a10];
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        v11 = objc_begin_catch(exc_buf);
        objc_exception_rethrow();
      }

      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x18578184CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857819F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857819C4);
  }

  _Unwind_Resume(a1);
}

void sub_185781A30(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857818C8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185781A4C(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x185781A54);
  }

  _Unwind_Resume(a1);
}

void sub_185781A5C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185781A68);
}

void sub_185782F2C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  if (a2 == 3)
  {
    v51 = objc_begin_catch(exc_buf);
    if (v50)
    {
      [NSManagedObjectContext _handleError:v51 withError:&a50];
    }

    objc_end_catch();
  }

  else
  {
    if (a2 == 2)
    {
      v52 = objc_begin_catch(exc_buf);
      objc_exception_rethrow();
    }

    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x185782D94);
}

void sub_185782F8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x185782FD8);
}

void sub_185782FA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185782FD4);
  }

  _Unwind_Resume(a1);
}

void sub_185782FC0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a2)
  {
    if (v51)
    {
      JUMPOUT(0x185782FD0);
    }

    if (a2 == 3)
    {
      v52 = objc_begin_catch(a1);
      if (v50)
      {
        [NSManagedObjectContext _handleError:v52 withError:&a50];
      }

      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        v53 = objc_begin_catch(a1);
        objc_exception_rethrow();
      }

      objc_begin_catch(a1);
    }

    JUMPOUT(0x185782D94);
  }

  _Unwind_Resume(a1);
}

void sub_185783050(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185783020);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_185783070(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  return sub_185782FB4();
}

void sub_1857847A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

void sub_18578482C(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v28 = objc_begin_catch(exc_buf);
      [NSManagedObjectContext _handleError:v28 withError:&a28];
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        v29 = objc_begin_catch(exc_buf);
        objc_exception_rethrow();
      }

      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x185783D48);
  }

  JUMPOUT(0x1857848E4);
}

void sub_1857848B0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18578487CLL);
  }

  JUMPOUT(0x1857848E4);
}

void sub_1857848EC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_1857848D0();
}

void sub_185785204(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v66 = objc_begin_catch(a1);
      [NSManagedObjectContext _handleError:v66 withError:&a66];
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        v67 = objc_begin_catch(a1);
        objc_exception_rethrow();
      }

      objc_begin_catch(a1);
    }

    JUMPOUT(0x185784D7CLL);
  }

  _Unwind_Resume(a1);
}

void sub_18578528C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185785254);
  }

  _Unwind_Resume(a1);
}

void sub_1857852AC(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x1857852B4);
  }

  _Unwind_Resume(a1);
}

void sub_1857852BC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1857852C8);
}

void sub_1857858DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857858A8);
  }

  _Unwind_Resume(a1);
}

void sub_1857858FC(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x185785904);
  }

  _Unwind_Resume(a1);
}

void sub_18578590C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185785918);
}

void sub_185786814(void *a1, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v2 = objc_begin_catch(a1);
      [NSManagedObjectContext _handleError:v2 withError:&STACK[0x228]];
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        v3 = objc_begin_catch(a1);
        objc_exception_rethrow();
      }

      objc_begin_catch(a1);
    }

    JUMPOUT(0x185785C7CLL);
  }

  JUMPOUT(0x1857868D4);
}

void sub_185786898(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185786864);
  }

  JUMPOUT(0x1857868D4);
}

void sub_1857868B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1857870B0()
{
  if (v0)
  {
    JUMPOUT(0x1857870B8);
  }

  JUMPOUT(0x1857870BCLL);
}

void sub_18578868C()
{
  if (v0)
  {
    JUMPOUT(0x185788694);
  }

  JUMPOUT(0x185788698);
}

void sub_18578878C()
{
  if (v0)
  {
    JUMPOUT(0x185788794);
  }

  JUMPOUT(0x185788798);
}

void sub_185789F64(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185789F34);
  }

  JUMPOUT(0x185789EFCLL);
}

void sub_18578AD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18578E218(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void _PFFaultLogExcessivePrepareForPendingChangesAttempts()
{
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: About to exceed _prepareForPushChanges limit. Set a breakpoint on _PFFaultLogExcessivePrepareForPendingChangesAttempts to stop here in the debugger.\n", buf, 2u);
  }

  v1 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_fault_impl(&dword_18565F000, v1, OS_LOG_TYPE_FAULT, "CoreData: About to exceed _prepareForPushChanges limit. Set a breakpoint on _PFFaultLogExcessivePrepareForPendingChangesAttempts to stop here in the debugger.", v2, 2u);
  }
}

void sub_18579131C()
{
  if (v0)
  {
    JUMPOUT(0x185791324);
  }

  JUMPOUT(0x185791328);
}

void sub_185792660(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18579266CLL);
}

void sub_185792AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185793B10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v3 = *(v2 + 128);
    if (a2 != 2)
    {
      objc_begin_catch(exception_object);
      JUMPOUT(0x185793974);
    }

    v4 = objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_185793C24(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    v3 = *(v2 + 128);
    JUMPOUT(0x185793BF8);
  }

  JUMPOUT(0x185793C3CLL);
}

id _PFRetainedObjectForMappedChildObjectIDInParentContext(void *a1, uint64_t a2)
{
  v3 = a1;
  if (*(*(a2 + 168) + 8))
  {
    if ([a1 isTemporaryID])
    {
      v4 = [**(*(a2 + 168) + 8) objectForKey:v3];
      if (v4)
      {
        v3 = v4;
      }
    }
  }

  return _PFRetainedObjectIDCore(a2, v3, 0, 1);
}

void sub_185794A88(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x18579496CLL);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_185794B44(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185794B18);
  }

  JUMPOUT(0x185794AE0);
}

void sub_185794D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1857959F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185796184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_185796514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_185796A58(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v3 = objc_begin_catch(exc_buf);
      if (v2[4])
      {
        [NSManagedObjectContext _handleError:v3 withError:(*(v2[10] + 8) + 40)];
      }

      *(*(v2[9] + 8) + 24) = 0;
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        *(*(v2[11] + 8) + 40) = objc_begin_catch(exc_buf);
        objc_exception_rethrow();
      }

      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x18579679CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185796AE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185796AB4);
  }

  _Unwind_Resume(a1);
}

void sub_185796AF8(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x185796B00);
  }

  _Unwind_Resume(a1);
}

void sub_185796B08(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18579683CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185796B20(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x185796B28);
  }

  _Unwind_Resume(a1);
}

void sub_185796B30(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185796B3CLL);
}

void sub_185796EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_18579D45C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exception_object);
      JUMPOUT(0x18579D35CLL);
    }

    v2 = objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18579D4D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18579D4A4);
  }

  _Unwind_Resume(a1);
}

void sub_18579D4E0(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x18579D4E8);
  }

  _Unwind_Resume(a1);
}

void sub_18579D4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18579D4F8);
  }

  objc_terminate();
}

void sub_1857A7AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1857AB2C0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1857ADB7C(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1857AD960);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  JUMPOUT(0x1857ADBE0);
}

void sub_1857ADBBC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857ADB90);
  }

  JUMPOUT(0x1857ADBE0);
}

void sub_1857ADBD4()
{
  if (v0)
  {
    JUMPOUT(0x1857ADBDCLL);
  }

  JUMPOUT(0x1857ADBE0);
}

void sub_1857ADBE8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_1857ADBCC();
}

void sub_1857B0D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857B2E68(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1857B36D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1857B4CAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857B4B9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1857B4CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1857B4CDCLL);
  }

  objc_terminate();
}

void sub_1857B7A40(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *exc_buf, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id *a28)
{
  if (!a2)
  {
    _Unwind_Resume(v30);
  }

  if (a2 != 3)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x1857B77E8);
  }

  v28 = objc_begin_catch(a1);
  [NSMigrationManager _doCleanupOnFailure:a28];
  v29 = v28;
  objc_exception_rethrow();
}

void sub_1857B7AC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      JUMPOUT(0x1857B7AD0);
    }

    JUMPOUT(0x1857B7BF0);
  }

  _Unwind_Resume(v3);
}

void sub_1857B7AF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1857B7AFCLL);
  }

  objc_terminate();
}

void sub_1857B7B1C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id *a28)
{
  if (a2)
  {
    objc_end_catch();
    if (a2 != 3)
    {
      objc_begin_catch(a1);
      if (!a27)
      {
        JUMPOUT(0x1857B77E8);
      }

      JUMPOUT(0x1857B77E0);
    }

    v29 = objc_begin_catch(a1);
    [NSMigrationManager _doCleanupOnFailure:a28];
    v30 = v29;
    objc_exception_rethrow();
  }

  _Unwind_Resume(v31);
}

void sub_1857B7BD8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857B7B94);
  }

  _Unwind_Resume(v2);
}

void sub_1857BA0AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, uint64_t a10, __int16 buf)
{
  objc_begin_catch(a1);
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault:  NSSQLConnectionManager tried to blow a lock\n", &buf, 2u);
  }

  v12 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    a9 = 0;
    _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData:  NSSQLConnectionManager tried to blow a lock", &a9, 2u);
  }

  objc_end_catch();
  JUMPOUT(0x1857BA084);
}

void sub_1857BA140(void *exc_buf)
{
  objc_begin_catch(exc_buf);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1857BA370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1857BA748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857BA9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  v13 = objc_begin_catch(exception_object);
  if (a2 != 2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *(v11 - 240) = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: scheduleBarrierBlock failed with unknown excception\n", (v11 - 240), 2u);
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *(v11 - 240) = 0;
      _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: scheduleBarrierBlock failed with unknown excception", (v11 - 240), 2u);
    }

    objc_end_catch();
LABEL_17:
    JUMPOUT(0x1857BA8F4);
  }

  v14 = v13;
  v15 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      loga = _PFLogGetLogStream(1);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        *(v11 - 240) = 138412290;
        *(v11 - 236) = v14;
LABEL_15:
        _os_log_error_impl(&dword_18565F000, loga, OS_LOG_TYPE_ERROR, "CoreData: error: scheduleBarrierBlock failed with excception: %@\n", (v11 - 240), 0xCu);
      }
    }

    else
    {
      loga = _PFLogGetLogStream(1);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        *(v11 - 240) = 138412290;
        *(v11 - 236) = v14;
        goto LABEL_15;
      }
    }
  }

  _NSCoreDataLog_console(1, "scheduleBarrierBlock failed with excception: %@");
  objc_autoreleasePoolPop(v15);
  *(*(*(v10 + 48) + 8) + 40) = v14;
  objc_end_catch();
  goto LABEL_17;
}

void sub_1857BACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857BAFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  v13 = objc_begin_catch(exception_object);
  if (a2 != 2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *(v11 - 256) = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: scheduleConnectionsBarrier failed with unknown excception\n", (v11 - 256), 2u);
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *(v11 - 256) = 0;
      _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: scheduleConnectionsBarrier failed with unknown excception", (v11 - 256), 2u);
    }

    objc_end_catch();
LABEL_17:
    JUMPOUT(0x1857BAECCLL);
  }

  v14 = v13;
  v15 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      loga = _PFLogGetLogStream(1);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        *(v11 - 256) = 138412290;
        *(v11 - 252) = v14;
LABEL_15:
        _os_log_error_impl(&dword_18565F000, loga, OS_LOG_TYPE_ERROR, "CoreData: error: scheduleConnectionsBarrier failed with excception: %@\n", (v11 - 256), 0xCu);
      }
    }

    else
    {
      loga = _PFLogGetLogStream(1);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
      {
        *(v11 - 256) = 138412290;
        *(v11 - 252) = v14;
        goto LABEL_15;
      }
    }
  }

  _NSCoreDataLog_console(1, "scheduleConnectionsBarrier failed with excception: %@");
  objc_autoreleasePoolPop(v15);
  *(*(*(v10 + 48) + 8) + 40) = v14;
  objc_end_catch();
  goto LABEL_17;
}

void sub_1857BB3A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *exc_buf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v28 = objc_begin_catch(a1);
  if (a2 != 2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: enumerateAvailableConnectionsWithBlock failed with unknown excception\n", &buf, 2u);
    }

    v30 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: enumerateAvailableConnectionsWithBlock failed with unknown excception", &buf, 2u);
    }

    objc_end_catch();
    JUMPOUT(0x1857BB328);
  }

  v31 = v28;
  v32 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      v33 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v31;
    }

    else
    {
      v33 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v31;
    }

    _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: enumerateAvailableConnectionsWithBlock failed with exception: %@\n", &buf, 0xCu);
  }

LABEL_15:
  _NSCoreDataLog_console(1, "enumerateAvailableConnectionsWithBlock failed with exception: %@");
  objc_autoreleasePoolPop(v32);
  objc_exception_rethrow();
}

void sub_1857BB540(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1857BB580);
}

void sub_1857BB54C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857BB580);
  }

  _Unwind_Resume(a1);
}

void sub_1857BB560(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1857BB568);
  }

  objc_terminate();
}

void sub_1857BB574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *exc_buf)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x1857BB32CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1857BDD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857BDF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857BF814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (v11)
  {
    JUMPOUT(0x1857BF81CLL);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1857BFC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    JUMPOUT(0x1857BFC44);
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1857C0A60(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857C0A2CLL);
  }

  JUMPOUT(0x1857C0A08);
}

void sub_1857C0FD0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1857C0F18);
    }

    v11 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857C1090(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857C1060);
  }

  JUMPOUT(0x1857C1028);
}

void sub_1857C1298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857C2410(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1857C1D8CLL);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857C24A4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857C2478);
  }

  JUMPOUT(0x1857C2448);
}

void sub_1857C3488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1857C4F78(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(exception_object);
    if (v2)
    {
      v4 = v2;
    }

    JUMPOUT(0x1857C4FDCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1857C4F9C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      objc_begin_catch(exc_buf);
      objc_end_catch();
      if (!v2)
      {
        JUMPOUT(0x1857C4C64);
      }

      JUMPOUT(0x1857C4C44);
    }

    objc_end_catch();
    JUMPOUT(0x1857C4FD4);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857C4FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1857C4FC8);
  }

  objc_end_catch();
  JUMPOUT(0x1857C4FD4);
}

void sub_1857C4FE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x1857C4CE8);
  }

  _Unwind_Resume(a1);
}

void sub_1857C5004(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (!a2)
  {
    JUMPOUT(0x1857C5388);
  }

  if (a2 != 2)
  {
    JUMPOUT(0x1857C5374);
  }

  v25 = objc_begin_catch(a1);
  v26 = v25;
  if (v25 && v25[5] == 134090)
  {
    v27 = *(a22[9] + 8);
    if (!*(v27 + 40))
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = [v25 userInfo];
      *(*(a22[9] + 8) + 40) = [v28 errorWithDomain:*MEMORY[0x1E696A250] code:134090 userInfo:v29];
      v27 = *(a22[9] + 8);
    }

    [NSManagedObjectContext _handleError:v26 withError:(v27 + 40)];
    goto LABEL_15;
  }

  if (!a22[12])
  {
LABEL_15:
    v33 = 0;
    v32 = 0;
    goto LABEL_21;
  }

  v30 = a22[5];
  v31 = [objc_opt_class() metadataForPersistentStoreOfType:v22 URL:v23 options:a22[4] error:0];
  v32 = v31;
  if (v31 && ([v22 isEqual:{objc_msgSend(v31, "objectForKey:", @"NSStoreType"}] & 1) == 0)
  {
    v35 = MEMORY[0x1E696ABC0];
    v36 = [v26 userInfo];
    v34 = [v35 errorWithDomain:*MEMORY[0x1E696A250] code:134010 userInfo:v36];
  }

  else
  {
    [NSManagedObjectContext _handleError:v26 withError:&STACK[0x3C0]];
    if (((*(*(a22[11] + 8) + 40) == 0) & v24) == 1 && [STACK[0x3C0] code] == 134020 && objc_msgSend(v32, "objectForKey:", @"NSStoreModelVersionHashes"))
    {
      v33 = 1;
      goto LABEL_21;
    }

    if (!a22[12])
    {
      v33 = 0;
LABEL_21:
      v37 = *(a22[11] + 8);
      if (*(v37 + 40))
      {
        *(v37 + 40) = 0;
      }

      objc_end_catch();
      if (v33)
      {
        if (!*(*(a22[11] + 8) + 40))
        {
          v38 = [v32 copy];
          JUMPOUT(0x1857C40DCLL);
        }

        JUMPOUT(0x1857C40D0);
      }

      JUMPOUT(0x1857C40BCLL);
    }

    v34 = STACK[0x3C0];
  }

  v33 = 0;
  *(*(a22[9] + 8) + 40) = v34;
  goto LABEL_21;
}

void sub_1857C5234(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    JUMPOUT(0x1857C5388);
  }

  if (a2 != 3)
  {
    objc_end_catch();
    JUMPOUT(0x1857C5374);
  }

  v10 = objc_begin_catch(exc_buf);
  v11 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(2))
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *(v9 - 240) = 138412290;
      *(v9 - 236) = v10;
      v13 = "CoreData: error: Caught exception trying to load store metadata during error recovery: %@\n";
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *(v9 - 240) = 138412290;
      *(v9 - 236) = v10;
      v13 = "CoreData: warning: Caught exception trying to load store metadata during error recovery: %@\n";
    }

    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v13, (v9 - 240), 0xCu);
  }

LABEL_10:
  if (_pflogging_catastrophic_mode)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  _NSCoreDataLog_console(v14, "Caught exception trying to load store metadata during error recovery: %@");
  objc_autoreleasePoolPop(v11);
  objc_end_catch();
  JUMPOUT(0x1857C5120);
}

void sub_1857C536C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1857C5378);
  }

  JUMPOUT(0x1857C5388);
}

void sub_1857C5394(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1857C53A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1857C62E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1857C641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1857C6A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857C6B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857C6D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1857C74A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857C75F4);
  }

  _Unwind_Resume(a1);
}

void sub_1857C74AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a2)
  {
    _Block_object_dispose((v17 - 232), 8);
    if (a2 == 3)
    {
      v20 = objc_begin_catch(a1);
      [NSManagedObjectContext _handleError:v20 withError:va];

      *(*(*(v15 + 80) + 8) + 40) = 0;
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        v21 = objc_begin_catch(a1);

        v22 = v21;
        objc_exception_rethrow();
      }

      objc_begin_catch(a1);
    }

    JUMPOUT(0x1857C7108);
  }

  _Unwind_Resume(a1);
}

void sub_1857C755C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857C751CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1857C7580(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1857C75A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      JUMPOUT(0x1857C75B0);
    }

    JUMPOUT(0x1857C75F4);
  }

  _Unwind_Resume(a1);
}

void sub_1857C75B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1857C75C0);
  }

  objc_terminate();
}

void sub_1857C75D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1857C73F4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1857C877C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1857C9BFC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1857C9BF4);
}

void sub_1857C9C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  if (a2)
  {
    objc_begin_catch(a1);
    if (a19)
    {
      JUMPOUT(0x1857C9818);
    }

    JUMPOUT(0x1857C9BC0);
  }

  _Unwind_Resume(a1);
}

void sub_1857C9C20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);
  if (a19)
  {
    JUMPOUT(0x1857C9818);
  }

  JUMPOUT(0x1857C9BC0);
}

void sub_1857CD29C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v34 = objc_begin_catch(exc_buf);
      if (*(a24 + 96))
      {
        if (PFInstrumentsGetLog_logtoken != -1)
        {
          dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
        }

        v35 = *(a24 + 96);
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v36 = PFInstrumentsGetLog_coreDataInstrumentsLog;
          if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
          {
            *(v33 - 256) = 0;
            _os_signpost_emit_with_name_impl(&dword_18565F000, v36, OS_SIGNPOST_INTERVAL_END, v35, "Save", &unk_1859905C6, (v33 - 256), 2u);
          }
        }
      }

      v37 = [MEMORY[0x1E695DF70] array];
      [v37 addObject:v32];
      while (v31 < v30)
      {
        v38 = [objc_msgSend(objc_msgSend(a19 objectAtIndex:{v31++), "affectedStores"), "objectAtIndex:", 0}];
        [v37 addObject:v38];
      }

      v39 = MEMORY[0x1E696AEC0];
      [v34 reason];
      v40 = [v39 stringWithFormat:@"Save partially failed: %@"];
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v32)}];
      v42 = [_NSCoreDataException exceptionWithName:134040 code:v40 reason:v41 userInfo:?];
      objc_exception_throw(v42);
    }

    if (a2 != 4)
    {
      if (a2 != 2)
      {
        objc_begin_catch(exc_buf);
        JUMPOUT(0x1857CC7ACLL);
      }

      objc_begin_catch(exc_buf);
      v43 = *(*(a24 + 64) + 8);
      if (*(v43 + 40))
      {
        *(v43 + 40) = 0;
      }

      objc_exception_rethrow();
    }

    objc_begin_catch(exc_buf);
    *(*(*(a24 + 64) + 8) + 40) = 0;
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857CD81C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857CD7B0);
  }

  _Unwind_Resume(a1);
}

void sub_1857CF3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1857CF724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1857D02DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1857D0820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1857D0A1C(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857D0924);
  }

  JUMPOUT(0x1857D0A14);
}

void sub_1857D0D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1857D1178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1857D1764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857D1E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1857D2548(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857D2510);
  }

  _Unwind_Resume(a1);
}

void sub_1857D2568(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1857D2584(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1857D2590);
}

void sub_1857D3210(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1857D31B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1857D3254(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1857D3220);
}

void sub_1857D36A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1857D3C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1857D414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1857D44D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857D4788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1857D4B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1857D4F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1857D52D0(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1857D51B0);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  JUMPOUT(0x1857D52C4);
}

void sub_1857D5314(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857D52E4);
  }

  JUMPOUT(0x1857D52C4);
}

void sub_1857D93FC(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x1857D9308);
}

void sub_1857DA4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1857DACB8(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857DABB8);
  }

  JUMPOUT(0x1857DACACLL);
}

void sub_1857DB6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1857DBD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857DC8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857DD21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1857DDF40(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857DDDD0);
  }

  JUMPOUT(0x1857DDF34);
}

void sub_1857DE520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, char a25)
{
  _Block_object_dispose((v25 - 184), 8);
  _Block_object_dispose((v25 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1857DF3F0(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857DF254);
  }

  JUMPOUT(0x1857DF3E4);
}

void sub_1857DFCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

void sub_1857E0300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1857E0AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1857E0EF4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      *(*(*(v2 + 56) + 8) + 40) = objc_begin_catch(exc_buf);
      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x1857E0E98);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857E1AA8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Unwind_Resume(a1);
}

void sub_1857E34F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1857E373C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      *(*(*(v2 + 56) + 8) + 40) = objc_begin_catch(exc_buf);
      objc_end_catch();
      JUMPOUT(0x1857E36C0);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857E36ECLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857E3A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1857E3C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  *(*(*(v16 + 56) + 8) + 40) = objc_begin_catch(exception_object);

  objc_end_catch();
}

void sub_1857E3F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1857E7390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

__darwin_time_t stat_path_for_modication_time(void *a1)
{
  memset(&v9, 0, sizeof(v9));
  memset(&v8.st_mtimespec, 0, 96);
  if (([a1 isFileURL] & 1) == 0)
  {
    v9.st_mtimespec.tv_sec = 0;
    v9.st_mtimespec.tv_nsec = 0;
LABEL_7:
    v8.st_mtimespec = 0uLL;
    goto LABEL_8;
  }

  v2 = [a1 path];
  v3 = [v2 stringByAppendingString:@"-wal"];
  LODWORD(v2) = stat([v2 fileSystemRepresentation], &v9);
  v4 = stat([v3 fileSystemRepresentation], &v8);
  if (v2)
  {
    v9.st_mtimespec.tv_sec = 0;
    v9.st_mtimespec.tv_nsec = 0;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  p_tv_nsec = &v9.st_mtimespec.tv_nsec;
  if (v9.st_mtimespec.tv_sec <= v8.st_mtimespec.tv_sec)
  {
    p_tv_nsec = &v8.st_mtimespec.tv_nsec;
  }

  v6 = *p_tv_nsec;
  if (v9.st_mtimespec.tv_sec <= v8.st_mtimespec.tv_sec)
  {
    return v8.st_mtimespec.tv_sec;
  }

  else
  {
    return v9.st_mtimespec.tv_sec;
  }
}

void sub_1857ED6F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      v5 = v4;
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [v5 userInfo];
        }

        else
        {
          v10 = 0;
        }

        *(v2 - 256) = 138412546;
        v12 = v2 - 256;
        *(v12 + 4) = v5;
        *(v2 - 244) = 2112;
        *(v12 + 14) = v10;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Serious application error.  An exception was caught from the delegate of NSFetchedResultsController during a call to -controllerDidChangeContent:.  %@ with userInfo %@\n", (v2 - 256), 0x16u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        if (objc_opt_respondsToSelector())
        {
          v11 = [v5 userInfo];
        }

        else
        {
          v11 = 0;
        }

        *(v2 - 256) = 138412546;
        v13 = v2 - 256;
        *(v13 + 4) = v5;
        *(v2 - 244) = 2112;
        *(v13 + 14) = v11;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Serious application error.  An exception was caught from the delegate of NSFetchedResultsController during a call to -controllerDidChangeContent:.  %@ with userInfo %@", (v2 - 256), 0x16u);
      }

      if (byte_1ED4BEEC6 == 1)
      {
        objc_exception_rethrow();
      }
    }

    else
    {
      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *(v2 - 256) = 0;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Serious application error.  Unidentifiable exception was caught from the delegate of NSFetchedResultsController during a call to -controllerDidChangeContent:.\n", (v2 - 256), 2u);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *(v2 - 256) = 0;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Serious application error.  Unidentifiable exception was caught from the delegate of NSFetchedResultsController during a call to -controllerDidChangeContent:.", (v2 - 256), 2u);
      }

      if (byte_1ED4BEEC6 == 1)
      {
        objc_exception_rethrow();
      }
    }

    objc_end_catch();
    JUMPOUT(0x1857ED058);
  }

  _Unwind_Resume(exception_object);
}

void sub_1857F2668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857F3428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 256), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1857F4308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1857F5D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1857F7B3C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1857F7A40);
    }

    v18 = objc_begin_catch(exc_buf);

    objc_exception_throw(v18);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857F7BDC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857F7BA8);
  }

  JUMPOUT(0x1857F7B64);
}

void sub_1857FCEF0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  if (a2 != 2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857FC88CLL);
  }

  objc_begin_catch(exc_buf);

  objc_exception_rethrow();
}

void sub_1857FCFB0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857FCF90);
  }

  JUMPOUT(0x1857FCF5CLL);
}

void sub_1857FDB1C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1857FD57CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857FE7AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857FE600);
  }

  _Unwind_Resume(a1);
}

void sub_1857FEAA8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1857FEA24);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1857FEB68(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1857FEB44);
  }

  JUMPOUT(0x1857FEADCLL);
}

void sub_1857FED9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  objc_begin_catch(exception_object);
  v9 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        a9 = 0;
LABEL_9:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Exception trying to update primary key table\n", &a9, 2u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        a9 = 0;
        goto LABEL_9;
      }
    }
  }

  _NSCoreDataLog_console(1, "Exception trying to update primary key table");
  objc_autoreleasePoolPop(v9);
  objc_end_catch();
  JUMPOUT(0x1857FED28);
}

void sub_1857FFBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_185800334(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858002A0);
  }

  JUMPOUT(0x185800328);
}

void sub_185801220(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_185801238(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185801244);
}

void sub_185805634(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858055A4);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185806400(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185806340);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185806C4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    [(NSSQLiteConnection *)v3 disconnect];
    if (v2)
    {
      objc_setProperty_nonatomic(v2, v5, v4, 48);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_185807B34(void *exc_buf, int a2)
{
  if (a2 != 2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185807AC0);
  }

  objc_begin_catch(exc_buf);

  objc_exception_rethrow();
}

void sub_185808244(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858080ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1858085C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 2)
  {
    v11 = objc_begin_catch(a1);
    if (v10)
    {
      objc_setProperty_nonatomic(v10, v12, v11, 48);
    }

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(a1);
  }

  JUMPOUT(0x1858084ECLL);
}

void sub_185809C1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    v14 = objc_begin_catch(a1);
    if (a2 == 2)
    {
      v15 = v14;
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Exception thrown posting NSPersistentStoreRemoteChangeNotification: %@\n", &buf, 0xCu);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Exception thrown posting NSPersistentStoreRemoteChangeNotification: %@", &buf, 0xCu);
      }
    }

    else
    {
      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown exception thrown posting NSPersistentStoreRemoteChangeNotification\n", &buf, 2u);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Unknown exception thrown posting NSPersistentStoreRemoteChangeNotification", &buf, 2u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x185809BB4);
  }

  _Unwind_Resume(a1);
}

void __cache_handle_memory_pressure_block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [(NSSQLiteConnection *)a2 _clearCachedStatements];

  objc_autoreleasePoolPop(v3);
}

void sub_18580AC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location)
{
  objc_destroyWeak((v49 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

void sub_18580B04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __CFString *a9, uint64_t a10, uint64_t a11, __CFString *a12)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    *(*(*(v12 + 72) + 8) + 24) = 0;
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    a9 = @"NSUnderlyingException";
    a10 = v15;
    a11 = v13;
    a12 = @"Import failed because fetching the database metadata encountered an unhandled exception.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a9 count:2];
    *(*(*(v12 + 64) + 8) + 40) = [v14 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v16];
    objc_end_catch();
    JUMPOUT(0x18580B014);
  }

  _Unwind_Resume(exception_object);
}

void sub_18580BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_18580C08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __CFString *a21, uint64_t a22, uint64_t a23, __CFString *a24)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(exception_object);
    *(*(*(v24 + 56) + 8) + 24) = 0;
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A588];
    a21 = @"NSUnderlyingException";
    a22 = v27;
    a23 = v25;
    a24 = @"Import failed because an unhandled exception was encountered while trying to process the results of the database fetch operation.";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a23 forKeys:&a21 count:2];
    *(*(*(v24 + 64) + 8) + 40) = [v26 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v28];
    objc_end_catch();
    JUMPOUT(0x18580C054);
  }

  _Unwind_Resume(exception_object);
}

void sub_18580C380(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __CFString *a11, uint64_t a12, uint64_t a13, __CFString *a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exc_buf);
    *(*(*(v14 + 64) + 8) + 24) = 0;
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    a11 = @"NSUnderlyingException";
    a12 = v17;
    a13 = v15;
    a14 = @"Import failed because an unhandled exception was encountered while trying to process the results of the database fetch operation.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a13 forKeys:&a11 count:2];
    *(*(*(v14 + 72) + 8) + 40) = [v16 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v18];
    objc_end_catch();
    JUMPOUT(0x18580C340);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18580C734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18580D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_18580D338(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __CFString *a11, uint64_t a12, uint64_t a13, __CFString *a14)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exc_buf);
    *(*(v14[7] + 8) + 24) = 0;
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    a11 = @"NSUnderlyingException";
    a12 = v17;
    a13 = v15;
    a14 = @"Import failed because the post-operation metadata commit hit an unhandled exception.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a13 forKeys:&a11 count:2];
    *(*(v14[8] + 8) + 40) = [v16 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v18];

    *(*(v14[9] + 8) + 40) = 0;
    objc_end_catch();
    JUMPOUT(0x18580D300);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18580E038(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&_MergedGlobals_91);
  objc_exception_rethrow();
}

void sub_1858133D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint8_t buf, int a58, int a59, __int16 a60)
{
  _Block_object_dispose((v60 - 224), 8);
  _Block_object_dispose((v60 - 192), 8);
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v60 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_185813D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_185815164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __CFString *a21, uint64_t a22, uint64_t a23, __CFString *a24)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(exception_object);
    *(*(*(v24 + 64) + 8) + 24) = 0;
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A588];
    a21 = @"NSUnderlyingException";
    a22 = v27;
    a23 = v25;
    a24 = @"An unhandled exception was caught during a fetch for zone in manatee identity loss recovery.";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a23 forKeys:&a21 count:2];
    *(*(*(v24 + 56) + 8) + 40) = [v26 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v28];
    objc_end_catch();
    JUMPOUT(0x185815128);
  }

  _Unwind_Resume(exception_object);
}

void sub_1858157AC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __CFString *a23, uint64_t a24, uint64_t a25, __CFString *a26)
{
  if (a2 == 1)
  {
    v27 = objc_begin_catch(exc_buf);
    *(*(*(v26 + 72) + 8) + 24) = 0;
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E696A588];
    a23 = @"NSUnderlyingException";
    a24 = v29;
    a25 = v27;
    a26 = @"An unhandled exception was caught during a fetch for zone in manatee identity loss recovery.";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a25 forKeys:&a23 count:2];
    *(*(*(v26 + 64) + 8) + 40) = [v28 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v30];
    objc_end_catch();
    JUMPOUT(0x185815770);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185815C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __CFString *a21, uint64_t a22, uint64_t a23, __CFString *a24)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(exception_object);
    *(*(*(v24 + 64) + 8) + 24) = 0;
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A588];
    a21 = @"NSUnderlyingException";
    a22 = v27;
    a23 = v25;
    a24 = @"An unhandled exception was caught during a fetch for zone in manatee identity loss recovery.";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a23 forKeys:&a21 count:2];
    *(*(*(v24 + 56) + 8) + 40) = [v26 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v28];
    objc_end_catch();
    JUMPOUT(0x185815BCCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_185816254(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __CFString *a23, uint64_t a24, uint64_t a25, __CFString *a26)
{
  if (a2 == 1)
  {
    v27 = objc_begin_catch(exc_buf);
    *(*(*(v26 + 72) + 8) + 24) = 0;
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E696A588];
    a23 = @"NSUnderlyingException";
    a24 = v29;
    a25 = v27;
    a26 = @"An unhandled exception was caught during a fetch for zone in manatee identity loss recovery.";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a25 forKeys:&a23 count:2];
    *(*(*(v26 + 64) + 8) + 40) = [v28 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v30];
    objc_end_catch();
    JUMPOUT(0x185816218);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185816590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __CFString *a10, uint64_t a11, uint64_t a12, __CFString *a13)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    *(*(*(v13 + 64) + 8) + 24) = 0;
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    a10 = @"NSUnderlyingException";
    a11 = v16;
    a12 = v14;
    a13 = @"Setup failed because an unhandled exception was caught during a fetch for zone creation.";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a12 forKeys:&a10 count:2];
    *(*(*(v13 + 72) + 8) + 40) = [v15 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v17];
    objc_end_catch();
    JUMPOUT(0x185816558);
  }

  _Unwind_Resume(exception_object);
}

void sub_185816AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_185816EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_185818D60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __CFString *a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf)
{
  if (a2 == 2)
  {
    v24 = objc_begin_catch(a1);
    *(*(*(v23 + 64) + 8) + 24) = 0;
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    a11 = @"NSUnderlyingException";
    a12 = v24;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    *(*(*(v23 + 72) + 8) + 40) = [v25 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v26];
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v27 = objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected exception thrown during identity check: %@\n", &buf, 0xCu);
    }

    v29 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: Unexpected exception thrown during identity check: %@", &buf, 0xCu);
    }
  }

  objc_end_catch();
  JUMPOUT(0x185818D24);
}

void sub_185819590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __CFString *a9, uint64_t a10, uint64_t a11, __CFString *a12)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    *(*(*(v12 + 48) + 8) + 24) = 0;
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    a9 = @"NSUnderlyingException";
    a10 = v15;
    a11 = v13;
    a12 = @"Setup failed because an unhandled exception was caught during event history truncation.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a9 count:2];
    *(*(*(v12 + 40) + 8) + 40) = [v14 initWithDomain:*MEMORY[0x1E696A250] code:134421 userInfo:v16];
    objc_end_catch();
    JUMPOUT(0x185819560);
  }

  _Unwind_Resume(exception_object);
}

void sub_1858197DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_185819A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185829864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a2)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_185829EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18582A470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a2)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18582A4D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18582A4D8);
  }

  objc_terminate();
}

void sub_18582C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_18582D150(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 8);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _NSSQLiteConnectionWalHook(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1000)
  {
    [(NSSQLiteConnection *)a1 _walCheckpointWithMode:?];
  }

  return 0;
}

void sub_18582EC98(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18582EB9CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18582F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18582FBE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x18582FA00);
  }

  _Unwind_Resume(a1);
}

void sub_18582FC48(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18582FC50);
  }

  objc_terminate();
}

void sub_185830560(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: PostSaveMaintenance: performPostSaveTasks threw something (1). ex = %@\n", &buf, 0xCu);
    }

    v14 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: PostSaveMaintenance: performPostSaveTasks threw something (1). ex = %@", &buf, 0xCu);
    }

    [(NSSQLiteConnection *)v11 disconnect];
    objc_end_catch();
    JUMPOUT(0x18583029CLL);
  }

  _Unwind_Resume(a1);
}

void sub_185831AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185831D04()
{
  if (v0)
  {
    JUMPOUT(0x185831D0CLL);
  }

  JUMPOUT(0x185831D10);
}

void sub_185834598(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x185834544);
  }

  _Unwind_Resume(a1);
}

void sub_1858345D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_185834B70(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185834B7CLL);
}

__CFString *_NSSQLiteConnectionLockProxyValueFromPragmas(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = *MEMORY[0x1E695D940];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([@"lock_proxy_file" isEqualToString:{objc_msgSend(v7, "lowercaseString")}])
        {
          v8 = [a1 objectForKey:v7];
          if (v8 == [MEMORY[0x1E695DFB0] null])
          {
            v8 = 0;
            goto LABEL_14;
          }

          if (([(__CFString *)v8 isNSString]& 1) != 0)
          {
            goto LABEL_14;
          }

          v9 = MEMORY[0x1E695DF30];
          v10 = objc_opt_class();
          [v9 raise:v5 format:{@"Invalid class type '%@' for lock_proxy_file pragma value, must be an NSNull or NSString", NSStringFromClass(v10)}];
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v8 = @":auto:";
LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_18583B73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18583B94C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    *(*(*(v3 + 40) + 8) + 24) = 1;
    *(*(*(v3 + 48) + 8) + 40) = v4;
    *v2 = 1;
    objc_end_catch();
    JUMPOUT(0x18583B910);
  }

  _Unwind_Resume(exception_object);
}

void sub_18583BD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18583BF68(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    *(*(*(v3 + 40) + 8) + 24) = 1;
    *(*(*(v3 + 48) + 8) + 40) = v4;
    *v2 = 1;
    objc_end_catch();
    JUMPOUT(0x18583BF30);
  }

  _Unwind_Resume(exception_object);
}

void sub_18583C2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_18583C4E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    *(*(*(v3 + 40) + 8) + 24) = 1;
    *(*(*(v3 + 48) + 8) + 40) = v4;
    *v2 = 1;
    objc_end_catch();
    JUMPOUT(0x18583C4ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_18583C710(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    *(*(*(v3 + 40) + 8) + 24) = 1;
    *(*(*(v3 + 48) + 8) + 40) = v4;
    *v2 = 1;
    objc_end_catch();
    JUMPOUT(0x18583C6D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_18583C978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18583CB6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    *(*(*(v3 + 40) + 8) + 24) = 1;
    *(*(*(v3 + 48) + 8) + 40) = v4;
    *v2 = 1;
    objc_end_catch();
    JUMPOUT(0x18583CB34);
  }

  _Unwind_Resume(exception_object);
}

void sub_18583D39C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    if (v2)
    {
      sqlite3_free(v2);
    }

    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_18583FB0C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18583F854);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18584017C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_185840180(a1);
  }

  objc_terminate();
}

void sub_185841308(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185841314);
}

void sub_185844660(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  if (v2)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_185844688(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185844694);
}

void sub_18584538C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x185845394);
  }

  JUMPOUT(0x185845380);
}

void sub_1858453D0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858453A0);
  }

  JUMPOUT(0x185845380);
}

void sub_1858457D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v17 = objc_begin_catch(a1);
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: unable to cache model: %@\n", &buf, 0xCu);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: unable to cache model: %@", &buf, 0xCu);
      }

      objc_end_catch();
      JUMPOUT(0x18584573CLL);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x185845740);
  }

  _Unwind_Resume(a1);
}

void sub_185846DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185846DD0);
  }

  objc_terminate();
}

void sub_185848EE8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185848DECLL);
  }

  JUMPOUT(0x185848DB0);
}

void sub_185848EF8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185848DC4);
  }

  JUMPOUT(0x185848DB0);
}

void sub_185848F1C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185848DACLL);
}

void sub_185848F44(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x185848F4CLL);
  }

  JUMPOUT(0x185848DB0);
}

void sub_1858494F8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 buf)
{
  if (a2)
  {
    if (a2 != 3)
    {
      if (a2 != 2)
      {
        objc_begin_catch(a1);
        JUMPOUT(0x185849440);
      }

      v40 = objc_begin_catch(a1);
      objc_exception_rethrow();
    }

    v31 = [objc_begin_catch(a1) reason];
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = @"unknown reason";
    }

    v33 = MEMORY[0x1E695DF20];
    [objc_msgSend(*(a20 + 16) "URL")];
    [MEMORY[0x1E696AD98] numberWithInt:134030];
    v34 = *MEMORY[0x1E696A250];
    v42 = *MEMORY[0x1E696A368];
    v41 = *MEMORY[0x1E696A588];
    v35 = [v33 dictionaryWithObjectsAndKeys:@"Transaction"];
    v36 = [_NSCoreDataException exceptionWithName:134030 code:@"Persitent History - Transaction constraint primary key violation" reason:v35 userInfo:?];
    [(_NSCoreDataException *)v36 _setDomain:v34];
    v37 = v36;
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History Transaction hit an Optimistic Locking Exception - %@\n", &buf, 0xCu);
    }

    v39 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_fault_impl(&dword_18565F000, v39, OS_LOG_TYPE_FAULT, "CoreData: History Transaction hit an Optimistic Locking Exception - %@", &buf, 0xCu);
    }

    objc_exception_throw(v36);
  }

  _Unwind_Resume(a1);
}

void sub_185849750(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185849588);
  }

  JUMPOUT(0x18584953CLL);
}

void sub_18584A204(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185849FC8);
  }

  JUMPOUT(0x185849FA0);
}

void sub_18584A254(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185849F9CLL);
}

void sub_18584B554(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18584B468);
  }

  JUMPOUT(0x18584B424);
}

void sub_18584B57C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18584B420);
}

void sub_18584BDF8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18584BDD4);
  }

  JUMPOUT(0x18584BD98);
}

void sub_18584C50C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18584C470);
  }

  JUMPOUT(0x18584C40CLL);
}

void sub_18584C534(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18584C408);
}

uint64_t sqlite3Callback(void *a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:*a3 encoding:1];
    if (v4)
    {
      [a1 addObject:v4];
    }
  }

  return 0;
}

void sub_18584E9DC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x18584E92CLL);
    }

    v20 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_18584EB34(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18584EB08);
  }

  JUMPOUT(0x18584EAA8);
}

void sub_18584EFF0()
{
  if (v0)
  {
    objc_end_catch();
  }

  JUMPOUT(0x18584F01CLL);
}

void sub_18584F014(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18584F018);
  }

  objc_terminate();
}

void sub_18584F6B4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18584F6D8);
}

void sub_18584F6BC(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x18584F6C4);
  }

  _Unwind_Resume(a1);
}

void sub_18584FBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18584FC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18585047C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858503D4);
  }

  JUMPOUT(0x1858503B0);
}

void sub_1858504A8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1858503ACLL);
}

void sub_1858511B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185851118);
  }

  _Unwind_Resume(a1);
}

void sub_1858511E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1858511E8);
  }

  objc_terminate();
}

void sub_185851348(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1858512C8);
  }

  JUMPOUT(0x18585133CLL);
}

void sub_185851630(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185851584);
    }

    objc_begin_catch(exc_buf);

    objc_exception_rethrow();
  }

  JUMPOUT(0x185851624);
}

void sub_1858516B4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185851684);
  }

  JUMPOUT(0x185851624);
}

void sub_185851E04(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185851DF4);
  }

  JUMPOUT(0x185851E20);
}

void sub_185851E14(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185851D3CLL);
  }

  JUMPOUT(0x185851DF4);
}

void sub_185852070(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x185852060);
  }

  JUMPOUT(0x18585208CLL);
}

void sub_185852080(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185851FA8);
  }

  JUMPOUT(0x185852060);
}

void sub_1858527BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Connection can't register generation: Uncaught exception: %@\n", &buf, 0xCu);
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Connection can't register generation: Uncaught exception: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x185852658);
  }

  _Unwind_Resume(a1);
}

void sub_185852D04(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185852ACCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18585333C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to free sqlite3_snapshot\n", &buf, 2u);
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Failed to free sqlite3_snapshot", &buf, 2u);
    }

    [(NSSQLiteConnection *)v11 disconnect];
    objc_end_catch();
    JUMPOUT(0x185853260);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185854068(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1858540C8);
  }

  JUMPOUT(0x18585405CLL);
}

void sub_185854088(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1858540C8);
  }

  JUMPOUT(0x18585405CLL);
}

void sub_185854098(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1858540B4);
  }

  JUMPOUT(0x18585405CLL);
}

void sub_1858540BC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1858540C8);
  }

  JUMPOUT(0x18585405CLL);
}

void sub_185854190(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1858540D0);
  }

  JUMPOUT(0x18585405CLL);
}

void _NSCoreDataNow(sqlite3_context *a1, int a2)
{
  if (a2)
  {

    sqlite3_result_error(a1, "NSCoreDataNow: requires no arguments", 1);
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E695DF00] "date")];

    sqlite3_result_double(a1, v3);
  }
}

void _NSCoreDataPrependExternalReferenceMarker(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 2)
  {
    v5 = sqlite3_value_int(*a3);
    v6 = sqlite3_value_blob(a3[1]);
    v7 = sqlite3_malloc(v5 + 1);
    if (v7)
    {
      v8 = v7;
      *v7 = 1;
      memcpy(v7 + 1, v6, v5);
      v9 = MEMORY[0x1E69E59A0];

      sqlite3_result_blob(a1, v8, v5 + 1, v9);
      return;
    }

    v10 = "NSCoreDataPrependExternalReferenceMarker: malloc failure";
  }

  else
  {
    v10 = "NSCoreDataPrependExternalReferenceMarker: wrong number of parameters";
  }

  sqlite3_result_error(a1, v10, 1);
}

void _NSCoreDataConvertTransformableToCodable(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_blob(a3[2]);
    v8 = sqlite3_value_bytes(a3[2]);
    v9 = objc_autoreleasePoolPush();
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = v5;
          v21 = 1026;
          v22 = v8;
          v23 = 2082;
          v24 = v6;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Converting transformable %{public}s (%{public}d bytes) -> %{public}s\n", buf, 0x1Cu);
        }
      }

      else
      {
        v13 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          *&buf[4] = v5;
          v21 = 1026;
          v22 = v8;
          v23 = 2082;
          v24 = v6;
          _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_INFO, "CoreData: debug: Converting transformable %{public}s (%{public}d bytes) -> %{public}s\n", buf, 0x1Cu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v14 = 1;
    }

    else
    {
      v14 = 9;
    }

    _NSCoreDataLog_console(v14, "Converting transformable %{public}s (%{public}d bytes) -> %{public}s", v5, v8, v6);
    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v8];
    v16 = +[_PFRoutines transformDecodeValue:forTransformerNamed:](_PFRoutines, "transformDecodeValue:forTransformerNamed:", v15, [MEMORY[0x1E696AEC0] stringWithUTF8String:v5]);
    if (v16)
    {
      *buf = 0;
      v17 = [sqlite3_user_data(a1) encodeWithValue:v16 withAdapterNamed:objc_msgSend(MEMORY[0x1E696AEC0] error:{"stringWithUTF8String:", v6), buf}];
      if (v17)
      {
        sqlite3_result_blob(a1, [v17 bytes], objc_msgSend(v17, "length"), 0xFFFFFFFFFFFFFFFFLL);
LABEL_21:
        objc_autoreleasePoolPop(v9);
        v19 = *MEMORY[0x1E69E9840];
        return;
      }

      v18 = "NSCoreDataConvertTransformableToCodable: failed to encode data with codable";
    }

    else
    {
      v18 = "NSCoreDataConvertTransformableToCodable: failed to reverse transform data";
    }

    sqlite3_result_error(a1, v18, 1);
    goto LABEL_21;
  }

  v12 = *MEMORY[0x1E69E9840];

  sqlite3_result_error(a1, "NSCoreDataConvertTransformableToCodable: wrong number of parameters", 1);
}

void _NSCoreDataLikeBridge(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2 != 3)
  {
    v8 = *MEMORY[0x1E69E9840];
    v7 = "NSCoreDataLike: requres 3 arguments (value, pattern, variant)";
    goto LABEL_5;
  }

  v5 = sqlite3_value_int(a3[2]);
  if (v5 >= 4)
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = "NSCoreDataLike: variant must be an integer in the range [0,3]";
LABEL_5:

    sqlite3_result_error(a1, v7, 1);
    return;
  }

  v9 = v5;
  v10 = sqlite3_value_text(*a3);
  v11 = sqlite3_value_text(a3[1]);
  if (v10 && (v12 = v11) != 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = _PFStackAllocatorCreate(&v20, 1024);
    v14 = *MEMORY[0x1E695E498];
    v15 = CFStringCreateWithCStringNoCopy(v13, v10, 0x8000100u, *MEMORY[0x1E695E498]);
    v16 = CFStringCreateWithCStringNoCopy(v13, v12, 0x8000100u, v14);
    v17 = sqlite3_user_data(a1);
    if (!*v17)
    {
      *v17 = [MEMORY[0x1E696AE20] operatorWithType:7 modifier:0 options:0];
      v17[1] = [MEMORY[0x1E696AE20] operatorWithType:7 modifier:0 options:1];
      v17[2] = [MEMORY[0x1E696AE20] operatorWithType:7 modifier:0 options:2];
      v17[3] = [MEMORY[0x1E696AE20] operatorWithType:7 modifier:0 options:3];
    }

    sqlite3_result_int(a1, [v17[v9] performOperationUsingObject:v15 andObject:v16]);
    if (*(&v21 + 1))
    {
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    v18 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v19 = *MEMORY[0x1E69E9840];

    sqlite3_result_int(a1, 0);
  }
}

void _NSCoreDataStringSearch(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a2 == 4)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    if (sqlite3_value_int(a3[3]))
    {
      v8 = [MEMORY[0x1E696AE18] retainedLocale];
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = _PFStackAllocatorCreate(&v16, 1024);
      v11 = *MEMORY[0x1E695E498];
      v12 = CFStringCreateWithCStringNoCopy(v10, v5, 0x8000100u, *MEMORY[0x1E695E498]);
      v13 = CFStringCreateWithCStringNoCopy(v10, v6, 0x8000100u, v11);
      v50.length = CFStringGetLength(v12);
      v50.location = 0;
      v14 = CFStringFindWithOptionsAndLocale(v12, v13, v50, v7, v8, 0) != 0;
      sqlite3_result_int(a1, v14);
      if (*(&v17 + 1))
      {
        if (v12)
        {
          CFRelease(v12);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      goto LABEL_16;
    }

LABEL_15:
    sqlite3_result_int(a1, 0);
LABEL_16:
    if (v8)
    {
      CFRelease(v8);
    }

    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = *MEMORY[0x1E69E9840];

  sqlite3_result_error(a1, "NSCoreStringSearch: requires 4 arguments (string1, string2, flags, localized)", 1);
}