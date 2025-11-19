uint64_t getEnumTagSinglePayload for Entity.ChildCollection.IndexingIterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for Entity.ChildCollection.IndexingIterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
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
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

CGColorRef HasDirectionalLight.light.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v9);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA016DirectionalLightD0V_Tt0B5(v9, &v6);

  result = v6;
  if (v6)
  {
    v4 = v7;
    v5 = v8 & 1;
  }

  else
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v5 = 0;
    v4 = 1158028115;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return result;
}

uint64_t key path setter for HasDirectionalLight.light : <A>A(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *a2;
  v7 = *a1;
  v8 = v2;
  v9 = v3;
  v5 = v7;
  return HasDirectionalLight.light.setter(&v7);
}

uint64_t HasDirectionalLight.light.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 12))
  {
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA016DirectionalLightD0V_Tt0B5(v2, v4 | v3);
  return v5(v7, 0);
}

void (*HasDirectionalLight.light.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  HasDirectionalLight.light.getter(v3 + 32);
  return HasDirectionalLight.light.modify;
}

void HasDirectionalLight.light.modify(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = *(*a1 + 10);
  if (*(*a1 + 44))
  {
    v5 = 0x100000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*a1)[6] + 112);
  if (a2)
  {
    v7 = v3;
    v8 = v6(v2);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA016DirectionalLightD0V_Tt0B5(v3, v5 | v4);
    v8(v2, 0);
  }

  else
  {
    v9 = v6(*a1);
    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA016DirectionalLightD0V_Tt0B5(v3, v5 | v4);
    v9(v2, 0);
  }

  free(v2);
}

uint64_t HasDirectionalLight.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v18);
  v3 = *(v18 + 16);
  Component = REEntityGetComponent();
  if (Component)
  {
    v17 = Component;
    static DirectionalLightComponent.Shadow.__fromCore(_:)(&v17, &v12);
    v5 = v12;
    v6 = v13;
    v7 = v14;
    v8 = v16;
    v9 = v15;

    v11 = v9 << 32;
  }

  else
  {

    v11 = 0;
    v5 = 0x40A000003F800000;
    v8 = 1;
    v7 = 1084227584;
    v6 = 3;
  }

  *a1 = v5;
  *(a1 + 8) = v6 | (v7 << 32);
  *(a1 + 16) = v11 | HIDWORD(v7);
  *(a1 + 24) = v8;
  return result;
}

uint64_t HasDirectionalLight.shadow.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (*(*v1 + 112))(v9);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA016DirectionalLightD0V6ShadowV_TtB5Tf4ndn_n(v2, v3, v4, v5, *v7);
  return v6(v9, 0);
}

void (*HasDirectionalLight.shadow.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  HasDirectionalLight.shadow.getter((v7 + 3));
  return HasDirectionalLight.shadow.modify;
}

void HasDirectionalLight.shadow.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 16);
  v6[0] = *(*a1 + 24);
  v6[1] = v3;
  v6[2] = v2;
  v7 = v4;
  HasDirectionalLight.shadow.setter(v6);

  free(v1);
}

uint64_t static RKARSystemCore.generateDecimatedMeshes.setter(char a1)
{
  result = swift_beginAccess();
  static RKARSystemCore.generateDecimatedMeshes = a1;
  return result;
}

id RKARSystemCore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RKARSystemCore.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RKARSystemCore();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RKARSystemCore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RKARSystemCore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IKComponent.resource.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t IKComponent.solvers.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

__n128 IKComponent.solvers.setter(__n128 *a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);

  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double IKComponent.init(resource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  IKComponent.SolverCollection.init(_:)(MEMORY[0x1E69E7CC0], &v4);
  result = *&v4;
  *(a2 + 8) = v4;
  return result;
}

uint64_t IKComponent.SolverCollection.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v32 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v6 = v32;
    if (v4)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      a2 = 0;
      v4 = (v7 & ~(v7 >> 63));
      while (v4 != a2)
      {
        v8 = MEMORY[0x1C68F41F0](a2, a1);
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        REIkParametersComponentGetSolverNodeName();
        v30 = String.init(cString:)();
        v31 = v11;
        lazy protocol witness table accessor for type String and conformance String();
        v12 = StringProtocol.hash.getter();
        swift_unknownObjectRelease();

        v32 = v6;
        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v6 = v32;
        }

        v15 = v6 + 16 * v14;
        *(v15 + 32) = v12;
        *(v15 + 40) = a2;
        *(v6 + 16) = v14 + 1;
        a2 = (a2 + 1);
        if (i == a2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v16 = 0;
      v4 = (v7 & ~(v7 >> 63));
      a2 = MEMORY[0x1E69E6158];
      while (v4 != v16)
      {
        v17 = *(a1 + 8 * v16 + 32);
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);

        REIkParametersComponentGetSolverNodeName();
        v30 = String.init(cString:)();
        v31 = v20;
        lazy protocol witness table accessor for type String and conformance String();
        v21 = StringProtocol.hash.getter();

        v32 = v6;
        v23 = *(v6 + 16);
        v22 = *(v6 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v6 = v32;
        }

        v24 = v6 + 16 * v23;
        *(v24 + 32) = v21;
        *(v24 + 40) = v16;
        *(v6 + 16) = v23 + 1;
        v16 = (v16 + 1);
        if (i == v16)
        {
LABEL_20:

          a2 = v29;
          goto LABEL_21;
        }
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

LABEL_21:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMR);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC8];
  }

  v30 = v25;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v26, 1, &v30, specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

  v28 = v30;
  *a2 = a1;
  a2[1] = v28;
  return result;
}

uint64_t IKComponent.init(coreComponent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Asset = REIkParametersComponentGetAsset();
  if (Asset)
  {
    v5 = Asset;
    type metadata accessor for IKResource();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1C68F9EE0](a1);
  result = REIkParametersComponentGetSolverCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      *&v13 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      type metadata accessor for IKComponent.Solver();
      for (i = 0; i != v8; ++i)
      {
        swift_allocObject();
        IKComponent.Solver.init(coreComp:solverIndex:)(a1, i);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v13 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v9 = v13;
    }

    result = IKComponent.SolverCollection.init(_:)(v9, &v13);
    v12 = v13;
    *a2 = v6;
    *(a2 + 8) = v12;
  }

  return result;
}

Swift::Int IKComponent.Solver.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t IKComponent.Solver.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  REIkParametersComponentGetSolverNodeName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.hash.getter();

  *a1 = v5;
  return result;
}

uint64_t IKComponent.Solver.maxIterations.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return REIkParametersComponentSolverGetMaxIterations();
}

uint64_t IKComponent.Solver.maxIterations.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

void *(*IKComponent.Solver.maxIterations.modify(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 40) == 1)
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    MaxIterations = REIkParametersComponentSolverGetMaxIterations();
  }

  else
  {
    MaxIterations = *(v1 + 32);
  }

  *a1 = MaxIterations;
  return IKComponent.Solver.maxIterations.modify;
}

void *IKComponent.Solver.maxIterations.modify(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

float IKComponent.Solver.globalFkWeight.getter()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    return *(v0 + 44);
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  REIkParametersComponentSolverGetRetargetingGain();
  return result;
}

uint64_t *(*IKComponent.Solver.globalFkWeight.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 48))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    REIkParametersComponentSolverGetRetargetingGain();
  }

  else
  {
    v5 = *(v1 + 44);
  }

  *(a1 + 8) = v5;
  return IKComponent.Solver.globalFkWeight.modify;
}

uint64_t *IKComponent.Solver.globalFkWeight.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 44) = *(result + 2);
  *(v1 + 48) = 0;
  return result;
}

uint64_t key path getter for IKComponent.Solver.joints : IKComponent.Solver@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for IKComponent.Solver.joints : IKComponent.Solver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
}

uint64_t IKComponent.Solver.joints.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t IKComponent.Solver.joints.setter(_OWORD *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  *(v1 + 56) = *a1;
}

uint64_t key path getter for IKComponent.Solver.constraints : IKComponent.Solver@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t key path setter for IKComponent.Solver.constraints : IKComponent.Solver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 72);
  v6 = *(v4 + 80);
  *(v4 + 72) = v2;
  *(v4 + 80) = v3;
}

uint64_t IKComponent.Solver.constraints.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t IKComponent.Solver.constraints.setter(_OWORD *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  *(v1 + 72) = *a1;
}

uint64_t IKComponent.Solver.init(coreComp:solverIndex:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 44) = 0;
  *(v2 + 48) = 1;
  *(v2 + 16) = a1;
  result = REIkParametersComponentSolverGetJointCount();
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = result;
  v7._rawValue = MEMORY[0x1E69E7CC0];
  v23 = v2;
  if (v6)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for IKComponent.Joint();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      v10 = swift_allocObject();
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 1;
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 1;
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      *(v10 + 32) = v8;
      REIkParametersComponentJointGetName();
      *&v26 = String.init(cString:)();
      *(&v26 + 1) = v11;
      lazy protocol witness table accessor for type String and conformance String();
      v12 = StringProtocol.hash.getter();

      *(v10 + 104) = v12;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v24[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = v9;
    }

    while (v6 != v9);
    v2 = v23;
    v7._rawValue = v24;
  }

  IKComponent.JointCollection.init(_:)(v7);
  *(v2 + 56) = v26;
  v14 = *(v2 + 16);
  result = REIkParametersComponentSolverGetTaskCount();
  if (result < 0)
  {
    goto LABEL_13;
  }

  v15 = result;
  v16._rawValue = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for IKComponent.Constraint();
    v17 = 0;
    do
    {
      v18 = v17 + 1;
      v19 = swift_allocObject();
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
      *(v19 + 80) = 0u;
      *(v19 + 96) = 1;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 144) = 0u;
      *(v19 + 160) = 1;
      *(v19 + 176) = 0;
      *(v19 + 184) = 0;
      *(v19 + 192) = 1;
      *(v19 + 196) = 0;
      *(v19 + 204) = 1;
      *(v19 + 16) = a1;
      *(v19 + 24) = a2;
      *(v19 + 32) = v17;
      REIkParametersComponentTaskGetName();
      *&v26 = String.init(cString:)();
      *(&v26 + 1) = v20;
      lazy protocol witness table accessor for type String and conformance String();
      v21 = StringProtocol.hash.getter();

      *(v19 + 208) = v21;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = v25[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 = v18;
    }

    while (v15 != v18);
    v2 = v23;
    v16._rawValue = v25;
  }

  IKComponent.ConstraintCollection.init(_:)(v16);
  *(v2 + 72) = v26;
  return v2;
}

RealityFoundation::IKComponent::JointCollection __swiftcall IKComponent.JointCollection.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = a1._rawValue >> 62;
  if (a1._rawValue >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      v21 = swift_unexpectedError();
      __break(1u);
      goto LABEL_28;
    }

    v6 = v25;
    if (v4)
    {
      v7 = __CocoaSet.count.getter();
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
LABEL_14:
        v13 = 0;
        v14 = v7 & ~(v7 >> 63);
        while (v14 != v13)
        {
          v15 = *(*(a1._rawValue + v13 + 4) + 104);
          v25 = v6;
          v17 = *(v6 + 16);
          v16 = *(v6 + 24);
          v4 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
            v6 = v25;
          }

          v18 = v6 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v13;
          *(v6 + 16) = v4;
          if (i == ++v13)
          {
LABEL_19:

            goto LABEL_20;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v7 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }
    }

    v4 = 0;
    v8 = v7 & ~(v7 >> 63);
    while (v8 != v4)
    {
      v9 = *(MEMORY[0x1C68F41F0](v4, a1._rawValue) + 104);
      swift_unknownObjectRelease();
      v25 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v25;
      }

      v12 = v6 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v4;
      *(v6 + 16) = v11 + 1;
      if (i == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_20:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMR);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
  }

  v25 = v19;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v20, 1, &v25, specialized __RawDictionaryStorage.find<A>(_:), specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

  v23 = v25;
  v3->_rawValue = a1._rawValue;
  v3[1]._rawValue = v23;
LABEL_28:
  result.lookUpHelper._rawValue = v22;
  result.storage._rawValue = v21;
  return result;
}

RealityFoundation::IKComponent::ConstraintCollection __swiftcall IKComponent.ConstraintCollection.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = a1._rawValue >> 62;
  if (a1._rawValue >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      v21 = swift_unexpectedError();
      __break(1u);
      goto LABEL_28;
    }

    v6 = v25;
    if (v4)
    {
      v7 = __CocoaSet.count.getter();
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
LABEL_14:
        v13 = 0;
        v14 = v7 & ~(v7 >> 63);
        while (v14 != v13)
        {
          v15 = *(*(a1._rawValue + v13 + 4) + 208);
          v25 = v6;
          v17 = *(v6 + 16);
          v16 = *(v6 + 24);
          v4 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
            v6 = v25;
          }

          v18 = v6 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v13;
          *(v6 + 16) = v4;
          if (i == ++v13)
          {
LABEL_19:

            goto LABEL_20;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v7 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((a1._rawValue & 0xC000000000000001) == 0)
      {
        goto LABEL_14;
      }
    }

    v4 = 0;
    v8 = v7 & ~(v7 >> 63);
    while (v8 != v4)
    {
      v9 = *(MEMORY[0x1C68F41F0](v4, a1._rawValue) + 208);
      swift_unknownObjectRelease();
      v25 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v25;
      }

      v12 = v6 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v4;
      *(v6 + 16) = v11 + 1;
      if (i == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_20:
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMR);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
  }

  v25 = v19;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v20, 1, &v25);

  v23 = v25;
  v3->_rawValue = a1._rawValue;
  v3[1]._rawValue = v23;
LABEL_28:
  result.lookUpHelper._rawValue = v22;
  result.storage._rawValue = v21;
  return result;
}

void *IKComponent.Solver.deinit()
{
  v2 = v0[7];
  v1 = v0[8];

  v4 = v0[9];
  v3 = v0[10];

  return v0;
}

uint64_t IKComponent.Solver.__deallocating_deinit()
{
  v2 = v0[7];
  v1 = v0[8];

  v4 = v0[9];
  v3 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance IKComponent.Solver@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  REIkParametersComponentGetSolverNodeName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.hash.getter();

  *a1 = v5;
  return result;
}

__n128 IKComponent.Joint.fkWeightPerAxis.getter()
{
  if (v0[4].n128_u8[0])
  {
    v1 = v0[1].n128_u64[0];
    v2 = v0[1].n128_u64[1];
    v3 = v0[2].n128_u64[0];
    REIkParametersComponentJointGetRetargetingGain();
    v6 = v4;
    REIkParametersComponentJointGetRetargetingGainPerAxis();
    result.n128_u64[0] = vmul_n_f32(result.n128_u64[0], v6);
  }

  else
  {
    return v0[3];
  }

  return result;
}

void (*IKComponent.Joint.fkWeightPerAxis.modify(uint64_t *a1))(void **a1)
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
  if (*(v1 + 64))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    REIkParametersComponentJointGetRetargetingGain();
    v12 = v8;
    REIkParametersComponentJointGetRetargetingGainPerAxis();
    *&v10 = vmul_n_f32(*v9.f32, v12);
    *(&v10 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v12, v9, 2));
  }

  else
  {
    v10 = *(v1 + 48);
  }

  *v4 = v10;
  return IKComponent.Joint.fkWeightPerAxis.modify;
}

void IKComponent.Joint.fkWeightPerAxis.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 48) = *v1;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0;
  free(v1);
}

__n128 IKComponent.Joint.rotationStiffness.getter()
{
  if (v0[6].n128_u8[0])
  {
    v1 = v0[1].n128_u64[0];
    v2 = v0[1].n128_u64[1];
    v3 = v0[2].n128_u64[0];
    REIkParametersComponentJointGetRotationStiffness();
  }

  else
  {
    return v0[5];
  }

  return result;
}

void (*IKComponent.Joint.rotationStiffness.modify(uint64_t *a1))(void **a1)
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
  if (*(v1 + 96))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    REIkParametersComponentJointGetRotationStiffness();
  }

  else
  {
    v8 = *(v1 + 80);
  }

  *v4 = v8;
  return IKComponent.Joint.rotationStiffness.modify;
}

void IKComponent.Joint.rotationStiffness.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 80) = *v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = 0;
  free(v1);
}

uint64_t IKComponent.Joint.name.getter(void (*a1)(void, void, void))
{
  a1(v1[2], v1[3], v1[4]);

  return String.init(cString:)();
}

uint64_t IKComponent.Constraint.jointID.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  REIkParametersComponentTaskGetTargetName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.hash.getter();

  *a1 = v6;
  return result;
}

