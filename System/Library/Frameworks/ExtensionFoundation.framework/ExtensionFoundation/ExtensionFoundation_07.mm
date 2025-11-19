uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          outlined destroy of UUID?(v12);
          v48 = v64;

          return specialized _NativeSet.extractSubset(using:count:)(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a2;
  v40 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v37 - v12;
  v13 = 0;
  v45 = a3;
  v14 = *(a3 + 56);
  v41 = a3 + 56;
  v42 = 0;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v48 = v11 + 16;
  v49 = a4 + 7;
  v39 = v11;
  v50 = (v11 + 8);
  v51 = a4;
  v44 = v18;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v47 = (v17 - 1) & v17;
LABEL_13:
    v22 = v19 | (v13 << 6);
    v23 = *(v45 + 48);
    v43 = v22;
    v46 = *(v23 + 8 * v22);
    v24 = [v46 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (v51[2] && (v25 = v51, v26 = v51[5], lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v25 + 32), v29 = v27 & ~v28, ((*(v49 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
    {
      v30 = ~v28;
      v31 = *(v39 + 72);
      v32 = *(v39 + 16);
      while (1)
      {
        v32(v10, v51[6] + v31 * v29, v6);
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v50;
        (*v50)(v10, v6);
        if (v33)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v49 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v34(v52, v6);

      *(v40 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v35 = __OFADD__(v42++, 1);
      v18 = v44;
      v17 = v47;
      if (v35)
      {
        __break(1u);
LABEL_22:
        v36 = v45;

        specialized _NativeSet.extractSubset(using:count:)(v40, v38, v42, v36);
        return;
      }
    }

    else
    {
LABEL_5:
      (*v50)(v52, v6);

      v18 = v44;
      v17 = v47;
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_22;
    }

    v21 = *(v41 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v47 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _EXRunningLibXPCServiceExtension.__ivar_destroyer()
{
  outlined destroy of AppExtensionIdentity?(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension____lazy_storage____extensionIdentity);
  v1 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments + 16);

  v2 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler + 8);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler));
  v3 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionListener);
}

id _EXRunningLibXPCServiceExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXRunningLibXPCServiceExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of AppExtensionIdentity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _AppExtensionQuery.extensionPointIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _AppExtensionQuery.extensionPointIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *_AppExtensionQuery.predicate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

__n128 _AppExtensionQuery.hostAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 _AppExtensionQuery.hostAuditToken.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

void *_AppExtensionQuery.extensionPoint.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void _AppExtensionQuery.init(extensionPointIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 queryAllowsDuplicates];

  *(a3 + 72) = v5;
}

void _AppExtensionQuery.init(extensionPointIdentifier:predicate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 1;
  v6 = objc_opt_self();
  v7 = a3;
  v8 = [v6 sharedInstance];
  v9 = [v8 queryAllowsDuplicates];

  *(a4 + 72) = v9;
}

void _AppExtensionQuery.init(extensionPoint:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 56) = 1;
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 64) = a1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v8 = objc_opt_self();
  v9 = a1;
  v10 = [v8 sharedInstance];
  LOBYTE(v5) = [v10 queryAllowsDuplicates];

  *(a2 + 72) = v5;
}

uint64_t _AppExtensionQuery.Results.AsyncIterator.next()()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for _AppExtensionQuery.Results.AsyncIterator(0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_AppExtensionQuery.Results.AsyncIterator.next(), 0, 0);
}

{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  outlined init with copy of _AppExtensionQuery.Results.AsyncIterator(v0[3], v1);
  (*(v3 + 16))(v2, v1, v4);
  lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[_AppExtensionIdentity]> and conformance AsyncStream<A>, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v5 = lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[_AppExtensionIdentity]>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS8IteratorVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = _AppExtensionQuery.Results.AsyncIterator.next();
  v8 = v0[9];
  v9 = v0[7];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v9, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = _AppExtensionQuery.Results.AsyncIterator.next();
  }

  else
  {
    v7 = _AppExtensionQuery.Results.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v3 + 8))(v1, v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[1];

  return v7(v6);
}

{
  return (*(v0[5] + 8))(v0[10], v0[4]);
}

uint64_t outlined init with copy of _AppExtensionQuery.Results.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _AppExtensionQuery.Results.AsyncIterator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance _AppExtensionQuery.Results.AsyncIterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance _AppExtensionQuery.Results.AsyncIterator;

  return _AppExtensionQuery.Results.AsyncIterator.next()();
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _AppExtensionQuery.Results.AsyncIterator.next()();
}

uint64_t _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 32);
  v17 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    if (v6)
    {
      v8 = v4[4];
      v7 = v4[5];
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v15 = _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  else
  {
    if (v6)
    {
      v12 = v4[4];
      v13 = v4[5];
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v14;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v4[9] = a1;
    v15 = _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_;
  }

  return MEMORY[0x1EEE6DFA0](v15, v9, v11);
}

uint64_t _s19ExtensionFoundation04_AppA5QueryV7ResultsV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t _AppExtensionQuery.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance _AppExtensionQuery.Results@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v4 = *(*(v3 - 8) + 32);

  return v4(a1, v1, v3);
}

uint64_t _AppExtensionQuery.results.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v15 - v4);
  v6 = v0[3];
  v19 = v0[2];
  v20[0] = v6;
  *(v20 + 9) = *(v0 + 57);
  v7 = v0[1];
  v17 = *v0;
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD5QueryVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation04_AppD5QueryVGMR);
  inited = swift_initStackObject();
  inited[1] = xmmword_1848BA260;
  v9 = v18;
  inited[2] = v17;
  v10 = *(v20 + 9);
  v12 = v19;
  v11 = v20[0];
  inited[3] = v9;
  inited[4] = v12;
  inited[5] = v11;
  *(inited + 89) = v10;
  outlined init with copy of _AppExtensionQuery(&v17, &v16);
  v13 = specialized Collection<>.toEXQueries()(inited);
  swift_setDeallocating();
  outlined destroy of _AppExtensionQuery((inited + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19ExtensionFoundation04_AppA8IdentityVGMd, &_sSay19ExtensionFoundation04_AppA8IdentityVGMR);
  *v5 = 1;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8640], v1);
  v15[2] = v13;
  AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t Collection<>.results.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation04_AppD8IdentityVG__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  v9 = Collection<>.toEXQueries()(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19ExtensionFoundation04_AppA8IdentityVGMd, &_sSay19ExtensionFoundation04_AppA8IdentityVGMR);
  *v8 = 1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8640], v4);
  v12 = v9;
  AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t specialized Collection<>.toEXQueries()(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v66 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    for (i = v2 - 1; ; --i)
    {
      *&v65[9] = *(v4 + 57);
      v6 = v4[3];
      v64 = v4[2];
      *v65 = v6;
      v7 = v4[1];
      v62 = *v4;
      v63 = v7;
      v8 = *&v65[16];
      if (*&v65[16])
      {
        v9 = type metadata accessor for _EXQuery();
        v10 = objc_allocWithZone(v9);
        *&v10[OBJC_IVAR____EXQuery_resultType] = 0;
        *&v10[OBJC_IVAR____EXQuery_predicate] = 0;
        v10[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
        v11 = OBJC_IVAR____EXQuery_allowsDuplicates;
        v12 = objc_opt_self();
        outlined init with copy of _AppExtensionQuery(&v62, &v53);
        v13 = v8;
        v14 = [v12 sharedInstance];
        v15 = [v14 queryAllowsDuplicates];

        v10[v11] = v15;
        v10[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
        v10[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
        v10[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
        v16 = v13;
        v17 = _EXAuditTokenForCurrentProcess();
        v53 = *v17;
        *v54 = v17[1];
        v18 = &v10[OBJC_IVAR____EXQuery_inner];
        v18[3] = &type metadata for _EXQuery.RecordQuery;
        v18[4] = &protocol witness table for _EXQuery.RecordQuery;
        v19 = swift_allocObject();
        *v18 = v19;
        *(v19 + 16) = v16;
        v20 = *v54;
        *(v19 + 24) = v53;
        *(v19 + 40) = v20;
        v50.receiver = v10;
        v50.super_class = v9;
        objc_msgSendSuper2(&v50, sel_init);

        outlined destroy of _AppExtensionQuery(&v62);
      }

      else
      {
        v21 = *(&v62 + 1);
        v22 = v63;
        v23 = v62;
        if (v65[8])
        {
          outlined init with copy of _AppExtensionQuery(&v62, &v53);
          v24 = v22;

          v25 = _EXAuditTokenForCurrentProcess();
          v26 = v25[1];
          v56 = *v25;
          v57 = v26;
          v27 = type metadata accessor for _EXQuery();
          v28 = objc_allocWithZone(v27);
          *&v28[OBJC_IVAR____EXQuery_resultType] = 0;
          *&v28[OBJC_IVAR____EXQuery_predicate] = 0;
          v28[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
          v29 = OBJC_IVAR____EXQuery_allowsDuplicates;
          v30 = [objc_opt_self() sharedInstance];
          v31 = [v30 queryAllowsDuplicates];

          v28[v29] = v31;
          v28[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
          v28[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
          v28[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
          *&v61[4] = v56;
          *&v61[20] = v57;
          v58 = __PAIR128__(v21, v23);
          *v59 = 0;
          *&v59[4] = v56;
          *&v59[20] = v57;
          v60 = __PAIR128__(v21, v23);
          *v61 = 0;
          outlined init with copy of _EXQuery.ValuesQuery(&v58, &v53);
          outlined destroy of _EXQuery.ValuesQuery(&v60);
          v32 = &v28[OBJC_IVAR____EXQuery_inner];
          v32[3] = &type metadata for _EXQuery.ValuesQuery;
          v32[4] = &protocol witness table for _EXQuery.ValuesQuery;
          v33 = swift_allocObject();
          *v32 = v33;
          v34 = *v59;
          *(v33 + 16) = v58;
          *(v33 + 32) = v34;
          *(v33 + 48) = *&v59[16];
          *(v33 + 64) = *&v59[32];
          v52.receiver = v28;
          v52.super_class = v27;
          objc_msgSendSuper2(&v52, sel_init);
          outlined destroy of _AppExtensionQuery(&v62);
        }

        else
        {
          v47 = *v65;
          v46 = v64;
          v35 = DWORD2(v63);
          v36 = HIDWORD(v63);
          v49 = type metadata accessor for _EXQuery();
          v37 = objc_allocWithZone(v49);
          *&v37[OBJC_IVAR____EXQuery_resultType] = 0;
          *&v37[OBJC_IVAR____EXQuery_predicate] = 0;
          v37[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
          v38 = OBJC_IVAR____EXQuery_allowsDuplicates;
          v39 = objc_opt_self();
          outlined init with copy of _AppExtensionQuery(&v62, &v53);
          v48 = v22;

          v40 = [v39 sharedInstance];
          v41 = [v40 queryAllowsDuplicates];

          v37[v38] = v41;
          v37[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
          v37[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
          v37[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
          v60 = __PAIR128__(v21, v23);
          *v61 = 0;
          *&v61[4] = v35;
          *&v61[8] = v36;
          *&v61[12] = v46;
          *&v61[28] = v47;
          v53 = __PAIR128__(v21, v23);
          *v54 = 0;
          *&v54[4] = __PAIR64__(v36, v35);
          *&v54[12] = v46;
          v55 = v47;
          outlined init with copy of _EXQuery.ValuesQuery(&v60, &v58);
          outlined destroy of _EXQuery.ValuesQuery(&v53);
          v42 = &v37[OBJC_IVAR____EXQuery_inner];
          v42[3] = &type metadata for _EXQuery.ValuesQuery;
          v42[4] = &protocol witness table for _EXQuery.ValuesQuery;
          v43 = swift_allocObject();
          *v42 = v43;
          v44 = *v61;
          *(v43 + 16) = v60;
          *(v43 + 32) = v44;
          *(v43 + 48) = *&v61[16];
          *(v43 + 64) = *&v61[32];
          v51.receiver = v37;
          v51.super_class = v49;
          objc_msgSendSuper2(&v51, sel_init);
          outlined destroy of _AppExtensionQuery(&v62);
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v45 = *(v66 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!i)
      {
        break;
      }

      v4 += 5;
    }

    return v66;
  }

  return result;
}

id closure #1 in Collection<>.toEXQueries()@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[3];
  v12 = a1[2];
  v13[0] = v4;
  *(v13 + 9) = *(a1 + 57);
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v9[2] = v12;
  v10[0] = v6;
  *(v10 + 9) = *(a1 + 57);
  v9[0] = v11[0];
  v9[1] = v3;
  outlined init with copy of _AppExtensionQuery(v11, &v8);
  result = specialized _EXQuery.__allocating_init(_:)(v9);
  *a2 = result;
  return result;
}

void specialized closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  (*(v3 + 16))(&v24 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  Controller = type metadata accessor for _QueryController();
  v10 = objc_allocWithZone(Controller);
  v11 = objc_allocWithZone(type metadata accessor for _EXQueryController());

  *&v10[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller] = _EXQueryController.init(queries:)(v12);
  v13 = &v10[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_handler];
  *v13 = partial apply for specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:);
  v13[1] = v8;
  v24.receiver = v10;
  v24.super_class = Controller;
  v14 = objc_msgSendSuper2(&v24, sel_init);
  v15 = OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller;
  v16 = *&v14[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller];
  swift_unknownObjectWeakAssign();
  *(swift_allocObject() + 16) = v14;
  v17 = v14;
  AsyncStream.Continuation.onTermination.setter();
  v18 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v14;
    v22 = v17;
    _os_log_impl(&dword_1847D1000, v19, v18, "Resuming controller: %@", v20, 0xCu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v21, -1, -1);
    MEMORY[0x1865F56C0](v20, -1, -1);
  }

  v23 = *(*&v14[v15] + OBJC_IVAR____EXQueryController_innerController);
  QueryController.resume()();
}

unint64_t lazy protocol witness table accessor for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator;
  if (!lazy protocol witness table cache variable for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator)
  {
    type metadata accessor for _AppExtensionQuery.Results.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AppExtensionQuery.Results.AsyncIterator and conformance _AppExtensionQuery.Results.AsyncIterator);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _AppExtensionQuery(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _AppExtensionQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for AsyncStream<[_AppExtensionIdentity]>()
{
  if (!lazy cache variable for type metadata for AsyncStream<[_AppExtensionIdentity]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19ExtensionFoundation04_AppA8IdentityVGMd, &_sSay19ExtensionFoundation04_AppA8IdentityVGMR);
    v0 = type metadata accessor for AsyncStream();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<[_AppExtensionIdentity]>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation04_AppA8IdentityVGGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for _AppExtensionQuery.Results()
{
  type metadata accessor for AsyncStream<[_AppExtensionIdentity]>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySay19ExtensionFoundation04_AppD8IdentityVG__GMd, &_sScS12ContinuationV11YieldResultOySay19ExtensionFoundation04_AppD8IdentityVG__GMR);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v28 - v6;
  LOBYTE(v7) = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v8 = static OS_os_log.discovery;
    if (os_log_type_enabled(static OS_os_log.discovery, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v35[0] = v10;
      *v9 = 136315138;
      v11 = type metadata accessor for _EXExtensionIdentity();
      v12 = MEMORY[0x1865F38E0](a1, v11);
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v35);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1847D1000, v8, v7, "_QueryController yeild results: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x1865F56C0](v10, -1, -1);
      MEMORY[0x1865F56C0](v9, -1, -1);
    }

    v31 = v4;
    if (a1 >> 62)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x1E69E7CC0];
    if (!v15)
    {
LABEL_18:
      *&v35[0] = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMR);
      v27 = v29;
      AsyncStream.Continuation.yield(_:)();
      return (*(v30 + 8))(v27, v31);
    }

    v37[0] = MEMORY[0x1E69E7CC0];
    v7 = v37;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      break;
    }

    v28 = a2;
    v17 = 0;
    a2 = a1 & 0xC000000000000001;
    v4 = v37[0];
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (a2)
      {
        v19 = MEMORY[0x1865F3F40](v17, a1);
      }

      else
      {
        if (v17 >= *(v32 + 16))
        {
          goto LABEL_20;
        }

        v19 = *(a1 + 8 * v17 + 32);
      }

      v7 = v19;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClassUnconditional();
      v21 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      result = outlined init with copy of UUID?(v20 + v21, &v33, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
      if (!v34)
      {
        goto LABEL_24;
      }

      outlined init with take of _InnerAppExtensionIdentity(&v33, v35);
      v37[0] = v4;
      v23 = *(v4 + 16);
      v22 = *(v4 + 24);
      if (v23 >= v22 >> 1)
      {
        v7 = v37;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v4 = v37[0];
      }

      *(v4 + 16) = v23 + 1;
      v24 = v4 + 40 * v23;
      v25 = v35[0];
      v26 = v35[1];
      *(v24 + 64) = v36;
      *(v24 + 32) = v25;
      *(v24 + 48) = v26;
      ++v17;
      if (v18 == v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void specialized closure #2 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(uint64_t a1, char *a2)
{
  v3 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = a2;
    *v6 = a2;
    v7 = a2;
    _os_log_impl(&dword_1847D1000, v4, v3, "Suspending controller: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v8 = *(*&a2[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller] + OBJC_IVAR____EXQueryController_innerController);
  QueryController.suspend()();
}

Swift::Void __swiftcall _AvailabilityController.resume()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for _EXExtensionAvailabilityObserver();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = v0;
  UUID.init()();
  v7 = OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries;
  v8 = [objc_allocWithZone(type metadata accessor for _EXQuery()) init];
  *&v8[OBJC_IVAR____EXQuery_resultType] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1848BBBA0;
  *(v9 + 32) = v8;
  *(v5 + v7) = v9;
  v10 = (v5 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  *v10 = partial apply for closure #1 in _AvailabilityController.resume();
  v10[1] = v1;

  _EXExtensionAvailabilityObserver.start()();
  v12[3] = v2;

  v12[0] = v5;
  v11 = OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_token;
  swift_beginAccess();
  outlined assign with take of Any?(v12, v6 + v11);
  swift_endAccess();
}

Swift::Void __swiftcall _AvailabilityController.suspend()()
{
  v1 = OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_token;
  swift_beginAccess();
  outlined init with copy of UUID?(v0 + v1, &v2, &_sypSgMd, &_sypSgMR);
  if (v3)
  {
    outlined init with take of Any(&v2, v4);
    outlined init with copy of Any(v4, &v2);
    type metadata accessor for _EXExtensionAvailabilityObserver();
    if (swift_dynamicCast())
    {
      _EXExtensionAvailabilityObserver.invalidate()();

      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    outlined destroy of NSObject?(&v2, &_sypSgMd, &_sypSgMR);
  }
}

id _QueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for closure #1 in _AvailabilityController.resume()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____EXExtensionAvailability_disabledCount);
  v3 = *(a1 + OBJC_IVAR____EXExtensionAvailability_unelectedCount);
  v4 = *(v1 + 16) + OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_handler;
  v5 = *v4;
  v6 = *(v4 + 8);
  v8[0] = *(a1 + OBJC_IVAR____EXExtensionAvailability_enabledCount);
  v8[1] = v2;
  v8[2] = v3;
  return v5(v8);
}

id specialized _EXQuery.__allocating_init(_:)(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[8];
  if (v3)
  {
    v4 = a1[1];

    v5 = objc_allocWithZone(type metadata accessor for _EXQuery());
    v6 = specialized _EXQuery.init(extensionPointRecord:)(v3);

    return v6;
  }

  else
  {
    v8 = *a1;
    if (a1[7])
    {
      v9 = v2;

      v10 = _EXAuditTokenForCurrentProcess();
      v11 = v10[1];
      v40 = *v10;
      v41 = v11;
      v12 = type metadata accessor for _EXQuery();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____EXQuery_resultType] = 0;
      *&v13[OBJC_IVAR____EXQuery_predicate] = 0;
      v13[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
      v14 = OBJC_IVAR____EXQuery_allowsDuplicates;
      v15 = [objc_opt_self() sharedInstance];
      v16 = [v15 queryAllowsDuplicates];

      v13[v14] = v16;
      v13[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
      v13[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
      v13[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
      *&v42 = v8;
      *(&v42 + 1) = v1;
      *v43 = 0;
      *&v43[4] = v40;
      *&v43[20] = v41;
      v44 = v8;
      v45 = v1;
      v46 = 0;
      v47 = v40;
      v48 = v41;
      outlined init with copy of _EXQuery.ValuesQuery(&v42, v39);
      outlined destroy of _EXQuery.ValuesQuery(&v44);
      v17 = &v13[OBJC_IVAR____EXQuery_inner];
      v17[3] = &type metadata for _EXQuery.ValuesQuery;
      v17[4] = &protocol witness table for _EXQuery.ValuesQuery;
      v18 = swift_allocObject();
      *v17 = v18;
      v19 = *v43;
      v20 = *&v43[16];
      *(v18 + 16) = v42;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      *(v18 + 64) = *&v43[32];
      v38.receiver = v13;
      v38.super_class = v12;
      v21 = objc_msgSendSuper2(&v38, sel_init);
    }

    else
    {
      v22 = a1[3];
      v23 = a1[4];
      v24 = a1[5];
      v25 = a1[6];
      v36 = type metadata accessor for _EXQuery();
      v26 = objc_allocWithZone(v36);
      *&v26[OBJC_IVAR____EXQuery_resultType] = 0;
      *&v26[OBJC_IVAR____EXQuery_predicate] = 0;
      v26[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
      v27 = OBJC_IVAR____EXQuery_allowsDuplicates;
      v28 = objc_opt_self();
      v35 = v2;

      v29 = [v28 sharedInstance];
      v30 = [v29 queryAllowsDuplicates];

      v26[v27] = v30;
      v26[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
      v26[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
      v26[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
      *&v42 = v8;
      *(&v42 + 1) = v1;
      *v43 = 0;
      *&v43[4] = v22;
      *&v43[12] = v23;
      *&v43[20] = v24;
      *&v43[28] = v25;
      v44 = v8;
      v45 = v1;
      v46 = 0;
      *&v47 = v22;
      *(&v47 + 1) = v23;
      *&v48 = v24;
      *(&v48 + 1) = v25;
      outlined init with copy of _EXQuery.ValuesQuery(&v42, v39);
      outlined destroy of _EXQuery.ValuesQuery(&v44);
      v31 = &v26[OBJC_IVAR____EXQuery_inner];
      v31[3] = &type metadata for _EXQuery.ValuesQuery;
      v31[4] = &protocol witness table for _EXQuery.ValuesQuery;
      v32 = swift_allocObject();
      *v31 = v32;
      v33 = *v43;
      v34 = *&v43[16];
      *(v32 + 16) = v42;
      *(v32 + 32) = v33;
      *(v32 + 48) = v34;
      *(v32 + 64) = *&v43[32];
      v37.receiver = v26;
      v37.super_class = v36;
      v21 = objc_msgSendSuper2(&v37, sel_init);
      v9 = v35;
    }

    return v21;
  }
}

uint64_t partial apply for specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation04_AppB8IdentityVG_GMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return specialized closure #1 in closure #1 in static _QueryController.makeResultAsyncStream<A>(with:)(a1, v4);
}

id _EXExtensionIdentity.init(_:)(uint64_t a1)
{
  outlined init with copy of _InnerAppExtensionIdentity(a1, v7);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined destroy of AppExtensionIdentity(a1);
  outlined init with take of _InnerAppExtensionIdentity(v7, v6);
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v4 = v2;
  outlined assign with take of _InnerAppExtensionIdentity?(v6, v2 + v3);
  swift_endAccess();

  return v4;
}

{
  outlined init with copy of _InnerAppExtensionIdentity(a1, v13);
  v3 = v14;
  v4 = v15;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized _EXExtensionIdentity.init(_:)(v8, v1, v3, v4);
  outlined destroy of _AppExtensionIdentity(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v10;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXExtensionIdentity.remappedCopy()(_EXExtensionIdentity *__return_ptr retstr)
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v3, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    v6 = *(v5 + 568);
    v14[3] = v4;
    v14[4] = v5;
    __swift_allocate_boxed_opaque_existential_1(v14);
    v6(v4, v5);
    if (v2)
    {
      __swift_deallocate_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_0Tm(&v11);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v11);
      outlined init with copy of _InnerAppExtensionIdentity(v14, &v11);
      v7 = [objc_allocWithZone(_EXExtensionIdentity) init];
      outlined init with take of _InnerAppExtensionIdentity(&v11, v10);
      v8 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      v9 = v7;
      outlined assign with take of _InnerAppExtensionIdentity?(v10, v7 + v8);
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1865F56C0);
  }

  return result;
}

Swift::Void __swiftcall _EXExtensionIdentity.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v3, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 8))(with.super.isa, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _EXExtensionIdentity.hash.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = UUID.hashValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t _EXExtensionIdentity.extensionPointIdentifier.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.bundleIdentifier.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 64))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.bundleVersion.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 80))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.containingBundleRecord.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 256))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.applicationExtensionRecord.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 264))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.url.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v4 + 272))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.icon.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 24))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.localizedName.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.developerName.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 32))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.presentsUserInterface.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 104))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresMacCatalystBehavior.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 112))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc _EXExtensionIdentity.requiresSceneHosting.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(a1 + v2, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    LOBYTE(v4) = (*(v5 + 120))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v4 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresSceneHosting.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 120))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresUIKitSceneHosting.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 128))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresLibXPCConnection.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 136))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresNetworkAttribution.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 144))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.attributes.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 304))(v3, v4);
    v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresLegacyInfrastructure.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 200))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.builtForNSExtension.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 208))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.targetsSystemExtensionPoint.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 312))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresHostToBeContainerApp.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 216))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.targetsServiceExtensionPoint.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 232))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.spotlightIndexable.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 240))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.spotlightImporterIdentifiers.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 248))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc _EXExtensionIdentity.showsInExtensionsManager.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(a1 + v2, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    LOBYTE(v4) = (*(v5 + 392))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v4 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.showsInExtensionsManager.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 392))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.nsExtensionAttributes.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 176))(v3, v4);
    v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.enabled.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 416))(0, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.unelected.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 424))(0, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.entitlementNamed(_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v4 + v9, &v14, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v15)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v14, v16);
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v13 = (*(v12 + 472))(a3, a1, a2, v11, v12);
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
    *a4 = v13;
    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static _EXExtensionIdentity.enableExtension(_:)(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = static _EXExtensionIdentity.enableExtension(_:)(a1, &selRef_enableExtension_host_error_);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id static _EXExtensionIdentity.disableExtension(_:)(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = static _EXExtensionIdentity.enableExtension(_:)(a1, &selRef_disableExtension_host_error_);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id static _EXExtensionIdentity.enableExtension(_:)(uint64_t a1, SEL *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([swift_getObjCClassFromMetadata() *a2])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t @objc static _EXExtensionIdentity.enableExtension(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  swift_getObjCClassMetadata();
  v7 = a3;
  a5();

  return 1;
}

uint64_t @objc static _EXExtensionIdentity.enableExtension(_:host:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v9 = a4;
  specialized static _EXExtensionIdentity.enableExtension(_:host:)(v8, a4, a6);

  return 1;
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXExtensionIdentity.makeXPCConnection()()
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.general);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1847D1000, v4, v5, "making XPC connection for extension: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v7, -1, -1);
    MEMORY[0x1865F56C0](v6, -1, -1);
  }

  v9 = type metadata accessor for _EXHostConfiguration();
  v10 = objc_allocWithZone(v9);
  v11 = objc_allocWithZone(v9);
  v12 = v3;
  v13 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v12, 0);

  swift_getObjectType();
  v14 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x30);
  v15 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x34);
  swift_deallocPartialClassInstance();
  v16 = specialized static _EXExtensionProcess.extensionProcess(configuration:)(v13);
  if (v1)
  {
  }

  else
  {
    v17 = v16;
    v22[0] = 0;
    v18 = [v16 newXPCConnectionWithError_];
    if (v18)
    {
      v10 = v18;
      v19 = v22[0];
    }

    else
    {
      v10 = v22[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _EXExtensionIdentity.roles.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v14, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (!v15)
  {
    __break(1u);
    return result;
  }

  outlined init with take of _InnerAppExtensionIdentity(&v14, v16);
  v3 = v17;
  v4 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v5 = (*(v4 + 288))(v3, v4);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D656E6563535845, 0xEF74736566696E61), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_unknownObjectRetain();

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      v11 = [v10 allKeys];
      swift_unknownObjectRelease();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = specialized _arrayConditionalCast<A, B>(_:)(v12);

      if (v13)
      {
        return v13;
      }

      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
LABEL_9:

  return MEMORY[0x1E69E7CC0];
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXExtensionIdentity.init(nsExtension:)(_EXExtensionIdentity *__return_ptr retstr, NSExtension nsExtension)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ([objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNSExtension:nsExtension.super.isa error:v6])
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t _EXExtensionIdentity.init(nsExtension:)(void *a1)
{
  v21[5] = *MEMORY[0x1E69E9840];
  *&v18 = 0;
  v2 = [a1 extensionIdentityWithError_];
  v3 = v18;
  if (!v2)
  {
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v4 = v2;
  v5 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v4 + v5, &v18, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v19)
  {
    v7 = v3;

    outlined init with take of _InnerAppExtensionIdentity(&v18, v21);
    ObjectType = swift_getObjectType();
    outlined init with copy of _InnerAppExtensionIdentity(v21, &v18);
    v9 = v19;
    v10 = v20;
    v11 = __swift_mutable_project_boxed_opaque_existential_1(&v18, v19);
    v12 = *(*(v9 - 8) + 64);
    MEMORY[0x1EEE9AC00](v11);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    v16 = specialized _EXExtensionIdentity.init(_:)(v14, ObjectType, v9, v10);

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    __swift_destroy_boxed_opaque_existential_0Tm(&v18);
    swift_deallocPartialClassInstance();
LABEL_5:
    v17 = *MEMORY[0x1E69E9840];
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t _EXExtensionIdentity.groupIdentifier.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 72))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.serviceName.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t _EXExtensionIdentity.requiredHostEntitlements.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 184))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.containingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v1 + v3, &v12, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v13)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v12, v14);
    v5 = v15;
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = (*(v6 + 256))(v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = [v7 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v11 = type metadata accessor for URL();
      return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.uniqueIdentifier.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v4 + 56))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id @objc _EXExtensionIdentity.containingURL.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = a1;
  a3();

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v15 = v14;
    (*(v11 + 8))(v8, v10);
    v13 = v15;
  }

  return v13;
}

uint64_t _EXExtensionIdentity.executableURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v1 + v3, &v8, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v9)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 280))(v5, v6);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.sdkDictionary.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 288))(v3, v4);
    v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.extensionDictionary.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v7, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v8)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = (*(v4 + 296))(v3, v4);
    v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.platform.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 88))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.userElection.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 440))(0, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.defaultUserElection.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 456))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.sandboxProfileName.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 328))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.alternateSandboxProfileNames.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 336))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.privateSandboxProfileEntitlement.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 344))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.hasSandboxEntitlement.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 352))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.disableLaunchdCheckinTimeout.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 360))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.performsUserInteractiveWork.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 368))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.requiresMultiInstance.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 376))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.launchesViaExtensionKitService.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 384))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionIdentity.systemComponent.getter()
{
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v0 + v1, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v5, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LOBYTE(v3) = (*(v4 + 320))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, int a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v8, a1);
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(BYTE1(a2) & 1);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  Hasher._combine(_:)(HIBYTE(a2) & 1);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0x1010101, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  v17 = v3 + 64;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v16 = ~v4;
    do
    {
      v7 = *(v19 + 48) + 16 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 9);
      v11 = *(v7 + 10);
      v12 = *(v7 + 11);

      v14 = _sSh2eeoiySbShyxG_ABtFZ19ExtensionFoundation03AppB5PointV_Tt1g5(v13, a1);

      if (((v14 ^ 1 | v9 ^ a2 | v10 ^ ((a2 & 0x100) >> 8) | v11 ^ ((a2 & 0x10000u) >> 16) | v12 ^ ((a2 & 0x1000000u) >> 24)) & 1) == 0)
      {
        break;
      }

      v5 = (v5 + 1) & v16;
    }

    while (((*(v17 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id specialized _EXExtensionIdentity.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined init with take of _InnerAppExtensionIdentity(&v12, v11);
  v8 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v9 = v7;
  outlined assign with take of _InnerAppExtensionIdentity?(v11, v7 + v8);
  swift_endAccess();

  return v9;
}

id specialized static _EXExtensionIdentity.current.getter()
{
  static AppExtensionIdentity.current.getter(v6);
  v8[0] = v6[0];
  v8[1] = v6[1];
  v9 = v7;
  outlined init with copy of AppExtensionIdentity(v8, v6);
  outlined init with copy of _InnerAppExtensionIdentity(v6, v5);
  v0 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined destroy of AppExtensionIdentity(v6);
  outlined destroy of AppExtensionIdentity(v8);
  outlined init with take of _InnerAppExtensionIdentity(v5, v4);
  v1 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v2 = v0;
  outlined assign with take of _InnerAppExtensionIdentity?(v4, v0 + v1);
  swift_endAccess();

  return v2;
}

uint64_t specialized static _EXExtensionIdentity.enableExtension(_:host:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(a1 + v6, &v10, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v11)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v10, v12);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v9 + 448))(a3, a2, v8, v9);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppExtensionIdentity.init(record:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for AppExtensionIdentity.RecordIdentity;
  a2[4] = &protocol witness table for AppExtensionIdentity.RecordIdentity;
  *a2 = result;
  return result;
}

uint64_t AppExtensionIdentity.bundleIdentifier.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t AppExtensionIdentity.debugDescription.getter()
{
  outlined init with copy of _InnerAppExtensionIdentity(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
  return String.init<A>(describing:)();
}

uint64_t AppExtensionIdentity.entitlement<A>(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 480))(a1, a2, a3, v7, v8);
}

id AppExtensionIdentity.inner.getter()
{
  outlined init with copy of _InnerAppExtensionIdentity(v0, v6);
  v1 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined init with take of _InnerAppExtensionIdentity(v6, v5);
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v3 = v1;
  outlined assign with take of _InnerAppExtensionIdentity?(v5, v1 + v2);
  swift_endAccess();

  return v3;
}

uint64_t AppExtensionIdentity.extensionPointIdentifier.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t AppExtensionIdentity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(a1 + v4, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {

    return outlined init with take of _InnerAppExtensionIdentity(&v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AppExtensionIdentity.current.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      a1[3] = &type metadata for AppExtensionIdentity.RecordIdentity;
      a1[4] = &protocol witness table for AppExtensionIdentity.RecordIdentity;
      *a1 = result;
      return result;
    }
  }

  v5 = objc_opt_self();
  v6 = MEMORY[0x1865F36D0](0xD000000000000027, 0x80000001848C6330);
  [v5 _EX_errorWithCode_description_];

  return swift_willThrow();
}

uint64_t AppExtensionIdentity.id.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  (*(v7 + 56))(v6, v7);
  v8 = UUID.uuidString.getter();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t AppExtensionIdentity.localizedName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t AppExtensionIdentity.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  (*(v7 + 56))(v6, v7);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t static AppExtensionIdentity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 56))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 56))(v14, v15);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

Swift::Int AppExtensionIdentity.hashValue.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  (*(v7 + 56))(v6, v7);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance AppExtensionIdentity@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 56))(v8, v9);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppExtensionIdentity()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  (*(v7 + 56))(v6, v7);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppExtensionIdentity()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  (*(v7 + 56))(v6, v7);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppExtensionIdentity()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = v0[3];
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v6);
  (*(v7 + 56))(v6, v7);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppExtensionIdentity(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 56))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 56))(v14, v15);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