uint64_t IKComponent.Constraint.demands.getter@<X0>(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  HasPositionEnabled = REIkParametersComponentTaskHasPositionEnabled();
  result = REIkParametersComponentTaskHasRotationEnabled();
  if (result)
  {
    result = REIkParametersComponentTaskHasLookAtEnabled();
    v8 = 2;
    if (result)
    {
      v8 = 6;
    }

    HasPositionEnabled |= v8;
  }

  *a1 = HasPositionEnabled;
  return result;
}

__n128 IKComponent.Constraint.target.getter()
{
  if (v0[6].n128_u8[0])
  {
    v1 = v0[1].n128_u64[0];
    v2 = v0[1].n128_u64[1];
    v3 = v0[2].n128_u64[0];
    REIkParametersComponentTaskGetTargetRotation();
    REIkParametersComponentTaskGetTargetPosition();
    result.n128_u64[0] = 0x3F8000003F800000;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
      return xmmword_1C1887620;
    }
  }

  else
  {
    result = v0[3];
    v5 = v0[4].n128_u64[0];
    v6 = v0[4].n128_u64[1];
    v7 = v0[5].n128_u64[0];
    v8 = v0[5].n128_u64[1];
  }

  return result;
}

void IKComponent.Constraint.target.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v3[6].n128_u8[0] = 0;
}

void (*IKComponent.Constraint.target.modify(uint64_t *a1))(void **a1)
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
  if (*(v1 + 96))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    REIkParametersComponentTaskGetTargetRotation();
    v14 = v8;
    REIkParametersComponentTaskGetTargetPosition();
    v10 = xmmword_1C1887620;
    if (one-time initialization token for identity != -1)
    {
      v13 = v9;
      swift_once();
      v9 = v13;
      v10 = xmmword_1C1887620;
    }

    v11 = v14;
  }

  else
  {
    v10 = *(v1 + 48);
    v11 = *(v1 + 64);
    v9 = *(v1 + 80);
  }

  *v4 = v10;
  v4[1] = v11;
  v4[2] = v9;
  return IKComponent.Constraint.target.modify;
}

void IKComponent.Constraint.target.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = *(v1 + 1);
  v5 = v1[4];
  *(v2 + 48) = *v1;
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  *(v2 + 88) = v3;
  *(v2 + 96) = 0;
  free(v1);
}

uint64_t key path getter for IKComponent.Constraint.offset : IKComponent.Constraint@<X0>(uint64_t result@<X0>, __int128 *a2@<X8>)
{
  v2 = *result;
  if (*(*result + 160))
  {
    if (one-time initialization token for identity != -1)
    {
      v6 = a2;
      result = swift_once();
      a2 = v6;
    }

    v3 = static Transform.identity;
    v4 = xmmword_1EBEB2BB0;
    v5 = xmmword_1EBEB2BC0;
  }

  else
  {
    v3 = v2[7];
    v4 = v2[8];
    v5 = v2[9];
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

__n128 IKComponent.Constraint.offset.getter()
{
  if (v0[10].n128_u8[0])
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    result.n128_u64[0] = static Transform.identity;
  }

  else
  {
    result = v0[7];
    v1 = v0[8].n128_u64[0];
    v2 = v0[8].n128_u64[1];
    v3 = v0[9].n128_u64[0];
    v4 = v0[9].n128_u64[1];
  }

  return result;
}

void IKComponent.Constraint.offset.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
  v3[10].n128_u8[0] = 0;
}

void (*IKComponent.Constraint.offset.modify(uint64_t *a1))(void **a1)
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
  if (*(v1 + 160))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v5 = static Transform.identity;
    v6 = xmmword_1EBEB2BB0;
    v7 = xmmword_1EBEB2BC0;
  }

  else
  {
    v5 = *(v1 + 112);
    v6 = *(v1 + 128);
    v7 = *(v1 + 144);
  }

  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  return IKComponent.Constraint.offset.modify;
}

void IKComponent.Constraint.offset.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[5];
  v2 = v1[6];
  v4 = *(v1 + 1);
  v5 = v1[4];
  *(v2 + 112) = *v1;
  *(v2 + 128) = v4;
  *(v2 + 144) = v5;
  *(v2 + 152) = v3;
  *(v2 + 160) = 0;
  free(v1);
}

__n128 IKComponent.Constraint.lookAtTargetPosition.getter()
{
  if (v0[12].n128_u8[0])
  {
    v1 = v0[1].n128_u64[0];
    v2 = v0[1].n128_u64[1];
    v3 = v0[2].n128_u64[0];
    REIkParametersComponentTaskGetLookAtTarget();
  }

  else
  {
    return v0[11];
  }

  return result;
}

void (*IKComponent.Constraint.lookAtTargetPosition.modify(uint64_t *a1))(void **a1)
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
  if (*(v1 + 192))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    REIkParametersComponentTaskGetLookAtTarget();
  }

  else
  {
    v8 = *(v1 + 176);
  }

  *v4 = v8;
  return IKComponent.Constraint.lookAtTargetPosition.modify;
}

void IKComponent.Constraint.lookAtTargetPosition.modify(void **a1)
{
  v1 = *a1;
  v3 = v1[1];
  v2 = v1[2];
  *(v2 + 176) = *v1;
  *(v2 + 184) = v3;
  *(v2 + 192) = 0;
  free(v1);
}

uint64_t key path getter for IKComponent.Constraint.animationOverrideWeight : IKComponent.Constraint@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 204))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    REIkParametersComponentTaskGetPositionTargetBlendWeight();
    v8 = v7;
    result = REIkParametersComopnentTaskGetRotationTargetBlendWeight();
  }

  else
  {
    v8 = *(v3 + 196);
    v9 = *(v3 + 200);
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t IKComponent.Constraint.animationOverrideWeight.getter()
{
  if (*(v0 + 204))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    REIkParametersComponentTaskGetPositionTargetBlendWeight();
    return REIkParametersComopnentTaskGetRotationTargetBlendWeight();
  }

  else
  {
    v5 = *(v0 + 196);
    v6 = *(v0 + 200);
  }

  return result;
}

uint64_t *(*IKComponent.Constraint.animationOverrideWeight.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 204))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    REIkParametersComponentTaskGetPositionTargetBlendWeight();
    v7 = v6;
    REIkParametersComopnentTaskGetRotationTargetBlendWeight();
  }

  else
  {
    v7 = *(v1 + 196);
    v8 = *(v1 + 200);
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  return IKComponent.Constraint.animationOverrideWeight.modify;
}

uint64_t *IKComponent.Constraint.animationOverrideWeight.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 196) = result[1];
  *(v1 + 204) = 0;
  return result;
}

uint64_t IKComponent.SolverCollection.subscript.setter(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = v2;
    v4 = result;
    v5 = *a2;
    v6 = *(result + 16);
    v7 = *(result + 24);

    REIkParametersComponentGetSolverNodeName();
    String.init(cString:)();
    lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.hash.getter();

    if (v8 == v5 && (v9 = v3[1], *(v9 + 16)) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = *v3;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!result || v13 < 0 || (v13 & 0x4000000000000000) != 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        v13 = result;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v12 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
        *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v4;

        *v3 = v13;
        return result;
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t (*IKComponent.SolverCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a2;
  a1[1] = v2;
  a1[2] = v5;
  v6 = v2[1];
  if (!*(v6 + 16) || (v7 = *v3, v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) == 0))
  {
    v12 = 0;
    goto LABEL_8;
  }

  result = *(*(v6 + 56) + 8 * v8);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68F41F0](result, v7);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v7 + 8 * result + 32);

LABEL_8:
    *a1 = v12;
    return IKComponent.SolverCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.SolverCollection.set(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  REIkParametersComponentGetSolverNodeName();
  String.init(cString:)();
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.hash.getter();

  v7 = v1[1];
  if (!*(v7 + 16))
  {
    return 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v7 + 56);
  v11 = *(v10 + 8 * result);
  v12 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 8 * v11 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v13 = MEMORY[0x1C68F41F0](*(v10 + 8 * result), *v2);
LABEL_7:

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
  *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = a1;

  *v2 = v12;
  return v13;
}

uint64_t (*IKComponent.SolverCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKComponent.SolverCollection.subscript.modify;
}

unint64_t protocol witness for Collection.subscript.read in conformance IKComponent.SolverCollection(uint64_t *a1, uint64_t (**a2)())
{
  result = *a2;
  v5 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C68F41F0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_5:
    *a1 = v7;
    a1[1] = v7;
    return protocol witness for Collection.subscript.read in conformance IKComponent.SolverCollection;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.JointCollection.subscript.setter(uint64_t result, void *a2)
{
  if (result)
  {
    if (*(result + 104) == *a2)
    {
      v3 = v2;
      v4 = v2[1];
      if (*(v4 + 16))
      {
        v5 = result;
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(*a2);
        if (v7)
        {
          v8 = *(*(v4 + 56) + 8 * v6);
          v9 = *v3;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (!result || v9 < 0 || (v9 & 0x4000000000000000) != 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            v9 = result;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v5;

            *v3 = v9;
            return result;
          }

          __break(1u);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t (*IKComponent.JointCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a2;
  a1[1] = v2;
  a1[2] = v5;
  v6 = v2[1];
  if (!*(v6 + 16) || (v7 = *v3, v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) == 0))
  {
    v12 = 0;
    goto LABEL_8;
  }

  result = *(*(v6 + 56) + 8 * v8);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68F41F0](result, v7);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v7 + 8 * result + 32);

LABEL_8:
    *a1 = v12;
    return IKComponent.JointCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

void (*IKComponent.JointCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = IKComponent.JointCollection.subscript.getter(a2, a3);
  return IKComponent.JointCollection.subscript.modify;
}

uint64_t IKComponent.JointCollection.set(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = v1[1];
  if (!*(v3 + 16))
  {
    return 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 104));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 56);
  v8 = *(v7 + 8 * result);
  v9 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v8 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v10 = MEMORY[0x1C68F41F0](*(v7 + 8 * result), *v2);
LABEL_7:

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
  *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = a1;

  *v2 = v9;
  return v10;
}

uint64_t (*IKComponent.JointCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKRig.JointCollection.subscript.modify;
}

Swift::Int __swiftcall IKComponent.JointCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t IKComponent.JointCollection.makeIterator()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  *a1 = v4;
  a1[1] = 0;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance IKComponent.JointCollection(uint64_t *a1, uint64_t (**a2)(uint64_t a1)))(uint64_t a1)
{
  result = *a2;
  v5 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C68F41F0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_5:
    *a1 = v7;
    a1[1] = v7;
    return protocol witness for Collection.subscript.read in conformance RealityRenderer.EntityCollection;
  }

  __break(1u);
  return result;
}

unint64_t IKComponent.SolverCollection.subscript.getter(void *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = v2[1];
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *v3;
  v6 = a2(*a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  result = *(*(v4 + 56) + 8 * v6);
  if ((v5 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1C68F41F0](result, v5);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v5 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.ConstraintCollection.subscript.setter(uint64_t result, void *a2)
{
  if (result)
  {
    if (*(result + 208) == *a2)
    {
      v3 = v2;
      v4 = v2[1];
      if (*(v4 + 16))
      {
        v5 = result;
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(*a2);
        if (v7)
        {
          v8 = *(*(v4 + 56) + 8 * v6);
          v9 = *v3;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (!result || v9 < 0 || (v9 & 0x4000000000000000) != 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            v9 = result;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v5;

            *v3 = v9;
            return result;
          }

          __break(1u);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t (*IKComponent.ConstraintCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a2;
  a1[1] = v2;
  a1[2] = v5;
  v6 = v2[1];
  if (!*(v6 + 16) || (v7 = *v3, v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) == 0))
  {
    v12 = 0;
    goto LABEL_8;
  }

  result = *(*(v6 + 56) + 8 * v8);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68F41F0](result, v7);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v7 + 8 * result + 32);

LABEL_8:
    *a1 = v12;
    return IKComponent.ConstraintCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.SolverCollection.subscript.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t *))
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a1;
  if (a2)
  {
    v9 = a1[2];

    a3(v7, &v9);
  }

  else
  {
    v9 = a1[2];
    return (a3)(v6, &v9);
  }
}

unint64_t IKComponent.JointCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.hash.getter();
  if (!*(v6 + 16))
  {
    return 0;
  }

  v8 = a3(v7);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  result = *(*(v6 + 56) + 8 * v8);
  if ((v5 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1C68F41F0](result, v5);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v5 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t key path setter for IKComponent.JointCollection.subscript(_:) : IKComponent.JointCollection(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v6 = a3[1];
  v7 = *a1;
  v9[0] = *a3;
  v9[1] = v6;
  lazy protocol witness table accessor for type String and conformance String();

  v9[0] = StringProtocol.hash.getter();
  return a5(v7, v9);
}

uint64_t IKComponent.JointCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v8[1] = a3;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.hash.getter();

  v8[0] = v6;
  return a4(a1, v8);
}

void (*IKComponent.ConstraintCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  v7[2] = IKComponent.ConstraintCollection.subscript.getter(a2, a3);
  return IKComponent.ConstraintCollection.subscript.modify;
}

void IKComponent.JointCollection.subscript.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  *v4 = *(*a1 + 24);
  v4[1] = v6;
  if (a2)
  {
    lazy protocol witness table accessor for type String and conformance String();

    v9 = StringProtocol.hash.getter();
    a3(v5, &v9);
    v8 = v4[2];
  }

  else
  {
    lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.hash.getter();
    a3(v5, &v9);
  }

  free(v4);
}

BOOL IKComponent.SolverCollection.isEmpty.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *v0;
    }

    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t IKComponent.SolverCollection.contains(_:)(void *a1, void (*a2)(void))
{
  if (*(*(v2 + 8) + 16))
  {
    a2(*a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t IKComponent.ConstraintCollection.set(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = v1[1];
  if (!*(v3 + 16))
  {
    return 0;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 208));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 56);
  v8 = *(v7 + 8 * result);
  v9 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v8 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v10 = MEMORY[0x1C68F41F0](*(v7 + 8 * result), *v2);
LABEL_7:

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
  *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = a1;

  *v2 = v9;
  return v10;
}

uint64_t IKComponent.SolverCollection.count.getter()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *v0;
  }

  return __CocoaSet.count.getter();
}

uint64_t IKComponent.SolverCollection.subscript.getter(unint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
LABEL_8:
    JUMPOUT(0x1C68F41F0);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v2 + 8 * a1 + 32);
}

unint64_t key path getter for IKComponent.SolverCollection.subscript(_:) : IKComponent.SolverCollection@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  result = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1C68F41F0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 8 * result + 32);

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for IKComponent.SolverCollection.subscript(_:) : IKComponent.SolverCollection(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a3;
  v8 = *a1;
  v9 = *a2;

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    result = a5(v9);
    v9 = result;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v8;

    *a2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IKComponent.SolverCollection.subscript.setter(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a3(v7);
    v7 = result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a1;

    *v3 = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*IKComponent.ConstraintCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKComponent.SolverCollection.subscript.modify;
}

uint64_t IKComponent.SolverCollection.Iterator.next()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    if (v1 < 0)
    {
      v6 = *v0;
    }

    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1C68F41F0](v0[1], v1);
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
LABEL_9:
      v0[1] = v5;
      return result;
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance IKComponent.SolverCollection.Iterator@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    if (v3 < 0)
    {
      v8 = *v1;
    }

    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[1];
  if (v5 == result)
  {
    result = 0;
LABEL_10:
    *a1 = result;
    return result;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1C68F41F0](v1[1], v3);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
LABEL_9:
      v1[1] = v7;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance IKComponent.SolverCollection@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1 >> 62)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    v5 = a1;
    result = __CocoaSet.count.getter();
    a1 = v5;
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance IKComponent.SolverCollection@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = *v2;
  v7 = v2[1];
  if (*v2 >> 62)
  {
    v2 = a2;
    v3 = result;
    result = __CocoaSet.count.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < 0)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (v8 < v4)
    {
LABEL_9:
      __break(1u);
LABEL_10:
      v8 = result;
      a2 = v2;
      result = v3;
      if (v5 < 0)
      {
        goto LABEL_11;
      }
    }

    a2[2] = result;
    a2[3] = v7;
    *a2 = v5;
    a2[1] = v4;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance IKComponent.SolverCollection@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = 0;
  if (v2 >> 62)
  {
    v6 = a1;
    v7 = __CocoaSet.count.getter();
    a1 = v6;
    v4 = v7;
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1[3] = v4;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance IKComponent.SolverCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v4 = a3(*v3, v3[1]);

  return v4;
}