uint64_t AppExtensionIdentity.init(serviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_allocWithZone(_EXExtensionIdentity);
  result = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(a1, a2, &selRef_initWithServiceIdentifier_error_);
  if (!v3)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v10 = OBJC_IVAR____EXExtensionIdentity__inner;
    swift_beginAccess();
    result = outlined init with copy of UUID?(v9 + v10, &v11, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
    if (v12)
    {

      return outlined init with take of _InnerAppExtensionIdentity(&v11, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AppExtensionIdentity.init(inner:)@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v2 + v3, &v5, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v6)
  {

    return outlined init with take of _InnerAppExtensionIdentity(&v5, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AppExtensionIdentity.init(bundleIdentifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
  v7 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_6:
    v16 = objc_allocWithZone(MEMORY[0x1E69635D0]);

    v17 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(a1, a2, &selRef_initWithBundleIdentifier_error_);
    if (v3)
    {
LABEL_31:

      return;
    }

    v18 = v17;
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v38 = a3;
  v40 = a1;
  v10 = [v9 applicationExtensionRecords];

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
  lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v3;
  if ((v11 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v43;
    v12 = v44;
    v13 = v45;
    v14 = v46;
    v15 = v47;
  }

  else
  {
    v19 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v13 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v15 = v21 & *(v11 + 56);

    v14 = 0;
  }

  while ((v11 & 0x8000000000000000) == 0)
  {
    v22 = v14;
    v23 = v15;
    v24 = v14;
    if (!v15)
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= ((v13 + 64) >> 6))
        {
          goto LABEL_30;
        }

        v23 = *(v12 + 8 * v24);
        ++v22;
        if (v23)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      return;
    }

LABEL_19:
    v25 = (v23 - 1) & v23;
    v18 = *(*(v11 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_23:
    v26 = [v18 bundleIdentifier];
    if (v26)
    {
      v27 = v26;
      v41 = v18;
      v28 = v12;
      v29 = v11;
      v30 = a2;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v31 == v40 && v33 == v30)
      {

        v18 = v41;
LABEL_35:
        outlined consume of [String : Any].Iterator._Variant();

        a3 = v38;
        goto LABEL_36;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v30;
      v11 = v29;
      v12 = v28;
      v18 = v41;
      if (v35)
      {
        goto LABEL_35;
      }
    }

    v14 = v24;
    v15 = v25;
  }

  if (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    v18 = v42;
    v24 = v14;
    v25 = v15;
    if (v42)
    {
      goto LABEL_23;
    }
  }

LABEL_30:
  outlined consume of [String : Any].Iterator._Variant();

  v36 = objc_allocWithZone(MEMORY[0x1E69635D0]);

  a1 = v40;
  v37 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(v40, a2, &selRef_initWithBundleIdentifier_error_);
  if (v39)
  {
    goto LABEL_31;
  }

  v18 = v37;
  a3 = v38;
  if (!v37)
  {
LABEL_33:
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    _StringGuts.grow(_:)(38);

    MEMORY[0x1865F37A0](a1, a2);

    NSError.init(code:description:)(5, 0xD000000000000024, 0x80000001848C6360);
    swift_willThrow();
    return;
  }

LABEL_36:

  a3[3] = &type metadata for AppExtensionIdentity.RecordIdentity;
  a3[4] = &protocol witness table for AppExtensionIdentity.RecordIdentity;
  *a3 = v18;
}

void AppExtensionIdentity.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *&v10 = 0;
  v4 = [a1 extensionIdentityWithError_];
  if (!v4)
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v5 = v4;
  v6 = v10;

  v7 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  outlined init with copy of UUID?(v5 + v7, &v10, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v11)
  {

    outlined init with take of _InnerAppExtensionIdentity(&v10, a2);
LABEL_5:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

uint64_t AppExtensionIdentity.uniqueIdentifier.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t AppExtensionIdentity.bundleVersion.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t AppExtensionIdentity.presentsUserInterface.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 104))(v1, v2) & 1;
}

uint64_t AppExtensionIdentity.containingApplicationRecord.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 256))(v1, v2);
  if (result)
  {
    v4 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t AppExtensionIdentity.developerName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AppExtensionIdentity.requiresMacCatalystBehavior.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

unint64_t AppExtensionIdentity._attributes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 304))(v1, v2);
  v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  return v4;
}

unint64_t AppExtensionIdentity.nsExtensionAttributes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 176))(v1, v2);
  v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  return v4;
}

uint64_t AppExtensionIdentity.builtForNSExtension.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 208))(v1, v2) & 1;
}

uint64_t AppExtensionIdentity.icon.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AppExtensionIdentity.url.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 272))(v1, v2);
}

uint64_t AppExtensionIdentity.enabled.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 416))(0, v1, v2) & 1;
}

uint64_t AppExtensionIdentity.enabled(for:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 416))(a1, v3, v4) & 1;
}

uint64_t AppExtensionIdentity.platform.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 88))(v1, v2);
}

id AppExtensionIdentity.extensionPointRecord.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = (*(v3 + 264))(v2, v3);
  if (!v4 || (v5 = v4, v6 = [v4 extensionPointRecord], v5, (result = v6) == 0))
  {
    v8 = v1[3];
    v9 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v8);
    v10 = (*(v9 + 40))(v8, v9);
    v12 = v11;
    v13 = v1[3];
    v14 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v13);
    v15 = (*(v14 + 88))(v13, v14);
    v16 = objc_allocWithZone(MEMORY[0x1E6963668]);
    return @nonobjc LSExtensionPointRecord.init(identifier:platform:)(v10, v12, v15);
  }

  return result;
}

uint64_t AppExtensionIdentity.enable(for:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 448))(a2, a1, v5, v6);
}

uint64_t AppExtensionIdentity.showsInExtensionsManager.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 392))(v1, v2) & 1;
}

uint64_t AppExtensionIdentity.isSystemComponent.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 320))(v1, v2) & 1;
}

uint64_t AppExtensionIdentity.canDisable.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 400))(v1, v2) & 1;
}

uint64_t AppExtensionIdentity.spotlightIndexable.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 240))(v1, v2) & 1;
}

uint64_t AppExtensionIdentity.spotlightImporterIdentifiers.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 248))(v1, v2);
}

uint64_t AppExtensionIdentity.nsExtension.getter()
{
  v1 = type metadata accessor for _EXExtensionIdentity();
  outlined init with copy of _InnerAppExtensionIdentity(v0, v14);
  v2 = v15;
  v3 = v16;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized _EXExtensionIdentity.init(_:)(v7, v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  if ([v9 isKindOfClass_])
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtension, 0x1E696ABD0);
    v10 = specialized @nonobjc NSExtension.init(identity:)(v9);

    return v10;
  }

  else
  {
    v12 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t AppExtensionIdentity.entitlement(of:named:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 472))(a1, a2, a3, v7, v8);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppExtensionIdentity()
{
  outlined init with copy of _InnerAppExtensionIdentity(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
  return String.init<A>(describing:)();
}

uint64_t AppExtensionIdentity.extensionIdentity.getter()
{
  outlined init with copy of _InnerAppExtensionIdentity(v0, v6);
  v1 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined init with take of _InnerAppExtensionIdentity(v6, v5);
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v3 = v1;
  outlined assign with take of _InnerAppExtensionIdentity?(v5, v1 + v2);
  swift_endAccess();

  objc_opt_self();
  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t AppExtensionIdentity.extensionSettingsKey(for:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 560))(a1, v3, v4);
}

id NSExtension.init(_:)(uint64_t a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  outlined init with copy of AppExtensionIdentity(a1, v13);
  outlined init with copy of _InnerAppExtensionIdentity(v13, v12);
  v2 = [objc_allocWithZone(_EXExtensionIdentity) init];
  outlined destroy of AppExtensionIdentity(v13);
  outlined init with take of _InnerAppExtensionIdentity(v12, v11);
  v3 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v4 = v2;
  outlined assign with take of _InnerAppExtensionIdentity?(v11, v2 + v3);
  swift_endAccess();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13[0] = 0;
  v6 = [ObjCClassFromMetadata extensionWithIdentity:v4 error:v13];
  if (v6)
  {
    v7 = v13[0];
    outlined destroy of AppExtensionIdentity(a1);
  }

  else
  {
    v8 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined destroy of AppExtensionIdentity(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t static AppExtensionIdentity.matching(appExtensionPointIDs:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation03AppD8IdentityVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation03AppD8IdentityVG__GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v22 - v11);
  v23 = *a2;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v22 = a3;
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = (a1 + 40);
    while (1)
    {
      v17 = *(v15 - 1);
      v16 = *v15;

      specialized _AppExtensionPoint.init(identifier:)(v17, v16);
      if (v4)
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(v24 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 2;
      if (!--v13)
      {
        v14 = v24;
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19ExtensionFoundation03AppA8IdentityVGMd, &_sSay19ExtensionFoundation03AppA8IdentityVGMR);
    *v12 = 1;
    v19 = (*(v9 + 104))(v12, *MEMORY[0x1E69E8640], v8);
    MEMORY[0x1EEE9AC00](v19);
    v20 = v23;
    *(&v22 - 4) = v14;
    *(&v22 - 3) = v20;
    *(&v22 - 2) = closure #2 in static AppExtensionIdentity.matching(appExtensionPointIDs:options:);
    *(&v22 - 1) = 0;
    AsyncStream.init(_:bufferingPolicy:_:)();
  }
}

{
  v4 = *a2;
  return static AppExtensionIdentity.matching(appExtensionPointIDs:options:)(a1, &v4, a3);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AppExtensionIdentity._MatchingOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance AppExtensionIdentity._MatchingOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance AppExtensionIdentity._MatchingOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v76 = a4;
  v75 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation03AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation03AppB8IdentityVG_GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v67 - v10;
  v12 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    goto LABEL_11;
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    v67[1] = v9;
    v68 = v67 - v10;
    v69 = v8;
    v70 = v7;
    v71 = a1;
    v74 = objc_opt_self();
    v73 = objc_opt_self();
    v14 = (a2 + 32);
    v72 = v81;
    v15 = v13 - 1;
    v16 = &OBJC_IVAR____EXQuery_predicate;
    while (1)
    {
      v78 = v14;
      v17 = *v14;
      v18 = [v17 identifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = _EXAuditTokenForCurrentProcess();
      v23 = v22[1];
      v82 = *v22;
      v83 = v23;
      v24 = type metadata accessor for _EXQuery();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR____EXQuery_resultType] = 0;
      v26 = v16;
      *&v25[*v16] = 0;
      v25[OBJC_IVAR____EXQuery_includePostprocessing] = 0;
      v27 = OBJC_IVAR____EXQuery_allowsDuplicates;
      v28 = [v74 sharedInstance];
      v29 = [v28 queryAllowsDuplicates];

      v25[v27] = v29;
      v25[OBJC_IVAR____EXQuery_includeUpdatingApps] = 0;
      v25[OBJC_IVAR____EXQuery_excludeLockedApps] = 0;
      v25[OBJC_IVAR____EXQuery_excludeDisabled] = 0;
      *&v88[4] = v82;
      *&v88[20] = v83;
      *&v84 = v19;
      *(&v84 + 1) = v21;
      *v85 = -1;
      *&v85[4] = v82;
      *&v85[20] = v83;
      v86 = v19;
      v87 = v21;
      *v88 = -1;
      outlined init with copy of _EXQuery.ValuesQuery(&v84, aBlock);
      outlined destroy of _EXQuery.ValuesQuery(&v86);
      v30 = &v25[OBJC_IVAR____EXQuery_inner];
      v30[3] = &type metadata for _EXQuery.ValuesQuery;
      v30[4] = &protocol witness table for _EXQuery.ValuesQuery;
      v31 = swift_allocObject();
      *v30 = v31;
      v32 = *v85;
      *(v31 + 16) = v84;
      *(v31 + 32) = v32;
      *(v31 + 48) = *&v85[16];
      *(v31 + 64) = *&v85[32];
      v79.receiver = v25;
      v79.super_class = v24;
      v33 = objc_msgSendSuper2(&v79, sel_init);
      v34 = v33;
      if ((v75 & 4) != 0)
      {
        v33[OBJC_IVAR____EXQuery_includeUpdatingApps] = 1;
      }

      v35 = swift_allocObject();
      v36 = v77;
      *(v35 + 16) = v76;
      *(v35 + 24) = v36;
      v81[2] = partial apply for closure #1 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:);
      v81[3] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v81[0] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
      v81[1] = &block_descriptor_51;
      v37 = _Block_copy(aBlock);

      v38 = [v73 predicateWithBlock_];
      _Block_release(v37);

      v16 = v26;
      v39 = *&v34[*v26];
      *&v34[*v26] = v38;

      v40 = v34;
      MEMORY[0x1865F38A0]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (!v15)
      {
        break;
      }

      --v15;
      v14 = v78 + 1;
    }

    v12 = v90;
    a1 = v71;
    v7 = v70;
    v8 = v69;
    v11 = v68;
LABEL_11:
    if (!(v12 >> 62))
    {
      goto LABEL_12;
    }

LABEL_22:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_13:
  v42 = [objc_allocWithZone(type metadata accessor for _EXQuery()) init];
  v43 = swift_allocObject();
  v44 = v77;
  *(v43 + 16) = v76;
  *(v43 + 24) = v44;
  *&v88[16] = partial apply for closure #2 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:);
  *&v88[24] = v43;
  v86 = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  *v88 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  *&v88[8] = &block_descriptor_13;
  v45 = _Block_copy(&v86);
  v46 = objc_opt_self();

  v47 = [v46 predicateWithBlock_];
  _Block_release(v45);

  v48 = *&v42[OBJC_IVAR____EXQuery_predicate];
  *&v42[OBJC_IVAR____EXQuery_predicate] = v47;

  v49 = v42;
  MEMORY[0x1865F38A0]();
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v66 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v12 = v90;
LABEL_16:
  (*(v8 + 16))(v11, a1, v7);
  v50 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v51 = swift_allocObject();
  (*(v8 + 32))(v51 + v50, v11, v7);
  Controller = type metadata accessor for _QueryController();
  v53 = objc_allocWithZone(Controller);
  v54 = objc_allocWithZone(type metadata accessor for _EXQueryController());
  *&v53[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller] = _EXQueryController.init(queries:)(v12);
  v55 = &v53[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_handler];
  *v55 = partial apply for closure #3 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:);
  v55[1] = v51;
  v89.receiver = v53;
  v89.super_class = Controller;
  v56 = objc_msgSendSuper2(&v89, sel_init);
  v57 = OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller;
  v58 = *&v56[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller];
  swift_unknownObjectWeakAssign();
  *(swift_allocObject() + 16) = v56;
  v59 = v56;
  AsyncStream.Continuation.onTermination.setter();
  v60 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v61 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v60))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v59;
    *v63 = v56;
    v64 = v59;
    _os_log_impl(&dword_1847D1000, v61, v60, "Resuming controller: %@", v62, 0xCu);
    outlined destroy of NSObject?(v63, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v63, -1, -1);
    MEMORY[0x1865F56C0](v62, -1, -1);
  }

  v65 = *(*&v56[v57] + OBJC_IVAR____EXQueryController_innerController);
  QueryController.resume()();
}

uint64_t closure #1 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *))
{
  outlined init with copy of UUID?(a1, v11, &_sypSgMd, &_sypSgMR);
  if (!v12)
  {
LABEL_6:
    outlined destroy of NSObject?(v11, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  type metadata accessor for _EXExtensionIdentity();
  if (swift_dynamicCast())
  {
    v4 = v9;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v6 = OBJC_IVAR____EXExtensionIdentity__inner;
    swift_beginAccess();
    outlined init with copy of UUID?(v5 + v6, &v9, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
    if (v10)
    {

      outlined init with take of _InnerAppExtensionIdentity(&v9, v11);
      v7 = a3(v11);

      outlined destroy of AppExtensionIdentity(v11);
      return v7 & 1;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySay19ExtensionFoundation03AppD8IdentityVG__GMd, &_sScS12ContinuationV11YieldResultOySay19ExtensionFoundation03AppD8IdentityVG__GMR);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v29 = v28 - v7;
  LOBYTE(v8) = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v9 = static OS_os_log.discovery;
    if (os_log_type_enabled(static OS_os_log.discovery, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v34[0] = v11;
      *v10 = 136315138;
      v12 = type metadata accessor for _EXExtensionIdentity();
      v13 = MEMORY[0x1865F38E0](a1, v12);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v34);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1847D1000, v9, v8, "_QueryController yeild results: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x1865F56C0](v11, -1, -1);
      MEMORY[0x1865F56C0](v10, -1, -1);
    }

    v30 = v5;
    if (a1 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
LABEL_19:
      *&v34[0] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation03AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation03AppB8IdentityVG_GMR);
      v27 = v29;
      AsyncStream.Continuation.yield(_:)();
      return (v30[1])(v27, v4);
    }

    v36[0] = MEMORY[0x1E69E7CC0];
    v8 = v36;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      break;
    }

    v28[0] = v4;
    v28[1] = a2;
    v18 = 0;
    v5 = v36[0];
    v19 = a1;
    a2 = a1 & 0xC000000000000001;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = a1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (a2)
      {
        v21 = MEMORY[0x1865F3F40](v18, v19);
      }

      else
      {
        if (v18 >= *(v31 + 16))
        {
          goto LABEL_21;
        }

        v21 = *(v19 + 8 * v18 + 32);
      }

      v8 = v21;
      v22 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      result = outlined init with copy of UUID?(v8 + v22, &v32, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
      if (!v33)
      {
        goto LABEL_25;
      }

      outlined init with take of _InnerAppExtensionIdentity(&v32, v34);
      v36[0] = v5;
      a1 = v5[2];
      v23 = v5[3];
      if (a1 >= v23 >> 1)
      {
        v8 = v36;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), a1 + 1, 1);
        v5 = v36[0];
      }

      v5[2] = a1 + 1;
      v24 = &v5[5 * a1];
      v25 = v34[0];
      v26 = v34[1];
      v24[8] = v35;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      ++v18;
      v19 = v4;
      if (v20 == v16)
      {
        v4 = v28[0];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void closure #4 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:)(uint64_t a1, char *a2)
{
  v3 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = a2;
    *v6 = a2;
    v7 = a2;
    _os_log_impl(&dword_1847D1000, v4, v3, "Suspending controller: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  v8 = *(*&a2[OBJC_IVAR____TtC19ExtensionFoundation16_QueryController_controller] + OBJC_IVAR____EXQueryController_innerController);
  QueryController.suspend()();
}

uint64_t AppExtensionIdentity.Identities.AsyncIterator.next()()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation03AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation03AppA8IdentityVGGMR);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySay19ExtensionFoundation03AppB8IdentityVG_GMd, &_sScS8IteratorVySay19ExtensionFoundation03AppB8IdentityVG_GMR);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for AppExtensionIdentity.Identities.AsyncIterator(0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AppExtensionIdentity.Identities.AsyncIterator.next(), 0, 0);
}

{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  outlined init with copy of AppExtensionIdentity.Identities.AsyncIterator(v0[3], v1);
  (*(v3 + 16))(v2, v1, v4);
  lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[AppExtensionIdentity]> and conformance AsyncStream<A>, &_sScSySay19ExtensionFoundation03AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation03AppA8IdentityVGGMR);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v5 = lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<[AppExtensionIdentity]>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVySay19ExtensionFoundation03AppB8IdentityVG_GMd, &_sScS8IteratorVySay19ExtensionFoundation03AppB8IdentityVG_GMR);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = AppExtensionIdentity.Identities.AsyncIterator.next();
  v8 = v0[9];
  v9 = v0[7];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v9, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = _AppExtensionQuery.Results.AsyncIterator.next();
  }

  else
  {
    v7 = AppExtensionIdentity.Identities.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v3 + 8))(v1, v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[1];

  return v7(v6);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AppExtensionIdentity.Identities.AsyncIterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AppExtensionIdentity.Identities.AsyncIterator;

  return AppExtensionIdentity.Identities.AsyncIterator.next()();
}

{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t _s19ExtensionFoundation03AppA8IdentityV10IdentitiesV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = _s19ExtensionFoundation03AppA8IdentityV10IdentitiesV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return AppExtensionIdentity.Identities.AsyncIterator.next()();
}

uint64_t _s19ExtensionFoundation03AppA8IdentityV10IdentitiesV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *v1;

  if (v5)
  {
    v7 = v3[3];
    v8 = v3[4];
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[6] = a1;

  return MEMORY[0x1EEE6DFA0](_s19ExtensionFoundation03AppA8IdentityV10IdentitiesV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_, v9, v11);
}

uint64_t AppExtensionIdentity.Identities.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation03AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation03AppA8IdentityVGGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AppExtensionIdentity.Identities@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation03AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation03AppA8IdentityVGGMR);
  v4 = *(*(v3 - 8) + 32);

  return v4(a1, v1, v3);
}

ExtensionFoundation::AppExtensionIdentity::Availability __swiftcall AppExtensionIdentity.Availability.init()()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

uint64_t AppExtensionIdentity.Availability.totalCount.getter()
{
  v1 = v0[1];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = v0[2];
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t AppExtensionIdentity.Availability.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  _StringGuts.grow(_:)(53);
  MEMORY[0x1865F37A0](0xD000000000000017, 0x80000001848C63C0);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v4);

  MEMORY[0x1865F37A0](0x6C6261736964202CLL, 0xEB00000000206465);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v5);

  MEMORY[0x1865F37A0](0x727070616E75202CLL, 0xED0000206465766FLL);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v6);

  return 0;
}

uint64_t static AppExtensionIdentity.availabilityUpdates.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy19ExtensionFoundation03AppD8IdentityV12AvailabilityV__GMd, &_sScS12ContinuationV15BufferingPolicyOy19ExtensionFoundation03AppD8IdentityV12AvailabilityV__GMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  *(&v5 - v2) = 1;
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x1E69E8640]);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

void closure #1 in static AppExtensionIdentity.availabilityUpdates.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy19ExtensionFoundation03AppB8IdentityV12AvailabilityV_GMd, &_sScS12ContinuationVy19ExtensionFoundation03AppB8IdentityV12AvailabilityV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  (*(v3 + 16))(&v20 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = type metadata accessor for _AvailabilityController();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_token];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v10[OBJC_IVAR____TtC19ExtensionFoundation23_AvailabilityController_handler];
  *v12 = partial apply for closure #1 in closure #1 in static AppExtensionIdentity.availabilityUpdates.getter;
  v12[1] = v8;
  v20.receiver = v10;
  v20.super_class = v9;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  AsyncStream.Continuation.onTermination.setter();
  v15 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1847D1000, v16, v15, "Resuming controller: %@", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v17, -1, -1);
  }

  _AvailabilityController.resume()();
}

uint64_t closure #1 in closure #1 in static AppExtensionIdentity.availabilityUpdates.getter(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy19ExtensionFoundation03AppD8IdentityV12AvailabilityV__GMd, &_sScS12ContinuationV11YieldResultOy19ExtensionFoundation03AppD8IdentityV12AvailabilityV__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v12))
  {
    v14 = swift_slowAlloc();
    v27 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v4;
    v17 = v16;
    v28 = v16;
    v29 = v9;
    *v15 = 136315138;
    v30 = v10;
    v31 = v11;
    v25 = v10;
    v18 = AppExtensionIdentity.Availability.description.getter();
    v20 = v5;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v28);
    v10 = v25;

    *(v15 + 4) = v21;
    v5 = v20;
    _os_log_impl(&dword_1847D1000, v13, v12, "_NewExtensionsController yeild results: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v22 = v17;
    v4 = v26;
    MEMORY[0x1865F56C0](v22, -1, -1);
    MEMORY[0x1865F56C0](v15, -1, -1);
  }

  v29 = v9;
  v30 = v10;
  v31 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy19ExtensionFoundation03AppB8IdentityV12AvailabilityV_GMd, &_sScS12ContinuationVy19ExtensionFoundation03AppB8IdentityV12AvailabilityV_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v8, v4);
}

void closure #2 in closure #1 in static AppExtensionIdentity.availabilityUpdates.getter(uint64_t a1, void *a2)
{
  v3 = static os_log_type_t.debug.getter();
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.discovery;
  if (os_log_type_enabled(static OS_os_log.discovery, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = a2;
    *v6 = a2;
    v7 = a2;
    _os_log_impl(&dword_1847D1000, v4, v3, "Suspending controller: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v6, -1, -1);
    MEMORY[0x1865F56C0](v5, -1, -1);
  }

  _AvailabilityController.suspend()();
}

uint64_t static AppExtensionIdentity.all.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation03AppD8IdentityVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation03AppD8IdentityVG__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6[-v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19ExtensionFoundation03AppA8IdentityVGMd, &_sSay19ExtensionFoundation03AppA8IdentityVGMR);
  *v4 = 1;
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8640], v0);
  v7 = 0;
  v8 = 0;
  v9 = closure #2 in static AppExtensionIdentity.matching(appExtensionPointIDs:options:);
  v10 = 0;
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t static AppExtensionIdentity.allMatching(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation03AppD8IdentityVG__GMd, &_sScS12ContinuationV15BufferingPolicyOySay19ExtensionFoundation03AppD8IdentityVG__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19ExtensionFoundation03AppA8IdentityVGMd, &_sSay19ExtensionFoundation03AppA8IdentityVGMR);
  *v8 = 1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8640], v4);
  v11 = 0;
  v12 = 0;
  v13 = a1;
  v14 = a2;
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t outlined init with copy of AppExtensionIdentity.Identities.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionIdentity.Identities.AsyncIterator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AppExtensionIdentity and conformance AppExtensionIdentity()
{
  result = lazy protocol witness table cache variable for type AppExtensionIdentity and conformance AppExtensionIdentity;
  if (!lazy protocol witness table cache variable for type AppExtensionIdentity and conformance AppExtensionIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionIdentity and conformance AppExtensionIdentity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions()
{
  result = lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions;
  if (!lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions;
  if (!lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions;
  if (!lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions;
  if (!lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionIdentity._MatchingOptions and conformance AppExtensionIdentity._MatchingOptions);
  }

  return result;
}

void type metadata accessor for AsyncStream<[AppExtensionIdentity]>()
{
  if (!lazy cache variable for type metadata for AsyncStream<[AppExtensionIdentity]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19ExtensionFoundation03AppA8IdentityVGMd, &_sSay19ExtensionFoundation03AppA8IdentityVGMR);
    v0 = type metadata accessor for AsyncStream();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<[AppExtensionIdentity]>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation03AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation03AppA8IdentityVGGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySay19ExtensionFoundation03AppA8IdentityVGGMd, &_sScSySay19ExtensionFoundation03AppA8IdentityVGGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for AppExtensionIdentity.Identities()
{
  type metadata accessor for AsyncStream<[AppExtensionIdentity]>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for AppExtensionIdentity.Availability(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppExtensionIdentity.Availability(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static AppExtensionIdentity.availabilityUpdates.getter(uint64_t *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy19ExtensionFoundation03AppB8IdentityV12AvailabilityV_GMd, &_sScS12ContinuationVy19ExtensionFoundation03AppB8IdentityV12AvailabilityV_GMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in static AppExtensionIdentity.availabilityUpdates.getter(a1, v4);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #3 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:)(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySay19ExtensionFoundation03AppB8IdentityVG_GMd, &_sScS12ContinuationVySay19ExtensionFoundation03AppB8IdentityVG_GMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #3 in closure #1 in AppExtensionIdentity.Identities.init(extensionPoints:options:_:)(a1, v4);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of UUID?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC19ExtensionFoundation25_EXExtensionProcessHandleC_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - v12;
  outlined init with copy of UUID?(a3, v26 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    outlined destroy of NSObject?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      v22 = String.utf8CString.getter() + 32;
      a6(0);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  a6(0);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t AppExtensionProcess.Configuration._assertionAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionProcess.Configuration(0) + 32));
}

void AppExtensionProcess.init(configuration:)(uint64_t a1@<X0>, char ***a2@<X8>)
{
  v5 = type metadata accessor for AppExtensionProcess.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(a1, v8, type metadata accessor for AppExtensionProcess.Configuration);
  v9 = specialized _EXLaunchConfiguration.__allocating_init(_:)(v8);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v10 = _EXExtensionProcessMannger.process(configuration:)(v9);
  if (v2)
  {
    outlined destroy of AppExtensionProcess.Configuration(a1, type metadata accessor for AppExtensionProcess.Configuration);
  }

  else
  {
    v11 = v10;
    v12 = *(a1 + 48);
    v23 = *(a1 + 40);
    v13 = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
    v14 = objc_allocWithZone(v13);
    v25 = a2;
    v15 = &v14[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *&v14[v16] = v17;
    *v15 = v23;
    *(v15 + 1) = v12;
    v24.receiver = v14;
    v24.super_class = v13;

    v18 = objc_msgSendSuper2(&v24, sel_init);
    v19 = *(v11 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
    v20 = v18;
    os_unfair_lock_lock(v19 + 4);
    [*(v11 + OBJC_IVAR____EXExtensionProcessHandle_observers) addObject_];
    os_unfair_lock_unlock(v19 + 4);

    outlined destroy of AppExtensionProcess.Configuration(a1, type metadata accessor for AppExtensionProcess.Configuration);
    v21 = v25;
    *v25 = v11;
    v21[1] = v20;
  }
}

uint64_t AppExtensionProcess._makeXPCSession()()
{
  v1 = type metadata accessor for XPCSession.InitializationOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(*v0 + OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint);
  if (v3 && (v4 = *(v3 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint)) != 0)
  {
    xpc_connection_create_from_endpoint(v4);
    type metadata accessor for XPCSession();
    static XPCSession.InitializationOptions.inactive.getter();
    return XPCSession.__allocating_init(fromConnection:targetQueue:options:cancellationHandler:)();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C4E00);
    [v6 _EX_errorWithCode_description_];

    return swift_willThrow();
  }
}

uint64_t AppExtensionProcess.Configuration.onInterruption.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AppExtensionProcess._identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(*v1 + OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration) + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v4 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v3 + v4, &v6, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v7)
  {
    outlined init with take of _InnerAppExtensionIdentity(&v6, v8);
    return outlined init with take of _InnerAppExtensionIdentity(v8, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppExtensionProcess.terminate()()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69C7650]);
  v3 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C6400);
  v4 = [v2 initWithExplanation_];

  [v4 setReportType_];
  [v4 setMaximumTerminationResistance_];
  [*(v1 + OBJC_IVAR____EXExtensionProcessHandle_innerProcessHandle) pid];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v6 = [objc_opt_self() predicateMatchingIdentifier_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69C7660]) initWithPredicate:v6 context:v4];
  v14[0] = 0;
  if ([v7 execute_])
  {
    v8 = v14[0];
  }

  else
  {
    v9 = v14[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = objc_opt_self();
    v12 = _convertErrorToNSError(_:)();
    [v11 _EX_errorWithCode_underlyingError_];

    swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void (*AppExtensionProcess.Configuration._instanceIdentifier.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for AppExtensionProcess._InstanceIdentifier(0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for AppExtensionProcess.Configuration(0) + 24);
  *(a1 + 16) = v6;
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(v1 + v6, v5, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  return AppExtensionProcess.Configuration._instanceIdentifier.modify;
}

void AppExtensionProcess.Configuration._instanceIdentifier.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  outlined assign with take of AppExtensionProcess._InstanceIdentifier(v1, *a1 + *(a1 + 16));

  free(v1);
}

uint64_t AppExtensionProcess.Configuration._requireInvalidation.setter(char a1)
{
  result = type metadata accessor for AppExtensionProcess.Configuration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*AppExtensionProcess.Configuration._requireInvalidation.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for AppExtensionProcess.Configuration(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return AppExtensionProcess.Configuration._requireInvalidation.modify;
}

uint64_t key path setter for AppExtensionProcess.Configuration._assertionAttributes : AppExtensionProcess.Configuration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AppExtensionProcess.Configuration(0) + 32);
  v5 = *(a2 + v4);

  *(a2 + v4) = v3;
  return result;
}

uint64_t AppExtensionProcess.Configuration._assertionAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppExtensionProcess.Configuration(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*AppExtensionProcess.Configuration._assertionAttributes.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for AppExtensionProcess.Configuration(0) + 32);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;

  return _ServiceExtensionProcess.Configuration._assertionAttributes.modify;
}

uint64_t one-time initialization function for defaultInstanceIdentifier()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  __swift_allocate_value_buffer(v4, static AppExtensionProcess._InstanceIdentifier.defaultInstanceIdentifier);
  v5 = __swift_project_value_buffer(v4, static AppExtensionProcess._InstanceIdentifier.defaultInstanceIdentifier);
  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  v6 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;
  v7 = OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3, v6 + v7, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  return outlined init with take of UUID?(v3, v5);
}

uint64_t static AppExtensionProcess._InstanceIdentifier.defaultInstanceIdentifier.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of AppExtensionProcess._InstanceIdentifier(v6, a3, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
}

uint64_t AppExtensionProcess._InstanceIdentifier.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of UUID?(v2, &v12 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  (*(v9 + 16))(a1, static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v8);
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return result;
}

void AppExtensionProcess._InstanceIdentifier.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v10 - v8;
  outlined init with copy of UUID?(v0, &v10 - v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int AppExtensionProcess._InstanceIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  Hasher.init(_seed:)();
  outlined init with copy of UUID?(v1, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance AppExtensionProcess._InstanceIdentifier@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of UUID?(v2, &v12 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  (*(v9 + 16))(a1, static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v8);
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return result;
}

void protocol witness for Hashable.hash(into:) in conformance AppExtensionProcess._InstanceIdentifier()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v10 - v8;
  outlined init with copy of UUID?(v0, &v10 - v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppExtensionProcess._InstanceIdentifier()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  Hasher.init(_seed:)();
  outlined init with copy of UUID?(v1, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

id AppExtensionProcess._valid.getter()
{
  v1 = *v0;
  v2 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
  os_unfair_lock_lock((*(v1 + OBJC_IVAR____EXExtensionProcessHandle_invalidationLock) + 16));
  v3 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  if (v3)
  {
    v4 = [v3 isValid];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((*(v1 + v2) + 16));
  return v4;
}

id AppExtensionProcess.exExtensionProcess.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(_EXExtensionProcess);
  v3 = *&v1[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
  v4 = v1;
  v5 = _EXLaunchConfiguration.hostConfiguration.getter();
  v6 = [v2 initWithProcessHandle:v4 configuration:v5];

  return v6;
}

void (*AppExtensionProcess.Configuration.appExtension.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  outlined init with copy of AppExtensionIdentity(v1, v3);
  return AppExtensionProcess.Configuration.appExtension.modify;
}

void AppExtensionProcess.Configuration.appExtension.modify(uint64_t *a1)
{
  v1 = *a1;
  outlined assign with take of AppExtensionIdentity(*a1, *(*a1 + 40));

  free(v1);
}

void _AppExtensionProcess.init(appExtensionProcess:)(char **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(_EXExtensionProcess);
  v6 = *&v3[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
  v7 = v3;
  v8 = _EXLaunchConfiguration.hostConfiguration.getter();
  v9 = [v5 initWithProcessHandle:v7 configuration:v8];

  *a2 = v9;
}

uint64_t _AppExtensionProcess.init(configuration:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = *(*(type metadata accessor for _AppExtensionProcess.Configuration(0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_AppExtensionProcess.init(configuration:), 0, 0);
}

uint64_t _AppExtensionProcess.init(configuration:)()
{
  v1 = v0[20];
  v2 = v0[21];
  type metadata accessor for _EXHostConfiguration();
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(v1, v2, type metadata accessor for _AppExtensionProcess.Configuration);
  v3 = _EXHostConfiguration.__allocating_init(_:)(v2);
  v0[22] = v3;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXHostConfiguration, off_1E6E4D218);
  if ([v3 isKindOfClass_])
  {
    v4 = objc_opt_self();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = _AppExtensionProcess.init(configuration:);
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo19_EXExtensionProcessCs5Error_pGMd, &_sSccySo19_EXExtensionProcessCs5Error_pGMR);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned _EXExtensionProcess?, @unowned NSError?) -> () with result type _EXExtensionProcess;
    v0[13] = &block_descriptor_14;
    v0[14] = v6;
    [v4 extensionProcessWithConfiguration:v5 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    [objc_opt_self() _EX_parameterError];
    swift_willThrow();

    return swift_unexpectedError();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = _AppExtensionProcess.init(configuration:);
  }

  else
  {
    v3 = _AppExtensionProcess.init(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  outlined destroy of AppExtensionProcess.Configuration(v0[20], type metadata accessor for _AppExtensionProcess.Configuration);
  v4 = v0[18];

  *v3 = v4;

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  swift_willThrow();
  outlined destroy of AppExtensionProcess.Configuration(v3, type metadata accessor for _AppExtensionProcess.Configuration);

  v5 = v0[1];
  v6 = v0[23];

  return v5();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned _EXExtensionProcess?, @unowned NSError?) -> () with result type _EXExtensionProcess(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t _AppExtensionProcess.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for _AppExtensionProcess.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EXHostConfiguration();
  outlined init with copy of AppExtensionProcess._InstanceIdentifier(a1, v8, type metadata accessor for _AppExtensionProcess.Configuration);
  v9 = _EXHostConfiguration.__allocating_init(_:)(v8);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXHostConfiguration, off_1E6E4D218);
  if ([v9 isKindOfClass_])
  {
    type metadata accessor for _EXExtensionProcess(0);
    objc_opt_self();
    v10 = swift_dynamicCastObjCClassUnconditional();
    v11 = specialized @nonobjc _EXExtensionProcess.__allocating_init(configuration:)(v10);

    result = outlined destroy of AppExtensionProcess.Configuration(a1, type metadata accessor for _AppExtensionProcess.Configuration);
    if (!v2)
    {
      *a2 = v11;
    }
  }

  else
  {
    [objc_opt_self() _EX_parameterError];
    swift_willThrow();

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _AppExtensionProcess.init(inner:)@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  *a1 = result;
  return result;
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _AppExtensionProcess.makeXPCConnection()()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v7[0] = 0;
  v2 = [v1 newXPCConnectionWithError_];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t key path setter for AppExtensionProcess.Configuration.onInterruption : AppExtensionProcess.Configuration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = *(a2 + 48);

  *(a2 + 40) = a6;
  *(a2 + 48) = v10;
  return result;
}

uint64_t _AppExtensionProcess.Configuration.instanceIdentifier.getter()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
LABEL_7:
    v4 = v1;
    return v2;
  }

  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  v3 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXExtensionInstanceIdentifier, off_1E6E4D208);
  if ([v3 isKindOfClass_])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();
    v1 = 0;
    goto LABEL_7;
  }

  v6 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void (*_AppExtensionProcess.Configuration.instanceIdentifier.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = *(v1 + 56);
LABEL_7:
    a1[2] = v3;
    *a1 = v4;
    v6 = v3;
    return _AppExtensionProcess.Configuration.instanceIdentifier.modify;
  }

  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  v5 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXExtensionInstanceIdentifier, off_1E6E4D208);
  if ([v5 isKindOfClass_])
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v3 = 0;
    goto LABEL_7;
  }

  v8 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void _AppExtensionProcess.Configuration.instanceIdentifier.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 56) = v5;
  }

  else
  {

    *(v2 + 56) = v4;
  }
}

uint64_t _AppExtensionProcess.Configuration.preferredLanguages.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t _AppExtensionProcess.Configuration.additionalEnvironmentVariables.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t _AppExtensionProcess.Configuration.sandboxProfileName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t _AppExtensionProcess.Configuration.sandboxProfileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void *_AppExtensionProcess.Configuration.launchPersona.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t _AppExtensionProcess.Configuration.assertionAttributes.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t _AppExtensionProcess.Configuration.networkApplicationID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for _AppExtensionProcess.Configuration(0) + 52);

  return outlined assign with take of NWApplicationID?(a1, v3);
}

BOOL specialized static AppExtensionProcess._InstanceIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of UUID?(a1, &v23 - v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of UUID?(a2, &v17[v18], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v17, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return 1;
}

id specialized @nonobjc _EXExtensionProcess.__allocating_init(configuration:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() extensionProcessWithConfiguration:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a3 = a2;
  a3[1] = v7;
}

uint64_t getEnumTagSinglePayload for _AppExtensionProcess(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for _AppExtensionProcess(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for _AppExtensionProcess.Configuration()
{
  type metadata accessor for ()();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [RBSDomainAttribute](319, &lazy cache variable for type metadata for _EXExtensionInstanceIdentifier?, &lazy cache variable for type metadata for _EXExtensionInstanceIdentifier, off_1E6E4D208, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String]?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String : String]();
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for [RBSDomainAttribute](319, &lazy cache variable for type metadata for _EXPersona?, &lazy cache variable for type metadata for _EXPersona, off_1E6E4D230, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for [RBSDomainAttribute](319, &lazy cache variable for type metadata for [RBSDomainAttribute], &lazy cache variable for type metadata for RBSDomainAttribute, 0x1E69C7560, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                _s7Network15NWApplicationIDVSgMaTm_0(319, &lazy cache variable for type metadata for NWApplicationID?, MEMORY[0x1E6977CA8]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t outlined assign with copy of AppExtensionProcess._InstanceIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t AuditToken.description.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  _StringGuts.grow(_:)(31);

  v16 = 0xD000000000000011;
  v17 = 0x80000001848C64A0;
  v15.val[0] = v7;
  v15.val[1] = v8;
  v15.val[2] = v6;
  v15.val[3] = v9;
  v15.val[4] = v5;
  v15.val[5] = v10;
  v15.val[6] = v4;
  v15.val[7] = v11;
  v15.val[0] = audit_token_to_pid(&v15);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v12);

  MEMORY[0x1865F37A0](0x6E6F697372657620, 0xEA0000000000203ALL);
  v15.val[0] = v7;
  v15.val[1] = v8;
  v15.val[2] = v6;
  v15.val[3] = v9;
  v15.val[4] = v5;
  v15.val[5] = v10;
  v15.val[6] = v4;
  v15.val[7] = v11;
  v15.val[0] = audit_token_to_pidversion(&v15);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v13);

  return v16;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AuditToken()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v1;
  v2 = audit_token_to_pid(&v6);
  Hasher._combine(_:)(v2);
  v3 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v3;
  v4 = audit_token_to_pidversion(&v6);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AuditToken()
{
  v1 = v0[1];
  *v5.val = *v0;
  *&v5.val[4] = v1;
  v2 = audit_token_to_pid(&v5);
  Hasher._combine(_:)(v2);
  v3 = v0[1];
  *v5.val = *v0;
  *&v5.val[4] = v3;
  v4 = audit_token_to_pidversion(&v5);
  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AuditToken()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v1;
  v2 = audit_token_to_pid(&v6);
  Hasher._combine(_:)(v2);
  v3 = v0[1];
  *v6.val = *v0;
  *&v6.val[4] = v3;
  v4 = audit_token_to_pidversion(&v6);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AuditToken(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  *v11.val = *a1;
  *&v11.val[4] = v4;
  v5 = audit_token_to_pid(&v11);
  v6 = a2[1];
  *v11.val = *a2;
  *&v11.val[4] = v6;
  if (v5 != audit_token_to_pid(&v11))
  {
    return 0;
  }

  v7 = a1[1];
  *v11.val = *a1;
  *&v11.val[4] = v7;
  v8 = audit_token_to_pidversion(&v11);
  v9 = a2[1];
  *v11.val = *a2;
  *&v11.val[4] = v9;
  return v8 == audit_token_to_pidversion(&v11);
}

NSObject_optional __swiftcall _Scene._makeScene(with:)(NSObject with)
{
  v1 = 0;
  result.value.isa = v1;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_yXlXps5NeverOTg5058_s19ExtensionFoundation8DefaultsV10plistTypesSayyXlXpGvgZyn5Xps11dE6VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v28;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v7 + 36);
    outlined init with copy of AnyHashable(*(v7 + 48) + 40 * v6, v26);
    outlined init with copy of AnyHashable(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
    swift_dynamicCast();
    result = outlined destroy of AnyHashable(v26);
    v12 = v27;
    v28 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v2 = v28;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v12;
    v9 = 1 << *(v7 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v11);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v23;
    }

    else
    {
      v17 = v11 << 6;
      v18 = v11 + 1;
      v19 = (a1 + 64 + 8 * v11);
      v10 = v23;
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v6, v24, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v6, v24, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static Defaults.allowUnscopedThirdPartyExtensionPoints.getter(uint64_t a1, uint64_t a2)
{
  v7 = &type metadata for Defaults.Feature;
  v8 = lazy protocol witness table accessor for type Defaults.Feature and conformance Defaults.Feature();
  v5[0] = a1;
  v5[1] = a2;
  v6 = 2;
  LOBYTE(a2) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return a2 & 1;
}

uint64_t specialized _setDownCast<A, B>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v14 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = specialized _NativeSet._unsafeUpdate(with:)(v11, v12))
  {
    v9 = i;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * (v10 | (v9 << 6)), &v13);
    swift_dynamicCast();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Defaults.alwaysEnabledExtensionBundleIdentifiers.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized _setDownCast<A, B>(_:)(v4);

  return v5;
}

uint64_t static Defaults.defaultSandboxProfileName.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 defaultSandboxProfileName];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

id static Defaults.queryAllowsDuplicates.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

uint64_t static Defaults.plistTypes.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 plistTypes];

  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_yXlXps5NeverOTg5058_s19ExtensionFoundation8DefaultsV10plistTypesSayyXlXpGvgZyn5Xps11dE6VXEfU_Tf1cn_n(v2);

  return v3;
}

uint64_t protocol witness for FeatureFlagsKey.feature.getter in conformance Defaults.Feature()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

Swift::Int ExtensionKitInternalError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F42C0](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for _noteUsingPrototypeAPI(uint64_t a1, _BYTE *a2)
{
  static os_log_type_t.info.getter();
  if (one-time initialization token for prototypeInterfaces != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
  *a2 = 1;
  return result;
}

void static Defaults.checkAllowPrototypeSPI()()
{
  if (one-time initialization token for _noteUsingPrototypeSPI != -1)
  {
    swift_once();
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 allowPrototypeSPI];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 sharedInstance];
    v4 = [v3 assertOnDisallowedPrototypeSPIUse];

    if ((v4 & 1) == 0)
    {
      v5 = static os_log_type_t.fault.getter();
      if (one-time initialization token for prototypeInterfaces != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.prototypeInterfaces;
      if (os_log_type_enabled(static OS_os_log.prototypeInterfaces, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v10 = v8;
        *v7 = 136315138;
        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000D0, 0x80000001848C64E0, &v10);
        _os_log_impl(&dword_1847D1000, v6, v5, "%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x1865F56C0](v8, -1, -1);
        MEMORY[0x1865F56C0](v7, -1, -1);
      }

      lazy protocol witness table accessor for type ExtensionKitInternalError and conformance ExtensionKitInternalError();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }
  }
}

unint64_t lazy protocol witness table accessor for type ExtensionKitInternalError and conformance ExtensionKitInternalError()
{
  result = lazy protocol witness table cache variable for type ExtensionKitInternalError and conformance ExtensionKitInternalError;
  if (!lazy protocol witness table cache variable for type ExtensionKitInternalError and conformance ExtensionKitInternalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionKitInternalError and conformance ExtensionKitInternalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionKitInternalError and conformance ExtensionKitInternalError;
  if (!lazy protocol witness table cache variable for type ExtensionKitInternalError and conformance ExtensionKitInternalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionKitInternalError and conformance ExtensionKitInternalError);
  }

  return result;
}

void static Defaults.checkAllowPrototypeAPI()()
{
  if (one-time initialization token for _noteUsingPrototypeAPI != -1)
  {
    swift_once();
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 allowPrototypeAPI];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 sharedInstance];
    v4 = [v3 assertOnDisallowedPrototypeAPIUse];

    if ((v4 & 1) == 0)
    {
      v5 = static os_log_type_t.fault.getter();
      if (one-time initialization token for prototypeInterfaces != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.prototypeInterfaces;
      if (os_log_type_enabled(static OS_os_log.prototypeInterfaces, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v10 = v8;
        *v7 = 136315138;
        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000D0, 0x80000001848C65C0, &v10);
        _os_log_impl(&dword_1847D1000, v6, v5, "%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x1865F56C0](v8, -1, -1);
        MEMORY[0x1865F56C0](v7, -1, -1);
      }

      lazy protocol witness table accessor for type ExtensionKitInternalError and conformance ExtensionKitInternalError();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
    }
  }
}

uint64_t getEnumTagSinglePayload for ExtensionKitInternalError(unsigned __int8 *a1, unsigned int a2)
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

Swift::Int specialized _NativeSet._unsafeUpdate(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    while (1)
    {
      v15 = (*(v5 + 48) + 16 * v10);
      if (*v15 == a1 && v15[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        v21 = v15[1];
        break;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_9;
      }
    }

    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 8 * v11) = v13 | v12;
      v17 = (*(v5 + 48) + 16 * v10);
      *v17 = a1;
      v17[1] = a2;
      v18 = *(v5 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v5 + 16) = v20;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for LSExtensionPointRecord, 0x1E6963668);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v1 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  return v1;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 32;
    do
    {
      outlined init with copy of Any(v8, &v10);
      type metadata accessor for NSDictionary(0, a2, a3);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v11 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 32;
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1865F3F40](i, a1);
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        outlined init with take of Any(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

size_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UUID();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v32 = v12;
  v34 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    v17 = a1;
    v14 = v34;
    v30 = (v33 + 56);
    v31 = a1 & 0xC000000000000001;
    v28 = a1;
    v29 = (v33 + 48);
    v26 = v8;
    v27 = (v33 + 32);
    while (1)
    {
      v18 = v31 ? MEMORY[0x1865F3F40](v16, v17) : *(v17 + 8 * v16 + 32);
      v19 = v18;
      (*v30)(v8, 1, 1, v9);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      dispatch thunk of static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:)();
      outlined init with copy of UUID?(v8, v6);
      result = (*v29)(v6, 1, v9);
      if (result == 1)
      {
        break;
      }

      outlined destroy of UUID?(v8);
      v20 = *v27;
      v21 = v32;
      v22 = v6;
      (*v27)(v32, v6, v9);
      v34 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v21 = v32;
        v14 = v34;
      }

      ++v16;
      *(v14 + 16) = v24 + 1;
      v20((v14 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24), v21, v9);
      v17 = v28;
      v6 = v22;
      v8 = v26;
      if (v13 == v16)
      {
        return v14;
      }
    }
  }

  __break(1u);
  return result;
}