uint64_t IKComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v3 = v1[1];
  Asset = REIkParametersComponentGetAsset();
  if (v4)
  {
    if (Asset)
    {
      v6 = *(v4 + 16) == Asset;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (!Asset)
  {
LABEL_12:
    if (v3 >> 62)
    {
      goto LABEL_71;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {

      if (!i)
      {
      }

      v8 = 0;
      v40 = v3 & 0xFFFFFFFFFFFFFF8;
      v41 = v3 & 0xC000000000000001;
      v38 = v3;
      v39 = v3 + 32;
      v37 = i;
      while (1)
      {
        if (v41)
        {
          v3 = MEMORY[0x1C68F41F0](v8, v3);
          v9 = __OFADD__(v8++, 1);
          if (v9)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v8 >= *(v40 + 16))
          {
            goto LABEL_70;
          }

          v3 = *(v39 + 8 * v8);

          v9 = __OFADD__(v8++, 1);
          if (v9)
          {
            goto LABEL_69;
          }
        }

        v10 = *(v3 + 24);
        if ((*(v3 + 40) & 1) == 0)
        {
          *(v3 + 32);
          v11 = *(v3 + 24);
          REIkParametersComponentSolverSetMaxIterations();
        }

        if ((*(v3 + 48) & 1) == 0)
        {
          v12 = *(v3 + 44);
          REIkParametersComponentSolverSetRetargetingGain();
        }

        if (*(v3 + 49) == 1)
        {
          REIkParametersComponentResetSolver();
        }

        swift_beginAccess();
        v42 = v3;
        v13 = *(v3 + 56);
        v3 = *(v3 + 64);
        v14 = v13 >> 62 ? __CocoaSet.count.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_bridgeObjectRetain_n();

        if (v14)
        {
          break;
        }

LABEL_41:

        swift_bridgeObjectRelease_n();
        swift_beginAccess();
        v23 = *(v42 + 72);
        v3 = *(v42 + 80);
        if (v23 >> 62)
        {
          v24 = __CocoaSet.count.getter();
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_bridgeObjectRetain_n();

        if (v24)
        {
          v25 = 0;
          do
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v3 = MEMORY[0x1C68F41F0](v25, v23);
              v26 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_68;
              }

              v3 = *(v23 + 8 * v25 + 32);

              v26 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_67;
              }
            }

            v27 = *(v3 + 32);
            if (*(v3 + 96))
            {
              if (*(v3 + 192))
              {
                goto LABEL_51;
              }
            }

            else
            {
              v28 = *(v3 + 64);
              v29 = *(v3 + 72);
              v30 = *(v3 + 80);
              v31 = *(v3 + 88);
              REIkParametersComponentTaskSetTargetPosition();
              REIkParametersComponentTaskSetTargetRotation();
              if (*(v3 + 192))
              {
LABEL_51:
                if ((*(v3 + 204) & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_45;
              }
            }

            v32 = *(v3 + 176);
            v33 = *(v3 + 184);
            REIkParametersComponentTaskSetLookAtTarget();
            if ((*(v3 + 204) & 1) == 0)
            {
LABEL_55:
              v34 = *(v3 + 196);
              v35 = *(v3 + 200);
              REIkParametersComponentTaskSetPositionTargetBlendWeight();
              REIkParametersComponentTaskSetRotationTargetBlendWeight();
            }

LABEL_45:

            ++v25;
          }

          while (v26 != v24);
        }

        swift_bridgeObjectRelease_n();
        v3 = v38;
        if (v8 == v37)
        {
        }
      }

      v15 = 0;
      if ((v13 & 0xC000000000000001) != 0)
      {
        while (2)
        {
          v3 = MEMORY[0x1C68F41F0](v15, v13);
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_65;
          }

LABEL_32:
          v17 = *(v3 + 32);
          if ((*(v3 + 64) & 1) == 0)
          {
            v18 = *(v3 + 48);
            v19 = *(v3 + 56);
            v20 = *(v3 + 32);
            REIkParametersComponentJointSetRetargetingGainPerAxis();
          }

          if ((*(v3 + 96) & 1) == 0)
          {
            v21 = *(v3 + 80);
            v22 = *(v3 + 88);
            REIkParametersComponentJointSetRotationStiffness();
          }

          if (v16 == v14)
          {
            goto LABEL_41;
          }

          ++v15;
          if ((v13 & 0xC000000000000001) != 0)
          {
            continue;
          }

          break;
        }
      }

      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v3 = *(v13 + 8 * v15 + 32);

      v16 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_32;
      }

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
LABEL_70:
      __break(1u);
LABEL_71:
      ;
    }
  }

LABEL_9:

  return MEMORY[0x1EEDFC178](v2);
}

unint64_t lazy protocol witness table accessor for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID()
{
  result = lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID;
  if (!lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID;
  if (!lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Solver.ID and conformance IKComponent.Solver.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions()
{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions;
  if (!lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.Constraint.DemandOptions and conformance IKComponent.Constraint.DemandOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection()
{
  result = lazy protocol witness table cache variable for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection;
  if (!lazy protocol witness table cache variable for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.SolverCollection and conformance IKComponent.SolverCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.SolverCollection.Iterator and conformance IKComponent.SolverCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.JointCollection and conformance IKComponent.JointCollection()
{
  result = lazy protocol witness table cache variable for type IKComponent.JointCollection and conformance IKComponent.JointCollection;
  if (!lazy protocol witness table cache variable for type IKComponent.JointCollection and conformance IKComponent.JointCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.JointCollection and conformance IKComponent.JointCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.JointCollection.Iterator and conformance IKComponent.JointCollection.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection()
{
  result = lazy protocol witness table cache variable for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection;
  if (!lazy protocol witness table cache variable for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.ConstraintCollection and conformance IKComponent.ConstraintCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator;
  if (!lazy protocol witness table cache variable for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IKComponent.ConstraintCollection.Iterator and conformance IKComponent.ConstraintCollection.Iterator);
  }

  return result;
}

uint64_t keypath_get_21Tm@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *)@<X3>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v8 = *a1;
  v7 = v5;
  result = a3(&v7);
  *a4 = result;
  return result;
}

uint64_t keypath_set_22Tm(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v6 = *a1;
  v9 = *a3;

  return a5(v7, &v9);
}

uint64_t keypath_get_31Tm@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  result = a3(*a2, a2[1]);
  *a4 = result;
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, unint64_t))
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v10) = a2;
  v12 = a1[4];
  v11 = a1[5];
  v13 = *a3;
  v14 = a4(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    a6(v19, v10 & 1);
    v21 = *a3;
    v14 = a4(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v10)
  {
LABEL_7:
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v25 = v14;
  a5();
  v14 = v25;
  if (v20)
  {
LABEL_8:
    v23 = swift_allocError();
    swift_willThrow();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v26 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v26[6] + 8 * v14) = v12;
  *(v26[7] + 8 * v14) = v11;
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v26[2] = v28;
  if (v41 != 1)
  {
    a5 = (a1 + 7);
    v10 = 1;
    while (v10 < a1[2])
    {
      v12 = *(a5 - 1);
      v11 = *a5;
      v29 = *a3;
      v30 = a4(v12);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v18 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v31;
      if (v29[3] < v34)
      {
        a6(v34, 1uLL);
        v35 = *a3;
        v30 = a4(v12);
        if ((v20 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v20)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v37[6] + 8 * v30) = v12;
      *(v37[7] + 8 * v30) = v11;
      v38 = v37[2];
      v18 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      ++v10;
      v37[2] = v39;
      a5 = (a5 + 16);
      if (v41 == v10)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t __RKEntityLookAtTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKEntityLookAtTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

void *static _Proto_SkeletonResource_v1.__fromCore(_:)(uint64_t a1)
{
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for _Proto_SkeletonResource_v1();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      return v2;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for _Proto_SkeletonResource_v1();
  v2 = swift_allocObject();
  v2[2] = a1;
  Name = RESkeletonAssetGetName();
  if (Name)
  {
    Name = String.init(cString:)();
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v2[3] = Name;
  v2[4] = v4;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t _Proto_SkeletonResource_v1.deinit()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  v2 = *(v0 + 32);

  return v0;
}

uint64_t _Proto_SkeletonResource_v1.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

int64_t _Proto_SkeletonResource_v1.definition.getter@<X0>(uint64_t *a1@<X8>)
{

  return _Proto_SkeletonDefinition_v1.init(from:)(v2, a1);
}

uint64_t _Proto_SkeletonResource_v1.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t _Proto_SkeletonResource_v1.__allocating_init(with:)(uint64_t *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v57 = a1[1];
  v2 = a1[2];
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v58);
  v4 = v59;
  v5 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  (*(v5 + 32))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v6 = *(v2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v56 = v2;
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v58[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v8 = v58[0];
  v9 = (v2 + 40);
  v10 = v2;
  do
  {
    v11 = *(v9 - 1);
    v12 = *v9;
    v58[0] = v8;
    v14 = *(v8 + 16);
    v13 = *(v8 + 24);

    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v8 = v58[0];
    }

    *(v8 + 16) = v14 + 1;
    v15 = v8 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += 10;
    --v6;
  }

  while (v6);
  v16 = *(v10 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v58[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v17 = 0;
  v7 = v58[0];
  v18 = (v10 + 56);
  v19 = v10;
  do
  {
    if (v17 >= *(v19 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (*v18)
    {
      LODWORD(v20) = -1;
    }

    else
    {
      v20 = *(v18 - 1);
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (HIDWORD(v20))
      {
        goto LABEL_47;
      }
    }

    v58[0] = v7;
    v22 = *(v7 + 16);
    v21 = *(v7 + 24);
    if (v22 >= v21 >> 1)
    {
      v23 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v19 = v23;
      v7 = v58[0];
    }

    ++v17;
    *(v7 + 16) = v22 + 1;
    *(v7 + 4 * v22 + 32) = v20;
    v18 += 80;
  }

  while (v16 != v17);
  v24 = *(v19 + 16);
  if (v24)
  {
    type metadata accessor for simd_float4x4(0);
    v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v26 = v25;
    *(v25 + 16) = v24;
    v27 = 32;
    do
    {
      v28 = (v25 + v27);
      *v28 = *zmmword_1C1887630;
      v28[1] = *&zmmword_1C1887630[16];
      v28[2] = *&zmmword_1C1887630[32];
      v28[3] = *&zmmword_1C1887630[48];
      v27 += 64;
      --v24;
    }

    while (v24);
    v29 = *(v56 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v58[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      v30 = v58[0];
      v31 = *(v58[0] + 16);
      v32 = 6 * v31;
      v33 = (v56 + 96);
      do
      {
        v34 = *(v33 - 2);
        v35 = *(v33 - 1);
        v36 = *v33;
        v58[0] = v30;
        v37 = v30[3];
        v38 = v31 + 1;
        if (v31 >= v37 >> 1)
        {
          v53 = v35;
          v54 = v34;
          v52 = v36;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v31 + 1, 1);
          v36 = v52;
          v35 = v53;
          v34 = v54;
          v30 = v58[0];
        }

        v30[2] = v38;
        v39 = &v30[v32];
        v39[2] = v34;
        v39[3] = v35;
        v39[4] = v36;
        v32 += 6;
        v33 += 5;
        v31 = v38;
        --v29;
      }

      while (v29);
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
    v30 = MEMORY[0x1E69E7CC0];
  }

LABEL_28:
  RESkeletonDefinitionCreate();
  String.utf8CString.getter();
  RESkeletonDefinitionSetName();

  v40 = *(v8 + 16);
  if (HIDWORD(v40))
  {
    goto LABEL_48;
  }

  v55 = v26;
  RESkeletonDefinitionSetJointCount();
  if (v40)
  {
    v41 = 0;
    v42 = (v8 + 40);
    do
    {
      v43 = *(v42 - 1);
      v44 = *v42;
      String.utf8CString.getter();
      RESkeletonDefinitionSetJointName();

      v42 += 2;
      ++v41;
    }

    while (v40 != v41);
  }

  if (HIDWORD(*(v7 + 16)))
  {
    goto LABEL_49;
  }

  RESkeletonDefinitionSetParentIndices();
  if (HIDWORD(*(v55 + 16)))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  RESkeletonDefinitionSetInverseBindPoses();
  if (HIDWORD(v30[2]))
  {
    goto LABEL_51;
  }

  RESkeletonDefinitionSetLocalRestPoses();
  v58[0] = 0;
  result = RESkeletonDefinitionValidate();
  if (result)
  {

    SkeletonAsset = RESkeletonDefinitionCreateSkeletonAsset();
    RERelease();

    if (SkeletonAsset)
    {
      type metadata accessor for _Proto_SkeletonResource_v1();
      v30 = swift_allocObject();
      v30[2] = SkeletonAsset;
      Name = RESkeletonAssetGetName();
      if (Name)
      {
        Name = String.init(cString:)();
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      v30[3] = Name;
      v30[4] = v48;
      RERetain();
      REAssetSetSwiftObject();
    }

    else
    {
      lazy protocol witness table accessor for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError();
      swift_allocError();
      swift_willThrow();
    }

LABEL_44:
    v51 = *MEMORY[0x1E69E9840];
    return v30;
  }

  else
  {
    v49 = v58[0];
    if (v58[0])
    {

      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v50 = v49;
      swift_willThrow();
      RERelease();

      goto LABEL_44;
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError()
{
  result = lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError;
  if (!lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError;
  if (!lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_SkeletonResource_v1.SkeletonResourceGenError and conformance _Proto_SkeletonResource_v1.SkeletonResourceGenError);
  }

  return result;
}

void Scene.AnchorCollection.appendNinja(_:)(uint64_t *a1)
{
  v3 = *v1;
  if (Entity.isNinja.getter())
  {
    v4 = a1[2];
    SceneNullable = REEntityGetSceneNullable();
    if (!SceneNullable)
    {
      goto LABEL_7;
    }

    v6 = SceneNullable;
    v7 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v7)
    {
      v8 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v8 = Scene.init(coreScene:)(v6);
    }

    v9 = *(v8 + 16);

    v10 = *(v3 + 16);

    if (v9 != v10)
    {
LABEL_7:
      Scene.AnchorCollection.doAppend(_:)(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void Scene.AnchorCollection.doAppend(_:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = a1[2];
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_6;
  }

  v6 = SceneNullable;
  v7 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v7)
  {
    v8 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v8 = Scene.init(coreScene:)(v6);
  }

  v9 = *(v8 + 16);

  v10 = *(v3 + 16);

  if (v9 != v10)
  {
LABEL_6:
    v11 = *(v3 + 16);
    v12 = a1[2];
    RESceneAddEntity();
    v13 = *a1;
    if (swift_conformsToProtocol2())
    {
      swift_beginAccess();
      v14 = static RealityFusionSession.sharedSession;
      if (static RealityFusionSession.sharedSession)
      {
        swift_beginAccess();
        if (v14[2])
        {

          v15 = RFServiceManagerGetAnchorManagementService();
          if (v15)
          {
            v16 = v15;
            RFAnchorManagementUpdateAnchoringInScene();
          }
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

uint64_t Scene.AnchorCollection.endIndex.getter()
{
  v1 = *(*v0 + 16);
  EntitiesArray = RESceneGetEntitiesArray();
  if (v3)
  {
    v4 = EntitiesArray;
    v5 = v3;
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v3, 0);
    memcpy(v6 + 4, v4, 8 * v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v40 = v6[2];
  if (!v40)
  {
    v38 = 0;
    v7 = 0;
LABEL_44:

    result = v38 - v7;
    if (!__OFSUB__(v38, v7))
    {
      return result;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  type metadata accessor for SceneManager();
  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
LABEL_51:
    swift_once();
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    if (v8 >= v6[2])
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v10 = v6[v8 + 4];
    swift_beginAccess();
    v11 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        goto LABEL_24;
      }
    }

    swift_endAccess();
    v15 = static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = static SceneManager.customComponentTypeObjectIdToHandles;
    v41 = static SceneManager.customComponentTypeObjectIdToHandles;
    static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v9 = __OFADD__(v20, v21);
    v22 = v20 + v21;
    if (v9)
    {
      goto LABEL_47;
    }

    v23 = v19;
    if (*(v17 + 24) < v22)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_54;
      }

LABEL_18:
      v25 = v41;
      if ((v23 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v26 = v18;
    specialized _NativeDictionary.copy()();
    v18 = v26;
    v25 = v41;
    if ((v23 & 1) == 0)
    {
LABEL_21:
      v25[(v18 >> 6) + 8] |= 1 << v18;
      *(v25[6] + 8 * v18) = &type metadata for __EntityInfoComponent;
      *(v25[7] + 8 * v18) = v15;
      v27 = v25[2];
      v9 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v9)
      {
        goto LABEL_49;
      }

      v25[2] = v28;
      goto LABEL_23;
    }

LABEL_19:
    *(v25[7] + 8 * v18) = v15;
LABEL_23:
    static SceneManager.customComponentTypeObjectIdToHandles = v25;
LABEL_24:
    swift_endAccess();
    if (REEntityGetCustomComponent())
    {
      break;
    }

LABEL_7:
    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_48;
    }

LABEL_8:
    if (v40 == ++v8)
    {
      v38 = v6[2];
      goto LABEL_44;
    }
  }

  Object = RECustomComponentGetObject();
  if (Object)
  {
    v30 = *Object;
    if (*(Object + 8))
    {
      v31 = 1;
    }

    else
    {
      v31 = v30 == 0;
    }

    if (v31)
    {
    }

    else
    {
      v32 = *v30;
      v33 = String.init(utf8String:)();
      if (v34)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }

      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      v30 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v32 == 42, v35, v36);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v30;
    }

    if (!v30)
    {
      goto LABEL_53;
    }

    v37 = *v30;

    if (v37 != 42)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall Scene.AnchorCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t *Scene.AnchorCollection.subscript.getter(uint64_t a1)
{
  v3 = *(*v1 + 16);
  EntitiesArray = RESceneGetEntitiesArray();
  if (v5)
  {
    v6 = EntitiesArray;
    v7 = v5;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v5, 0);
    memcpy(v8 + 4, v6, 8 * v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v10 = 0;
  v47 = v8[2];
  while (2)
  {
    v46 = v9;
    if (v10 == v47)
    {
      while (1)
      {
LABEL_63:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_64:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_65:
      }
    }

    while (1)
    {
      if (v10 >= v8[2])
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v2 = v8[v10 + 4];
      type metadata accessor for SceneManager();
      if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = static SceneManager.customComponentTypeObjectIdToHandles;
      if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v13 & 1) == 0))
      {
        swift_endAccess();
        v15 = static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = static SceneManager.customComponentTypeObjectIdToHandles;
        v48 = static SceneManager.customComponentTypeObjectIdToHandles;
        static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        v20 = *(v17 + 16);
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_52;
        }

        v23 = v18;
        if (*(v17 + 24) < v22)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
          if ((v23 & 1) != (v25 & 1))
          {
            goto LABEL_64;
          }

          v19 = v24;
          v26 = v48;
          if ((v23 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_22:
          *(v26[7] + 8 * v19) = v15;
LABEL_23:
          static SceneManager.customComponentTypeObjectIdToHandles = v26;
          goto LABEL_24;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = v48;
          if (v18)
          {
            goto LABEL_22;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v26 = v48;
          if (v23)
          {
            goto LABEL_22;
          }
        }

LABEL_18:
        v26[(v19 >> 6) + 8] |= 1 << v19;
        *(v26[6] + 8 * v19) = &type metadata for __EntityInfoComponent;
        *(v26[7] + 8 * v19) = v15;
        v27 = v26[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          goto LABEL_59;
        }

        v26[2] = v29;
        goto LABEL_23;
      }

      v14 = *(*(v11 + 56) + 8 * v12);
LABEL_24:
      swift_endAccess();
      if (REEntityGetCustomComponent())
      {
        Object = RECustomComponentGetObject();
        if (!Object)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v31 = *Object;
        if (*(Object + 8))
        {
          v32 = 1;
        }

        else
        {
          v32 = v31 == 0;
        }

        if (v32)
        {
        }

        else
        {
          v33 = *v31;
          v34 = String.init(utf8String:)();
          if (v35)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0;
          }

          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = 0xE000000000000000;
          }

          v31 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v33 == 42, v36, v37);

          type metadata accessor for IntrospectionDataCleanupHelper();
          *(swift_allocObject() + 16) = v31;
        }

        if (!v31)
        {
          goto LABEL_61;
        }

        v38 = *v31;

        if (v38 != 42)
        {
          break;
        }
      }

      if (v47 == ++v10)
      {
        goto LABEL_63;
      }
    }

    if (v46 != a1)
    {
      ++v10;
      v9 = v46 + 1;
      if (!__OFADD__(v46, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    v39 = swift_dynamicCastClassUnconditional();
    goto LABEL_50;
  }

LABEL_53:
  if (REEntityIsBeingDestroyed())
  {
    goto LABEL_62;
  }

  v41 = static Entity.entityInfoType(_:)(v2);
  if (v41)
  {
    v40 = (*(v41 + 232))();
    v42 = v40[2];

    MEMORY[0x1C68F9740](v42, 0);
    v40[2] = v2;
    MEMORY[0x1C68F9740](v2, v40);

    goto LABEL_56;
  }

LABEL_59:
  v39 = makeEntity(for:)(v2);
LABEL_50:
  v40 = v39;
LABEL_56:
  v43 = *v40;
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_65;
  }

  return v40;
}

uint64_t Scene.AnchorCollection.subscript.setter(void *a1, uint64_t a2, void *a3)
{
  v66 = *v4;
  v8 = *(*v4 + 16);
  EntitiesArray = RESceneGetEntitiesArray();
  v67 = a1;
  v65 = v4;
  if (v10)
  {
    v3 = EntitiesArray;
    v11 = v10;
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v10, 0);
    memcpy((v12 + 32), v3, 8 * v11);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v69 = *(v12 + 16);
  if (!v69)
  {
    goto LABEL_85;
  }

  if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
  {
LABEL_81:
    swift_once();
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (v13 >= *(v12 + 16))
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v15 = *(v12 + 8 * v13 + 32);
    swift_beginAccess();
    v16 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v18 & 1) == 0))
    {
      swift_endAccess();
      v3 = &type metadata for __EntityInfoComponent;
      v6 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = static SceneManager.customComponentTypeObjectIdToHandles;
      v70 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v22 = *(v20 + 16);
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_70;
      }

      v3 = v21;
      if (*(v20 + 24) < v24)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        if ((v3 & 1) != (v26 & 1))
        {
          goto LABEL_87;
        }

        v5 = v25;
        v27 = v70;
        if ((v3 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        *(v27[7] + 8 * v5) = v6;
LABEL_23:
        static SceneManager.customComponentTypeObjectIdToHandles = v27;
        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v70;
        if (v21)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v27 = v70;
        if (v3)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v27[(v5 >> 6) + 8] |= 1 << v5;
      *(v27[6] + 8 * v5) = &type metadata for __EntityInfoComponent;
      *(v27[7] + 8 * v5) = v6;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        __break(1u);
        goto LABEL_81;
      }

      v27[2] = v30;
      goto LABEL_23;
    }

    v6 = *(*(v16 + 56) + 8 * v17);
LABEL_24:
    swift_endAccess();
    if (REEntityGetCustomComponent())
    {
      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_83;
      }

      v32 = *Object;
      if (*(Object + 8))
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
      }

      else
      {
        v5 = *v32;
        v34 = String.init(utf8String:)();
        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        v32 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v5 == 42, v36, v37);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v32;
      }

      if (!v32)
      {
        goto LABEL_84;
      }

      v3 = *v32;

      if (v3 != 42)
      {
        if (v14 == a3)
        {
          goto LABEL_45;
        }

        v29 = __OFADD__(v14, 1);
        v14 = (v14 + 1);
        if (v29)
        {
          break;
        }
      }
    }

    if (v69 == ++v13)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_45:
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    v12 = swift_dynamicCastClassUnconditional();
    v14 = v67;
    goto LABEL_51;
  }

  v14 = v67;
  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    v38 = specialized static Entity.entityInfoType(_:)();
    if (v38)
    {
      v12 = (*(v38 + 232))();
      v39 = *(v12 + 16);

      MEMORY[0x1C68F9740](v39, 0);
      *(v12 + 16) = v15;
      MEMORY[0x1C68F9740](v15, v12);
    }

    else
    {
      v12 = makeEntity(for:)(v15);
    }

LABEL_51:
    v40 = *v14;
    if (*(v12 + 16) == v14[2])
    {
    }

    else
    {
      v41 = HasHierarchy.parent.getter();
      v42 = *(*v14 + 120);

      v44 = v42(v43);

      if (v41)
      {

        swift_retain_n();

        v45 = specialized HasHierarchy.parent.getter();
        if (v45)
        {
          v46 = *(v45 + 16);

          v47 = *(v41 + 16);

          if (v46 == v47)
          {
            v48 = v14[2];
            REEntitySetParent();
            static Entity.updateInteractions(root:)(v14);
          }
        }

        else
        {
        }

        v53 = *(v66 + 16);
        v54 = v14[2];
        RESceneSetEntityAtIndex();
      }

      if (v44)
      {
        if (*(v44 + 16) != *(v66 + 16))
        {

          v49 = *(v44 + 16);
          v50 = v14[2];
          RESceneRemoveEntity();

          v51 = *(v66 + 16);
          v52 = v14[2];
          goto LABEL_77;
        }

        v6 = 0;
        v5 = *v65;
        while (1)
        {
          v3 = Scene.AnchorCollection.endIndex.getter();
          if (v6 == v3)
          {
            break;
          }

          v57 = Scene.AnchorCollection.subscript.getter(v6)[2];

          if (v57 == v14[2])
          {
            goto LABEL_72;
          }

          v29 = __OFADD__(v6++, 1);
          if (v29)
          {
            __break(1u);
            goto LABEL_69;
          }
        }

LABEL_71:
        v58 = v14[2];
LABEL_72:
        v59 = *(v5 + 16);
        RESceneRemoveEntity();
        if (RELinkedOnOrAfterFall2024OSVersions())
        {
          v60 = *(v5 + 16);

          v61 = *(v12 + 16);
          RESceneGetEntityIndexInParent();
        }

        else
        {
          if (v6 == v3)
          {
            goto LABEL_86;
          }
        }

        v62 = *(v5 + 16);
        v63 = v14[2];
LABEL_77:
        RESceneSetEntityAtIndex();
      }

      else
      {

        v55 = *(v66 + 16);
        v56 = v14[2];
        RESceneSetEntityAtIndex();
      }
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*Scene.AnchorCollection.subscript.modify(uint64_t **a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v6 = *v2;
  *a1 = Scene.AnchorCollection.subscript.getter(a2);
  a1[1] = v4;
  return Scene.AnchorCollection.subscript.modify;
}

uint64_t Scene.AnchorCollection.subscript.modify(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if ((a2 & 1) == 0)
  {
    return Scene.AnchorCollection.subscript.setter(*a1, a2, v3);
  }

  v5 = *a1;

  Scene.AnchorCollection.subscript.setter(v6, v7, v3);
}

Swift::Void __swiftcall Scene.AnchorCollection.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v2 = *(contentsOf._rawValue + 2);
  if (v2)
  {
    v3 = *v1;
    v4 = contentsOf._rawValue + 32;
    do
    {
      v5 = *v4;
      v6 = *(*v4 + 16);

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_9;
      }

      v8 = SceneNullable;
      v9 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v9)
      {
        v10 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v10 = swift_allocObject();
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v10 + 104) = 0;
        *(v10 + 88) = 0u;
        *(v10 + 72) = 0u;
        swift_weakInit();
        *(v10 + 232) = 0;
        *(v10 + 216) = 0u;
        *(v10 + 200) = 0u;
        *(v10 + 184) = 0u;
        *(v10 + 168) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 136) = 0u;
        *(v10 + 120) = 0u;
        RERetain();
        *(v10 + 16) = v8;
        RESceneSetSwiftObject();
      }

      v11 = *(v10 + 16);

      v12 = *(v3 + 16);

      if (v11 != v12)
      {
LABEL_9:
        v13 = *(v3 + 16);
        v14 = *(v5 + 16);
        RESceneAddEntity();
        swift_beginAccess();
        v15 = static RealityFusionSession.sharedSession;
        if (static RealityFusionSession.sharedSession)
        {
          swift_beginAccess();
          if (v15[2])
          {

            v16 = RFServiceManagerGetAnchorManagementService();
            if (v16)
            {
              v17 = v16;
              RFAnchorManagementUpdateAnchoringInScene();
            }
          }
        }

        v18 = *(v5 + 16);
        v19 = REEntityGetSceneNullable();
        if (v19)
        {
          v20 = v19;
          v21 = RESceneGetSwiftObject();
          type metadata accessor for Scene();
          if (v21)
          {
            v22 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            v22 = swift_allocObject();
            *(v22 + 24) = 0u;
            *(v22 + 40) = 0u;
            *(v22 + 56) = 0;
            swift_unknownObjectWeakInit();
            *(v22 + 104) = 0;
            *(v22 + 88) = 0u;
            *(v22 + 72) = 0u;
            swift_weakInit();
            *(v22 + 232) = 0;
            *(v22 + 216) = 0u;
            *(v22 + 200) = 0u;
            *(v22 + 184) = 0u;
            *(v22 + 168) = 0u;
            *(v22 + 152) = 0u;
            *(v22 + 136) = 0u;
            *(v22 + 120) = 0u;
            RERetain();
            *(v22 + 16) = v20;
            RESceneSetSwiftObject();
          }

          swift_beginAccess();
          if (static __RKScenePhysics.registration)
          {
            v23 = *(static __RKScenePhysics.registration + 3);
            v24 = *(v22 + 16);
            ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
            if (v26)
            {
              v27 = *ComponentsOfCustomType;
              Object = RECustomComponentGetObject();
              if (Object)
              {
                v33 = *Object;
                v29 = *(v22 + 16);
                if (RESceneGetECSManagerNullable())
                {
                  ServiceLocator = REECSManagerGetServiceLocator();
                  if (MEMORY[0x1C68FE290](ServiceLocator))
                  {
                    REPhysicsSimulationServiceGetDefaultGravity();
                    if (*v31.i32 != *v33.i32 || (v32 = vceq_f32(vext_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL), 4uLL), *&vextq_s8(v33, v33, 4uLL)), (v32.i8[0] & 1) == 0) || (v32.i8[4] & 1) == 0)
                    {
                      REPhysicsSimulationServiceSetDefaultGravity();
                    }
                  }
                }
              }
            }
          }
        }
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

void closure #1 in Scene.AnchorCollection.append<A>(contentsOf:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_6;
  }

  v6 = SceneNullable;
  v7 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v7)
  {
    v8 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v8 = Scene.init(coreScene:)(v6);
  }

  v9 = *(v8 + 16);

  v10 = *(a2 + 16);

  if (v9 != v10)
  {
LABEL_6:
    v11 = *(a2 + 16);
    v12 = *(v3 + 16);
    RESceneAddEntity();
    swift_beginAccess();
    v13 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v13[2])
      {

        v14 = RFServiceManagerGetAnchorManagementService();
        if (v14)
        {
          v15 = v14;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

Swift::Void __swiftcall Scene.AnchorCollection.remove(at:)(Swift::Int at)
{
  v2 = *v1;
  v3 = Scene.AnchorCollection.subscript.getter(at);
  v4 = *(v2 + 16);
  v5 = v3[2];
  RESceneRemoveEntity();
}

Swift::Void __swiftcall Scene.AnchorCollection.removeAll(keepCapacity:)(Swift::Bool keepCapacity)
{
  v2 = *v1;
  while (1)
  {
    v3 = Scene.AnchorCollection.endIndex.getter();
    if (v3 < 0)
    {
      break;
    }

    if (!v3)
    {
      return;
    }

    v4 = Scene.AnchorCollection.subscript.getter(0);
    v5 = *(v2 + 16);
    v6 = v4[2];
    RESceneRemoveEntity();
  }

  __break(1u);
}

Swift::Void __swiftcall Scene.AnchorCollection.removeAll()()
{
  v1 = *v0;
  while (1)
  {
    v2 = Scene.AnchorCollection.endIndex.getter();
    if (v2 < 0)
    {
      break;
    }

    if (!v2)
    {
      return;
    }

    v3 = Scene.AnchorCollection.subscript.getter(0);
    v4 = *(v1 + 16);
    v5 = v3[2];
    RESceneRemoveEntity();
  }

  __break(1u);
}

Swift::Void __swiftcall Scene.AnchorCollection.replaceAll(_:)(Swift::OpaquePointer a1)
{
  v3 = *v1;
  while (1)
  {
    v4 = Scene.AnchorCollection.endIndex.getter();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    if (!v4)
    {
      break;
    }

    v5 = Scene.AnchorCollection.subscript.getter(0);
    v6 = *(v3 + 16);
    v7 = v5[2];
    RESceneRemoveEntity();
  }

  v8 = *(a1._rawValue + 2);
  if (v8)
  {
    v9 = a1._rawValue + 32;
    do
    {
      v10 = *v9;
      v11 = *(*v9 + 16);

      SceneNullable = REEntityGetSceneNullable();
      if (!SceneNullable)
      {
        goto LABEL_13;
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
        v15 = swift_allocObject();
        *(v15 + 24) = 0u;
        *(v15 + 40) = 0u;
        *(v15 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v15 + 104) = 0;
        *(v15 + 88) = 0u;
        *(v15 + 72) = 0u;
        swift_weakInit();
        *(v15 + 232) = 0;
        *(v15 + 216) = 0u;
        *(v15 + 200) = 0u;
        *(v15 + 184) = 0u;
        *(v15 + 168) = 0u;
        *(v15 + 152) = 0u;
        *(v15 + 136) = 0u;
        *(v15 + 120) = 0u;
        RERetain();
        *(v15 + 16) = v13;
        RESceneSetSwiftObject();
      }

      v16 = *(v15 + 16);

      v17 = *(v3 + 16);

      if (v16 != v17)
      {
LABEL_13:
        v18 = *(v3 + 16);
        v19 = *(v10 + 16);
        RESceneAddEntity();
        swift_beginAccess();
        v20 = static RealityFusionSession.sharedSession;
        if (static RealityFusionSession.sharedSession)
        {
          swift_beginAccess();
          if (v20[2])
          {

            v21 = RFServiceManagerGetAnchorManagementService();
            if (v21)
            {
              v22 = v21;
              RFAnchorManagementUpdateAnchoringInScene();
            }
          }
        }

        v23 = *(v10 + 16);
        v24 = REEntityGetSceneNullable();
        if (v24)
        {
          v25 = v24;
          v26 = RESceneGetSwiftObject();
          type metadata accessor for Scene();
          if (v26)
          {
            v27 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            v27 = swift_allocObject();
            *(v27 + 24) = 0u;
            *(v27 + 40) = 0u;
            *(v27 + 56) = 0;
            swift_unknownObjectWeakInit();
            *(v27 + 104) = 0;
            *(v27 + 88) = 0u;
            *(v27 + 72) = 0u;
            swift_weakInit();
            *(v27 + 232) = 0;
            *(v27 + 216) = 0u;
            *(v27 + 200) = 0u;
            *(v27 + 184) = 0u;
            *(v27 + 168) = 0u;
            *(v27 + 152) = 0u;
            *(v27 + 136) = 0u;
            *(v27 + 120) = 0u;
            RERetain();
            *(v27 + 16) = v25;
            RESceneSetSwiftObject();
          }

          swift_beginAccess();
          if (static __RKScenePhysics.registration)
          {
            v28 = *(static __RKScenePhysics.registration + 3);
            v29 = *(v27 + 16);
            ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
            if (v31)
            {
              v32 = *ComponentsOfCustomType;
              Object = RECustomComponentGetObject();
              if (Object)
              {
                v38 = *Object;
                v34 = *(v27 + 16);
                if (RESceneGetECSManagerNullable())
                {
                  ServiceLocator = REECSManagerGetServiceLocator();
                  if (MEMORY[0x1C68FE290](ServiceLocator))
                  {
                    REPhysicsSimulationServiceGetDefaultGravity();
                    if (*v36.i32 != *v38.i32 || (v37 = vceq_f32(vext_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL), 4uLL), *&vextq_s8(v38, v38, 4uLL)), (v37.i8[0] & 1) == 0) || (v37.i8[4] & 1) == 0)
                    {
                      REPhysicsSimulationServiceSetDefaultGravity();
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 += 16;
      --v8;
    }

    while (v8);
  }
}

uint64_t Scene.AnchorCollection.replaceAll<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v47.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v47.i8[-v12];
  v14 = *v2;
  while (1)
  {
    v48 = v14;
    result = Scene.AnchorCollection.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (!result)
    {
      break;
    }

    v48 = v14;
    v16 = Scene.AnchorCollection.subscript.getter(0);
    v17 = *(v14 + 16);
    v18 = v16[2];
    RESceneRemoveEntity();
  }

  (*(v5 + 16))(v8, a1, a2);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  for (i = v49; v49; i = v49)
  {
    v20 = *(i + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v22 = SceneNullable;
      v23 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v23)
      {
        v24 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v24 = swift_allocObject();
        *(v24 + 24) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v24 + 104) = 0;
        *(v24 + 88) = 0u;
        *(v24 + 72) = 0u;
        swift_weakInit();
        *(v24 + 232) = 0;
        *(v24 + 216) = 0u;
        *(v24 + 200) = 0u;
        *(v24 + 184) = 0u;
        *(v24 + 168) = 0u;
        *(v24 + 152) = 0u;
        *(v24 + 136) = 0u;
        *(v24 + 120) = 0u;
        RERetain();
        *(v24 + 16) = v22;
        RESceneSetSwiftObject();
      }

      v25 = *(v24 + 16);

      v26 = *(v14 + 16);

      if (v25 == v26)
      {
        goto LABEL_7;
      }
    }

    v27 = *(v14 + 16);
    v28 = *(i + 16);
    RESceneAddEntity();
    swift_beginAccess();
    v29 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v29[2])
      {

        v30 = RFServiceManagerGetAnchorManagementService();
        if (v30)
        {
          v31 = v30;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    v32 = *(i + 16);
    v33 = REEntityGetSceneNullable();
    if (!v33)
    {
LABEL_7:
    }

    else
    {
      v34 = v33;
      v35 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v35)
      {
        v36 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v36 = swift_allocObject();
        *(v36 + 24) = 0u;
        *(v36 + 40) = 0u;
        *(v36 + 56) = 0;
        swift_unknownObjectWeakInit();
        *(v36 + 104) = 0;
        *(v36 + 88) = 0u;
        *(v36 + 72) = 0u;
        swift_weakInit();
        *(v36 + 232) = 0;
        *(v36 + 216) = 0u;
        *(v36 + 200) = 0u;
        *(v36 + 184) = 0u;
        *(v36 + 168) = 0u;
        *(v36 + 152) = 0u;
        *(v36 + 136) = 0u;
        *(v36 + 120) = 0u;
        RERetain();
        *(v36 + 16) = v34;
        RESceneSetSwiftObject();
      }

      swift_beginAccess();
      if (static __RKScenePhysics.registration)
      {
        v37 = *(static __RKScenePhysics.registration + 3);
        v38 = *(v36 + 16);
        ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
        if (v40)
        {
          v41 = *ComponentsOfCustomType;
          Object = RECustomComponentGetObject();
          if (Object)
          {
            v47 = *Object;
            v43 = *(v36 + 16);
            if (RESceneGetECSManagerNullable())
            {
              ServiceLocator = REECSManagerGetServiceLocator();
              if (MEMORY[0x1C68FE290](ServiceLocator))
              {
                REPhysicsSimulationServiceGetDefaultGravity();
                if (*v45.i32 != *v47.i32 || (v46 = vceq_f32(vext_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL), 4uLL), *&vextq_s8(v47, v47, 4uLL)), (v46.i8[0] & 1) == 0) || (v46.i8[4] & 1) == 0)
                {
                  REPhysicsSimulationServiceSetDefaultGravity();
                }
              }
            }
          }
        }
      }
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t Scene.AnchorCollection.removeNinja(_:)(uint64_t a1)
{
  v3 = *v1;
  if (specialized HasHierarchy.parent.getter())
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 16);
  result = REEntityGetSceneNullable();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v7)
  {
    v8 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v8 = Scene.init(coreScene:)(v6);
  }

  v9 = *(v8 + 16);

  v10 = *(v3 + 16);

  if (v9 != v10)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((Entity.isNinja.getter() & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v3 + 16);
  v12 = *(a1 + 16);

  return RESceneRemoveEntity();
}

uint64_t protocol witness for Collection.endIndex.getter in conformance Scene.AnchorCollection@<X0>(uint64_t *a1@<X8>)
{
  result = Scene.AnchorCollection.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Scene.AnchorCollection(uint64_t **a1, uint64_t *a2))(uint64_t a1)
{
  v3 = Scene.AnchorCollection.subscript.getter(*a2);
  a1[1] = v4;
  a1[2] = v3;
  *a1 = v3;
  return protocol witness for Collection.subscript.read in conformance Scene.AnchorCollection;
}

uint64_t protocol witness for Collection.subscript.getter in conformance Scene.AnchorCollection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = Scene.AnchorCollection.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a2[1] = v4;
  a2[2] = v6;
  *a2 = v5;
}

uint64_t protocol witness for Collection.indices.getter in conformance Scene.AnchorCollection@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;

  result = Scene.AnchorCollection.endIndex.getter();
  a1[2] = result;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance Scene.AnchorCollection()
{
  v2 = *v0;
  result = Scene.AnchorCollection.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Scene.AnchorCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t Scene.AnchorCollection.description.getter()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_pMd, &_s10RealityKit12HasAnchoring_pMR);
  v3 = MEMORY[0x1C68F36A0](v1, v2);

  return v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Scene.AnchorCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_pMd, &_s10RealityKit12HasAnchoring_pMR);
  v3 = MEMORY[0x1C68F36A0](v1, v2);

  return v3;
}

uint64_t specialized Scene.AnchorCollection.remove(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = *(a1 + 16);
  return RESceneRemoveEntity();
}

void specialized Scene.AnchorCollection.append(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_6;
  }

  v6 = SceneNullable;
  v7 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v7)
  {
    v8 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v8 = Scene.init(coreScene:)(v6);
  }

  v9 = *(v8 + 16);

  v10 = *(v3 + 16);

  if (v9 != v10)
  {
LABEL_6:
    v11 = *(v3 + 16);
    v12 = *(a1 + 16);
    RESceneAddEntity();
    swift_beginAccess();
    v13 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v13[2])
      {

        v14 = RFServiceManagerGetAnchorManagementService();
        if (v14)
        {
          v15 = v14;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

void partial apply for closure #1 in Scene.AnchorCollection.append<A>(contentsOf:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  closure #1 in Scene.AnchorCollection.append<A>(contentsOf:)(a1, v1[5]);
}

unint64_t lazy protocol witness table accessor for type Scene.AnchorCollection and conformance Scene.AnchorCollection()
{
  result = lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection;
  if (!lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection);
  }

  return result;
}

double GroundingShadowComponent.init(castsShadow:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 40) = 1065353216;
  *a2 = a1;
  *(a2 + 1) = a1;
  return result;
}

uint64_t static GroundingShadowComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  CastsShadow = REGroundingShadowComponentGetCastsShadow();
  ReceivesShadow = REGroundingShadowComponentGetReceivesShadow();
  REGroundingShadowComponentGetShadowIntensityOnPhysicalObjects();
  v7 = v6;
  FadeBehaviorNearPhysicalObjects = REGroundingShadowComponentGetFadeBehaviorNearPhysicalObjects();
  v9 = FadeBehaviorNearPhysicalObjects == 1;
  if (FadeBehaviorNearPhysicalObjects == 2)
  {
    v9 = 2;
  }

  *(a2 + 44) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = CastsShadow;
  *(a2 + 1) = ReceivesShadow;
  *(a2 + 40) = v7;
  v12 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v11[0] = v9;
  outlined assign with take of Any?(v11, a2 + 8);
  result = REGroundingShadowComponentGetModeFlags();
  *(a2 + 44) = result;
  return result;
}

uint64_t GroundingShadowComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REGroundingShadowComponentSetCastsShadow();
  v4 = v1[1];
  REGroundingShadowComponentSetReceivesShadow();
  v5 = *(v1 + 10);
  REGroundingShadowComponentSetShadowIntensityOnPhysicalObjects();
  outlined init with copy of Any?((v1 + 8), &v11);
  v6 = v12;
  outlined destroy of Any?(&v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  result = outlined init with copy of Any?((v1 + 8), &v9);
  if (v10)
  {
    outlined init with take of Any(&v9, &v11);
    swift_dynamicCast();
LABEL_4:
    REGroundingShadowComponentSetFadeBehaviorNearPhysicalObjects();
    v8 = *(v1 + 11);
    REGroundingShadowComponentSetModeFlags();
    return RENetworkMarkComponentDirty();
  }

  __break(1u);
  return result;
}

uint64_t static GroundingShadowComponent.FadeBehaviorNearPhysicalObjects.__fromCore(from:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t GroundingShadowComponent.init(castsShadow:receivesShadow:shadowIntensityOnPhysicalObjects:fadeBehaviorNearPhysicalObjects:)@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v5 = *a3;
  *(a4 + 44) = 0;
  *(a4 + 24) = 0u;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 40) = a5;
  *(a4 + 8) = 0u;
  v8 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v7[0] = v5;
  return outlined assign with take of Any?(v7, a4 + 8);
}

uint64_t GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.getter@<X0>(_BYTE *a1@<X8>)
{
  outlined init with copy of Any?(v1 + 8, &v7);
  v3 = v8;
  result = outlined destroy of Any?(&v7);
  if (v3)
  {
    result = outlined init with copy of Any?(v1 + 8, &v5);
    if (v6)
    {
      outlined init with take of Any(&v5, &v7);
      return swift_dynamicCast();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *(*GroundingShadowComponent.receivesShadow.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return RealityRenderer.CameraSettings.antialiasing.modify;
}

double GroundingShadowComponent.init(castsShadow:receivesShadow:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *(a3 + 40) = 1065353216;
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

Swift::Int GroundingShadowComponent.FadeBehaviorNearPhysicalObjects.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.setter(char *a1)
{
  v2 = *a1;
  v5 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v4[0] = v2;
  return outlined assign with take of Any?(v4, v1 + 8);
}

void (*GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  outlined init with copy of Any?(v1 + 8, v3);
  v5 = *(v4 + 24);
  outlined destroy of Any?(v4);
  if (!v5)
  {
    *(v4 + 72) = 0;
    return GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify;
  }

  result = outlined init with copy of Any?(v1 + 8, v4 + 32);
  if (*(v4 + 56))
  {
    outlined init with take of Any((v4 + 32), v4);
    swift_dynamicCast();
    return GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify;
  }

  __break(1u);
  return result;
}

void GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  v1[3] = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  *v1 = v2;
  outlined assign with take of Any?(v1, v3 + 8);

  free(v1);
}

uint64_t GroundingShadowComponent.init(castsShadow:receivesShadow:fadeBehaviorNearPhysicalObjects:)@<X0>(char a1@<W0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1065353216;
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 8) = 0u;
  v7 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v6[0] = v4;
  return outlined assign with take of Any?(v6, a4 + 8);
}

float (*GroundingShadowComponent.shadowIntensityOnPhysicalObjects.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return GroundingShadowComponent.shadowIntensityOnPhysicalObjects.modify;
}

float GroundingShadowComponent.shadowIntensityOnPhysicalObjects.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 40) = result;
  return result;
}

uint64_t one-time initialization function for all()
{
  if (one-time initialization token for floor != -1)
  {
    result = swift_once();
  }

  v0 = static ShadowScopeModeFlags.floor;
  if (one-time initialization token for wall != -1)
  {
    result = swift_once();
  }

  v1 = static ShadowScopeModeFlags.wall;
  if ((static ShadowScopeModeFlags.wall & ~v0) == 0)
  {
    v1 = 0;
  }

  static ShadowScopeModeFlags.all = v1 | v0;
  return result;
}

void *static ShadowScopeModeFlags.floor.getter@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t static ShadowScopeModeFlags.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  if (result != 1701736302 || a2 != 0xE400000000000000)
  {
    v6 = result;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      result = 0x726F6F6C66;
      if (v6 == 0x726F6F6C66 && a2 == 0xE500000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (one-time initialization token for floor != -1)
        {
          result = swift_once();
        }

        v8 = &static ShadowScopeModeFlags.floor;
      }

      else if (v6 == 1819042167 && a2 == 0xE400000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (one-time initialization token for wall != -1)
        {
          result = swift_once();
        }

        v8 = &static ShadowScopeModeFlags.wall;
      }

      else
      {
        if (v6 != 7105633 || a2 != 0xE300000000000000)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        if (one-time initialization token for all != -1)
        {
          result = swift_once();
        }

        v8 = &static ShadowScopeModeFlags.all;
      }

      v7 = *v8;
      goto LABEL_14;
    }
  }

LABEL_6:
  v7 = 0;
LABEL_14:
  *a3 = v7;
  return result;
}

_DWORD *(*GroundingShadowComponent.shadowScopeModeFlags.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 44);
  return GroundingShadowComponent.shadowScopeModeFlags.modify;
}

uint64_t GroundingShadowComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14[-v8];
  outlined init with copy of GroundingShadowComponent(v0, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1897FD0;
  *(v10 + 32) = 0x6168537374736163;
  *(v10 + 40) = 0xEB00000000776F64;
  v11 = MEMORY[0x1E69E6370];
  *(v10 + 48) = *v0;
  *(v10 + 72) = v11;
  strcpy((v10 + 80), "receivesShadow");
  *(v10 + 95) = -18;
  *(v10 + 96) = v0[1];
  *(v10 + 120) = v11;
  *(v10 + 128) = 0xD00000000000001FLL;
  *(v10 + 136) = 0x80000001C18E96A0;
  *(v10 + 168) = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.getter((v10 + 144));
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t lazy protocol witness table accessor for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects()
{
  result = lazy protocol witness table cache variable for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  if (!lazy protocol witness table cache variable for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroundingShadowComponent.FadeBehaviorNearPhysicalObjects and conformance GroundingShadowComponent.FadeBehaviorNearPhysicalObjects);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags()
{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags;
  if (!lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowScopeModeFlags and conformance ShadowScopeModeFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroundingShadowComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for GroundingShadowComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void *Entity.prepareAudio(_:)(uint64_t a1)
{
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v3 = specialized AudioPlaybackController.init(resource:entity:)(a1, v1);

  return v3;
}

void *Entity.playAudio(_:)(uint64_t a1)
{
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v3 = specialized AudioPlaybackController.init(resource:entity:)(a1, v1);

  AudioPlaybackController.play()();
  return v3;
}

Swift::Void __swiftcall Entity.stopAllAudio()()
{
  v1 = *(v0 + 16);
  REAudioPlayerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    MEMORY[0x1C68F7350]();

    RENetworkMarkComponentDirty();
  }
}

void *Entity.playAudio(_:parentTimebase:)(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AudioFileResource();
  v5 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v6 = specialized AudioPlaybackController.init(resource:entity:)(v5, v3);

  v7 = v6[4];
  v8 = v6[6];
  v9 = a2;
  REAudioPlayerComponentSetSourceClockOrTimebase();
  RENetworkMarkComponentDirty();

  AudioPlaybackController.play()();
  return v6;
}

void *Entity.prepareAudio(_:parentTimebase:)(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for AudioFileResource();
  v5 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v6 = specialized AudioPlaybackController.init(resource:entity:)(v5, v3);

  v7 = v6[4];
  v8 = v6[6];
  v9 = a2;
  REAudioPlayerComponentSetSourceClockOrTimebase();
  RENetworkMarkComponentDirty();

  return v6;
}

uint64_t static MeshResource.makeMutable()()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 32))(v1, v2);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for MeshResource();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for MeshResource();
    v4 = swift_allocObject();
    *(v4 + 16) = Mutable;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t static MeshResource.makeMutable(assetService:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 32))(v1, v2);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for MeshResource();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for MeshResource();
    v4 = swift_allocObject();
    *(v4 + 16) = Mutable;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  return v4;
}

uint64_t MeshResource.replaceAll(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    __break(1u);
    return MEMORY[0x1EEDFD058](a1, a2);
  }

  v4 = a1;
  v5 = *(v2 + 16);
  result = REAssetHandleConvertToMutable();
  if (result)
  {
    a2 = *(v4 + 16);
    a1 = v3;

    return MEMORY[0x1EEDFD058](a1, a2);
  }

  return result;
}

Swift::Void __swiftcall MeshResource.replaceAll(with:instances:skeletons:)(Swift::OpaquePointer with, Swift::OpaquePointer instances, Swift::OpaquePointer skeletons)
{
  if (!*(v3 + 16))
  {
LABEL_60:
    __break(1u);
    return;
  }

  v7 = *(v3 + 16);
  if (REAssetHandleConvertToMutable())
  {
    if (with._rawValue >> 62)
    {
      goto LABEL_53;
    }

    for (i = *((with._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (i)
      {
        v51 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          goto LABEL_58;
        }

        v9 = v51;
        if ((with._rawValue & 0xC000000000000001) != 0)
        {
          for (j = 0; j != i; ++j)
          {
            v11 = *(MEMORY[0x1C68F41F0](j, with._rawValue) + 16);
            swift_unknownObjectRelease();
            v13 = *(v51 + 16);
            v12 = *(v51 + 24);
            if (v13 >= v12 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
            }

            *(v51 + 16) = v13 + 1;
            *(v51 + 8 * v13 + 32) = v11;
          }
        }

        else
        {
          v14 = with._rawValue + 32;
          v15 = *(v51 + 16);
          do
          {
            v16 = *(*v14 + 16);
            v17 = *(v51 + 24);
            if (v15 >= v17 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1);
            }

            *(v51 + 16) = v15 + 1;
            *(v51 + 8 * v15 + 32) = v16;
            v14 += 8;
            ++v15;
            --i;
          }

          while (i);
        }
      }

      if (instances._rawValue >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((instances._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = MEMORY[0x1E69E7CC0];
      if (v18)
      {
        v20 = v9;
        v52 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          goto LABEL_59;
        }

        v19 = v52;
        if ((instances._rawValue & 0xC000000000000001) != 0)
        {
          for (k = 0; k != v18; ++k)
          {
            v22 = v19;
            v23 = *(MEMORY[0x1C68F41F0](k, instances._rawValue) + 16);
            swift_unknownObjectRelease();
            v19 = v22;
            v25 = *(v22 + 16);
            v24 = *(v22 + 24);
            if (v25 >= v24 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
              v9 = v20;
              v19 = v22;
            }

            *(v19 + 16) = v25 + 1;
            *(v19 + 8 * v25 + 32) = v23;
          }
        }

        else
        {
          v26 = instances._rawValue + 32;
          v27 = *(v52 + 16);
          do
          {
            v28 = *(*v26 + 16);
            v53 = v19;
            v29 = *(v19 + 24);
            instances._rawValue = (v27 + 1);
            if (v27 >= v29 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v27 + 1, 1);
              v9 = v20;
              v19 = v53;
            }

            *(v19 + 16) = instances;
            *(v19 + 8 * v27 + 32) = v28;
            v26 += 8;
            ++v27;
            --v18;
          }

          while (v18);
        }
      }

      v30 = *(skeletons._rawValue + 2);
      v50 = MEMORY[0x1E69E7CC0];
      if (!v30)
      {
        break;
      }

      v47 = v19;
      v54 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v31 = 0;
      v49 = skeletons._rawValue + 32;
      v50 = v54;
      v48 = v30;
      while (1)
      {
        v32 = &v49[32 * v31];
        v33 = *v32;
        with._rawValue = *(v32 + 1);
        v34 = *(v32 + 2);
        v35 = *(v32 + 3);

        skeletons._rawValue = RESkeletonDefinitionCreate();
        String.utf8CString.getter();
        RESkeletonDefinitionSetName();

        v36 = *(v35 + 16);
        if (HIDWORD(v36))
        {
          break;
        }

        v37 = *(v35 + 16);
        RESkeletonDefinitionSetJointCount();
        if (v36)
        {
          v38 = 0;
          v39 = (v35 + 40);
          do
          {
            v40 = *(v39 - 1);
            v41 = *v39;
            instances._rawValue = String.utf8CString.getter();
            RESkeletonDefinitionSetJointName();

            v39 += 2;
            ++v38;
          }

          while (v36 != v38);
        }

        if (HIDWORD(*(v34 + 16)))
        {
          goto LABEL_52;
        }

        RESkeletonDefinitionSetInverseBindPoses();

        v43 = *(v54 + 16);
        v42 = *(v54 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        }

        ++v31;
        *(v54 + 16) = v43 + 1;
        *(v54 + 8 * v43 + 32) = skeletons;
        if (v31 == v48)
        {
          v19 = v47;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      ;
    }

LABEL_43:
    if (HIDWORD(*(v9 + 16)))
    {
      __break(1u);
    }

    else if (!HIDWORD(*(v19 + 16)))
    {
      if (!HIDWORD(*(v50 + 16)))
      {
        v44 = (v50 + 32);
        REMeshAssetReplaceAllWithSkinnedModels();

        for (m = *(v50 + 16); m; --m)
        {
          v46 = *v44++;
          RERelease();
        }

        return;
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_57;
  }
}

char *EnvironmentResource.CreateOptions.init(samplingQuality:specularCubeDimension:compression:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, _WORD *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  *a5 = *a4;
  *(a5 + 2) = v5;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(Swift::Int_optional skyboxCubeDimension)
{
  is_nil = skyboxCubeDimension.is_nil;
  value = skyboxCubeDimension.value;
  v4 = *(v1 + 2);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = *MEMORY[0x1E6998E08];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v28 = MEMORY[0x1E69E7668];
  LODWORD(v27) = v4;
  outlined init with take of Any(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v9, v11, isUniquelyReferenced_nonNull_native);

  v14 = MEMORY[0x1E69E6530];
  if (!is_nil)
  {
    v15 = *MEMORY[0x1E6998DF8];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v28 = v14;
    *&v27 = value;
    outlined init with take of Any(&v27, v26);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v16, v18, v19);
  }

  if ((v6 & 1) == 0)
  {
    v20 = *MEMORY[0x1E6998E10];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    v28 = v14;
    *&v27 = v5;
    outlined init with take of Any(&v27, v26);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v21, v23, v24);
  }

  v25 = v7;
  result.value._rawValue = v25;
  result.is_nil = v13;
  return result;
}

uint64_t __SkyboxMaterial.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = REMaterialParameterBlockValueCreate();
  result = _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E7CE0);
  *a1 = result;
  return result;
}

uint64_t EnvironmentResource.LoadError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v3 == 2)
      {
        _StringGuts.grow(_:)(21);

        v11[0] = 0xD000000000000011;
        v11[1] = 0x80000001C18E98A0;
        MEMORY[0x1C68F3410](v1, v2);
        v4 = 10530;
        v5 = 0xE200000000000000;
      }

      else
      {
        _StringGuts.grow(_:)(27);

        strcpy(v11, "Extension ");
        HIDWORD(v11[1]) = -352321536;
        MEMORY[0x1C68F3410](v1, v2);
        v4 = 0x746F6E2073692022;
        v5 = 0xEE0064696C617620;
      }
    }

    else if (*(v0 + 32))
    {
      v9 = v0[2];
      v8 = v0[3];
      _StringGuts.grow(_:)(24);

      v11[0] = 0xD000000000000011;
      v11[1] = 0x80000001C18E98A0;
      MEMORY[0x1C68F3410](v1, v2);
      MEMORY[0x1C68F3410](2112034, 0xE300000000000000);
      v4 = v9;
      v5 = v8;
    }

    else
    {
      _StringGuts.grow(_:)(48);

      v11[0] = 0xD000000000000023;
      v11[1] = 0x80000001C18DF870;
      MEMORY[0x1C68F3410](v1, v2);
      v4 = 0x6E7562206E692022;
      v5 = 0xEB00000000656C64;
    }

    goto LABEL_15;
  }

  if (*(v0 + 32) > 5u)
  {
    if (v3 == 6)
    {
      v7 = v0[1];
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else
  {
    if (v3 == 4)
    {
      _StringGuts.grow(_:)(38);

      strcpy(v11, "Received only ");
      HIBYTE(v11[1]) = -18;
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v6);

      v4 = 0xD000000000000016;
      v5 = 0x80000001C18E9880;
LABEL_15:
      MEMORY[0x1C68F3410](v4, v5);
      return v11[0];
    }

    v11[0] = *v0;
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
    return Error.localizedDescription.getter();
  }

  return v1;
}

uint64_t protocol witness for LocalizedError.errorDescription.getter in conformance EnvironmentResource.LoadError()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return EnvironmentResource.LoadError.errorDescription.getter();
}

unint64_t EnvironmentResource.OptionError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xD00000000000002CLL;
  }

  _StringGuts.grow(_:)(32);

  MEMORY[0x1C68F3410](a1, a2);
  MEMORY[0x1C68F3410](0x766E692073692022, 0xEC00000064696C61);
  return 0xD000000000000012;
}

uint64_t EnvironmentResource.coreSkyboxAsset.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t EnvironmentResource.coreSkyboxAssetRef.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t EnvironmentResource.deinit()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  swift_beginAccess();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 24);
    REAssetSetSwiftObject();
    RERelease();
  }

  return v0;
}