char *_EXNSExtensionContextShim.inputItems.getter()
{
  v1 = *(v0 + OBJC_IVAR____EXNSExtensionContextShim__inputItems);

  v3 = specialized _arrayForceCast<A, B>(_:)(v2);

  return v3;
}

void __swiftcall _EXNSExtensionContextShim.init()(_EXNSExtensionContextShim *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _EXNSExtensionContextShim.init()()
{
  *&v0[OBJC_IVAR____EXNSExtensionContextShim__inputItems] = MEMORY[0x1E69E7CC0];
  v1 = &v0[OBJC_IVAR____EXNSExtensionContextShim_response];
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectUnownedInit();
  *&v0[OBJC_IVAR____EXNSExtensionContextShim_principalObject] = 0;
  v3.receiver = v0;
  v3.super_class = _EXNSExtensionContextShim;
  return objc_msgSendSuper2(&v3, sel_init);
}

void __swiftcall _EXNSExtensionContextShim.init(inputItems:)(_EXNSExtensionContextShim_optional *__return_ptr retstr, Swift::OpaquePointer_optional inputItems)
{
  if (inputItems.value._rawValue)
  {
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInputItems_];
}

id _EXNSExtensionContextShim.init(inputItems:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____EXNSExtensionContextShim__inputItems] = MEMORY[0x1E69E7CC0];
  v3 = &v1[OBJC_IVAR____EXNSExtensionContextShim_response];
  *v3 = 0;
  *(v3 + 1) = 0;
  swift_unknownObjectUnownedInit();
  *&v1[OBJC_IVAR____EXNSExtensionContextShim_principalObject] = 0;
  if (a1)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = v1;
  v7.super_class = _EXNSExtensionContextShim;
  v5 = objc_msgSendSuper2(&v7, sel_initWithInputItems_, v4.super.isa);

  if (v5)
  {
  }

  return v5;
}

id _EXNSExtensionContextShim.init(inputItems:contextUUID:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  isa = 0;
  if ((*(v5 + 48))(a2, 1, v4) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a2, v4);
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInputItems:v3.super.isa contextUUID:isa];

  return v7;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  *&v3[OBJC_IVAR____EXNSExtensionContextShim__inputItems] = MEMORY[0x1E69E7CC0];
  v10 = &v3[OBJC_IVAR____EXNSExtensionContextShim_response];
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_unknownObjectUnownedInit();
  *&v3[OBJC_IVAR____EXNSExtensionContextShim_principalObject] = 0;
  if (a1)
  {
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  outlined init with copy of UUID?(a2, v9);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v9, v12);
  }

  v17.receiver = v3;
  v17.super_class = _EXNSExtensionContextShim;
  v15 = objc_msgSendSuper2(&v17, sel_initWithInputItems_contextUUID_, v11.super.isa, isa);

  outlined destroy of UUID?(a2);
  return v15;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id _EXNSExtensionContextShim.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a3, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a3, v6);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInputItems:v5.super.isa listenerEndpoint:a2 contextUUID:isa];

  return v9;
}

{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  *&v4[OBJC_IVAR____EXNSExtensionContextShim__inputItems] = MEMORY[0x1E69E7CC0];
  v12 = &v4[OBJC_IVAR____EXNSExtensionContextShim_response];
  *v12 = 0;
  *(v12 + 1) = 0;
  swift_unknownObjectUnownedInit();
  *&v4[OBJC_IVAR____EXNSExtensionContextShim_principalObject] = 0;
  if (a1)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  outlined init with copy of UUID?(a3, v11);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  isa = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v11, v14);
  }

  v19.receiver = v4;
  v19.super_class = _EXNSExtensionContextShim;
  v17 = objc_msgSendSuper2(&v19, sel_initWithInputItems_listenerEndpoint_contextUUID_, v13.super.isa, a2, isa);

  outlined destroy of UUID?(a3);
  return v17;
}

Swift::Bool __swiftcall _EXNSExtensionContextShim.shouldAccept(_:)(NSXPCConnection a1)
{
  v3 = specialized static NSXPCInterface.defaultImplementationXPCInterface.getter();
  [(objc_class *)a1.super.isa setExportedInterface:v3];

  [(objc_class *)a1.super.isa setExportedObject:v1];
  swift_unknownObjectUnownedAssign();
  [(objc_class *)a1.super.isa resume];
  return 1;
}

uint64_t _EXNSExtensionContextShim.completeRequest(returningItems:completionHandler:)(uint64_t result, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + OBJC_IVAR____EXNSExtensionContextShim_response);
  if (v4)
  {
    v5 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = *(v2 + OBJC_IVAR____EXNSExtensionContextShim_response + 8);

    specialized _arrayForceCast<A, B>(_:)(v5, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
    v4();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  if (a2)
  {
    return a2(1);
  }

  return result;
}

void _EXNSExtensionContextShim.cancelRequest(withError:)()
{
  v1 = *(v0 + OBJC_IVAR____EXNSExtensionContextShim_response);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____EXNSExtensionContextShim_response + 8);

    v3 = _convertErrorToNSError(_:)();
    v1(0, v3);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }
}

uint64_t _EXNSExtensionContextShim.performRequest(with:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *&v3[OBJC_IVAR____EXNSExtensionContextShim__inputItems];
  *&v3[OBJC_IVAR____EXNSExtensionContextShim__inputItems] = a1;

  v7 = &v3[OBJC_IVAR____EXNSExtensionContextShim_response];
  v8 = *&v3[OBJC_IVAR____EXNSExtensionContextShim_response];
  v9 = *&v3[OBJC_IVAR____EXNSExtensionContextShim_response + 8];
  *v7 = a2;
  *(v7 + 1) = a3;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);

  v10 = [v3 principalObject];
  if (v10)
  {
    [v10 beginRequestWithExtensionContext_];

    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  isa = v4.super.isa;
  (*(a3 + 16))(a3);
}