uint64_t EnvironmentResource.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    REAssetSetSwiftObject();
    RERelease();
  }

  swift_beginAccess();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 24);
    REAssetSetSwiftObject();
    RERelease();
  }

  return swift_deallocClassInstance();
}

uint64_t static EnvironmentResource.load(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(a1, a2, a3, 0);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v6 = type metadata accessor for EnvironmentResource();
    *(inited + 32) = v4;
    *(inited + 56) = v6;
    *(inited + 64) = &protocol witness table for EnvironmentResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v4;
}

uint64_t static EnvironmentResource.load(named:in:allowsREIbl:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(a1, a2, a3, a4);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v7 = type metadata accessor for EnvironmentResource();
    *(inited + 32) = v5;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for EnvironmentResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v5;
}

uint64_t static EnvironmentResource.__load(contentsOf:withName:)(uint64_t a1)
{
  if (URL.pathExtension.getter() == 0x657974696C616572 && v3 == 0xEA0000000000766ELL)
  {

    return specialized static EnvironmentResource.loadCompiledResource(from:)();
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return specialized static EnvironmentResource.loadCompiledResource(from:)();
  }

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = specialized static EnvironmentResource.importResourceInternal(contentsOf:options:)(a1, v6);

  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t static EnvironmentResource.loadAsyncPrivate(named:in:)(void *a1, uint64_t a2, void *a3)
{
  v67 = a1;
  v70 = type metadata accessor for URL();
  v66 = *(v70 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v65 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v69 = v63 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = a3;
  v17 = specialized static __ServiceLocator.shared.getter();
  v18 = *(*(v17 + 168) + 16);
  swift_beginAccess();
  v19 = *(v17 + 24);
  swift_unownedRetainStrong();
  v20 = *(v19 + 32);

  v68 = v18;
  v21 = v20;

  *v14 = v21;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v21)
  {
    v24 = v67;
    v25 = MEMORY[0x1C68F3280](v67, a2);
    v26 = MEMORY[0x1C68F3280](0x657974696C616572, 0xEA0000000000766ELL);
    v27 = [v15 URLForResource:v25 withExtension:v26];

    if (v27)
    {
      v28 = v64;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = v22;
      v29 = v66;
      v30 = *(v66 + 32);
      v32 = v69;
      v31 = v70;
      v30(v69, v28, v70);
      v33 = v65;
      (*(v29 + 16))(v65, v32, v31);
      v34 = (*(v29 + 80) + 24) & ~*(v29 + 80);
      v35 = (v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      *(v36 + 16) = v17;
      v30((v36 + v34), v33, v31);
      v37 = v68;
      *(v36 + v35) = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
      v38 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
      v39 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v39 + 16) = v40;
      *(v39 + 24) = 0;
      *(v39 + 32) = -1;
      *(v38 + 16) = v39;
      v41 = swift_allocObject();
      v41[2] = partial apply for closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:);
      v41[3] = v36;
      v41[4] = v39;
      v41[5] = 0;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();

      v45 = v37;
      v46 = v15;
      v47 = v45;

      *(v38 + 24) = Future.init(_:)();
      v48 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

      (*(v29 + 8))(v69, v70);
    }

    else
    {
      v49 = swift_allocObject();
      v50 = v24;
      v51 = v49;
      v49[2] = v63[1];
      v49[3] = v50;
      v49[4] = a2;
      v49[5] = v15;
      v49[6] = v17;
      v49[7] = v22;
      v52 = v68;
      v49[8] = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
      v53 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
      v54 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v54 + 16) = v55;
      *(v54 + 24) = 0;
      *(v54 + 32) = -1;
      *(v53 + 16) = v54;
      v56 = swift_allocObject();
      v56[2] = partial apply for closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:);
      v56[3] = v51;
      v56[4] = v54;
      v56[5] = 0;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();

      v60 = v52;
      v61 = v22;

      v62 = v15;

      *(v53 + 24) = Future.init(_:)();
      v48 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
    }

    return v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v27 = a2;
  v28 = a3;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  (*(v16 + 16))(v18, a4, v15);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  (*(v16 + 32))(v22 + v20, v18, v15);
  v23 = (v22 + v21);
  *v23 = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  v23[1] = v19;
  aBlock[4] = partial apply for doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_88;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v25 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v14, v10, v24);
  _Block_release(v24);
  (*(v32 + 8))(v10, v25);
  (*(v30 + 8))(v14, v31);
}

void doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v61 = a2;
  v89 = *MEMORY[0x1E69E9840];
  v62 = type metadata accessor for DispatchPredicate();
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v85, 0, 25);
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v85[25] = 1;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v80[0] = 1;
  swift_beginAccess();
  outlined init with copy of __REAssetService(a1 + 120, &v73);
  v15 = *(&v74 + 1);
  v14 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  v85[27] = (*(v14 + 56))(v15, v14) & 1;
  __swift_destroy_boxed_opaque_existential_1(&v73);
  outlined init with copy of __REAssetService(a1 + 120, &v73);
  v16 = *(&v74 + 1);
  v17 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  v85[26] = (*(v17 + 56))(v16, v17) & 1;
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v57 = v13;
  v58 = v10;
  v18 = *(v10 + 16);
  v19 = v13;
  v20 = a1;
  v21 = v61;
  v61 = v9;
  v18(v19, v21, v9);
  outlined init with copy of __REAssetBundle.LoadOptions(v80, &v73);
  outlined init with copy of __REAssetService(a1 + 120, &v69);
  v22 = *(&v70 + 1);
  v23 = v71;
  __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
  LOBYTE(v66[0]) = v73;
  __REAssetService.dispatchPredicate(for:)(v66, v22, v23, v8);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v62);
  if ((v22 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a1 + 120, v66);
  swift_beginAccess();
  v24 = *(a1 + 16);
  v65 = 0;
  if (!v77)
  {
    v35 = v67;
    v36 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    (*(v36 + 32))(v35, v36);
    v27 = v57;
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v31 = RERealityFileMountFileAtURL();

    if (v31)
    {
      goto LABEL_4;
    }

LABEL_8:
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v65);
    v46 = v65;
    if (v65)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v47 = swift_allocError();
      *v48 = v46;
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v63 = 0xD00000000000001FLL;
      v64 = 0x80000001C18E1F00;
      v49 = URL.path.getter();
      MEMORY[0x1C68F3410](v49);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v50 = v63;
      v51 = v64;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      v47 = swift_allocError();
      *v52 = v50;
      *(v52 + 8) = v51;
      *(v52 + 16) = 4;
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v66);
    outlined destroy of __REAssetBundle.LoadOptions(&v73);
    (*(v58 + 8))(v27, v61);
    outlined destroy of __REAssetBundle.LoadOptions(v80);
    swift_beginAccess();
    v53 = *(v20 + 24);
    swift_unownedRetainStrong();
    v54 = swift_allocObject();
    v54[2] = v59;
    v54[3] = v60;
    v54[4] = v47;

    v55 = v47;
    __Engine.asyncOnEngineQueue(_:)(partial apply for closure #2 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:), v54);

    goto LABEL_12;
  }

  v25 = v67;
  v26 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  (*(v26 + 32))(v25, v26);
  v27 = v57;
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  String.utf8CString.getter();
  v31 = RERealityFileMountFileAtURLWithAliasName();

  if (!v31)
  {
    goto LABEL_8;
  }