uint64_t _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyp_Tt1g5(uint64_t a1, uint64_t a2, unint64_t a3)
{
  outlined init with copy of UUID?(a1, v14, &_sypSgMd, &_sypSgMR);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      if (*(v12 + 16))
      {
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x80000001848C4940);
        if (v7)
        {
          outlined init with copy of Any(*(v12 + 56) + 32 * v6, v14);
          outlined destroy of NSObject?(a1, &_sypSgMd, &_sypSgMR);

          if (swift_dynamicCast())
          {
            v8 = HIBYTE(v13) & 0xF;
            if ((v13 & 0x2000000000000000) == 0)
            {
              v8 = v12 & 0xFFFFFFFFFFFFLL;
            }

            if (v8)
            {
              outlined consume of _ScopeRestriction(a2, a3);
              return v12;
            }

            else
            {
            }
          }

          return a2;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    outlined destroy of NSObject?(v14, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of UUID?(a1, v14, &_sypSgMd, &_sypSgMR);
  if (!v15)
  {
    outlined destroy of NSObject?(a1, &_sypSgMd, &_sypSgMR);
    v9 = v14;
LABEL_20:
    outlined destroy of NSObject?(v9, &_sypSgMd, &_sypSgMR);
    return a2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v9 = a1;
    goto LABEL_20;
  }

  if ((v12 != 0x746163696C707061 || v13 != 0xEB000000006E6F69) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v12 == 1701736302 && v13 == 0xE400000000000000)
    {

      outlined destroy of NSObject?(a1, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of NSObject?(a1, &_sypSgMd, &_sypSgMR);
      if ((v11 & 1) == 0)
      {
        return a2;
      }
    }

    outlined consume of _ScopeRestriction(a2, a3);
    return 0;
  }

  outlined destroy of NSObject?(a1, &_sypSgMd, &_sypSgMR);

  outlined consume of _ScopeRestriction(a2, a3);
  return 0;
}

uint64_t _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyXl_Tt1g5(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = a1;
  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      if (!*(v10 + 16))
      {
        goto LABEL_15;
      }

      v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x80000001848C4940);
      if ((v6 & 1) == 0)
      {
        goto LABEL_15;
      }

      outlined init with copy of Any(*(v10 + 56) + 32 * v5, &v12);

      if (swift_dynamicCast())
      {
        v7 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v7 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          outlined consume of _ScopeRestriction(a2, a3);
          return v10;
        }

LABEL_15:
      }
    }

    else if (swift_dynamicCast())
    {
      if ((v12 != 0x746163696C707061 || v13 != 0xEB000000006E6F69) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v12 == 1701736302 && v13 == 0xE400000000000000)
        {
        }

        else
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v9 & 1) == 0)
          {
            return a2;
          }
        }

        outlined consume of _ScopeRestriction(a2, a3);
        return 0;
      }

      outlined consume of _ScopeRestriction(a2, a3);
      return 0;
    }
  }

  return a2;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), Hasher.init(_seed:)(), UUID.hash(into:)(), v9 = Hasher._finalize()(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v12 = ~v10;
    v13 = *(v4 + 72);
    do
    {
      outlined init with copy of AppExtensionIdentity.ValueIdentity(*(a2 + 48) + v13 * v11, v7, type metadata accessor for LocalLSDatabaseObserver.Observer);
      v14 = static UUID.== infix(_:_:)();
      outlined destroy of LocalLSDatabaseObserver.Observer(v7);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
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

uint64_t specialized _InnerAppExtensionIdentity.groupIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v3 = *(v0 + *(v2 + 72));
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C6AE0);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v28 = *(*(v3 + 56) + 8 * v5);
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = *(v1 + *(v4 + 64));
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x6369767265535845, 0xED00006570795465), (v9 & 1) != 0) && (v29 = *(*(v7 + 56) + 8 * v8), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v26;
    v10 = v27;
    if (v26 == 0x656C646E7542 && v27 == 0xE600000000000000)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0xE000000000000000;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v12._countAndFlagsBits = 0x3A70756F7247, v12._object = 0xE600000000000000, !String.hasPrefix(_:)(v12)))
  {
LABEL_16:

LABEL_17:

    return 0;
  }

  v13 = String.count.getter();
  v14 = specialized Collection.dropFirst(_:)(v13, v11, v10);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x1865F3760](v14, v16, v18, v20);
  v23 = v22;

  if (v21 == v26 && v23 == v27)
  {

    return v26;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

void AppExtensionIdentity.ValueIdentity.init(coder:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v95 - v9;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v10)
  {
    __break(1u);
    goto LABEL_61;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *a2 = v12;
  *(a2 + 8) = v14;
  v15 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C3E70);
  v16 = [a1 decodeIntegerForKey_];

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (HIDWORD(v16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(a2 + 16) = v16;
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v17)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v15 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v22 = (a2 + v15[7]);
  *v22 = v19;
  v22[1] = v21;
  v23 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = (a2 + v15[8]);
    *v28 = v25;
    v28[1] = v27;
    v29 = [objc_opt_self() sharedDatabaseContext];
    LODWORD(v25) = [v29 canAccess];

    if (v25)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
      v30 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v30)
      {
        v31 = v30;
        v98 = xmmword_1848BA270;
        static Data._conditionallyBridgeFromObjectiveC(_:result:)();
        v32 = *(&v98 + 1);
        if (*(&v98 + 1) >> 60 == 15)
        {
        }

        else
        {
          v33 = v98;
          isa = Data._bridgeToObjectiveC()().super.isa;

          outlined consume of Data?(v33, v32);
          v35 = [objc_allocWithZone(MEMORY[0x1E69635F8]) initWithPersistentIdentifier_];

          if (v35)
          {
            v36 = v35;
            goto LABEL_16;
          }
        }
      }
    }

    if (one-time initialization token for general != -1)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.general);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1847D1000, v38, v39, "Failed to locate container app bundle record. The process may not be entitled to access the LaunchServices database or the app may have moved.", v40, 2u);
        MEMORY[0x1865F56C0](v40, -1, -1);
      }

      v35 = 0;
LABEL_16:
      *(a2 + v15[12]) = v35;
      *(a2 + v15[13]) = 0;
      v41 = MEMORY[0x1865F36D0](0x6D726F6674616C70, 0xE800000000000000);
      v42 = [a1 decodeInt32ForKey_];

      if ((v42 & 0x80000000) != 0)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      *(a2 + v15[9]) = v42;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
      v43 = NSCoder.decodeObject<A>(of:forKey:)();
      if (!v43)
      {
        goto LABEL_63;
      }

      v44 = v43;
      v96 = v35;
      v45 = a2 + v15[6];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = NSCoder.decodeObject<A>(of:forKey:)();
      if (!v46)
      {
        goto LABEL_64;
      }

      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = (a2 + v15[10]);
      *v51 = v48;
      v51[1] = v50;
      v52 = NSCoder.decodeObject<A>(of:forKey:)();
      if (!v52)
      {
        goto LABEL_65;
      }

      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = (a2 + v15[11]);
      *v57 = v54;
      v57[1] = v56;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSURL, 0x1E695DFF8);
      v58 = NSCoder.decodeObject<A>(of:forKey:)();
      if (!v58)
      {
        goto LABEL_66;
      }

      v59 = v58;
      v60 = a2 + v15[14];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v61)
      {
        v62 = v61;
        v63 = type metadata accessor for URL();
        v64 = *(v63 - 8);
        v65 = *(v64 + 56);
        v65(v8, 1, 1, v63);
        _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

        if ((*(v64 + 48))(v8, 1, v63) == 1)
        {
          v66 = v97;
          v67 = v97;
          v68 = 1;
        }

        else
        {
          v66 = v97;
          (*(v64 + 32))(v97, v8, v63);
          v67 = v66;
          v68 = 0;
        }

        v65(v67, v68, 1, v63);
      }

      else
      {
        v69 = type metadata accessor for URL();
        v66 = v97;
        (*(*(v69 - 8) + 56))(v97, 1, 1, v69);
      }

      outlined init with take of URL?(v66, a2 + v15[15]);
      v70 = objc_opt_self();
      v71 = [v70 sharedInstance];
      v72 = [v71 plistTypes];

      v73 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_yXlXps5NeverOTg5058_s19ExtensionFoundation8DefaultsV10plistTypesSayyXlXpGvgZyn5Xps11dE6VXEfU_Tf1cn_n(v73);

      NSCoder.decodeObject(of:forKey:)();

      if (v99)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        if (swift_dynamicCast())
        {
          v74 = v100;
          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of NSObject?(&v98, &_sypSgMd, &_sypSgMR);
      }

      v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_32:
      *(a2 + v15[16]) = v74;
      v75 = [v70 sharedInstance];
      v76 = [v75 plistTypes];

      v77 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_yXlXps5NeverOTg5058_s19ExtensionFoundation8DefaultsV10plistTypesSayyXlXpGvgZyn5Xps11dE6VXEfU_Tf1cn_n(v77);

      NSCoder.decodeObject(of:forKey:)();

      if (v99)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        if (swift_dynamicCast())
        {
          v78 = v100;
          goto LABEL_37;
        }
      }

      else
      {
        outlined destroy of NSObject?(&v98, &_sypSgMd, &_sypSgMR);
      }

      v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_37:
      *(a2 + v15[17]) = v78;
      v79 = [v70 sharedInstance];
      v80 = [v79 plistTypes];

      v81 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_yXlXps5NeverOTg5058_s19ExtensionFoundation8DefaultsV10plistTypesSayyXlXpGvgZyn5Xps11dE6VXEfU_Tf1cn_n(v81);

      NSCoder.decodeObject(of:forKey:)();

      if (v99)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        if (swift_dynamicCast())
        {
          v82 = v100;
          goto LABEL_42;
        }
      }

      else
      {
        outlined destroy of NSObject?(&v98, &_sypSgMd, &_sypSgMR);
      }

      v82 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_42:
      *(a2 + v15[18]) = v82;
      v83 = [v70 sharedInstance];
      v84 = [v83 plistTypes];

      v85 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_yXlXps5NeverOTg5058_s19ExtensionFoundation8DefaultsV10plistTypesSayyXlXpGvgZyn5Xps11dE6VXEfU_Tf1cn_n(v85);

      NSCoder.decodeObject(of:forKey:)();

      if (v99)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        v8 = &selRef_setService_;
        if (swift_dynamicCast())
        {
          v86 = v100;
          goto LABEL_47;
        }
      }

      else
      {
        outlined destroy of NSObject?(&v98, &_sypSgMd, &_sypSgMR);
        v8 = &selRef_setService_;
      }

      v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_47:
      *(a2 + v15[22]) = v86;
      v87 = MEMORY[0x1865F36D0](0x63656C4572657375, 0xEC0000006E6F6974);
      v88 = [a1 v8[386]];

      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      if (v88 > 0xFF)
      {
        goto LABEL_56;
      }

      *(a2 + v15[20]) = v88;
      v89 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C6110);
      v90 = [a1 v8[386]];

      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v90 <= 0xFF)
      {
        *(a2 + v15[21]) = v90;
        v91 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C6D90);
        v92 = [a1 decodeBoolForKey_];

        *(a2 + v15[23]) = v92;
        v93 = MEMORY[0x1865F36D0](0xD00000000000001BLL, 0x80000001848C5F40);
        v94 = [a1 decodeBoolForKey_];

        *(a2 + v15[19]) = v94;
        return;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
    }
  }

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
}

void specialized _InnerAppExtensionIdentity.encode(to:)(void *a1)
{
  v2 = v1;
  if ((specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter() & 1) != 0 && (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0) && (v5 = [v4 connection]) != 0)
  {
    v6 = v5;
    [v5 auditToken];

    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
    v58 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v61, v62, v63, v64);
    objc_opt_self();
    v59 = swift_dynamicCastObjCClass();
    v7 = v59;
    if (!v59)
    {
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1865F36D0](*v2, *(v2 + 8));
  v9 = MEMORY[0x1865F36D0](0xD000000000000018, 0x80000001848C3400);
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v2 + 16);
  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  v12 = MEMORY[0x1865F36D0](0xD000000000000012, 0x80000001848C3E70);
  [a1 encodeObject:isa forKey:v12];

  v13 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v14 = MEMORY[0x1865F36D0](*(v2 + v13[7]), *(v2 + v13[7] + 8));
  v15 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C4450);
  [a1 encodeObject:v14 forKey:v15];

  v16 = MEMORY[0x1865F36D0](*(v2 + v13[8]), *(v2 + v13[8] + 8));
  v17 = MEMORY[0x1865F36D0](0x6556656C646E7562, 0xED00006E6F697372);
  [a1 encodeObject:v16 forKey:v17];

  v18 = *(v2 + v13[12]);
  if (v18)
  {
    v19 = [v18 persistentIdentifier];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v23 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v20, v22);
    v24 = MEMORY[0x1865F36D0](0xD000000000000020, 0x80000001848C6DB0);
    [a1 encodeObject:v23 forKey:v24];
  }

  v25 = *(v2 + v13[9]);
  if ((v25 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x1865F36D0](0x6D726F6674616C70, 0xE800000000000000);
    [a1 encodeInt32:v25 forKey:v26];

    v27 = v2 + v13[6];
    v28 = UUID._bridgeToObjectiveC()().super.isa;
    v29 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C5DC0);
    [a1 encodeObject:v28 forKey:v29];

    v30 = MEMORY[0x1865F36D0](*(v2 + v13[10]), *(v2 + v13[10] + 8));
    v31 = MEMORY[0x1865F36D0](0x657A696C61636F6CLL, 0xED0000656D614E64);
    [a1 encodeObject:v30 forKey:v31];

    v32 = MEMORY[0x1865F36D0](*(v2 + v13[11]), *(v2 + v13[11] + 8));
    v33 = MEMORY[0x1865F36D0](0x65706F6C65766564, 0xED0000656D614E72);
    [a1 encodeObject:v32 forKey:v33];

    URL._bridgeToObjectiveC()(v13[14]);
    v35 = v34;
    v36 = MEMORY[0x1865F36D0](7107189, 0xE300000000000000);
    [a1 encodeObject:v35 forKey:v36];

    v37 = *(v2 + v13[16]);
    v38 = Dictionary._bridgeToObjectiveC()().super.isa;
    v39 = MEMORY[0x1865F36D0](0x69746369446B6473, 0xED00007972616E6FLL);
    [a1 encodeObject:v38 forKey:v39];

    v40 = *(v2 + v13[17]);
    v41 = Dictionary._bridgeToObjectiveC()().super.isa;
    v42 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C60D0);
    [a1 encodeObject:v41 forKey:v42];

    v43 = *(v2 + v13[18]);
    v44 = Dictionary._bridgeToObjectiveC()().super.isa;
    v45 = MEMORY[0x1865F36D0](0x7475626972747461, 0xEA00000000007365);
    [a1 encodeObject:v44 forKey:v45];

    v46 = *(v2 + v13[22]);
    v47 = Dictionary._bridgeToObjectiveC()().super.isa;
    v48 = MEMORY[0x1865F36D0](0x6D656C7469746E65, 0xEC00000073746E65);
    [a1 encodeObject:v47 forKey:v48];

    v49 = *(v2 + v13[20]);
    v50 = UInt8._bridgeToObjectiveC()().super.super.isa;
    v51 = MEMORY[0x1865F36D0](0x63656C4572657375, 0xEC0000006E6F6974);
    [a1 encodeObject:v50 forKey:v51];

    v52 = *(v2 + v13[21]);
    v53 = UInt8._bridgeToObjectiveC()().super.super.isa;
    v54 = MEMORY[0x1865F36D0](0xD000000000000013, 0x80000001848C6110);
    [a1 encodeObject:v53 forKey:v54];

    v55 = *(v2 + v13[23]);
    v56 = MEMORY[0x1865F36D0](0xD000000000000011, 0x80000001848C6D90);
    [a1 encodeBool:v55 forKey:v56];

    v57 = *(v2 + v13[19]);
    v60 = MEMORY[0x1865F36D0](0xD00000000000001BLL, 0x80000001848C5F40);
    [a1 encodeBool:v57 forKey:v60];
  }
}

uint64_t specialized _InnerAppExtensionIdentity.requiresFBSceneHosting.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001848C6A60);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001848C6A60), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter()
{
  v1 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  if (*(v0 + *(v1 + 76)) != 1)
  {
    return 1;
  }

  v2 = *(v0 + *(v1 + 64));
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C6A40);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v2 + 56) + 8 * v3);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v6;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (v3)
  {
    v4 = [a1 extensionPointRecord];
    v5 = [v4 extensionPointType];

    if (v5 != 1)
    {
      return 1;
    }
  }

  v6 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C6A40), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t specialized _InnerAppExtensionIdentity.nsExtensionAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 68));
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001848C2730), (v3 & 1) != 0) && (v6 = *(*(v1 + 56) + 8 * v2), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR), (swift_dynamicCast() & 1) != 0))
  {
    return v5;
  }

  else
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }
}

unint64_t specialized _InnerAppExtensionIdentity.nsExtensionAttributes.getter(void *a1)
{
  v1 = AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(a1);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001848C2730), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
}

unint64_t specialized _InnerAppExtensionIdentity.requiredHostEntitlements.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  if (*(v0 + *(v2 + 76)) == 1)
  {
    v3 = *(v0 + *(v2 + 64));
    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C2850);
      if (v5)
      {
        v19 = *(*(v3 + 56) + 8 * v4);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v8 = *(v3 + 16);
          if (v8)
          {
LABEL_11:
            v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001848C2C00);
            if (v10)
            {
              v20 = *(*(v3 + 56) + 8 * v9);
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
              v11 = swift_dynamicCast();
              v8 = v18;
              if (!v11)
              {
                v8 = 0;
              }
            }

            else
            {
              v8 = 0;
            }
          }

LABEL_16:
          v22 = v8;

          result = v22;
          if (!v22)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXltGMd, &_ss23_ContiguousArrayStorageCySS_yXltGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1848BA260;
            *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 40) = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_1848BA260;
            v15 = v1[1];
            *(v14 + 32) = *v1;
            *(v14 + 40) = v15;

            isa = Array._bridgeToObjectiveC()().super.isa;

            *(inited + 48) = isa;
            v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(inited);
            swift_setDeallocating();
            outlined destroy of NSObject?(inited + 32, &_sSS_yXltMd, &_sSS_yXltMR);

            result = v17;
            if (!v17)
            {
              __break(1u);
            }
          }

          return result;
        }

        result = v21;
        if (v21)
        {
          return result;
        }
      }
    }

    v8 = *(v3 + 16);
    if (v8)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v7 = MEMORY[0x1E69E7CC0];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(v7);
}

uint64_t specialized _InnerAppExtensionIdentity.builtForNSExtension.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 68));
  if (!*(v1 + 16))
  {
    goto LABEL_6;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6A00);
  if ((v2 & 1) == 0)
  {
    if (*(v1 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6D00);
      return v3 & 1;
    }

LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t specialized _InnerAppExtensionIdentity.builtForNSExtension.getter(void *a1)
{
  v1 = AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(a1);
  if (!*(v1 + 16))
  {
    goto LABEL_6;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6A00);
  if ((v2 & 1) == 0)
  {
    if (*(v1 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6D00);
      v3 = v4;
      goto LABEL_7;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = 1;
LABEL_7:

  return v3 & 1;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresHostToBeContainerApp.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v3 = *(v0 + v2[16]);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27D0), (v5 & 1) != 0) && (v26 = *(*(v3 + 56) + 8 * v4), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v25;
  }

  else
  {
    v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C2870), (v8 & 1) == 0))
  {

LABEL_12:
    if (*(v1 + v2[19]) != 1)
    {
      if (*(v3 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27B0), (v11 & 1) != 0))
      {
        v12 = *(*(v3 + 56) + 8 * v10);
        v13 = swift_unknownObjectRetain();
      }

      else
      {
        v13 = 0;
      }

      v14 = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyXl_Tt1g5(v13, 0, 0);
      v16 = v15;
      outlined consume of _ScopeRestriction(v14, v15);
      if (!v16)
      {
        return 1;
      }
    }

    v17 = *(v1 + v2[18]);
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27D0), (v19 & 1) != 0) && (v27 = *(*(v17 + 56) + 8 * v18), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR), (swift_dynamicCast() & 1) != 0))
    {
      v20 = v25;
      if (!*(v25 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      if (!*(v20 + 16))
      {
        goto LABEL_27;
      }
    }

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C2870);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_unknownObjectRetain();

      if (swift_dynamicCast())
      {
        return v25;
      }

      return 0;
    }