LABEL_4:
  v32 = v78;
  if (v78)
  {
    MajorVersionNumber = RERealityFileGetMajorVersionNumber();
    v34 = v32 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
    *v34 = MajorVersionNumber;
    *(v34 + 8) = 1;
  }

  static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v31, v66, v24, &v73, &v69);
  v40 = v67;
  v41 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  (*(v41 + 32))(v40, v41);
  RERealityFileUnmount();
  __swift_destroy_boxed_opaque_existential_1(v66);
  outlined destroy of __REAssetBundle.LoadOptions(&v73);
  (*(v58 + 8))(v27, v61);
  v79[0] = v69;
  v79[1] = v70;
  v79[2] = v71;
  v79[3] = v72;
  swift_beginAccess();
  v42 = *(v20 + 24);
  swift_unownedRetainStrong();
  outlined init with copy of __REAssetBundle(v79, &v73);
  v43 = swift_allocObject();
  v44 = v74;
  *(v43 + 16) = v73;
  *(v43 + 32) = v44;
  v45 = v76;
  *(v43 + 48) = v75;
  *(v43 + 64) = v45;
  *(v43 + 80) = v59;
  *(v43 + 88) = v60;

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:), v43);

  outlined destroy of __REAssetBundle(v79);
  outlined destroy of __REAssetBundle.LoadOptions(v80);
LABEL_12:
  v56 = *MEMORY[0x1E69E9840];
}

void closure #1 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1 + 8);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v7 = *(a1 + 8);
    }

    v4 = __CocoaSet.count.getter();
    if (v4 < 2)
    {
      goto LABEL_3;
    }

LABEL_9:
    if ((v3 & 0xC000000000000001) == 0)
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        if (v8 != 1)
        {
          v9 = *(v3 + 32);
          v10 = *(v3 + 40);

          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v9 = MEMORY[0x1C68F41F0](0, v3);
    v10 = MEMORY[0x1C68F41F0](1, v3);
LABEL_13:
    v11 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v11 + 120, v26);
    v12 = v27;
    v13 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v13 + 32))(v12, v13);
    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __RenderService?(v14 + 40, &v21);
    if (v22)
    {
      outlined init with take of ForceEffectBase(&v21, v23);
      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v16 + 24))(v15, v16);
      v17 = *(v9 + 16);
      REAssetManagerPostLoadProcessImageBasedLightAsset();
      __swift_destroy_boxed_opaque_existential_1(v23);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v18 = *(v9 + 16);
      v19 = *(v10 + 16);
      type metadata accessor for EnvironmentResource();
      v20 = swift_allocObject();
      *(v20 + 24) = 0;
      *(v20 + 16) = v18;
      swift_beginAccess();
      *(v20 + 24) = v19;
      RERetain();
      REAssetSetSwiftObject();
      RERetain();
      REAssetSetSwiftObject();
      a2(v20, 0);

      return;
    }

    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 >= 2)
  {
    goto LABEL_9;
  }

LABEL_3:
  lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
  v5 = swift_allocError();
  *v6 = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 4;
  a2(v5, 1);
}

void closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:)(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v32 = a7;
  v33 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v34 = *(v17 - 8);
  v35 = v17;
  v18 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  v22 = specialized static EnvironmentResource.resolvedPath(forName:in:allowsREIbl:)(a4, a5, a6, 1);
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
    v26[5] = v21;
    v26[6] = a4;
    v26[7] = a5;
    v27 = v33;
    v26[8] = v32;
    v26[9] = v27;
    v42 = partial apply for doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:);
    v43 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v41 = &block_descriptor_104_0;
    v28 = _Block_copy(&aBlock);

    v29 = v27;
    static DispatchQoS.unspecified.getter();
    v37 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v20, v16, v28);
    _Block_release(v28);
    (*(v36 + 8))(v16, v13);
    (*(v34 + 8))(v20, v35);
  }

  else
  {

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    v30 = swift_allocError();
    *v31 = a4;
    *(v31 + 8) = a5;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    aBlock = v30;
    LOBYTE(v39) = 1;

    a1(&aBlock);
  }
}

void doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v12 + 120, v31);
  v14 = v32;
  v13 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v13 + 32))(v14, v13);
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __RenderService?(v15 + 40, &v26);
  if (v27)
  {
    outlined init with take of ForceEffectBase(&v26, v28);
    v17 = v29;
    v16 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v16 + 24))(v17, v16);
    String.utf8CString.getter();
    v18 = REAssetManagerImageBasedLightMemoryAssetCreateFromReiblFileAsync();

    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (v18)
    {
      swift_beginAccess();
      v19 = *(a7 + 24);
      swift_unownedRetainStrong();
      v20 = swift_allocObject();
      v20[2] = v18;
      v20[3] = a3;
      v20[4] = a4;
      v20[5] = a8;

      v21 = a8;
      __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:), v20);
    }

    else
    {
      lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
      v22 = swift_allocError();
      *v23 = a5;
      *(v23 + 8) = a6;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 2;

      a3(v22, 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  RERetain();
  RERelease();
  REAssetHandleLoadNow();
  if (REAssetHandleLoadFailed())
  {
    v18 = REAssetCopyDescription();
    v19 = String.init(_:)(v18);
    v40 = v13;
    v37 = a4;
    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v36 = a2;
    v21 = FailedMessage;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v9;
    v39 = v14;
    v23 = v22;
    v24 = v8;
    v26 = v25;

    lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
    v27 = swift_allocError();
    *v28 = v19;
    *(v28 + 16) = v23;
    *(v28 + 24) = v26;
    *(v28 + 32) = 1;
    swift_willThrow();
    RERelease();
    v29 = swift_allocObject();
    v29[2] = v36;
    v29[3] = a3;
    v29[4] = v27;
    aBlock[4] = partial apply for closure #1 in closure #1 in doLoadEnvironmentAsync #1 () in closure #2 in static EnvironmentResource.loadAsyncPrivate(named:in:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_113;
    v30 = _Block_copy(aBlock);

    v31 = v27;
    static DispatchQoS.unspecified.getter();
    v41 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v17, v12, v30);
    _Block_release(v30);

    (*(v38 + 8))(v12, v24);
    (*(v39 + 8))(v17, v40);
  }

  else
  {
    SkyboxTexture = REIBLAssetGetSkyboxTexture();
    type metadata accessor for EnvironmentResource();
    v34 = swift_allocObject();
    *(v34 + 24) = 0;
    *(v34 + 16) = a1;
    swift_beginAccess();
    *(v34 + 24) = SkyboxTexture;
    RERetain();
    REAssetSetSwiftObject();
    if (SkyboxTexture)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    a2(v34, 0);

    return RERelease();
  }
}

void closure #2 in doLoadEnvironmentAsync #1 () in closure #1 in static EnvironmentResource.loadAsyncPrivate(named:in:)(void (*a1)(void *, uint64_t), int a2, id a3)
{
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CFErrorRef(0);
  swift_dynamicCast();
  Code = CFErrorGetCode(err);
  if (Code == 300 || Code == 200)
  {
    type metadata accessor for Entity.LoadError(0);
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type Entity.LoadError and conformance Entity.LoadError, type metadata accessor for Entity.LoadError);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (Code != 100)
    {
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v6 = swift_allocError();
      *v7 = err;
      goto LABEL_8;
    }

    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    v6 = swift_allocError();
    CancellationError.init()();
  }

LABEL_8:
  a1(v6, 1);
}

uint64_t static EnvironmentResource.defaultAR()()
{
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v0 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(0xD000000000000016, 0x80000001C18E96C0, static NSBundle.coreRE, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v2 = type metadata accessor for EnvironmentResource();
  *(inited + 32) = v0;
  *(inited + 56) = v2;
  *(inited + 64) = &protocol witness table for EnvironmentResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v0;
}

uint64_t static EnvironmentResource.defaultObject()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v2 = specialized static EnvironmentResource.loadPrivate(named:in:allowsREIbl:)(0xD00000000000001ALL, 0x80000001C18E9740, static NSBundle.coreRE, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v4 = type metadata accessor for EnvironmentResource();
  *(inited + 32) = v2;
  *(inited + 56) = v4;
  *(inited + 64) = &protocol witness table for EnvironmentResource;

  specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  return v2;
}

uint64_t static EnvironmentResource.defaultObjectFillOnly()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v6;
  v1[11] = v5;

  return MEMORY[0x1EEE6DFA0](static EnvironmentResource.defaultObjectFillOnly(), v6, v5);
}

{
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = static EnvironmentResource.loadAsyncPrivate(named:in:)(0xD000000000000023, 0x80000001C18E9790, static NSBundle.coreRE);
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = static EnvironmentResource.defaultObjectFillOnly();

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v2);
}

{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[15];

  return v3(v4);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];

  Logger.init(subsystem:category:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C1358000, v5, v6, "Failed to create default environment: %@.", v8, 0xCu);
    outlined destroy of BodyTrackingComponent?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  v12 = v0[14];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];

  (*(v14 + 8))(v13, v15);
  _StringGuts.grow(_:)(38);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E9760);
  v0[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v16 = v0[2];
  v17 = v0[3];
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t static EnvironmentResource.defaultObjectFillOnly()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = static EnvironmentResource.defaultObjectFillOnly();
  }

  else
  {
    v10 = v4[12];

    v4[15] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = static EnvironmentResource.defaultObjectFillOnly();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMR);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v9;
  v1[15] = v8;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_, v9, v8);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[2] = v0[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<EnvironmentResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  MEMORY[0x1C68F2ED0](v6, v7);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[16] = static MainActor.shared.getter();
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<EnvironmentResource>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v12, v8);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY4_;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_()
{
  v1 = v0[16];

  v0[19] = v0[3];
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_, v2, v3);
}

uint64_t _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_()
{
  v1 = v0[19];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  (*(v4 + 8))(v3, v5);
  if (v1)
  {
    v6 = v0[19];
    v7 = v0[11];
    v8 = v0[8];

    v9 = v0[1];

    return v9(v6);
  }

  else
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v11 = v0[11];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t static EnvironmentResource.defaultObjectHightlightOnly()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v6;
  v1[11] = v5;

  return MEMORY[0x1EEE6DFA0](static EnvironmentResource.defaultObjectHightlightOnly(), v6, v5);
}

{
  if (one-time initialization token for coreRE != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = static EnvironmentResource.loadAsyncPrivate(named:in:)(0xD000000000000016, 0x80000001C18E97C0, static NSBundle.coreRE);
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = static EnvironmentResource.defaultObjectHightlightOnly();

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v2);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];

  Logger.init(subsystem:category:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C1358000, v5, v6, "Failed to create default environment: %@.", v8, 0xCu);
    outlined destroy of BodyTrackingComponent?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v9, -1, -1);
    MEMORY[0x1C6902A30](v8, -1, -1);
  }

  v12 = v0[14];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];

  (*(v14 + 8))(v13, v15);
  _StringGuts.grow(_:)(38);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E9760);
  v0[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v16 = v0[2];
  v17 = v0[3];
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t static EnvironmentResource.defaultObjectHightlightOnly()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = static EnvironmentResource.defaultObjectHightlightOnly();
  }

  else
  {
    v10 = v4[12];

    v4[15] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = static EnvironmentResource.defaultObjectHightlightOnly();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static EnvironmentResource.generate(fromEquirectangular:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = *MEMORY[0x1E69E9840];
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v7 = *(v6 + 16);

  v8 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v35 = 0;
  if (!RETextureImportOperationCreateAssetData())
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v17 = MEMORY[0x1C68F4250](v8);
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0xE000000000000000;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 6;
    swift_willThrow();
    goto LABEL_13;
  }

  v34 = 0;
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v6 + 40, &v28);
  if (v29)
  {
    outlined init with take of ForceEffectBase(&v28, &v30);
    v10 = v32;
    v11 = v33;
    __swift_project_boxed_opaque_existential_1(&v30, v32);
    (*(v11 + 24))(v10, v11);
    v12 = RECreateCubeTextureDataFromLatLong();
    __swift_destroy_boxed_opaque_existential_1(&v30);
    if (v12)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v6 + 120, &v30);
      v13 = v32;
      v14 = v33;
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      (*(v14 + 32))(v13, v14);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(&v30);
      RERelease();
      RERelease();
      RERelease();

      v16 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(TextureAssetFromData, 0, 0);
      if (!v4)
      {
        v6 = v16();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1887600;
        v27 = type metadata accessor for EnvironmentResource();
        *(inited + 32) = v6;
        *(inited + 56) = v27;
        *(inited + 64) = &protocol witness table for EnvironmentResource;

        specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
      }

      goto LABEL_14;
    }

    v18 = v34;
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v19 = MEMORY[0x1C68F4250](v8);
    MEMORY[0x1C68F3410](v19);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v20 = v31;
    if (v18)
    {
      v21 = v18;

      v20 = 0;
      v22 = 5;
    }

    else
    {
      v18 = v30;
      v22 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v24 = v18;
    *(v24 + 8) = v20;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v22;
    swift_willThrow();
    RERelease();
LABEL_13:
    RERelease();

LABEL_14:
    v25 = *MEMORY[0x1E69E9840];
    return v6;
  }

  __break(1u);
  return result;
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](static EnvironmentResource.generate(fromEquirectangular:withName:), v6, v5);
}

uint64_t static EnvironmentResource.generate(fromEquirectangular:withName:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v1;

  v6 = v4;
  v7 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(partial apply for closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:), v5, 0, 0);
  v0[9] = v7;

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = static ModelEntity.classLoad(contentsOf:withName:options:asyncOptions:);

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v7);
}