LABEL_27:

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0 || (v25 & 1) == 0)
  {
    goto LABEL_12;
  }

  return 1;
}

uint64_t specialized _InnerAppExtensionIdentity.requiredSharedAppGroupIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27B0), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    v5 = swift_unknownObjectRetain();
  }

  else
  {
    v5 = 0;
  }

  result = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyXl_Tt1g5(v5, 0, 0);
  if (v7 <= 1)
  {
    outlined consume of _ScopeRestriction(result, v7);
    return 0;
  }

  return result;
}

{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27B0), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();
  }

  else
  {
    v3 = 0;
  }

  result = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyXl_Tt1g5(v3, 0, 0);
  if (v5 <= 1)
  {
    outlined consume of _ScopeRestriction(result, v5);
    return 0;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.spotlightIndexable.getter()
{
  if (*(protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C6CE0);
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t specialized _InnerAppExtensionIdentity.spotlightImporterIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C6CE0), (v3 & 1) != 0) && (v6 = *(*(v1 + 56) + 8 * v2), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C6CE0), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t specialized _InnerAppExtensionIdentity.sandboxProfileName.getter()
{
  v1 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  if (*(v0 + *(v1 + 76)) != 1)
  {
    goto LABEL_21;
  }

  v2 = *(v0 + *(v1 + 64));
  if (!*(v2 + 16))
  {
    goto LABEL_21;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001848C6C60);
  if (v4)
  {
    v21 = *(*(v2 + 56) + 8 * v3);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      goto LABEL_8;
    }
  }

  if (!*(v2 + 16))
  {
LABEL_21:
    v7 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C6C80);
  if ((v6 & 1) == 0 || (v21 = *(*(v2 + 56) + 8 * v5), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    if (*(v2 + 16))
    {
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(0x736E65747845534ELL, 0xEB000000006E6F69);
      if (v10)
      {
        v19 = *(*(v2 + 56) + 8 * v9);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        if (swift_dynamicCast())
        {
          if (*(v21 + 16))
          {
            v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6CA0);
            if (v12)
            {
              v13 = *(*(v21 + 56) + 8 * v11);
              swift_unknownObjectRetain();

              v14 = swift_dynamicCast();
              if (v14)
              {
                v7 = v19;
              }

              else
              {
                v7 = 0;
              }

              if (v14)
              {
                v8 = v20;
              }

              else
              {
                v8 = 0;
              }

              goto LABEL_22;
            }
          }
        }
      }
    }

    goto LABEL_21;
  }

LABEL_8:
  v7 = v19;
  v8 = v20;
LABEL_22:
  v15 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  if (AppExtensionIdentity.ValueIdentity.entitlement(of:named:)(v15, 0xD000000000000033, 0x80000001848C6C20) && (swift_dynamicCast() & 1) != 0)
  {
    v7 = v19;
  }

  else if (!v8)
  {
    if (specialized _InnerAppExtensionIdentity.requiresEnhancedSecurity.getter())
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      v16 = [objc_opt_self() sharedInstance];
      v17 = [v16 defaultSandboxProfileName];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return v7;
}

uint64_t specialized _InnerAppExtensionIdentity.alternateSandboxProfileNames.getter()
{
  v1 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  if (*(v0 + *(v1 + 76)) == 1 && (v2 = *(v0 + *(v1 + 64)), *(v2 + 16)) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C6C00), (v4 & 1) != 0) && (v7 = *(*(v2 + 56) + 8 * v3), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t specialized _InnerAppExtensionIdentity.alternateSandboxProfileNames.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (!v3 || (v4 = [a1 extensionPointRecord], v5 = objc_msgSend(v4, sel_extensionPointType), v4, v5 == 1))
  {
    v6 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C6C00), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        return v11;
      }
    }

    else
    {
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized _InnerAppExtensionIdentity.privateSandboxProfileEntitlement.getter()
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 88));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x80000001848C6BD0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([swift_unknownObjectRetain() isKindOfClass_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _InnerAppExtensionIdentity.privateSandboxProfileEntitlement.getter(void *a1)
{
  v2 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  result = AppExtensionIdentity.RecordIdentity.entitlement(of:named:)(v2, 0xD00000000000002BLL, 0x80000001848C6BD0, a1);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.hasSandboxEntitlement.getter()
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 88));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C6BB0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([swift_unknownObjectRetain() isKindOfClass_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.hasSandboxEntitlement.getter(void *a1)
{
  v2 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  result = AppExtensionIdentity.RecordIdentity.entitlement(of:named:)(v2, 0xD00000000000001ELL, 0x80000001848C6BB0, a1);
  if (result)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.performsUserInteractiveWork.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v3 = *(v0 + *(v2 + 64));
  if (*(v3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6940);
    if (v5)
    {
      v10 = *(*(v3 + 56) + 8 * v4);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        if (v9)
        {
          return 1;
        }
      }
    }
  }

  if ((*(v1 + *(v2 + 76)) & 1) == 0)
  {
    return 0;
  }

  if (!*(v3 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C6B70);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v3 + 56) + 8 * v7);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v9;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.launchThrottlePolicy.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v3 = *(v0 + v2[16]);
  if (*(v3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6AC0);
    if (v5)
    {
      v16 = *(*(v3 + 56) + 8 * v4);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        if (v14 == 0x64656C6261736964 && v15 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 2;
        }

        if (v14 == 0x656C74746F726874 && v15 == 0xE900000000000064)
        {
          goto LABEL_19;
        }

        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v6)
        {
          return 1;
        }
      }
    }
  }

  if (specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter())
  {
    return 2;
  }

  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 inProcessLaunch];

  if (v9)
  {
    return 1;
  }

  if ((specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter() & 1) == 0)
  {
    specialized _InnerAppExtensionIdentity.groupIdentifier.getter();
    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_19:

    return 1;
  }

  v10 = *(v1 + v2[19]);
  specialized _InnerAppExtensionIdentity.groupIdentifier.getter();
  if (v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    return 1;
  }

LABEL_21:
  result = specialized _InnerAppExtensionIdentity.presentsUserInterface.getter();
  if ((result & 1) == 0)
  {
    specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter();
    return 0;
  }

  v13 = *(v1 + v2[9]);
  if ((v13 & 0x80000000) == 0)
  {
    if (v13 == 1)
    {
      return 0;
    }

    if ((specialized _InnerAppExtensionIdentity.requiresFBSceneHosting.getter() & 1) == 0)
    {
      specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter();
      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

BOOL specialized _InnerAppExtensionIdentity.launchesViaExtensionKitService.getter(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 inProcessLaunch];

  if (v3)
  {
    return 0;
  }

  v8 = 1;
  if (specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter())
  {
    v4 = [a1 extensionPointRecord];
    v5 = [v4 extensionPointType];

    if (!v5 || (v6 = [a1 extensionPointRecord], v7 = objc_msgSend(v6, sel_extensionPointType), v6, v7 == 1))
    {
      v8 = 0;
    }
  }

  specialized _InnerAppExtensionIdentity.groupIdentifier.getter(a1);
  if (v9)
  {

    return 0;
  }

  return v8;
}

uint64_t specialized _InnerAppExtensionIdentity.type.getter@<X0>(char *a1@<X8>)
{
  if ((specialized _InnerAppExtensionIdentity.presentsUserInterface.getter() & 1) == 0)
  {
    result = specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter();
    if (result)
    {
      v5 = 8;
    }

    else
    {
      v5 = 1;
    }

    goto LABEL_8;
  }

  result = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v4 = *(v1 + *(result + 36));
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      result = specialized _InnerAppExtensionIdentity.requiresFBSceneHosting.getter();
      if (result)
      {
        v5 = 7;
      }

      else
      {
        result = specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter();
        if (result)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }
      }
    }

LABEL_8:
    *a1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.showsInExtensionsManager.getter()
{
  v1 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  if (*(v0 + *(v1 + 92)) == 1 && (v2 = *(v0 + *(v1 + 68)), *(v2 + 16)) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000022, 0x80000001848C6B20), (v4 & 1) != 0) && (v7 = *(*(v2 + 56) + 8 * v3), swift_unknownObjectRetain(), swift_dynamicCast()))
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t specialized _InnerAppExtensionIdentity.showsInExtensionsManager.getter(void *a1)
{
  v2 = [a1 containingBundleRecord];
  if (!v2 || (v3 = v2, v4 = [v2 developerType], v3, v4 == 1))
  {
    v5 = AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(a1);
    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000022, 0x80000001848C6B20), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_unknownObjectRetain();

      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t specialized _InnerAppExtensionIdentity.canDisable.getter(void *a1)
{
  v2 = [a1 containingBundleRecord];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 developerType];

    if (v4 != 1)
    {
      return 1;
    }
  }

  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 alwaysEnabledExtensionBundleIdentifiers];

  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = specialized _setDownCast<A, B>(_:)(v7);

  result = [a1 bundleIdentifier];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    LOBYTE(v10) = specialized Set.contains(_:)(v11, v13, v8);

    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.requiresPerHostEnablement.getter()
{
  v1 = *(v0 + 16);
  switch(v1)
  {
    case 0:
      return 0;
    case 2:
      return 1;
    case 1:
      v3 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
      if (*(v3 + 16))
      {
        v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C6880);
        if (v5)
        {
          v6 = *(*(v3 + 56) + 8 * v4);
          swift_unknownObjectRetain();
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            v8 = [v7 BOOLValue];
            swift_unknownObjectRelease();
            return v8;
          }

          swift_unknownObjectRelease();
        }
      }

      v9 = *(specialized _InnerAppExtensionIdentity.requiredHostEntitlements.getter() + 16);

      return v9 == 0;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.enablementState(for:)(void *a1, void *a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = AppExtensionIdentity.RecordIdentity.extensionSettingsKey(for:)(a1, a2);
  v6 = MEMORY[0x1865F36D0](v5);

  v7 = [v4 userElectionForExtensionKey_];

  if (v7 == 1)
  {
    return 3;
  }

  if (v7)
  {
    return 1;
  }

  if (AppExtensionIdentity.RecordIdentity.defaultUserElection.getter(a2) == 1)
  {
    return 2;
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.supportsNSExtensionPlistKeys.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2890);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2890), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

void specialized _InnerAppExtensionIdentity.executableURL.getter()
{
  v0 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  URL._bridgeToObjectiveC()(*(v0 + 56));
  v2 = v1;
  v3 = [v1 _EX_URLForBundleExecutable];

  if (v3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1865F36D0](0xD00000000000001CLL, 0x80000001848C6CC0);
    [v4 _EX_errorWithCode_description_];

    swift_willThrow();
  }
}

void specialized _InnerAppExtensionIdentity.executableURL.getter(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = [v10 _EX_URLForBundleExecutable];

  if (v11)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = objc_opt_self();
    v13 = MEMORY[0x1865F36D0](0xD00000000000001CLL, 0x80000001848C6CC0);
    [v12 _EX_errorWithCode_description_];

    swift_willThrow();
  }
}

uint64_t specialized _InnerAppExtensionIdentity.extensionContextClass.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6960), (v3 & 1) != 0) && (v21 = *(*(v1 + 56) + 8 * v2), swift_unknownObjectRetain(), swift_dynamicCast()))
  {
    v5 = v19;
    v4 = v20;
    v6 = MEMORY[0x1865F36D0](v19, v20);
    v7 = NSClassFromString(v6);

    if (v7)
    {

      return swift_getObjCClassMetadata();
    }

    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.general);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v19);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1847D1000, v14, v15, "Failed to load extension context class '%s', does the appex link the extension point framework?", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1865F56C0](v17, -1, -1);
      MEMORY[0x1865F56C0](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.general);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1847D1000, v10, v11, "EXExtensionContextClass not defined or invalid type", v12, 2u);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.extensionContextClass.getter(uint64_t a1)
{
  v23 = a1;
  v1 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6960), (v3 & 1) == 0))
  {

    goto LABEL_7;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();

  v22 = v4;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.general);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1847D1000, v11, v12, "EXExtensionContextClass not defined or invalid type", v13, 2u);
      MEMORY[0x1865F56C0](v13, -1, -1);
    }

    return 0;
  }

  v6 = v20;
  v5 = v21;
  v7 = MEMORY[0x1865F36D0](v20, v21);
  v8 = NSClassFromString(v7);

  if (v8)
  {

    return swift_getObjCClassMetadata();
  }

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.general);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v20);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_1847D1000, v15, v16, "Failed to load extension context class '%s', does the appex link the extension point framework?", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v17, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.hostContextClass.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C6A20), (v3 & 1) != 0) && (v21 = *(*(v1 + 56) + 8 * v2), swift_unknownObjectRetain(), swift_dynamicCast()))
  {
    v5 = v19;
    v4 = v20;
    v6 = MEMORY[0x1865F36D0](v19, v20);
    v7 = NSClassFromString(v6);

    if (v7)
    {

      return swift_getObjCClassMetadata();
    }

    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.general);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v19);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1847D1000, v14, v15, "Failed to load extension context class '%s', does the appex link the extension point framework?", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1865F56C0](v17, -1, -1);
      MEMORY[0x1865F56C0](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.general);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1847D1000, v10, v11, "NSExtensionContextHostClass not defined or invalid type", v12, 2u);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }
  }

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.hostContextClass.getter(uint64_t a1)
{
  v23 = a1;
  v1 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C6A20), (v3 & 1) == 0))
  {

    goto LABEL_7;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();

  v22 = v4;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.general);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1847D1000, v11, v12, "NSExtensionContextHostClass not defined or invalid type", v13, 2u);
      MEMORY[0x1865F56C0](v13, -1, -1);
    }

    return 0;
  }

  v6 = v20;
  v5 = v21;
  v7 = MEMORY[0x1865F36D0](v20, v21);
  v8 = NSClassFromString(v7);

  if (v8)
  {

    return swift_getObjCClassMetadata();
  }

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.general);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v20);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_1847D1000, v15, v16, "Failed to load extension context class '%s', does the appex link the extension point framework?", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v17, -1, -1);
  }

  else
  {
  }

  return 0;
}

const char *specialized _InnerAppExtensionIdentity.principalClass.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v3 = *(v0 + v2[16]);
  if (*(v3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C69A0);
    if (v5)
    {
      v42 = *(*(v3 + 56) + 8 * v4);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v6 = v45;
        if (v45)
        {
          goto LABEL_35;
        }
      }
    }
  }

  v7 = *(v1 + v2[18]);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C69A0);
  if ((v10 & 1) == 0)
  {
    v8 = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v38 = *(*(v7 + 56) + 8 * v9);
  swift_unknownObjectRetain();
  v11 = swift_dynamicCast();
  v8 = v42;
  v12 = v43;
  if (!v11)
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_11:
  v44 = v8;
  v46 = v12;

  v6 = v46;
  if (v46)
  {
    goto LABEL_35;
  }

  v13 = *(v1 + v2[18]);
  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001848C69C0);
  if ((v16 & 1) == 0)
  {
    v14 = 0;
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v39 = *(*(v13 + 56) + 8 * v15);
  swift_unknownObjectRetain();
  v17 = swift_dynamicCast();
  v14 = v42;
  v18 = v43;
  if (!v17)
  {
    v14 = 0;
    v18 = 0;
  }

LABEL_18:
  v44 = v14;
  v47 = v18;

  v6 = v47;
  if (v47)
  {
    goto LABEL_35;
  }

  v19 = *(v1 + v2[18]);
  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C69E0);
  if ((v22 & 1) == 0)
  {
    v20 = 0;
LABEL_24:
    v24 = 0;
    goto LABEL_25;
  }

  v40 = *(*(v19 + 56) + 8 * v21);
  swift_unknownObjectRetain();
  v23 = swift_dynamicCast();
  v20 = v42;
  v24 = v43;
  if (!v23)
  {
    v20 = 0;
    v24 = 0;
  }

LABEL_25:
  v44 = v20;
  v48 = v24;

  v6 = v48;
  if (v48)
  {
    goto LABEL_35;
  }

  if ((specialized _InnerAppExtensionIdentity.supportsNSExtensionPlistKeys.getter() & 1) == 0)
  {
    goto LABEL_34;
  }

  v25 = *(v1 + v2[17]);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6A00);
    if (v28)
    {
      v41 = *(*(v25 + 56) + 8 * v27);
      swift_unknownObjectRetain();
      v29 = swift_dynamicCast();
      v26 = v42;
      v30 = v43;
      if (!v29)
      {
        v26 = 0;
        v30 = 0;
      }

      goto LABEL_33;
    }

    v26 = 0;
  }

  v30 = 0;
LABEL_33:
  v44 = v26;
  v48 = v30;

LABEL_34:
  v6 = v48;
  if (!v48)
  {
    goto LABEL_41;
  }

LABEL_35:

  v31 = MEMORY[0x1865F36D0](v44, v6);
  v32 = NSClassFromString(v31);

  if (v32)
  {

LABEL_39:
    ObjCClassMetadata = swift_getObjCClassMetadata();
LABEL_40:

    return ObjCClassMetadata;
  }

  result = getprogname();
  if (result)
  {
    v34 = String.init(cString:)();
    MEMORY[0x1865F37A0](v34);

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](v44, v6);

    v35 = MEMORY[0x1865F36D0](0, 0xE000000000000000);

    v36 = NSClassFromString(v35);

    if (v36)
    {
      goto LABEL_39;
    }

LABEL_41:
    ObjCClassMetadata = 0;
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