uint64_t static EnvironmentResource.generateAsync(fromLatLong:withName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  v8 = a1;
  v9 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:)partial apply, v7, 0, 0);

  return v9;
}

uint64_t closure #1 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(uint64_t a1)
{
  SkyboxTexture = REIBLAssetGetSkyboxTexture();
  type metadata accessor for EnvironmentResource();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 24) = SkyboxTexture;
  RERetain();
  REAssetSetSwiftObject();
  if (SkyboxTexture)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  return v3;
}

uint64_t specialized closure #2 in static EnvironmentResource.compressWithEngineQueueCompletion(coreIBLAsset:compressOptions:)(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  if (!a1 || (v12 = , a1(v12), result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1), !v7))
  {
    if (!a3 || (v14 = , a3(v14), result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a3), !v7))
    {
      if (!a5)
      {
        return a7();
      }

      a5(v15);
      result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a5);
      if (!v7)
      {
        return a7();
      }
    }
  }

  return result;
}

uint64_t closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(v5 + 16);

  v7 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a4)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v30 = 0;
  if (!RETextureImportOperationCreateAssetData())
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v15 = MEMORY[0x1C68F4250](v7);
    MEMORY[0x1C68F3410](v15);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    TextureAssetFromData = 0xE000000000000000;
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0xE000000000000000;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 6;
    swift_willThrow();
    goto LABEL_12;
  }

  v29 = 0;
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v5 + 40, &v23);
  if (v24)
  {
    outlined init with take of ForceEffectBase(&v23, &v25);
    v9 = v27;
    v10 = v28;
    __swift_project_boxed_opaque_existential_1(&v25, v27);
    (*(v10 + 24))(v9, v10);
    v11 = RECreateCubeTextureDataFromLatLong();
    __swift_destroy_boxed_opaque_existential_1(&v25);
    if (v11)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v5 + 120, &v25);
      v12 = v27;
      v13 = v28;
      __swift_project_boxed_opaque_existential_1(&v25, v27);
      (*(v13 + 32))(v12, v13);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(&v25);
      RERelease();
      RERelease();
      RERelease();

LABEL_13:
      v22 = *MEMORY[0x1E69E9840];
      return TextureAssetFromData;
    }

    v16 = v29;
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v17 = MEMORY[0x1C68F4250](v7);
    MEMORY[0x1C68F3410](v17);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    TextureAssetFromData = v26;
    if (v16)
    {
      v18 = v16;

      TextureAssetFromData = 0;
      v19 = 5;
    }

    else
    {
      v16 = v25;
      v19 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v21 = v16;
    *(v21 + 8) = TextureAssetFromData;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v19;
    swift_willThrow();
    RERelease();
LABEL_12:
    RERelease();

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = specialized static __ServiceLocator.shared.getter();
  v12 = *(*(v11 + 168) + 16);
  swift_beginAccess();
  v13 = *(v11 + 24);
  swift_unownedRetainStrong();
  v14 = *(v13 + 32);

  v15 = v12;
  v16 = v14;

  *v10 = v16;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v16)
  {
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v20 = v32;
    v21 = v33;
    v19[4] = v31;
    v19[5] = v21;
    v19[6] = v20;
    v19[7] = v11;
    v19[8] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 16) = v24;
    *(v23 + 24) = 0;
    *(v23 + 32) = -1;
    *(v22 + 16) = v23;
    v25 = swift_allocObject();
    v25[2] = partial apply for closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:);
    v25[3] = v19;
    v25[4] = v23;
    v25[5] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = v15;

    *(v22 + 24) = Future.init(_:)();
    v30 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a5;
  v30 = a6;
  v34 = a9;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v31 = *(v19 - 8);
  v32 = v19;
  v20 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v25 = v30;
  v24[4] = v29;
  v24[5] = v25;
  v24[6] = a7;
  v24[7] = a8;
  v24[8] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v24[9] = v23;
  aBlock[4] = partial apply for doGenerateEnvironmentAsync #1 @Sendable () in closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_28;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v22, v18, v26);
  _Block_release(v26);
  (*(v33 + 8))(v18, v15);
  (*(v31 + 8))(v22, v32);
}

uint64_t doGenerateEnvironmentAsync #1 @Sendable () in closure #1 in static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1();
  v14 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(v13, a4, a5);
  v16 = v15;
  swift_beginAccess();
  v17 = *(a6 + 24);
  swift_unownedRetainStrong();
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v16;
  v18[4] = a7;
  v18[5] = a8;

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:), v18);
}

uint64_t static EnvironmentResource.__fromAssets(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for EnvironmentResource();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  if (v2)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (v3)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  return v4;
}

uint64_t static EnvironmentResource.__exportCompiledResource(contentsOf:to:)(uint64_t a1, uint64_t a2)
{
  v3 = xmmword_1C18B7B50;
  v4 = 0;
  v6 = 0;
  v5 = 0;
  return specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(a1, a2, &v3, 0);
}

uint64_t static EnvironmentResource.exportCompiledResource(contentsOf:to:for:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a3 + 2);
  v4 = *(a3 + 6);
  v5 = *(a3 + 28);
  v7 = *a3;
  v8 = v3;
  v10 = v5;
  v9 = v4;
  return specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(a1, a2, &v7, 0);
}

uint64_t static EnvironmentResource.exportCompiledResource(contentsOf:to:for:compilationOptions:)(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = *(a3 + 2);
  v5 = *(a3 + 6);
  v6 = *(a3 + 28);
  v8 = *a3;
  v9 = v4;
  v11 = v6;
  v10 = v5;
  return specialized static EnvironmentResource.exportCompiledResource(contentsOf:to:for:options:)(a1, a2, &v8, a4);
}

uint64_t EnvironmentResource.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD19EnvironmentResourceCGGMR);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR);
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), 0, 0);
}

uint64_t EnvironmentResource.init(named:in:)()
{
  v1 = *(v0 + 168);
  *(v0 + 184) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v3, v2);
}

{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  v0[24] = static EnvironmentResource.loadAsyncPrivate(named:in:)(v7, v6, v5);

  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v9;
  v0[26] = v8;

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v9, v8);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v0[8] = v0[24];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<EnvironmentResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  MEMORY[0x1C68F2ED0](v6, v7);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[27] = static MainActor.shared.getter();
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<EnvironmentResource>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF19EnvironmentResourceCG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = EnvironmentResource.init(named:in:);
  v11 = v0[20];
  v12 = v0[18];

  return MEMORY[0x1EEE6D8C8](v0 + 9, v12, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = EnvironmentResource.init(named:in:);
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = EnvironmentResource.init(named:in:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

{
  v1 = v0[27];

  v0[30] = v0[9];
  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v2, v3);
}

{
  v1 = v0[30];
  v2 = v0[22];

  if (v1)
  {
    v3 = v0[30];
    v4 = *(v3 + 16);
    swift_beginAccess();
    v5 = *(v3 + 24);
    type metadata accessor for EnvironmentResource();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v4;
    swift_beginAccess();
    *(v6 + 24) = v5;
    if (v4)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    if (v5)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    v7 = v0[24];
    v9 = v0[19];
    v8 = v0[20];
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[13];

    (*(v9 + 8))(v8, v10);

    v13 = v0[1];

    return v13(v6);
  }

  else
  {
    v15 = v0[24];
    v16 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CancellationError and conformance CancellationError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v17 = v0[20];
    v18 = v0[17];

    v19 = v0[1];

    return v19();
  }
}

{
  v1 = v0[27];
  v0[10] = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(named:in:), v2, v3);
}

{
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[13];

  (*(v4 + 8))(v3, v5);
  v7 = v0[29];
  v8 = v0[20];
  v9 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t EnvironmentResource.skybox.getter()
{
  if (!*(v0 + 16) || (SkyboxTexture = REIBLAssetGetSkyboxTexture()) == 0)
  {
    v4 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v4 + 120, v6);
    v3 = closure #1 in static TextureResource.builtinTexture(named:)(v6);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v3;
  }

  v2 = SkyboxTexture;
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_6;
  }

  type metadata accessor for TextureResource();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_6:
    type metadata accessor for TextureResource();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v3;
}

uint64_t EnvironmentResource.addToLoadRequest(_:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v3 = *(a1 + 16);
    REAssetLoadRequestAddAsset();
  }

  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    v5 = *(a1 + 16);
    return REAssetLoadRequestAddAsset();
  }

  return result;
}

uint64_t EnvironmentResource.init(cube:options:)(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 1);
  v7 = *(a2 + 16);
  specialized static EnvironmentResource.validate(cubeTexture:)(a1);
  if (v2)
  {
  }

  else
  {
    v19.value = 0;
    v19.is_nil = 1;
    v8 = EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(v19);
    v9 = TextureResource.Compression.toCoreASTCOptions()();
    v10 = *(a1 + 16);
    RERetain();
    v12 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(v10, v8, v9);

    v14 = (v12)(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v16 = type metadata accessor for EnvironmentResource();
    *(inited + 32) = v14;
    *(inited + 56) = v16;
    *(inited + 64) = &protocol witness table for EnvironmentResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v17 = *(v14 + 16);
    swift_beginAccess();
    v18 = *(v14 + 24);
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    *(v4 + 16) = v17;
    swift_beginAccess();
    *(v4 + 24) = v18;
    if (v17)
    {
      RERetain();
      REAssetSetSwiftObject();
    }

    if (v18)
    {
      RERetain();
      REAssetSetSwiftObject();
    }
  }

  return v4;
}

uint64_t EnvironmentResource.init(equirectangular:withName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = *MEMORY[0x1E69E9840];
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = *(v7 + 16);

  v9 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  if (!RETextureImportOperationCreateAssetData())
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v18 = MEMORY[0x1C68F4250](v9);
    MEMORY[0x1C68F3410](v18);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0xE000000000000000;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 6;
    swift_willThrow();
    RERelease();

    goto LABEL_14;
  }

  v32 = a1;
  v39 = 0;
  swift_beginAccess();
  result = outlined init with copy of __RenderService?(v7 + 40, &v33);
  if (v34)
  {
    outlined init with take of ForceEffectBase(&v33, &v35);
    v11 = v37;
    v12 = v38;
    __swift_project_boxed_opaque_existential_1(&v35, v37);
    (*(v12 + 24))(v11, v12);
    v13 = RECreateCubeTextureDataFromLatLong();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    if (v13)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v7 + 120, &v35);
      v15 = v37;
      v14 = v38;
      __swift_project_boxed_opaque_existential_1(&v35, v37);
      (*(v14 + 32))(v15, v14);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(&v35);
      RERelease();
      RERelease();
      RERelease();

      v17 = specialized static EnvironmentResource.generateIBLAssetInternal(cubeMap:compilationOptions:compressOptions:)(TextureAssetFromData, 0, 0);
      if (v4)
      {
      }

      else
      {
        v27 = v17();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1887600;
        v29 = type metadata accessor for EnvironmentResource();
        *(inited + 32) = v27;
        *(inited + 56) = v29;
        *(inited + 64) = &protocol witness table for EnvironmentResource;

        specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
        v30 = *(v27 + 16);
        swift_beginAccess();
        v31 = *(v27 + 24);
        a3 = swift_allocObject();
        *(a3 + 24) = 0;
        *(a3 + 16) = v30;
        swift_beginAccess();
        *(a3 + 24) = v31;
        if (v30)
        {
          RERetain();
          REAssetSetSwiftObject();
        }

        if (v31)
        {
          RERetain();
          REAssetSetSwiftObject();
        }
      }

      goto LABEL_15;
    }

    v19 = v39;
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v20 = MEMORY[0x1C68F4250](v9);
    MEMORY[0x1C68F3410](v20);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v21 = v36;
    if (v19)
    {
      v22 = v19;

      v21 = 0;
      v23 = 5;
    }

    else
    {
      v19 = v35;
      v23 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v25 = v19;
    *(v25 + 8) = v21;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v23;
    swift_willThrow();
    RERelease();
    RERelease();

LABEL_14:

LABEL_15:
    v26 = *MEMORY[0x1E69E9840];
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t EnvironmentResource.init(equirectangular:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(equirectangular:withName:), v6, v5);
}

uint64_t EnvironmentResource.init(equirectangular:withName:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  v6 = v4;
  v7 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(closure #1 in static EnvironmentResource.generateAsync(fromLatLong:withName:)partial apply, v5, 0, 0);
  v0[15] = v7;

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = EnvironmentResource.init(equirectangular:withName:);

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v7);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 24);
  type metadata accessor for EnvironmentResource();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v3;
  swift_beginAccess();
  *(v5 + 24) = v4;
  if (v3)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (v4)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  v6 = *(v0 + 136);

  v7 = *(v0 + 8);

  return v7(v5);
}

{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t EnvironmentResource.init(equirectangular:withName:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v10 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[13];
    v6 = v3[14];
    v7 = EnvironmentResource.init(equirectangular:withName:);
  }

  else
  {
    v8 = v3[15];

    v5 = v3[13];
    v6 = v3[14];
    v7 = EnvironmentResource.init(equirectangular:withName:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t EnvironmentResource.init(cube:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 144) = *a2;
  *(v3 + 146) = *(a2 + 2);
  *(v3 + 80) = *(a2 + 8);
  *(v3 + 147) = *(a2 + 16);
  type metadata accessor for MainActor();
  *(v3 + 88) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 96) = v5;
  *(v3 + 104) = v4;

  return MEMORY[0x1EEE6DFA0](EnvironmentResource.init(cube:options:), v5, v4);
}

uint64_t EnvironmentResource.init(cube:options:)()
{
  specialized static EnvironmentResource.validate(cubeTexture:)(*(v0 + 64));
  v1 = *(v0 + 72);
  v2 = *(v0 + 144);
  v3 = *(v0 + 64);
  v9 = *(v0 + 146);
  v10 = *(v0 + 80);
  v11 = *(v0 + 147);
  v13.value = 0;
  v13.is_nil = 1;
  v4 = EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(v13);
  v5 = TextureResource.Compression.toCoreASTCOptions()();

  v6 = static EnvironmentResource.generateAsyncInternal(createCubeFunc:compilationOptions:compressOptions:)(partial apply for closure #1 in EnvironmentResource.init(cube:options:), v3, v4, v5);
  *(v0 + 112) = v6;

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = EnvironmentResource.init(cube:options:);

  return _s10RealityKit19EnvironmentResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v6);
}

{
  v1 = v0[16];
  v2 = v0[11];

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 24);
  type metadata accessor for EnvironmentResource();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v3;
  swift_beginAccess();
  *(v5 + 24) = v4;
  if (v3)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  if (v4)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  v6 = v0[16];
  v7 = v0[8];

  v8 = v0[1];

  return v8(v5);
}

{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

uint64_t EnvironmentResource.init(cube:options:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v10 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = v3[12];
    v6 = v3[13];
    v7 = EnvironmentResource.init(cube:options:);
  }

  else
  {
    v8 = v3[14];

    v5 = v3[12];
    v6 = v3[13];
    v7 = EnvironmentResource.init(cube:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

Swift::Int EnvironmentResource.CreateOptions.SamplingQuality.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentResource.CreateOptions.specularCubeDimension.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t EnvironmentResource.CreateOptions.specularCubeDimension.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void EnvironmentResource.CreateOptions.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  if ((v1 >> 8) == 4)
  {
    v5 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v5 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v5);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v3);
  }
}

Swift::Int EnvironmentResource.CreateOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v5 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v5 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v5);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v3);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentResource.CreateOptions()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v5 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v5 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v5);
  MEMORY[0x1C68F4C10](v2);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v3);
  }

  return Hasher._finalize()();
}

uint64_t __SkyboxMaterial.__parameterBlock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

  v6 = v5;
}

uint64_t __SkyboxMaterial.__parameterBlock.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_ypTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSypIsgnndzo_Tf1nc_n171_s10RealityKit19EnvironmentResourceC06importD8Internal33_55E864D8785BE4AB70755CF3CF8A6C5610contentsOf7optionsAC10Foundation3URLV_SDySSypGSgtKFZSbSS3key_yp5valuet_tXEfU0_Tf1nnc_nTm(v13, v7, v5, a3);
  result = MEMORY[0x1C6902A30](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_ypTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSypIsgnndzo_Tf1nc_n179_s10RealityKit15TextureResourceC0A10FoundationE13maybeCompress33_1038D445C766E7BDEA2B57AFBE26E92312textureAsset7optionsys13OpaquePointerV_SDySSypGztKFZSbSS3key_yp5valuet_tXEfU0_Tf1nnc_nTm(v13, v7, v5, a3);
  result = MEMORY[0x1C6902A30](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}