const char *specialized _InnerAppExtensionIdentity.principalClass.getter(void *a1)
{
  v2 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C69A0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_unknownObjectRetain();

    v42 = v5;
    if (swift_dynamicCast())
    {
      v6 = v45;
      if (v45)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
  }

  v7 = AppExtensionIdentity.RecordIdentity.attributes.getter(a1);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C69A0), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_unknownObjectRetain();

    v11 = swift_dynamicCast();
    v12 = v42;
    v13 = v43;
    if (!v11)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {

    v12 = 0;
    v13 = 0;
  }

  v44 = v12;
  v46 = v13;

  v6 = v46;
  if (!v46)
  {
    v14 = AppExtensionIdentity.RecordIdentity.attributes.getter(a1);
    if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001848C69C0), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_unknownObjectRetain();

      v18 = swift_dynamicCast();
      v19 = v42;
      v20 = v43;
      if (!v18)
      {
        v19 = 0;
        v20 = 0;
      }
    }

    else
    {

      v19 = 0;
      v20 = 0;
    }

    v44 = v19;
    v47 = v20;

    v6 = v47;
    if (!v47)
    {
      v21 = AppExtensionIdentity.RecordIdentity.attributes.getter(a1);
      if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000001848C69E0), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
        swift_unknownObjectRetain();

        v25 = swift_dynamicCast();
        v26 = v42;
        v27 = v43;
        if (!v25)
        {
          v26 = 0;
          v27 = 0;
        }
      }

      else
      {

        v26 = 0;
        v27 = 0;
      }

      v44 = v26;
      v48 = v27;

      v6 = v48;
      if (!v48)
      {
        if (specialized _InnerAppExtensionIdentity.supportsNSExtensionPlistKeys.getter())
        {
          v28 = AppExtensionIdentity.RecordIdentity.extensionDictionary.getter(a1);
          if (*(v28 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6A00), (v30 & 1) != 0))
          {
            v31 = *(*(v28 + 56) + 8 * v29);
            swift_unknownObjectRetain();

            v32 = swift_dynamicCast();
            v33 = v42;
            v34 = v43;
            if (!v32)
            {
              v33 = 0;
              v34 = 0;
            }
          }

          else
          {

            v33 = 0;
            v34 = 0;
          }

          v44 = v33;
          v48 = v34;
        }

        v6 = v48;
        if (!v48)
        {
          goto LABEL_39;
        }
      }
    }
  }

LABEL_33:

  v35 = MEMORY[0x1865F36D0](v44, v6);
  v36 = NSClassFromString(v35);

  if (v36)
  {

LABEL_37:
    ObjCClassMetadata = swift_getObjCClassMetadata();
LABEL_38:

    return ObjCClassMetadata;
  }

  result = getprogname();
  if (result)
  {
    v38 = String.init(cString:)();
    MEMORY[0x1865F37A0](v38);

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](v44, v6);

    v39 = MEMORY[0x1865F36D0](0, 0xE000000000000000);

    v40 = NSClassFromString(v39);

    if (v40)
    {
      goto LABEL_37;
    }

LABEL_39:
    ObjCClassMetadata = 0;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

const char *specialized _InnerAppExtensionIdentity.extensionClass.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AppExtensionIdentity.ValueIdentity();
  v3 = *(v0 + *(v2 + 64));
  if (*(v3 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C68C0);
    if (v5)
    {
      v26 = *(*(v3 + 56) + 8 * v4);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        ObjCClassMetadata = v29;
        if (v29)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v7 = *(v1 + *(v2 + 72));
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C68C0);
  if ((v10 & 1) == 0)
  {
    v8 = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v25 = *(*(v7 + 56) + 8 * v9);
  swift_unknownObjectRetain();
  v11 = swift_dynamicCast();
  v8 = v26;
  v12 = v27;
  if (!v11)
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_11:
  v28 = v8;
  v30 = v12;

  ObjCClassMetadata = v30;
  if (!v30)
  {
LABEL_17:
    if (specialized _InnerAppExtensionIdentity.supportsNSExtensionPlistKeys.getter() & 1) != 0 && specialized _InnerAppExtensionIdentity.extensionContextClass.getter() && (specialized _InnerAppExtensionIdentity.presentsUserInterface.getter())
    {
      v19 = "_EXNSExtensionShimExtension";
      v20 = 0xD00000000000001DLL;
    }

    else
    {
      if ((specialized _InnerAppExtensionIdentity.supportsNSExtensionPlistKeys.getter() & 1) == 0 || !specialized _InnerAppExtensionIdentity.extensionContextClass.getter())
      {
        if (ObjCClassMetadata)
        {
LABEL_30:

          return ObjCClassMetadata;
        }

        goto LABEL_27;
      }

      v19 = "_EXConnectionHandlerExtension";
      v20 = 0xD00000000000001BLL;
    }

    v21 = MEMORY[0x1865F36D0](v20, v19 | 0x8000000000000000);
    v22 = NSClassFromString(v21);

    if (v22)
    {
LABEL_28:
      ObjCClassMetadata = swift_getObjCClassMetadata();
      goto LABEL_30;
    }

LABEL_27:
    v23 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C68E0);
    v24 = NSClassFromString(v23);

    if (!v24)
    {
      ObjCClassMetadata = 0;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_12:

  v13 = MEMORY[0x1865F36D0](v28, ObjCClassMetadata);
  v14 = NSClassFromString(v13);

  if (v14)
  {

LABEL_16:
    ObjCClassMetadata = swift_getObjCClassMetadata();
    goto LABEL_17;
  }

  result = getprogname();
  if (result)
  {
    v16 = String.init(cString:)();
    MEMORY[0x1865F37A0](v16);

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](v28, ObjCClassMetadata);

    v17 = MEMORY[0x1865F36D0](0, 0xE000000000000000);

    v18 = NSClassFromString(v17);

    if (!v18)
    {
      ObjCClassMetadata = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

const char *specialized _InnerAppExtensionIdentity.extensionClass.getter(void *a1)
{
  v2 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C68C0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_unknownObjectRetain();

    v25 = v5;
    if (swift_dynamicCast())
    {
      v6 = v28;
      if (v28)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v7 = AppExtensionIdentity.RecordIdentity.attributes.getter(a1);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C68C0), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_unknownObjectRetain();

    v11 = swift_dynamicCast();
    v12 = v25;
    v13 = v26;
    if (!v11)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {

    v12 = 0;
    v13 = 0;
  }

  v27 = v12;
  v29 = v13;

  v6 = v29;
  if (!v29)
  {
    ObjCClassMetadata = 0;
    goto LABEL_19;
  }

LABEL_13:

  v14 = MEMORY[0x1865F36D0](v27, v6);
  v15 = NSClassFromString(v14);

  if (v15)
  {

LABEL_18:
    ObjCClassMetadata = swift_getObjCClassMetadata();
    goto LABEL_19;
  }

  result = getprogname();
  if (result)
  {
    v18 = String.init(cString:)();
    MEMORY[0x1865F37A0](v18);

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](v27, v6);

    v19 = MEMORY[0x1865F36D0](0, 0xE000000000000000);

    ObjCClassMetadata = NSClassFromString(v19);

    if (ObjCClassMetadata)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (specialized _InnerAppExtensionIdentity.supportsNSExtensionPlistKeys.getter() & 1) != 0 && specialized _InnerAppExtensionIdentity.extensionContextClass.getter(a1) && (specialized _InnerAppExtensionIdentity.presentsUserInterface.getter())
    {
      v20 = "_EXNSExtensionShimExtension";
      v21 = 0xD00000000000001DLL;
    }

    else
    {
      if ((specialized _InnerAppExtensionIdentity.supportsNSExtensionPlistKeys.getter() & 1) == 0 || !specialized _InnerAppExtensionIdentity.extensionContextClass.getter(a1))
      {
        if (ObjCClassMetadata)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      v20 = "_EXConnectionHandlerExtension";
      v21 = 0xD00000000000001BLL;
    }

    v22 = MEMORY[0x1865F36D0](v21, v20 | 0x8000000000000000);
    v23 = NSClassFromString(v22);

    if (v23)
    {
LABEL_30:
      ObjCClassMetadata = swift_getObjCClassMetadata();
      goto LABEL_31;
    }

LABEL_29:
    v24 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C68E0);
    ObjCClassMetadata = NSClassFromString(v24);

    if (ObjCClassMetadata)
    {
      goto LABEL_30;
    }

LABEL_31:

    return ObjCClassMetadata;
  }

  __break(1u);
  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.connectionHandlerClass.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x80000001848C68A0), (v3 & 1) == 0) || (v24 = *(*(v1 + 56) + 8 * v2), swift_unknownObjectRetain(), !swift_dynamicCast()))
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.general);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Connection handler class unspecified.";
    goto LABEL_11;
  }

  v5 = v22;
  v4 = v23;
  v6 = MEMORY[0x1865F36D0](v22, v23);
  v7 = NSClassFromString(v6);

  if (!v7)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.general);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v22);

      *(v18 + 4) = v20;
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1865F56C0](v19, -1, -1);
      MEMORY[0x1865F56C0](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if ([swift_getObjCClassFromMetadata() conformsToProtocol_])
  {
    return ObjCClassMetadata;
  }

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.general);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
LABEL_11:
    _os_log_impl(&dword_1847D1000, v11, v12, v14, v13, 2u);
    MEMORY[0x1865F56C0](v13, -1, -1);
  }

LABEL_12:

  return 0;
}

uint64_t specialized _InnerAppExtensionIdentity.connectionHandlerClass.getter(uint64_t a1)
{
  v26 = a1;
  v1 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x80000001848C68A0), (v3 & 1) == 0))
  {

    goto LABEL_8;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();

  v25 = v4;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.general);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Connection handler class unspecified.";
    goto LABEL_12;
  }

  v6 = v23;
  v5 = v24;
  v7 = MEMORY[0x1865F36D0](v23, v24);
  v8 = NSClassFromString(v7);

  if (!v8)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.general);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v23);

      *(v19 + 4) = v21;
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865F56C0](v20, -1, -1);
      MEMORY[0x1865F56C0](v19, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if ([swift_getObjCClassFromMetadata() conformsToProtocol_])
  {
    return ObjCClassMetadata;
  }

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.general);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
LABEL_12:
    _os_log_impl(&dword_1847D1000, v12, v13, v15, v14, 2u);
    MEMORY[0x1865F56C0](v14, -1, -1);
  }

LABEL_13:

  return 0;
}

id AppExtensionIdentity.RecordIdentity.setUserElection(_:for:)(unsigned __int8 a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = AppExtensionIdentity.RecordIdentity.extensionSettingsKey(for:)(a2, a3);
  v6 = v5;
  v7 = [objc_opt_self() sharedInstance];
  v8 = MEMORY[0x1865F36D0](v4, v6);

  v12[0] = 0;
  LODWORD(v6) = [v7 setUserElection:a1 forExtensionKey:v8 error:v12];

  if (v6)
  {
    result = v12[0];
  }

  else
  {
    v10 = v12[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AppExtensionIdentity.RecordIdentity.entitlement<A>(name:)(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 entitlements];
  v6 = MEMORY[0x1865F36D0](a1, a2);
  v7 = [v5 objectForKey:v6 ofClass:swift_getObjCClassFromMetadata()];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(v12, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t protocol witness for _InnerAppExtensionIdentity.localizedName.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 localizedName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id protocol witness for _InnerAppExtensionIdentity.icon.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  result = [*v0 bundleIdentifier];
  if (result)
  {
    v3 = result;
    gotLoadHelper_x8__OBJC_CLASS___ISIcon(v2);
    v5 = [objc_allocWithZone(*(v4 + 2552)) initWithBundleIdentifier_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.developerName.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 containingBundleRecord];
  if (v1 && (v2 = v1, v3 = [v1 developerType], v2, v3 != 1))
  {
    return 0;
  }

  else
  {
    return 0x656C707041;
  }
}

uint64_t protocol witness for _InnerAppExtensionIdentity.extensionPointIdentifier.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 extensionPointRecord];
  v2 = [v1 identifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.bundleVersion.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 bundleVersion];
  if (!v1)
  {
    return 49;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for _InnerAppExtensionIdentity.hostRequirementExempt.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if (!AppExtensionIdentity.RecordIdentity.entitlement(of:named:)(v2, 0xD000000000000039, 0x80000001848C42F0, v1))
  {
    return 0;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRelease();
  return v4;
}

id protocol witness for _InnerAppExtensionIdentity.applicationExtensionRecord.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

BOOL protocol witness for _InnerAppExtensionIdentity.systemComponent.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 containingBundleRecord];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 developerType];

  return v3 == 1;
}

id protocol witness for _InnerAppExtensionIdentity.userElection(for:) in conformance AppExtensionIdentity.RecordIdentity(void *a1)
{
  v3 = *v1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = AppExtensionIdentity.RecordIdentity.extensionSettingsKey(for:)(a1, v3);
  v6 = MEMORY[0x1865F36D0](v5);

  v7 = [v4 userElectionForExtensionKey_];

  return v7;
}

id protocol witness for _InnerAppExtensionIdentity.remappedCopy() in conformance AppExtensionIdentity.RecordIdentity@<X0>(void *a1@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*v1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  result = @nonobjc LSApplicationExtensionRecord.init(uuid:)(v7);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AppExtensionIdentity.ValueIdentity.entitlement(of:named:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 88));
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([swift_unknownObjectRetain() isKindOfClass_])
      {
        return v9;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t AppExtensionIdentity.ValueIdentity.entitlement<A>(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 88));
  if (*(v9 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_unknownObjectRetain();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  v13 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v13 ^ 1u, 1, a3);
}

uint64_t protocol witness for _InnerAppExtensionIdentity.localizedName.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id protocol witness for _InnerAppExtensionIdentity.icon.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1, double a2)
{
  v3 = (v2 + *(a1 + 28));
  v4 = *v3;
  v5 = v3[1];
  gotLoadHelper_x8__OBJC_CLASS___ISIcon(a2);
  v7 = objc_allocWithZone(*(v6 + 2552));
  v8 = MEMORY[0x1865F36D0](v4, v5);
  v9 = [v7 initWithBundleIdentifier_];

  return v9;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.developerName.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.uniqueIdentifier.getter in conformance AppExtensionIdentity.ValueIdentity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for _InnerAppExtensionIdentity.bundleIdentifier.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.bundleVersion.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id protocol witness for _InnerAppExtensionIdentity.hostRequirementExempt.getter in conformance AppExtensionIdentity.ValueIdentity()
{
  v0 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if (!AppExtensionIdentity.ValueIdentity.entitlement(of:named:)(v0, 0xD000000000000039, 0x80000001848C42F0))
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  swift_unknownObjectRelease();
  return v2;
}

BOOL protocol witness for _InnerAppExtensionIdentity.targetsServiceExtensionPoint.getter in conformance AppExtensionIdentity.ValueIdentity()
{
  specialized _InnerAppExtensionIdentity.groupIdentifier.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.spotlightIndexable.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  if (*(*(v1 + *(a1 + 64)) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C6CE0);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *protocol witness for _InnerAppExtensionIdentity.containingBundleRecord.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

void *protocol witness for _InnerAppExtensionIdentity.applicationExtensionRecord.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2;
  return v2;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.url.getter in conformance AppExtensionIdentity.ValueIdentity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for _InnerAppExtensionIdentity.launchesViaExtensionKitService.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 inProcessLaunch];

  if (v4)
  {
    goto LABEL_7;
  }

  if (specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter())
  {
    v5 = *(v1 + *(a1 + 76)) ^ 1;
    specialized _InnerAppExtensionIdentity.groupIdentifier.getter();
    if (!v6)
    {
      return v5 & 1;
    }

    goto LABEL_6;
  }

  v5 = 1;
  specialized _InnerAppExtensionIdentity.groupIdentifier.getter();
  if (v7)
  {
LABEL_6:

LABEL_7:
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.canDisable.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  if (*(v1 + *(a1 + 92)) != 1)
  {
    return 1;
  }

  v2 = a1;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 alwaysEnabledExtensionBundleIdentifiers];

  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized _setDownCast<A, B>(_:)(v5);

  LOBYTE(v2) = specialized Set.contains(_:)(*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8), v6);

  return v2 & 1;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.enablementState(for:) in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 80)) == 1)
  {
    return 3;
  }

  if (*(v2 + *(a2 + 80)))
  {
    return 1;
  }

  if (*(v2 + *(a2 + 84)) == 1)
  {
    return 2;
  }

  return 0;
}

uint64_t protocol witness for _InnerAppExtensionIdentity.xpcSessionServiceName.getter in conformance AppExtensionIdentity.ValueIdentity(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v4 = *v2;
  v5 = v2[1];

  MEMORY[0x1865F37A0](0x7365732D6370782ELL, 0xEC0000006E6F6973);
  return v4;
}

uint64_t storeEnumTagSinglePayload for ExtensionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AppExtensionIdentity.ValueIdentity()
{
  result = type metadata singleton initialization cache for AppExtensionIdentity.ValueIdentity;
  if (!type metadata singleton initialization cache for AppExtensionIdentity.ValueIdentity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AppExtensionIdentity.ValueIdentity()
{
  type metadata accessor for LSExtensionPointType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LSBundleRecord?(319, &lazy cache variable for type metadata for LSBundleRecord?, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LSBundleRecord?(319, &lazy cache variable for type metadata for LSApplicationExtensionRecord?, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
        if (v3 <= 0x3F)
        {
          type metadata accessor for URL();
          if (v4 <= 0x3F)
          {
            type metadata accessor for URL?();
            if (v5 <= 0x3F)
            {
              type metadata accessor for [String : Swift.AnyObject]();
              if (v6 <= 0x3F)
              {
                type metadata accessor for LSApplicationExtensionUserElection(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for LSBundleRecord?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for NSDictionary(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE69100]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t outlined init with copy of AppExtensionIdentity.ValueIdentity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void EXConcreteExtensionTearDownRequestWithIdentifier_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __EXConcreteExtensionTearDownRequestWithIdentifier_block_invoke_400_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void _EXExtensionPredicateForActivationRule_cold_1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v6 = 136315906;
  v7 = "([rule isKindOfClass:objc_getClass(NSString)] || [rule isKindOfClass:objc_getClass(NSDictionary)])";
  v8 = 2080;
  OUTLINED_FUNCTION_4_0();
  v9 = 911;
  v10 = 2112;
  v11 = v3;
  v4 = v3;
  _os_log_fault_impl(&dword_1847D1000, a2, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to parse rule which is not either a string or a dictionary - type: %@", &v6, 0x26u);

  v5 = *MEMORY[0x1E69E9840];
}

void _EXExtensionPredicateForActivationRule_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1847D1000, a2, OS_LOG_TYPE_DEBUG, "Generating predicate from dict: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_1847D1000, v0, v1, "%s: Unexpected selector name %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_1847D1000, v0, v1, "%s: Unsafe operand %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_3(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_5(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectAtIndexedSubscript:1];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_7()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_1847D1000, v0, v1, "%s: Argument expression not safe to execute %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_8()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_9()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1(&dword_1847D1000, v0, v1, "%s: Operand expression not safe to execute %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_10(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
  _os_log_debug_impl(&dword_1847D1000, log, OS_LOG_TYPE_DEBUG, "%s: No operand expression", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void EXExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_11()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(&dword_1847D1000, v0, v1, "%s: Unexpected NSExpression type %ld", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _EXAuditTokenHasRequiredEntitlements_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1847D1000, log, OS_LOG_TYPE_ERROR, "Host is missing entitlement: %{public}@ : %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x1EEDC4558](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x1EEE68FC8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x1EEE692F8]();
}

{
  return MEMORY[0x1EEE69338]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x1EEE69378]();
}

{
  return MEMORY[0x1EEE693B8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

double gotLoadHelper_x8__OBJC_CLASS___ISIcon(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IconServices))
  {
    return dlopenHelper_IconServices(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_IconServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 0);
  atomic_store(1u, &dlopenHelperFlag_IconServices);
  return a1;
}