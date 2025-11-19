uint64_t ViewRendererHost.isRootHost.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Logger?(uint64_t a1, uint64_t a2)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Logger?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s2os6LoggerVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s2os6LoggerVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s2os6LoggerVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void storeEnumTagSinglePayload for Binding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t one-time initialization function for v6_4()
{
  result = swiftUI_v6_4_os_versions();
  static Semantics.v6_4 = HIDWORD(result);
  return result;
}

uint64_t StoredLocation.init(initialValue:host:signal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = specialized StoredLocation.init(initialValue:host:signal:)(a1, a2, a3);

  (*(*(*(v5 + 232) - 8) + 8))(a1);
  return v6;
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_2(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_5(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CustomAttributeWriter(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t one-time initialization function for toolbar()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.toolbar);
  v5 = __swift_project_value_buffer(v1, static Log.toolbar);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD836C0);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

uint64_t static ViewModifier.makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v80 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v10;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v11 = *(a2 + 16);
  v68 = *a2;
  v69 = v11;
  static DynamicPropertyCache.fields(of:)(a5, &v74);
  v12 = v74;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v62 = v68;
  v63 = v69;
  v24 = DWORD1(v75);
  v25 = v9;
  LODWORD(v48) = v9;
  v56 = v74;
  v27 = *(&v74 + 1);
  v28 = v75;
  LOBYTE(v57) = v75;
  DWORD1(v57) = DWORD1(v75);
  outlined init with copy of _ViewInputs(&v68, &v74);
  static ViewModifier.makeBody(modifier:inputs:fields:)(v54, &v74, &v48, &v62, &v56);
  v13 = v54[0];
  v23 = v74;
  v26 = v75;
  type metadata accessor for _ViewModifier_Content();
  *&v74 = a3;
  *(&v74 + 1) = a4;
  LOBYTE(v75) = 0;
  v14 = type metadata accessor for BodyInput();
  _ViewInputs.append<A, B>(_:to:)(&v74, v14, v14, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v74 = v62;
  v75 = v63;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v50 = v76;
  v51 = v77;
  v52 = v78;
  v53 = v79;
  v48 = v74;
  v49 = v75;
  v55 = v79;
  v17 = v76;
  LODWORD(v50) = 0;
  LODWORD(v36) = v13;
  v54[0] = v74;
  v54[1] = v75;
  v54[3] = v77;
  v54[4] = v78;
  v54[2] = v50;
  v44 = v50;
  v45 = v77;
  v46 = v78;
  v47 = v79;
  v42 = v74;
  v43 = v75;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v74, &v56);
  outlined init with copy of _ViewInputs(v54, &v56);
  v19(v31, &v36, &v42, AssociatedTypeWitness, AssociatedConformanceWitness);
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v56 = v42;
  v57 = v43;
  outlined destroy of _ViewInputs(&v56);
  LODWORD(v50) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v31, &v48);
    AGSubgraphEndTreeElement();
  }

  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  outlined destroy of _ViewInputs(&v42);
  v20 = v31[0];
  v21 = v31[1];
  if (v26)
  {
    v38 = v64;
    v39 = v65;
    v40 = v66;
    v41 = v67;
    v36 = v62;
    v37 = v63;
    outlined destroy of _ViewInputs(&v36);
  }

  else
  {
    v35 = v23;
    v30 = v25;
    v32[0] = v12;
    v32[1] = v27;
    v33 = v28;
    v34 = v24;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v30, v32, a5);
    v38 = v64;
    v39 = v65;
    v40 = v66;
    v41 = v67;
    v36 = v62;
    v37 = v63;
    outlined destroy of _ViewInputs(&v36);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a6 = v20;
  a6[1] = v21;
  return result;
}

uint64_t static _ViewModifier_Content._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  type metadata accessor for _ViewModifier_Content();
  v10 = v4;
  return static ViewModifierContentProvider.providerMakeView(view:inputs:)(v8, a3);
}

unint64_t type metadata accessor for CorePlatformProvidersDefinition.Type()
{
  result = lazy cache variable for type metadata for CorePlatformProvidersDefinition.Type;
  if (!lazy cache variable for type metadata for CorePlatformProvidersDefinition.Type)
  {
    type metadata accessor for CorePlatformProvidersDefinition();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CorePlatformProvidersDefinition.Type);
  }

  return result;
}

void *initializeWithCopy for _AppearanceActionModifier(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  return a1;
}

void *destroy for _AppearanceActionModifier(void *result)
{
  v1 = result;
  if (*result)
  {
  }

  if (v1[2])
  {
  }

  return result;
}

uint64_t EnvironmentValues.subscript.getter()
{
  v0 = type metadata accessor for EnvironmentObjectKey();
  WitnessTable = swift_getWitnessTable();
  EnvironmentValues.subscript.getter(v0, v0, WitnessTable);
  return v3;
}

{
  return specialized EnvironmentValues.subscript.getter();
}

{
  return specialized EnvironmentValues.subscript.getter();
}

{
  return EnvironmentValues.subscript.getter();
}

{
  return EnvironmentValues.subscript.getter();
}

uint64_t specialized EnvironmentValues.subscript.getter()
{
  return EnvironmentValues.subscript.getter();
}

{
  result = EnvironmentValues.subscript.getter();
  if (!result)
  {
    _StringGuts.grow(_:)(118);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD77650);
    v1 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v1);

    MEMORY[0x193ABEDD0](0xD000000000000029, 0x800000018DD77670);
    v2 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v2);

    MEMORY[0x193ABEDD0](0xD00000000000002CLL, 0x800000018DD776A0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized EnvironmentValues.subscript.setter(uint64_t a1)
{
  return specialized EnvironmentValues.subscript.setter(a1);
}

{
  v4 = a1;
  v1 = type metadata accessor for EnvironmentObjectKey();
  WitnessTable = swift_getWitnessTable();
  return specialized EnvironmentValues.subscript.setter(&v4, v1, v1, WitnessTable);
}

{
  return specialized EnvironmentValues.subscript.setter(a1);
}

uint64_t static Optional<A>._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v7 = type metadata accessor for Optional();
      static Optional.makeConditionalMetadata<A>(_:)(&type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v26);
      v23 = v26;
      v24 = v27;
      v25 = v28;
      v22 = v5;
      v8 = *(a2 + 48);
      v18 = *(a2 + 32);
      v19 = v8;
      v20 = *(a2 + 64);
      v21 = *(a2 + 80);
      v9 = *(a2 + 16);
      v16 = *a2;
      v17 = v9;
      WitnessTable = swift_getWitnessTable();
      static DynamicView.makeDynamicView(metadata:view:inputs:)(&v23, &v22, &v16, v7, WitnessTable, a3);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v23);
    }
  }

  else if (static Semantics.forced < v6)
  {
    goto LABEL_7;
  }

  v12 = type metadata accessor for Optional();
  LODWORD(v26) = v5;
  v13 = *(a2 + 48);
  v18 = *(a2 + 32);
  v19 = v13;
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  v14 = *(a2 + 16);
  v16 = *a2;
  v17 = v14;
  v15 = swift_getWitnessTable();
  return static View.makeImplicitRoot(view:inputs:)(&v26, &v16, v12, v15, a3);
}

uint64_t static _AppearanceActionModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *a1;
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v7 = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    v7 = dyld_program_sdk_at_least();
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (static Semantics.forced >= v6)
  {
LABEL_9:
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks();
    v7 = Attribute.init<A>(body:value:flags:update:)();
    v5 = v7;
  }

LABEL_10:
  a3(v7, a2);
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v5, a2);
}

unint64_t lazy protocol witness table accessor for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks()
{
  result = lazy protocol witness table cache variable for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks;
  if (!lazy protocol witness table cache variable for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks);
  }

  return result;
}

uint64_t destroy for AppearanceEffect(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (v2 == 1)
    {
      return result;
    }

    v3 = result;

    result = v3;
  }

  if (*(result + 24))
  {
  }

  return result;
}

uint64_t static _AppearanceActionModifier._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v9 = *a2;
  v10 = *(a2 + 2);
  v5 = *(a2 + 6);
  v12 = *(a2 + 28);
  v13 = *(a2 + 44);
  v14 = *(a2 + 60);
  v15 = *(a2 + 76);
  v6 = *MEMORY[0x1E698D3F8];
  *&v20[0] = __PAIR64__(v5, v4);
  *(&v20[0] + 1) = 1;
  v20[1] = 0uLL;
  WORD4(v21) = 0;
  *&v21 = 0;
  HIDWORD(v21) = 0;
  v22 = v6;
  v16 = v20[0];
  v17 = 0uLL;
  v18 = v21;
  v19 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AppearanceEffect(v20);
  v7 = AGGraphSetFlags();
  v11 = v5;
  return a3(v7, &v9);
}

unint64_t lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect()
{
  result = lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect;
  if (!lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect);
  }

  return result;
}

uint64_t initializeWithCopy for AppearanceEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = *(a2 + 24);
      *v4 = *v5;
      *(a1 + 24) = v7;
      goto LABEL_9;
    }

    v8 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
  }

  else
  {
    *v4 = *v5;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    v10 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

LABEL_9:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t closure #1 in static _BackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = a4(0);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t static _BackgroundModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v16[1] = v10;
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _BackgroundModifier._makeView(modifier:inputs:body:), a4, v16);
  v13 = v16[0];
  v15[1] = v10;
  _GraphValue.subscript.getter(partial apply for closure #2 in static _BackgroundModifier._makeView(modifier:inputs:body:), &type metadata for Alignment, v15);
  return makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v13, v15[0], v17, a3, 1, a4, a5, a6);
}

uint64_t closure #2 in static _BackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for _BackgroundModifier();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v7, &type metadata for Alignment, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceTransform<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for PreferenceTransform<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t PreferenceCombiner.init(attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[5] = a1;
  v11[2] = a2;
  v11[3] = a3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Attribute();
  v5 = type metadata accessor for Array();
  v6 = type metadata accessor for WeakAttribute();
  WitnessTable = swift_getWitnessTable();
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PreferenceCombiner.init(attributes:), v11, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  *a4 = v9;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceCombiner<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for PreferenceCombiner<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t EnvironmentValues.legibilityWeight.getter@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  if (v3[1])
  {

    a1(v5);
  }

  else
  {
    result = a2(*v3);
    if (result)
    {
      v8 = *(result + 72);
    }

    else
    {
      v8 = 2;
    }

    *a3 = v8;
  }

  return result;
}

uint64_t specialized static Environment._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  v7 = type metadata accessor for EnvironmentBox();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-v9];
  v11 = *(a3 + 16);
  swift_beginAccess();
  if (a4 == &type metadata for EnvironmentValues)
  {
    v14 = *(v11 + 16);
    type metadata accessor for PropertyList.Tracker();
    v15 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = MEMORY[0x1E69E7CC8];
    *(v16 + 24) = 0;
    *(v16 + 32) = v17;
    v18 = MEMORY[0x1E69E7CC0];
    *(v16 + 40) = v17;
    *(v16 + 48) = v18;
    *(v16 + 56) = 0;
    *(v15 + 16) = v16;
    v20 = v14;
    v21 = xmmword_18DD85550;
    v22 = 0;
    v23 = v15;
    specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(&v20, a2);
    return outlined destroy of FullEnvironmentBox(&v20);
  }

  else
  {
    v12 = *(v11 + 16);
    *(v10 + 1) = 0;
    (*(a4[-1].Description + 7))(&v10[*(v7 + 32)], 1, 1, a4);
    v10[*(v7 + 36)] = 0;
    *v10 = v12;
    swift_getWitnessTable();
    _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v10, a2, v7);
    return (*(v8 + 8))(v10, v7);
  }
}

_DWORD *initializeWithCopy for EnvironmentBox(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v6 + v9 + 8) & ~v9);
  v11 = ((v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8)) & ~v9);
  v12 = *(v8 + 48);

  if (v12(v11, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v10, v11, v15);
  }

  else
  {
    (*(v8 + 16))(v10, v11, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  *(v10 + v18) = *(v11 + v18);
  return a1;
}

uint64_t destroy for EnvironmentBox(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(a2 + 16);
  v9 = *(v4 - 8);
  v5 = *(v9 + 80);
  v6 = v3 + v5 + 8;
  result = (*(v9 + 48))(v6 & ~v5, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, v4);
  }

  return result;
}

uint64_t type metadata completion function for EnvironmentBox()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for BoxVTable();
  UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(a1, v7, a3, &v8);
  if (!*v3)
  {
    goto LABEL_9;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(*v3 + v9 + 12) = *(*v3 + v9 + 12) & 0x80000000 | a2;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t static BoxVTable.moveInitialize(elt:from:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v11 = *v7;
  v8 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v11 = v6;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  UnsafeMutablePointer.move()();
  return _sSpsRi_zrlE10initialize2toyxn_tF(v4, v8, v2);
}

void type metadata accessor for Attribute<EnvironmentValues>()
{
  if (!lazy cache variable for type metadata for Attribute<EnvironmentValues>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>);
    }
  }
}

uint64_t static _EnvironmentKeyWritingModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for _EnvironmentKeyWritingModifier();
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  v7 = type metadata accessor for ChildEnvironment();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  LODWORD(a1) = *a1;
  v11 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v11) = *(v11 + 16);
  v12 = type metadata accessor for _EnvironmentKeyWritingModifier();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  ChildEnvironment.init(modifier:env:oldModifier:)(a1, v11, v6, v10);
  v18 = v7;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_5, v17, v7, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  (*(v8 + 8))(v10, v7);
  return _GraphInputs.environment.setter(v16[3]);
}

uint64_t type metadata accessor for ChildEnvironment()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

void storeEnumTagSinglePayload for _EnvironmentKeyWritingModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

_DWORD *initializeWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = ~v8;
  v13 = *(v7 + 64);
  v14 = v8 + 8;
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v15 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if (v15 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v10 = *v11;
    v16 = *(v7 + 16);

    v16((v10 + v14) & v12, (v11 + v14) & v12, v6);
    return a1;
  }

  if (!(*(v7 + 48))((v11 + v14) & v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v10, v11, (v14 & ~v8) + v13);
  return a1;
}

{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ChildEnvironment<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ChildEnvironment<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_18D06AB98(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t type metadata completion function for ChildEnvironment()
{
  type metadata accessor for _EnvironmentKeyWritingModifier();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t base witness table accessor for _AttributeBody in ChildEnvironment<A>()
{
  return swift_getWitnessTable();
}

{
  return swift_getWitnessTable();
}

uint64_t ChildEnvironment.init(modifier:env:oldModifier:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ChildEnvironment() + 32);
  type metadata accessor for _EnvironmentKeyWritingModifier();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t destroy for ChildEnvironment(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v4 | 7) + 4) & ~(v4 | 7));
  v6 = ~v4;
  v10 = v3;
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    result = (*(v3 + 48))((v5 + v4 + 8) & v6);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *v5;
  if (*v5 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = *(v10 + 8);

    return v9((v5 + v4 + 8) & v6, v2);
  }

  return result;
}

{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + *(v3 + 80) + 4) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, v2))
  {
    (*(v3 + 8))(v4, v2);
  }
}

uint64_t specialized static State._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v11[0] = AGCreateWeakAttribute();
  v11[1] = 0;
  v9 = type metadata accessor for StatePropertyBox();
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v11, a2, v9);
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    type metadata accessor for State();
    LODWORD(v11[0]) = 1;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v8, a4, a5, a2);
  }

  return result;
}

uint64_t StatePropertyBox.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[1];
  v10 = v9 == 0;
  v11 = v9;
  if (!v9)
  {
    if (*(a1 + *(type metadata accessor for State() + 28)) && (type metadata accessor for StoredLocation(), (v12 = swift_dynamicCastClass()) != 0))
    {
      v11 = v12;
      v3[1] = v12;
    }

    else
    {
      (*(v6 + 16))(v8, a1, v5);
      type metadata accessor for StoredLocation();
      v13 = specialized static GraphHost.currentHost.getter();
      v11 = specialized StoredLocation.__allocating_init(initialValue:host:signal:)(v8, v13, *v3);

      (*(v6 + 8))(v8, v5);
      v3[1] = v11;
    }
  }

  WeakValue = AGGraphGetWeakValue();
  v16 = v15 & 1;
  StoredLocationBase.updateValue.getter(v8);
  (*(v6 + 40))(a1, v8, v5);
  v17 = *(type metadata accessor for State() + 28);

  *(a1 + v17) = v11;
  if (WeakValue)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v10 = (v9 == 0) | StoredLocationBase.wasRead.getter();
  }

  return v10 & 1;
}

uint64_t State.getValue(forReading:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + *(a2 + 28));
  if (!v6)
  {
LABEL_8:
    v9 = *(*(*(a2 + 16) - 8) + 16);

    return v9(a3, v3);
  }

  v8 = one-time initialization token for sharedGraph;

  if (v8 != -1)
  {
    swift_once();
  }

  if (AGGraphGetCounter())
  {
    if (a1)
    {
      (*(*v6 + 104))(1);
    }

    goto LABEL_8;
  }

  (*(*v6 + 120))();
}

uint64_t StoredLocationBase.updateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  StoredLocationBase.$data.getter(&v9);
  v4 = v9;
  v5 = *(v3 + 168);
  v6 = type metadata accessor for StoredLocationBase.Data();
  v7 = (*(*(v6 - 8) + 80) + 20) & ~*(*(v6 - 8) + 80);
  os_unfair_lock_lock(v4 + 4);
  closure #1 in StoredLocationBase.updateValue.getter(v4 + v7, v5, a1);
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(&v4[4], v4, v6);
}

uint64_t StoredLocationBase.$data.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  type metadata accessor for StoredLocationBase.Data();
  type metadata accessor for AtomicBox();
  return AtomicBox.projectedValue.getter(a1);
}

uint64_t closure #1 in StoredLocationBase.updateValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v13[3] = *(a1 + *(type metadata accessor for StoredLocationBase.Data() + 28));
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  v10 = *(a2 - 8);
  v11 = *(v10 + 48);
  if (v11(v9, 1, a2) != 1)
  {
    return (*(v10 + 32))(a3, v9, a2);
  }

  (*(v10 + 16))(a3, a1, a2);
  result = (v11)(v9, 1, a2);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t StoredLocationBase.data.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = type metadata accessor for StoredLocationBase.Data();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 20) & ~*(v5 + 80);

  os_unfair_lock_lock(v3 + 4);
  (*(v5 + 16))(a1, v3 + v6, v4);
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(&v3[4], v3, v4);
}

uint64_t type metadata completion function for _ShapeView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Rectangle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 280);
  v16 = *(a2 + 288);
  *(a1 + 280) = v15;
  *(a1 + 288) = v16;

  v17 = v16;
  return a1;
}

uint64_t one-time initialization function for largeTitle(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>, lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, type metadata accessor for FontBox);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 17) = 4;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *a3 = result;
  return result;
}

void type metadata accessor for FontBox<Font.TextStyleProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for Font.TextStyleProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider()
{
  result = lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider;
  if (!lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider;
  if (!lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider;
  if (!lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider);
  }

  return result;
}

uint64_t EnvironmentValues.accentColor.setter(uint64_t a1)
{
  specialized EnvironmentValues.accentColor.setter(a1);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016RedactionReasonsV033_18671928047E57F039DC339288B6FAFBLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016RedactionReasonsV033_18671928047E57F039DC339288B6FAFBLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016RedactionReasonsV033_18671928047E57F039DC339288B6FAFBLLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t EnvironmentBox.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v126 = *MEMORY[0x1E69E9840];
  v117 = a3;
  v4 = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v110 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v113 = v96 - v9;
  v114 = type metadata accessor for ObservationTracking._AccessList();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v107 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v108 = v96 - v12;
  type metadata accessor for ObservationTracking._AccessList?();
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v105 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v96 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v111 = v96 - v19;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v102 = v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v96 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v115 = v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v106 = v96 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v118 = v96 - v31;
  v32 = type metadata accessor for Environment.Content();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v109 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = (v96 - v37);
  (*(v33 + 16))(v96 - v37, a1, v32, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v33 + 8))(v38, v32);
    return 0;
  }

  v98 = v33;
  v99 = v32;
  v116 = v20;
  v103 = v5;
  v100 = v7;
  v97 = a1;
  v40 = *v38;
  v41 = v119;
  Value = AGGraphGetValue();
  v43 = Value[1];
  v124[0] = *Value;
  v124[1] = v43;
  v45 = v44 & 1;
  v125 = v44 & 1;
  v46 = *(v41 + 8);
  *&v122 = v40;
  v96[2] = v40;
  if (!v46)
  {

LABEL_10:
    v48 = v114;
    v125 = 1;
    *(v119 + 8) = v40;
    goto LABEL_11;
  }

  v121 = v46;
  type metadata accessor for KeyPath();

  swift_retain_n();

  v47 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v47 & 1) == 0)
  {

    goto LABEL_10;
  }

  v48 = v114;
  if (!v45 && (*(v119 + *(v117 + 36)) & 1) == 0)
  {
    v49 = *(v110 + 16);
LABEL_26:
    v80 = v103;
    v88 = v116;
    goto LABEL_29;
  }

LABEL_11:
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v50 = static ObservationCenter._current;
  swift_beginAccess();
  v51 = pthread_getspecific(v50[2]);
  v52 = v116;
  if (!v51)
  {
    v53 = swift_slowAlloc();
    pthread_setspecific(v50[2], v53);
    v123 = type metadata accessor for ObservationCenter();
    *&v122 = v50[3];
    outlined init with take of Any(&v122, v53);

    v51 = v53;
  }

  outlined init with copy of Any(v51, &v122);
  type metadata accessor for ObservationCenter();
  v54 = swift_dynamicCast();
  v96[1] = v96;
  v101 = v120;
  v55 = MEMORY[0x1EEE9AC00](v54);
  v96[-2] = v124;
  v96[-1] = v40;
  v56 = v112;
  v57 = (*(v112 + 56))(v17, 1, 1, v48, v55);
  MEMORY[0x1EEE9AC00](v57);
  v96[-4] = v4;
  v96[-3] = partial apply for closure #1 in EnvironmentBox.update(property:phase:);
  v96[-2] = &v96[-4];
  v58 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v96[-6], v104, v58, v4, MEMORY[0x1E69E7288], &v122);
  v104 = 0;
  v59 = *(v52 + 32);
  v59(v115, v25, v4);
  v60 = v111;
  outlined init with take of ObservationTracking._AccessList?(v17, v111);
  v61 = v105;
  outlined init with copy of ObservationTracking._AccessList?(v60, v105);
  v62 = (*(v56 + 48))(v61, 1, v48);
  v63 = v113;
  if (v62 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v60);
    v74 = v61;
  }

  else
  {
    v64 = *(v56 + 32);
    v65 = v108;
    v64(v108, v61, v48);
    (*(v56 + 16))(v107, v65, v48);
    v66 = v101;
    swift_beginAccess();
    v67 = *(v66 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + 24) = v67;
    v96[0] = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
      *(v66 + 24) = v67;
    }

    v70 = v67[2];
    v69 = v67[3];
    if (v70 >= v69 >> 1)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1, v67);
    }

    v67[2] = v70 + 1;
    v71 = v112;
    v72 = v67 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v112 + 72) * v70;
    v73 = v114;
    (v96[0])(v72, v107, v114);
    *(v101 + 24) = v67;
    (*(v71 + 8))(v108, v73);
    v63 = v113;
    v74 = v111;
  }

  outlined destroy of ObservationTracking._AccessList?(v74);
  v75 = v106;
  v59(v106, v115, v4);

  v59(v118, v75, v4);
  v76 = v117;
  v77 = v119;
  *(v119 + *(v117 + 36)) = v62 != 1;
  v78 = *(v76 + 32);
  v79 = v110;
  v49 = *(v110 + 16);
  v80 = v103;
  v49(v63, v77 + v78, v103);
  v81 = v116;
  if ((*(v116 + 48))(v63, 1, v4) == 1)
  {
    v82 = v63;
    v83 = *(v79 + 8);
    v17 = ((v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v83(v82, v80);
  }

  else
  {
    v84 = v102;
    v85 = (v59)(v102, v63, v4);
    MEMORY[0x1EEE9AC00](v85);
    v86 = v118;
    v96[-4] = v4;
    v96[-3] = v86;
    LODWORD(v96[-2]) = 3;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v84, partial apply for closure #1 in compareValues<A>(_:_:options:), &v96[-6], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v87);
    v17 = *(v81 + 8);
    (v17)(v84, v4);
    if (v120)
    {
      (v17)(v118, v4);
      v125 = 0;
      goto LABEL_26;
    }

    v83 = *(v110 + 8);
    v17 = ((v110 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v80 = v103;
  }

  v89 = v119;
  v83((v119 + v78), v80);
  v59((v89 + v78), v118, v4);
  v88 = v116;
  (*(v116 + 56))(v89 + v78, 0, 1, v4);
LABEL_29:
  v90 = v100;
  v49(v100, v119 + *(v117 + 32), v80);
  v91 = (*(v88 + 48))(v90, 1, v4);
  v92 = v99;
  v93 = v98;
  if (v91 != 1)
  {

    v94 = v109;
    (*(v88 + 32))(v109, v90, v4);
    swift_storeEnumTagMultiPayload();
    (*(v93 + 40))(v97, v94, v92);
    v39 = v125;

    return v39;
  }

  __break(1u);
  result = outlined destroy of ObservationTracking._AccessList?(v17);
  __break(1u);
  return result;
}

uint64_t closure #1 in EnvironmentBox.update(property:phase:)()
{

  swift_getAtKeyPath();
}

unsigned __int8 *assignWithTake for Environment(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
  }

  v13 = *(a2 + v7);
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *a1 = *a2;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t ChildEnvironment.updateValue()(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v4;
  v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v16 = *(v15 + 48);
  Value = AGGraphGetValue();
  v19 = v18;
  v44 = *(v5 - 8);
  (*(v44 + 16))(v14, Value, v5);
  v41 = v1;
  v42 = v14;
  v14[v16] = v19 & 1;
  v20 = AGGraphGetValue();
  v21 = v20[1];
  v46 = *v20;
  v47 = v21;
  v48 = v22 & 1;
  v39 = a1;
  if (v22)
  {

    goto LABEL_7;
  }

  if (v19)
  {
    MEMORY[0x1EEE9AC00](v20);
    v32 = v42;
    *(&v34 - 2) = v40;
    *(&v34 - 1) = v32;
    v43 = type metadata accessor for Optional();

    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), (&v34 - 4), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v33, v45);
    if (LOBYTE(v45[0]) == 2 || (v45[0] & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (!AGGraphGetOutputValue())
  {
LABEL_7:
    v24 = *(v7 + 16);
    v25 = v38;
    v23 = v42;
    v24(v38, v42, TupleTypeMetadata2);
    v35 = v7;
    v43 = TupleTypeMetadata2;
    v26 = *(v44 + 8);

    v26(v25, v5);
    v24(v9, v23, v43);
    (*(v37 + 16))(v36, &v9[*(v5 + 28)], v40);
    v26(v9, v5);
    swift_setAtWritableKeyPath();

    v45[0] = v46;
    v45[1] = v47;

    AGGraphSetOutputValue();

    TupleTypeMetadata2 = v43;
    v7 = v35;

    v27 = *(v39 + 32);
    v28 = type metadata accessor for Optional();
    v29 = v41;
    (*(*(v28 - 8) + 8))(v41 + v27, v28);
    v24(v25, v23, TupleTypeMetadata2);
    v30 = v44;
    (*(v44 + 32))(v29 + v27, v25, v5);
    (*(v30 + 56))(v29 + v27, 0, 1, v5);
    return (*(v7 + 8))(v23, TupleTypeMetadata2);
  }

  v23 = v42;
  return (*(v7 + 8))(v23, TupleTypeMetadata2);
}

{
  v2 = v1;
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  Value = AGGraphGetValue();
  v13 = v12;
  v15 = *Value;
  v14 = Value[1];
  v42 = v15;
  v43 = v14;
  v44 = v12 & 1;

  v35 = a1;
  v16 = ChildEnvironment.modifier.getter();

  v17 = swift_readAtKeyPath();
  v34 = v5;
  v33 = *(v5 + 16);
  v33(v10);
  v17(v41, 0);

  v38 = v4;
  v39 = v2;
  v40 = v10;
  v18 = type metadata accessor for _EnvironmentKeyTransformModifier();
  v19 = Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in ChildEnvironment.updateValue(), v37, v18, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  if ((v13 & 1) != 0 || (MEMORY[0x1EEE9AC00](v19), *(&v32 - 2) = v4, *(&v32 - 1) = v10, type metadata accessor for Optional(), _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), (&v32 - 4), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v20, v41), LOBYTE(v41[0]) == 2) || (v41[0] & 1) != 0 || (v41[0] = *(v2 + *(v35 + 36)), type metadata accessor for WritableKeyPath(), type metadata accessor for Optional(), , _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in implicit closure #3 in ChildEnvironment.updateValue(), v16, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v21, &v36), , v36 == 2) || (v36 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v23 = v10;
    v24 = v10;
    v25 = v16;
    v26 = v33;
    (v33)(v7, v23, v4);
    swift_setAtWritableKeyPath();
    v41[0] = v42;
    v41[1] = v43;

    AGGraphSetOutputValue();

    v27 = v35;
    v28 = *(v35 + 32);
    v29 = type metadata accessor for Optional();
    (*(*(v29 - 8) + 8))(v2 + v28, v29);
    v26(v2 + v28, v24, v4);
    v22 = v34;
    (*(v34 + 56))(v2 + v28, 0, 1, v4);
    v30 = *(v27 + 36);

    *(v2 + v30) = v25;
    v10 = v24;
  }

  else
  {

    v22 = v34;
  }

  return (*(v22 + 8))(v10, v4);
}

uint64_t getEnumTagSinglePayload for _EnvironmentKeyWritingModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2g5@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(a1, v6);
  if (result)
  {
    v5 = *(result + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void _GraphInputs.interfaceIdiom.getter(void *a1@<X8>)
{
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v3, v8);
  if (v4 && (v5 = v4, (v6 = *(v4 + 72)) != 0))
  {
    v7 = *(v5 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>();
    v7 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24WithinAccessibilityRotorV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24WithinAccessibilityRotorV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for WithinAccessibilityRotor)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t static ViewModifier<>._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v31 = *(a2 + 32);
  v32 = v10;
  v12 = *(a2 + 48);
  v33 = *(a2 + 64);
  v13 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v13;
  v26 = v31;
  v27 = v12;
  v28 = *(a2 + 64);
  v14 = *a1;
  v34 = *(a2 + 80);
  v29 = *(a2 + 80);
  v24 = v30[0];
  v25 = v11;
  LODWORD(v37[0]) = v14;
  v15 = *(a7 + 8);
  outlined init with copy of _ViewInputs(v30, v39);
  v15(v37, &v24, a5, a7);
  v35[2] = v26;
  v35[3] = v27;
  v35[4] = v28;
  v36 = v29;
  v35[0] = v24;
  v35[1] = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  v16 = outlined init with copy of _ViewInputs(v35, v39);
  a3(v16, &v18);
  v37[2] = v20;
  v37[3] = v21;
  v37[4] = v22;
  v38 = v23;
  v37[0] = v18;
  v37[1] = v19;
  outlined destroy of _ViewInputs(v37);
  v39[2] = v26;
  v39[3] = v27;
  v39[4] = v28;
  v40 = v29;
  v39[0] = v24;
  v39[1] = v25;
  return outlined destroy of _ViewInputs(v39);
}

uint64_t type metadata completion function for StaticIf()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t static ViewModifier<>._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  outlined init with copy of _ViewListInputs(a2, v14);
  v13 = v10;
  v11 = (*(a7 + 8))(&v13, v14, a5, a7);
  a3(v11, v14);
  return outlined destroy of _ViewListInputs(v14);
}

uint64_t _ViewInputs.scrapeableParentID.setter(int *a1)
{
  v2 = *a1;
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(v1, v2);
}

double AccessibilityProperties.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 224) = v7[6];
  *(a1 + 240) = v2;
  *(a1 + 256) = v7[8];
  *(a1 + 272) = v8;
  v3 = v7[3];
  *(a1 + 160) = v7[2];
  *(a1 + 176) = v3;
  v4 = v7[5];
  *(a1 + 192) = v7[4];
  *(a1 + 208) = v4;
  result = *v7;
  v6 = v7[1];
  *(a1 + 128) = v7[0];
  *(a1 + 144) = v6;
  *(a1 + 280) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t static AccessibilityAttachment.properties(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AccessibilityProperties(a1, v8);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v9);
  v3 = v9[7];
  *(a2 + 224) = v9[6];
  *(a2 + 240) = v3;
  *(a2 + 256) = v9[8];
  *(a2 + 272) = v10;
  v4 = v9[3];
  *(a2 + 160) = v9[2];
  *(a2 + 176) = v4;
  v5 = v9[5];
  *(a2 + 192) = v9[4];
  *(a2 + 208) = v5;
  v6 = v9[1];
  *(a2 + 128) = v9[0];
  *(a2 + 144) = v6;
  *(a2 + 280) = MEMORY[0x1E69E7CC8];
  *(a2 + 288) = 0;
  return outlined assign with take of AccessibilityProperties(v8, a2);
}

uint64_t initializeWithCopy for AccessibilityProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  return a1;
}

double _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t destroy for PlatformItem.AccessibilityContent(uint64_t a1)
{

  v2 = *(a1 + 88);
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

LABEL_5:
  if (*(a1 + 240) != 1)
  {
  }
}

uint64_t assignWithTake for AccessibilityProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = a1 + 64;
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  return a1;
}

uint64_t destroy for TextVariantsStorage.Variant(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
}

void destroy for AccessibilityAttachment(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }

  v3 = a1[36];
}

uint64_t initializeWithCopy for _IntelligenceSupport.AnimatingText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t _VariadicView.Tree.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  (*(v9 + 16))(a4, a1, a3);
  type metadata accessor for _VariadicView.Tree();
  a2();
  v7 = *(v9 + 8);

  return v7(a1, a3);
}

BOOL _ViewInputs.isScrapeable.getter()
{
  v1 = *(v0 + 36);
  if ((v1 & 0x20) == 0)
  {
    return 0;
  }

  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(v0 + 48)))
  {
    return (v1 & 0x2000) == 0;
  }

  return 0;
}

uint64_t destroy for MakeViewRoot()
{
}

uint64_t static View.makeImplicitRoot(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a2[3];
  v31[2] = a2[2];
  v31[3] = v10;
  v31[4] = a2[4];
  v32 = *(a2 + 20);
  v11 = a2[1];
  v31[0] = *a2;
  v31[1] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = v9;
  v13 = a2[3];
  v25 = a2[2];
  v26 = v13;
  v27 = a2[4];
  LODWORD(v28) = *(a2 + 20);
  v14 = a2[1];
  v23 = *a2;
  v24 = v14;
  *(&v28 + 1) = partial apply for closure #1 in static View.makeImplicitRoot(view:inputs:);
  v29 = v12;
  v30 = 0;
  v15 = *&v31[0];
  outlined init with copy of _ViewInputs(v31, v21);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v15);
  result = (*(v16 + 8))(&v23, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v18 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v19 = v30;
    v20 = HIDWORD(v30);
    v21[4] = v27;
    v21[5] = v28;
    v21[6] = v29;
    v22 = v30;
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v21[3] = v26;

    outlined destroy of MakeViewRoot(v21);

    *a5 = v18;
    *(a5 + 8) = v19;
    *(a5 + 12) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MakeViewRoot.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[3];
  v11 = v3[1];
  v50 = v3[2];
  v51 = v10;
  v12 = v3[3];
  v52 = v3[4];
  v13 = v3[1];
  v49[0] = *v3;
  v49[1] = v13;
  v58 = v50;
  v59 = v12;
  v60 = v3[4];
  v53 = *(v3 + 20);
  v61 = *(v3 + 20);
  v56 = v49[0];
  v57 = v11;
  v15 = *(v14 + 24);
  outlined init with copy of _ViewInputs(v49, v54);
  v15(a2, a3);
  LOBYTE(v43) = 1;
  v16 = _ViewInputs.intern<A>(_:id:)(v9, &v43, a2);
  (*(v7 + 8))(v9, a2);
  v54[2] = v58;
  v54[3] = v59;
  v54[4] = v60;
  v55 = v61;
  v54[0] = v56;
  v54[1] = v57;
  outlined destroy of _ViewInputs(v54);
  v17 = v3[3];
  v58 = v3[2];
  v59 = v17;
  v60 = v3[4];
  v61 = *(v3 + 20);
  v18 = v3[1];
  v56 = *v3;
  v57 = v18;
  v46 = v17;
  v47 = v60;
  v44 = v18;
  v45 = v58;
  v48 = v61;
  v43 = v56;
  outlined init with copy of _ViewInputs(&v56, v41);
  v19 = *(a3 + 8);
  v20 = *(v19 + 8);
  v21 = *(v20 + 8);

  v22 = v21(a2, v20);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v22);

  _GraphValue.init(_:)(v16, &v35);
  v37[2] = v45;
  v37[3] = v46;
  v37[4] = v47;
  v38 = v48;
  v37[0] = v43;
  v37[1] = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v29 = v43;
  v30 = v44;
  v23 = *(v3 + 11);
  v24 = v4[12];
  v25 = *(v19 + 32);
  outlined init with copy of _ViewInputs(v37, v41);
  v25(v36, &v35, &v29, v23, v24, a2, v19);
  v39[2] = v31;
  v39[3] = v32;
  v39[4] = v33;
  v40 = v34;
  v39[0] = v29;
  v39[1] = v30;
  outlined destroy of _ViewInputs(v39);
  v41[2] = v45;
  v41[3] = v46;
  v41[4] = v47;
  v42 = v48;
  v41[0] = v43;
  v41[1] = v44;
  outlined destroy of _ViewInputs(v41);
  v26 = v36[0];
  v27 = v36[1];

  v4[13] = v26;
  v4[14] = v27;
  return result;
}

uint64_t closure #1 in static View.makeImplicitRoot(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _ViewInputs.implicitRootBodyInputs.getter(v10);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = a3;
  (*(a5 + 32))(&v9, v10, a4, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(a3, a4, a5);
  return outlined destroy of _ViewListInputs(v10);
}

uint64_t static _ConditionalContent<>._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v7 = type metadata accessor for _ConditionalContent();
      static _ConditionalContent.makeConditionalMetadata<A>(_:)(&type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v26);
      v23 = v26;
      v24 = v27;
      v25 = v28;
      v22 = v5;
      v8 = *(a2 + 48);
      v18 = *(a2 + 32);
      v19 = v8;
      v20 = *(a2 + 64);
      v21 = *(a2 + 80);
      v9 = *(a2 + 16);
      v16 = *a2;
      v17 = v9;
      WitnessTable = swift_getWitnessTable();
      static DynamicView.makeDynamicView(metadata:view:inputs:)(&v23, &v22, &v16, v7, WitnessTable, a3);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v23);
    }
  }

  else if (static Semantics.forced < v6)
  {
    goto LABEL_7;
  }

  v12 = type metadata accessor for _ConditionalContent();
  LODWORD(v26) = v5;
  v13 = *(a2 + 48);
  v18 = *(a2 + 32);
  v19 = v13;
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  v14 = *(a2 + 16);
  v16 = *a2;
  v17 = v14;
  v15 = swift_getWitnessTable();
  return static View.makeImplicitRoot(view:inputs:)(&v26, &v16, v12, v15, a3);
}

unint64_t lazy protocol witness table accessor for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>);
  }

  return result;
}

uint64_t specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

uint64_t partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2)
{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

uint64_t closure #1 in makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a1[3];
  v35 = a1[2];
  v36 = v8;
  v37 = a1[4];
  v38 = *(a1 + 20);
  v9 = a1[1];
  v33 = *a1;
  v34 = v9;
  _GraphValue.init(_:)(a2, &v16);
  v10 = v16;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v23 = v33;
  v24 = v34;
  v12 = v35;
  LODWORD(v25) = 0;
  v15 = v10;
  v29[0] = v33;
  v29[1] = v34;
  v30 = v38;
  v29[3] = v36;
  v29[4] = v37;
  v29[2] = v25;
  v19 = v25;
  v20 = v36;
  v21 = v37;
  v22 = v38;
  v17 = v33;
  v18 = v34;
  v13 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v33, v31);
  outlined init with copy of _ViewInputs(v29, v31);
  v13(&v15, &v17, a3, a4);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v32 = v22;
  v31[0] = v17;
  v31[1] = v18;
  outlined destroy of _ViewInputs(v31);
  LODWORD(v25) = v12;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v23);
    AGSubgraphEndTreeElement();
  }

  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  return outlined destroy of _ViewInputs(&v17);
}

unint64_t lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery()
{
  result = lazy protocol witness table cache variable for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery;
  if (!lazy protocol witness table cache variable for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ImplicitRootType);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for _VariadicView_AnyImplicitRoot.Type, &lazy cache variable for type metadata for _VariadicView_AnyImplicitRoot), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ImplicitRootType>, &type metadata for ImplicitRootType, &protocol witness table for ImplicitRootType, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ImplicitRootType, 0, v8);
  }

  return result;
}

double protocol witness for static _VariadicView_ImplicitRoot.implicitRoot.getter in conformance _ZStackLayout@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static Alignment.center;
  *a1 = static Alignment.center;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(a2 + 36);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v40 = *(a2 + 32);
  v41 = v10;
  v42 = v11;
  v43 = *(a2 + 80);
  v12 = *(a2 + 16);
  v38 = *a2;
  v39 = v12;
  DWORD1(v40) = v9 & 0xFFFFFFF3;
  v44 = v8;
  v13 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v45);
  outlined init with copy of PropertyList(&v44, &v45);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v38, v13);
  outlined destroy of PropertyList(&v44);
  v14 = v38;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, v45);
  if (v15)
  {
    if ((*(v15 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v9 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v14, v45);
  if (v18)
  {
    v19 = *(v18 + 72) | 0x4000;
  }

  else
  {
    v19 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v38, v19);

  if ((v9 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v40) = v9 & 0xFFFFFFF3;
  }

LABEL_5:
  v34[2] = v40;
  v34[3] = v41;
  v34[4] = v42;
  v35 = v43;
  v34[0] = v38;
  v34[1] = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v45 = v38;
  v46 = v39;
  v16 = outlined init with copy of _ViewInputs(v34, v36);
  a3(v33, v16, &v45);
  v36[2] = v47;
  v36[3] = v48;
  v36[4] = v49;
  v37 = v50;
  v36[0] = v45;
  v36[1] = v46;
  outlined destroy of _ViewInputs(v36);
  outlined init with copy of _ViewListOutputs.Views(v33, v31);
  if (v32)
  {
    v17 = v31[0];
    if (*(&v31[0] + 1))
    {
      LODWORD(v45) = v31[0];
      *(&v45 + 1) = *(&v31[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v17 = Attribute.init<A>(body:value:flags:update:)();
    }

    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v45 = v38;
    v46 = v39;
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(a1, &v45, v17, a4);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v31, v24);
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v45 = v38;
    v46 = v39;
    if ((v9 & 0x800) != 0)
    {
      v20 = *(a2 + 48);
      v27 = *(a2 + 32);
      v28 = v20;
      v29 = *(a2 + 64);
      v30 = *(a2 + 80);
      v21 = *(a2 + 16);
      v25 = *a2;
      v26 = v21;
      v22 = _ViewListOutputs.makeAttribute(viewInputs:)(&v25);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(a1, &v45, v22, a4);
    }

    else
    {
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5(a1, &v45, 65538, v24, a4);
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  outlined destroy of _ViewListOutputs(v33);
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v25 = v38;
  v26 = v39;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance _ZStackLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B5(v4, v8, a3, a4);
}

uint64_t makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X3>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 48);
  v12 = *(a3 + 16);
  v77 = *(a3 + 32);
  v78 = v11;
  v13 = *(a3 + 48);
  v79 = *(a3 + 64);
  v14 = *(a3 + 16);
  v75 = *a3;
  v76 = v14;
  v71 = v77;
  v72 = v13;
  v73 = *(a3 + 64);
  v80 = *(a3 + 80);
  v15 = WORD2(v77);
  v74 = *(a3 + 80);
  v69 = v75;
  v70 = v12;
  if ((WORD2(v77) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v75, v67);
    specialized _GraphInputs.pushScope<A>(id:)(0);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v75, v67);
  }

  v65[2] = v71;
  v65[3] = v72;
  v65[4] = v73;
  v66 = v74;
  v65[0] = v69;
  v65[1] = v70;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v59 = v69;
  v60 = v70;
  v16 = outlined init with copy of _ViewInputs(v65, v67);
  a4(v51, v16, &v59);
  v67[2] = v61;
  v67[3] = v62;
  v67[4] = v63;
  v68 = v64;
  v67[0] = v59;
  v67[1] = v60;
  outlined destroy of _ViewInputs(v67);
  v17 = *&v51[0];
  v18 = DWORD2(v51[0]);
  v44 = HIDWORD(v51[0]);
  v55 = v77;
  v56 = v78;
  v57 = v79;
  v58 = v80;
  v53 = v75;
  v54 = v76;
  if ((v15 & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v75, &v59);
    specialized _GraphInputs.pushScope<A>(id:)(1);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    outlined init with copy of _ViewInputs(&v75, &v59);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

  v19 = *MEMORY[0x1E698D3F8];
  if ((a2 & 0x100000000) != 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v20 = a2;
  }

  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v21 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v22 = specialized CachedEnvironment.attribute<A>(id:_:)(v21);
  swift_endAccess();
  *&v59 = __PAIR64__(v22, v20);
  *(&v59 + 1) = __PAIR64__(DWORD2(v79), v79);
  *&v60 = __PAIR64__(v19, v44);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v57) = AGGraphCreateOffsetAttribute2();
  LODWORD(v21) = v55;
  DWORD2(v57) = AGGraphCreateOffsetAttribute2();
  LODWORD(v55) = v21 | 0x18;
LABEL_12:
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v23 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v23)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_20:

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v53, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);
  }

LABEL_21:
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v59 = v53;
  v60 = v54;
  v24 = closure #1 in makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(&v59, a1, a6, a7, v51);
  v25 = *&v51[0];
  v26 = DWORD2(v51[0]);
  if ((v15 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v24);
    v28 = MEMORY[0x1EEE9AC00](v27);
    v42 = LODWORD(v28);
    AGGraphMutateAttribute();
    v26 = v42;
  }

  if (a5)
  {
    v29 = v25;
  }

  else
  {
    v29 = v17;
  }

  v30 = v26;
  if (a5)
  {
    v31 = v26;
  }

  else
  {
    v31 = v18;
  }

  if (a5)
  {
    v32 = v17;
  }

  else
  {
    v32 = v25;
  }

  if (a5)
  {
    v30 = v18;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v50 = 0;
  v45 = v29;
  v46 = v31;
  v47 = v32;
  v48 = v30;
  v33 = v78;
  v34 = *(v78 + 16);
  if (v34)
  {

    v35 = (v33 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v45, *(v35 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v35, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v35 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {
  }

  v51[2] = v55;
  v51[3] = v56;
  v51[4] = v57;
  v52 = v58;
  v51[0] = v53;
  v51[1] = v54;
  outlined destroy of _ViewInputs(v51);
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v59 = v69;
  v60 = v70;
  outlined destroy of _ViewInputs(&v59);
  *(a8 + 12) = v44;
  v36 = v49;
  v37 = v50;

  *a8 = v36;
  *(a8 + 8) = v37;
  return result;
}

uint64_t one-time initialization function for v4()
{
  result = swiftUI_v4_0_os_versions();
  static Semantics.v4 = HIDWORD(result);
  return result;
}

uint64_t type metadata completion function for _OverlayModifier()
{
  return type metadata completion function for _OverlayModifier();
}

{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ContentResponderHelper()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ContentShapePathData;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for TypesettingConfiguration()
{
  result = type metadata singleton initialization cache for TypesettingConfiguration;
  if (!type metadata singleton initialization cache for TypesettingConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Optional.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(v6, partial apply for closure #1 in static Optional.makeConditionalMetadata<A>(_:), a1, a2, &v8);
  return ConditionalMetadata.init(_:)(&v8, a3);
}

uint64_t static Optional<A>._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for Optional();
  static Optional.makeConditionalMetadata<A>(_:)(&type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v11);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  v7 = v5;
  swift_getWitnessTable();
  static DynamicView.makeDynamicViewList(metadata:view:inputs:)(&v8, &v7, a2, a3);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v8);
}

uint64_t closure #1 in static Optional.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a1;
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(a1, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, v10);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  v8 = swift_allocObject();
  result = type metadata accessor for Optional();
  *(v8 + 16) = result;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *a4 = v8 | 0x4000000000000000;
    a4[1] = 0;
    a4[2] = v7 + 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_Group.Init and conformance _ViewList_Group.Init()
{
  result = lazy protocol witness table cache variable for type _ViewList_Group.Init and conformance _ViewList_Group.Init;
  if (!lazy protocol witness table cache variable for type _ViewList_Group.Init and conformance _ViewList_Group.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_Group.Init and conformance _ViewList_Group.Init);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<ViewList>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>)
  {
    type metadata accessor for TimelineSchedule?(255, &lazy cache variable for type metadata for Attribute<ViewList>, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList, MEMORY[0x1E698D388]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>);
    }
  }
}

uint64_t Optional<A>.childInfo(metadata:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v13[2] = *(a3 + 16);
  v13[3] = a4;
  v14 = *a2;
  v15 = v7;
  v16 = v8;
  type metadata accessor for (Any.Type, UniqueID?)();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4, partial apply for closure #1 in Optional<A>.childInfo(metadata:), v13, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  result = v17;
  v12 = v19;
  *a1 = v18;
  *(a1 + 8) = v12;
  return result;
}

unint64_t closure #1 in Optional<A>.childInfo(metadata:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  type metadata accessor for ConditionalMetadata<ViewDescriptor>();
  v5 = v4;
  v6 = type metadata accessor for Optional();
  result = ConditionalMetadata.childInfo<A>(ptr:emptyType:)((a2 + 1), a1, &type metadata for EmptyView, v5, v6);
  *a2 = result;
  return result;
}

uint64_t Optional<A>.makeChildViewList(metadata:view:inputs:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12[2] = *(a4 + 16);
  v12[3] = a5;
  v13 = *a1;
  v14 = v9;
  v15 = v10;
  v16 = a2;
  v17 = a3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in Optional<A>.makeChildViewList(metadata:view:inputs:), v12, a4, MEMORY[0x1E69E73E0], &type metadata for _ViewListOutputs, MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in Optional<A>.makeChildViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  v7 = type metadata accessor for Optional();
  return ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)(a1, v5, v6, v7, a2);
}

uint64_t protocol witness for ViewList.applyNodes(from:style:list:transform:to:) in conformance _ViewList_Group(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, void *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v17 = *a2;
  v15[0] = v10;
  v16 = 2;
  v13 = v8;
  v14 = v9;

  v11 = a5(a1, &v17, v15, &v13);
  outlined destroy of _ViewList_Node(v15);
  return v11 & 1;
}

uint64_t mergeStatic #1 (from:to:) in static _ViewListOutputs.concat(_:inputs:)@<X0>(unint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_37;
  }

  v37 = a6;
  if (v7 == 1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(a3 + 16) > a1)
      {
        v14 = a3 + 72 * a1;
        outlined init with copy of _ViewListOutputs(v14 + 32, &v40);
        *&v39[9] = *&v41[9];
        v38 = v40;
        *v39 = *v41;
        if ((v41[24] & 1) == 0)
        {
          outlined init with take of AnyTrackedValue(&v38, &v45);
          outlined init with take of AnyTrackedValue(&v45, &v38);
          v12 = *(v14 + 88);
          LOBYTE(v13) = *(v14 + 96);
          goto LABEL_26;
        }

        outlined destroy of _ViewListOutputs.Views(&v38);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!v7)
  {
    v12 = 0;
    LOBYTE(v13) = 0;
    *&v39[8] = &type metadata for EmptyViewListElements;
    *&v39[16] = &protocol witness table for EmptyViewListElements;
    goto LABEL_26;
  }

  if (a2 < a1)
  {
    goto LABEL_39;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = *(a3 + 16);
  if (v16 < a1 || v16 < a2)
  {
    goto LABEL_42;
  }

  v17 = a3 + 32;
  *&v39[8] = &unk_1F0084390;
  *&v39[16] = &protocol witness table for MergedElements;
  v18 = swift_allocObject();
  *&v38 = v18;
  v18[2] = a3;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = (2 * a2) | 1;
  if (a1 == a2)
  {

    v12 = 0;
    LOBYTE(v13) = 0;
    goto LABEL_26;
  }

  if (a1 >= a2)
  {
LABEL_43:
    __break(1u);
  }

  v19 = 72 * a1;
  outlined init with copy of _ViewListOutputs(v17 + 72 * a1, &v40);

  v12 = 0;
  v20 = ~a1 + a2;
  v21 = v19 + a3 + 104;
  do
  {
    v22 = *(&v42 + 1);
    v13 = v43;
    outlined destroy of _ViewListOutputs(&v40);
    if (v13)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v23 = __OFADD__(v12, v22);
    v12 += v22;
    if (v23)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_20:
    if (!v20)
    {
      goto LABEL_26;
    }

    outlined init with copy of _ViewListOutputs(v21, &v40);
    --v20;
    v21 += 72;
  }

  while (!v13);
  while (1)
  {
    outlined destroy of _ViewListOutputs(&v40);
    if (!v20)
    {
      break;
    }

    outlined init with copy of _ViewListOutputs(v21, &v40);
    v21 += 72;
    --v20;
  }

  v12 = 0;
  LOBYTE(v13) = 1;
LABEL_26:
  outlined init with copy of AnyTrackedValue(&v38, v44);
  swift_beginAccess();
  v24 = a4;
  v25 = *(a4 + 16);
  v26 = *(a5 + 56) & 3;
  if (*(a5 + 37))
  {
    v29 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*a5);
    Attribute = AGWeakAttributeGetAttribute();
    v28 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v27 = 0;
    }

    else
    {
      v27 = v29;
    }
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  v46 = &unk_1F0084288;
  v47 = lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
  v31 = swift_allocObject();
  *&v45 = v31;
  *&v42 = 0;
  BYTE8(v42) = 0;
  outlined init with copy of AnyTrackedValue(v44, &v40);
  *&v41[24] = v25;

  *&v42 = MEMORY[0x1E69E7CD0];
  BYTE8(v42) = 0;
  v43 = MEMORY[0x1E69E7CC0];
  if (v26 == 1)
  {
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(1);
  }

  if (!v28)
  {
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(v27);
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  v32 = v42;
  *(v31 + 48) = *&v41[16];
  *(v31 + 64) = v32;
  *(v31 + 80) = v43;
  v33 = *v41;
  *(v31 + 16) = v40;
  *(v31 + 32) = v33;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  v34 = Attribute.init<A>(body:value:flags:update:)();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  __swift_destroy_boxed_opaque_existential_1(&v38);
  result = swift_beginAccess();
  v36 = *(v24 + 16) + 1;
  *(v24 + 16) = v36;
  *v37 = v34;
  *(v37 + 8) = 0;
  *(v37 + 40) = 1;
  *(v37 + 48) = v36;
  *(v37 + 56) = v12;
  *(v37 + 64) = v13;
  return result;
}

uint64_t outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)()
{
  if (!lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ViewList);
    type metadata accessor for _ContiguousArrayStorage<CustomRecursiveStringConvertible>(255, &lazy cache variable for type metadata for Attribute<ViewList>, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList, MEMORY[0x1E698D388]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>));
    }
  }
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(list: ViewList, attribute: Attribute<ViewList>)>, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<Int, _AnyAnimatableData>.Element>, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, precedingElementCount: Int)>, type metadata accessor for (AbstractHomogeneousCollection, precedingElementCount: Int), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (AbstractHomogeneousCollection, precedingElementCount: Int)();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(String, String)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (String, String));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(label: String, value: Double)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (label: String, value: Double));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (name: String, value: String));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(String, Double)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (String, Double));
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void type metadata accessor for Scrollable?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for Scrollable);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _OpacityEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double ViewGraphRootValueUpdater._sizeThatFits(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for CGSize(0);
  ViewGraphRootValueUpdater._updateViewGraph<A>(body:)(partial apply for closure #1 in ViewGraphRootValueUpdater._sizeThatFits(_:), a5, v8, a6, &v10);
  result = v10;
  if (v11)
  {
    return 0.0;
  }

  return result;
}

uint64_t AnyShapeStyle.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *(v4 + 16);
  v15(v19 - v16, a1, a2, v14);
  if (swift_dynamicCast() & 1) != 0 || ((v15)(v12, a1, a2), (swift_dynamicCast()) || ((v15)(v9, a1, a2), (swift_dynamicCast()))
  {
    (*(v4 + 8))(a1, a2);
    return v19[1];
  }

  else
  {
    type metadata accessor for ShapeStyleBox();
    (v15)(v6, a1, a2);
    v18 = AnchorBox.__allocating_init(_:)(v6);
    (*(v4 + 8))(a1, a2);
    return v18;
  }
}

uint64_t TrackedValue.unwrap<A>()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  if (*(v7 + 64) == *(*(a1 - 8) + 64))
  {
    v8 = *(*(a1 - 8) + 16);

    return v8(a2, v2, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PreferenceValues._index(of:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    while (1)
    {
      v6 = v5 + (v3 >> 1);
      if (__OFADD__(v5, v3 >> 1))
      {
        break;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v6 >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      outlined init with copy of PreferenceValues.Entry(v2 + 32 + 56 * v6, v8);
      v7 = v8[0];
      result = outlined destroy of PreferenceValues.Entry(v8);
      if (v7 >= v4)
      {
        v3 >>= 1;
      }

      else
      {
        v3 += ~(v3 >> 1);
      }

      if (v7 < v4)
      {
        v5 = v6 + 1;
      }

      if (v3 <= 0)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t Attribute.syncMainIfReferences<A>(do:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a1;
  v30 = a2;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v21 = v20;
  (*(v15 + 16))(v18, Value, a3);
  if ((v21 & 2) == 0)
  {
    v29(v18);
    return (*(v15 + 8))(v18, a3);
  }

  v28 = a5;
  v22 = *(a4 - 8);
  v23 = (*(v22 + 56))(v14, 1, 1, a4);
  MEMORY[0x1EEE9AC00](v23);
  *(&v27 - 6) = a3;
  *(&v27 - 5) = a4;
  v25 = v29;
  v24 = v30;
  *(&v27 - 4) = v14;
  *(&v27 - 3) = v25;
  *(&v27 - 2) = v24;
  *(&v27 - 1) = v18;
  specialized static Update.syncMain(_:)(partial apply for closure #1 in Attribute.syncMainIfReferences<A>(do:), (&v27 - 8));
  (*(v9 + 16))(v11, v14, v8);
  result = (*(v22 + 48))(v11, 1, a4);
  if (result != 1)
  {
    (*(v22 + 32))(v28, v11, a4);
    (*(v9 + 8))(v14, v8);
    return (*(v15 + 8))(v18, a3);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in Attribute.syncMainIfReferences<A>(do:)(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  a2(a4, v12);
  (*(*(a6 - 8) + 56))(v14, 0, 1, a6);
  return (*(v11 + 40))(a1, v14, v10);
}

uint64_t outlined destroy of ObservationTracking._AccessList?(uint64_t a1)
{
  type metadata accessor for ObservationTracking._AccessList?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for _AnyEquatableBox()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity()
{
  result = lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity;
  if (!lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity;
  if (!lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016PreferenceBridgeV033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt0B5(v4, v13[0]);
  if (!v7 || (outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value((v7 + 9), v13), v8 = AGCompareValues(), result = outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v13), !v8))
  {
    outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(a2, v13);
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>();
    v11 = swift_allocObject();
    outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(v13, v11 + 72);

    value = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10).value;
    outlined destroy of EnvironmentValues.PreferenceBridgeKey.Value(v13);
    *a1 = value;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t type metadata completion function for PlatformViewChild()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ViewLeafView()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

unint64_t static CoreViewRepresentable._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v156 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v78 - v11;
  v13 = type metadata accessor for PlatformViewChild();
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v78 - v14;
  v15 = *(a2 + 16);
  v150 = *a2;
  v151 = v15;
  v16 = *(a2 + 48);
  v152 = *(a2 + 32);
  v94 = *a1;
  v153 = v16;
  v154 = *(a2 + 64);
  v155 = *(a2 + 80);
  v17 = v150;
  v18 = WORD2(v152);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v17, v144);
  if (v19)
  {
    if ((*(v19 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      v79 = a5;
      v86 = v12;
      v147 = v153;
      v148 = v154;
      v149 = v155;
      v144 = v150;
      v145 = v151;
      v146 = v152;
      type metadata accessor for PreferenceBridge();
      swift_allocObject();
      outlined init with copy of _ViewInputs(&v150, &v138);
      v93 = PreferenceBridge.init()();
      (*(a4 + 48))(&v138, a3, a4);
      v87 = DWORD1(v139);
      v88 = v139;
      LODWORD(v125) = v94;
      v89 = *(&v138 + 1);
      v90 = v138;
      outlined copy of DynamicPropertyCache.Fields.Layout();
      v20 = _DynamicPropertyBuffer.init<A>(fields:container:inputs:)(&v138, &v125, &v144, a3, &v131);
      v21 = v131;
      v22 = DWORD2(v131);
      v23 = HIDWORD(v131);
      v137 = 0uLL;
      (*(a4 + 56))(&v137, a3, a4, v20);
      v24 = v145;
      swift_beginAccess();
      v81 = *(v24 + 16);
      v80 = *(&v145 + 1);
      v25 = v144;
      BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
      v26 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v25, v138);
      v85 = v13;
      if (v26)
      {
        v27 = *(v26 + 72);
      }

      else
      {
        v27 = 0;
      }

      v40 = DWORD2(v154);
      v41 = HIDWORD(v153);
      v42 = v154;
      LODWORD(v125) = v27;
      *&v138 = v21;
      v83 = v23;
      v84 = v22;
      *(&v138 + 1) = __PAIR64__(v23, v22);
      v82 = v21;
      v43 = v137;
      v131 = v137;
      v95 = HIDWORD(v137);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v45 = v86;
      (*(*(AssociatedTypeWitness - 8) + 56))(v86, 1, 1, AssociatedTypeWitness);
      v77 = a4;
      v74 = v45;
      v46 = v91;
      v47 = PlatformViewChild.init(view:environment:transaction:phase:position:size:transform:parentID:bridge:links:features:coordinator:platformView:resetSeed:)(v94, v81, SHIDWORD(v80), v80, v42, v40, v41, &v125, v91, v93, &v138, &v131, v74, 0, 0);
      v86 = &v78;
      MEMORY[0x1EEE9AC00](v47);
      v48 = type metadata accessor for ViewLeafView();
      v49 = v85;
      v75[0] = v48;
      v75[1] = v85;
      WitnessTable = swift_getWitnessTable();
      v50 = type metadata accessor for Attribute();

      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v46, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, &v73, v49, MEMORY[0x1E69E73E0], v50, MEMORY[0x1E69E7410], v51);
      (*(v92 + 8))(v46, v49);
      v52 = v138;
      *&v131 = v82;
      *(&v131 + 1) = __PAIR64__(v83, v84);
      LODWORD(v125) = v94;
      *&v138 = v90;
      *(&v138 + 1) = v89;
      LOBYTE(v139) = v88;
      DWORD1(v139) = v87;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v125, &v138, a3);
      outlined consume of DynamicPropertyCache.Fields.Layout();
      v92 = v48;
      _GraphValue.init(_:)(v52, &v138);
      v94 = v138;
      CoreViewRepresentableFeatureProxy.init(base:)(v52, &v138);
      v53 = v138;
      if ((BYTE4(v146) & 0x20) != 0)
      {
        _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v147);
      }

      AGGraphSetFlags();
      v140 = v146;
      v141 = v147;
      v142 = v148;
      v143 = v149;
      v138 = v144;
      v139 = v145;
      v133 = v146;
      v134 = v147;
      v135 = v148;
      v136 = v149;
      v131 = v144;
      v132 = v145;
      result = outlined init with copy of _ViewInputs(&v138, &v125);
      if (v95)
      {
        if (!v43)
        {
          __break(1u);
          goto LABEL_51;
        }

        v54 = 0;
        v55 = v95 - 1;
        do
        {
          v57 = v43 + v54;
          if (v55)
          {
            v54 += *(v57 + 8);
          }

          else
          {
            v54 = 0;
          }

          v56 = v55 | v54;
          *&v125 = v57;
          LODWORD(v123[0]) = v53;
          CoreViewRepresentableFeatureBuffer.Element.modifyViewInputs<A>(inputs:proxy:)(&v131, v123, a3, a4);
          --v55;
        }

        while (v56);
      }

      v58 = v134;
      *&v125 = v134;
      v59 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);

      v60 = *(v58 + 16);
      if (v59 != v60)
      {
        if (v59 >= v60)
        {
          __break(1u);
        }

        if (*(v58 + 16 * v59 + 32) == &type metadata for ViewRespondersKey)
        {
          specialized Array.remove(at:)(v59);
        }
      }

      v127 = v133;
      v128 = v134;
      v129 = v135;
      v130 = v136;
      v125 = v131;
      v126 = v132;
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v117 = v127;
      v118 = v128;
      v119 = v129;
      v120 = v130;
      v115 = v125;
      v116 = v126;
      v122 = v130;
      v62 = v127;
      LODWORD(v117) = 0;
      LODWORD(v107[0]) = v94;
      v121[0] = v125;
      v121[1] = v126;
      v121[3] = v128;
      v121[4] = v129;
      v121[2] = v117;
      v111 = v117;
      v112 = v128;
      v113 = v129;
      v114 = v130;
      v109 = v125;
      v110 = v126;
      outlined init with copy of _ViewInputs(&v125, v123);
      outlined init with copy of _ViewInputs(v121, v123);
      static ViewLeafView._makeView(view:inputs:)(v107, &v109, a3, a4, v96);
      v123[2] = v111;
      v123[3] = v112;
      v123[4] = v113;
      v124 = v114;
      v123[0] = v109;
      v123[1] = v110;
      outlined destroy of _ViewInputs(v123);
      LODWORD(v117) = v62;
      if (ShouldRecordTree)
      {
        specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v96, &v115);
        AGSubgraphEndTreeElement();
      }

      v111 = v117;
      v112 = v118;
      v113 = v119;
      v114 = v120;
      v109 = v115;
      v110 = v116;
      result = outlined destroy of _ViewInputs(&v109);
      if (!v95)
      {
        goto LABEL_39;
      }

      if (v43)
      {
        v63 = 0;
        v64 = v95 - 1;
        do
        {
          v66 = v43 + v63;
          if (v64)
          {
            v63 += *(v66 + 8);
          }

          else
          {
            v63 = 0;
          }

          v65 = v64 | v63;
          *&v107[0] = v66;
          LODWORD(v105[0]) = v53;
          CoreViewRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(outputs:proxy:)(v96, v105, a3, a4);
          *&v107[0] = v66;
          LODWORD(v105[0]) = v53;
          CoreViewRepresentableFeatureBuffer.Element.modifyBridgedInputs<A>(inputs:proxy:)(&v144, v105, a3, a4);
          --v64;
        }

        while (v65);
LABEL_39:
        v105[2] = v146;
        v105[3] = v147;
        v105[4] = v148;
        v106 = v149;
        v105[0] = v144;
        v105[1] = v145;
        v102 = v147;
        v103 = v148;
        v104 = v149;
        v99 = v144;
        v100 = v145;
        v101 = v146;
        outlined init with copy of _ViewInputs(v105, v107);
        PreferenceBridge.wrapOutputs(_:inputs:)(v96, &v99);
        v107[2] = v101;
        v107[3] = v102;
        v107[4] = v103;
        v108 = v104;
        v107[0] = v99;
        v107[1] = v100;
        result = outlined destroy of _ViewInputs(v107);
        v67 = v79;
        if (!v95)
        {
LABEL_46:

          v97[2] = v133;
          v97[3] = v134;
          v97[4] = v135;
          v98 = v136;
          v97[0] = v131;
          v97[1] = v132;
          outlined destroy of _ViewInputs(v97);
          v102 = v147;
          v103 = v148;
          v104 = v149;
          v99 = v144;
          v100 = v145;
          v101 = v146;
          result = outlined destroy of _ViewInputs(&v99);
          *v67 = v96[0];
          v67[1] = v96[1];
          return result;
        }

        if (v43)
        {
          v68 = 0;
          v69 = v95 - 1;
          do
          {
            v71 = v43 + v68;
            if (v69)
            {
              v68 += *(v71 + 8);
            }

            else
            {
              v68 = 0;
            }

            v70 = v69 | v68;
            *&v99 = v71;
            LODWORD(v97[0]) = v53;
            CoreViewRepresentableFeatureBuffer.Element.modifyWrappedOutputs<A>(outputs:proxy:)(v96, v97, a3, a4);
            --v69;
          }

          while (v70);
          goto LABEL_46;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }
  }

  v28 = a5;
  v29 = MEMORY[0x1E69E7CC0];
  *&v131 = MEMORY[0x1E69E7CC0];
  v30 = *MEMORY[0x1E698D3F8];
  DWORD2(v131) = 0;
  HIDWORD(v131) = v30;
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v153);
  if ((result & 1) == 0)
  {
    v39 = 0;
    goto LABEL_13;
  }

  v32 = ++lastIdentity;
  if ((v18 & 0x100) == 0)
  {
    v33 = v32;
LABEL_11:
    v147 = v153;
    v148 = v154;
    v149 = v155;
    v144 = v150;
    v145 = v151;
    v146 = v152;
    swift_beginAccess();
    v34 = CachedEnvironment.animatedPosition(for:)(&v144);
    v147 = v153;
    v148 = v154;
    v149 = v155;
    v144 = v150;
    v145 = v151;
    v146 = v152;
    v35 = CachedEnvironment.animatedSize(for:)(&v144);
    v36 = swift_endAccess();
    *&v144 = __PAIR64__(v94, v33);
    *(&v144 + 1) = __PAIR64__(v35, v34);
    LODWORD(v145) = DWORD1(v154);
    MEMORY[0x1EEE9AC00](v36);
    WitnessTable = type metadata accessor for PlatformArchivedDisplayList();
    v77 = swift_getWitnessTable();
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v144, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, v75, WitnessTable, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
    LOBYTE(v144) = 0;
    result = PreferencesOutputs.subscript.setter(v138, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v29 = v131;
    v39 = DWORD2(v131);
    v30 = HIDWORD(v131);
LABEL_13:
    *v28 = v29;
    *(v28 + 2) = v39;
    *(v28 + 3) = v30;
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v17, &v144);
  result = AGWeakAttributeGetAttribute();
  if (result != v30)
  {
    v33 = v32;
    LODWORD(v138) = v32;
    v72 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(&v138);
    v72(&v144, 0);
    goto LABEL_11;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t PreferenceBridge.init()()
{
  swift_weakInit();
  *(v0 + 24) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v1;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t PlatformViewChild.init(view:environment:transaction:phase:position:size:transform:parentID:bridge:links:features:coordinator:platformView:resetSeed:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, int a15)
{
  v16 = *a8;
  v17 = *a11;
  v18 = *a12;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = v16;
  *(a9 + 32) = a10;
  *(a9 + 40) = v17;
  *(a9 + 48) = a11[1];
  *(a9 + 56) = v18;
  *(a9 + 64) = a12[1];
  v19 = type metadata accessor for PlatformViewChild();
  v20 = v19[19];
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 32))(a9 + v20, a13, v21);
  *(a9 + v19[20]) = a14;
  *(a9 + v19[21]) = a15;
  v22 = v19[22];
  type metadata accessor for PropertyList.Tracker();
  v23 = swift_allocObject();
  _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  result = swift_allocObject();
  *(result + 16) = 0;
  v25 = MEMORY[0x1E69E7CC8];
  *(result + 24) = 0;
  *(result + 32) = v25;
  v26 = MEMORY[0x1E69E7CC0];
  *(result + 40) = v25;
  *(result + 48) = v26;
  *(result + 56) = 0;
  *(v23 + 16) = result;
  *(a9 + v22) = v23;
  return result;
}

uint64_t static ViewLeafView._makeView(view:inputs:)@<X0>(Swift::UInt32 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v57 = a3;
  v59 = 0;
  v82 = *MEMORY[0x1E69E9840];
  v56 = *a1;
  v6 = *(a2 + 8);
  v53 = *a2;
  v52 = v6;
  v7 = *(a2 + 16);
  v64 = *(a2 + 24);
  v8 = *(a2 + 36);
  v65 = *(a2 + 32);
  v9 = *(a2 + 48);
  v51 = *(a2 + 40);
  v10 = *(a2 + 56);
  v54 = *(a2 + 60);
  v11 = *(a2 + 64);
  v12 = *(a2 + 68);
  v13 = *(a2 + 72);
  v14 = *(a2 + 76);
  v55 = *(a2 + 80);
  v61 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  v62 = 0;
  v63 = v15;
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v9);
  if ((result & 1) == 0)
  {
    v28 = a5;
    if ((v8 & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v49 = v13;
  v48 = ++lastIdentity;
  v17 = v7;
  v47 = a5;
  v50 = v14;
  v46 = v10;
  v45 = v11;
  if ((v8 & 0x100) == 0)
  {
    v18 = v9;
    v19 = v54;
    goto LABEL_4;
  }

  v44 = v7;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v53, &v68);
  result = AGWeakAttributeGetAttribute();
  if (result != v15)
  {
    v18 = v9;
    v19 = v54;
    v66[0] = v48;
    v40 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v66);
    v40(&v68, 0);
    v17 = v44;
LABEL_4:
    *&v68 = v53;
    *(&v68 + 1) = v52;
    v69 = v17;
    v70 = v64;
    v71 = v65;
    v72 = v8;
    v73 = v51;
    v74 = v18;
    v75 = v46;
    v76 = v19;
    v77 = v45;
    v78 = v12;
    v20 = v12;
    v21 = v17;
    v79 = v49;
    v80 = v50;
    v81 = v55;
    swift_beginAccess();
    LODWORD(v44) = CachedEnvironment.animatedPosition(for:)(&v68);
    *&v68 = v53;
    *(&v68 + 1) = v52;
    v69 = v21;
    v70 = v64;
    v71 = v65;
    v72 = v8;
    v73 = v51;
    v74 = v18;
    v75 = v46;
    v76 = v54;
    v77 = v45;
    v78 = v20;
    v79 = v49;
    v80 = v50;
    v81 = v55;
    v22 = CachedEnvironment.animatedSize(for:)(&v68);
    v23 = swift_endAccess();
    v7 = v21;
    v24 = *(v21 + 16);
    *&v68 = __PAIR64__(v56, v48);
    *(&v68 + 1) = __PAIR64__(v20, v44);
    v69 = __PAIR64__(v54, v22);
    v70 = __PAIR64__(v50, v24);
    LOWORD(v71) = 0;
    MEMORY[0x1EEE9AC00](v23);
    v42 = type metadata accessor for PlatformViewDisplayList();
    WitnessTable = swift_getWitnessTable();
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    v25 = v59;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, closure #1 in Attribute.init<A>(_:)partial apply, v41, v42, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
    v59 = v25;
    LOBYTE(v68) = 0;
    result = PreferencesOutputs.subscript.setter(v66[0], &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v28 = v47;
    if ((v8 & 2) != 0)
    {
LABEL_5:
      swift_beginAccess();
      v29 = *(v7 + 16);
      type metadata accessor for PropertyList.Tracker();
      v30 = swift_allocObject();
      _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      v32 = MEMORY[0x1E69E7CC8];
      *(v31 + 24) = 0;
      *(v31 + 32) = v32;
      *(v31 + 40) = v32;
      *(v31 + 48) = MEMORY[0x1E69E7CC0];
      *(v31 + 56) = 0;
      *(v30 + 16) = v31;
      v66[0] = v29;
      v67 = v30;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment();
      v33 = Attribute.init<A>(body:value:flags:update:)();

      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      v66[0] = v56;
      v66[1] = v33;
      swift_weakInit();

      MEMORY[0x1EEE9AC00](v34);
      v35 = type metadata accessor for InvalidatableLeafLayoutComputer();
      v42 = v35;
      WitnessTable = swift_getWitnessTable();
      _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v66, closure #1 in Attribute.init<A>(_:)partial apply, v41, v35, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);
      result = (*(*(v35 - 8) + 8))(v66, v35);
      v38 = v60;
      v39 = v62 | 0x80;
LABEL_8:
      *v28 = v61;
      *(v28 + 8) = v39;
      *(v28 + 12) = v38;
      return result;
    }

LABEL_7:
    v39 = v62;
    v38 = v63;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy34_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment()
{
  result = lazy protocol witness table cache variable for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment;
  if (!lazy protocol witness table cache variable for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafLayoutEnvironment and conformance LeafLayoutEnvironment);
  }

  return result;
}

void *initializeWithCopy for InvalidatableLeafLayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  return a1;
}

uint64_t PreferenceBridge.wrapOutputs(_:inputs:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v46[6] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[6];
  v42 = *(a2 + 14);
  swift_beginAccess();
  v3[6] = v5;

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    v41 = *MEMORY[0x1E698D3F8];

    v9 = 0;
    v39 = a1;
    v40 = v6;
    v37 = v6 + 32;
    v38 = v7;
    do
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
      }

      v13 = *(v8 + 16 * v9);
      v14 = *(v8 + 16 * v9);
      v15 = *a1;
      if (v14 == &type metadata for HostPreferencesKey)
      {
        v43 = *(v8 + 16 * v9);
        v10 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(v15);
        v11 = v41;
        if ((v10 & 0x100000000) == 0)
        {
          v11 = v10;
        }

        v46[0] = __PAIR64__(v11, v42);
        v46[1] = MEMORY[0x1E69E7CC0];
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type HostPreferencesCombiner and conformance HostPreferencesCombiner();
        v12 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v46[0]) = 0;
        PreferencesOutputs.subscript.setter(v12, &type metadata for HostPreferencesKey, *(&v43 + 1));
        swift_beginAccess();
        v3[7] = AGCreateWeakAttribute();
        swift_endAccess();
        swift_beginAccess();
        v3[8] = AGCreateWeakAttribute();
        swift_endAccess();
      }

      else
      {
        v16 = (v15 + 32);
        v17 = *(v15 + 16) + 1;
        while (--v17)
        {
          v18 = *v16;
          v16 += 3;
          if (v18 == v14)
          {
            goto LABEL_6;
          }
        }

        v43 = *(v8 + 16 * v9);
        v19 = *(&v13 + 1);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v21 = type metadata accessor for Attribute();
        v22 = static Array._allocateUninitialized(_:)();
        v23 = PreferenceCombiner.init(attributes:)(v22, v14, v19, v46);
        v45 = v46[0];
        MEMORY[0x1EEE9AC00](v23);
        v36[2] = AssociatedTypeWitness;
        v24 = type metadata accessor for PreferenceCombiner();
        v36[3] = v24;
        v36[4] = swift_getWitnessTable();
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v45, partial apply for closure #1 in Attribute.init<A>(_:), v36, v24, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v25);

        v26 = v44;
        swift_beginAccess();
        PreferenceKeys.add(_:)(v14, v19);
        swift_endAccess();
        v27 = AGCreateWeakAttribute();
        swift_beginAccess();
        v28 = v3[9];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[9] = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          v3[9] = v28;
        }

        v31 = *(v28 + 2);
        v30 = *(v28 + 3);
        v32 = v43;
        if (v31 >= v30 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
          v32 = v43;
          v28 = v34;
        }

        *(v28 + 2) = v31 + 1;
        v33 = &v28[24 * v31];
        *(v33 + 2) = v32;
        *(v33 + 6) = v27;
        v3[9] = v28;
        swift_endAccess();
        LOBYTE(v46[0]) = 0;
        a1 = v39;
        PreferencesOutputs.subscript.setter(v26, v14, v19);
        v6 = v40;
        v8 = v37;
        v7 = v38;
      }

LABEL_6:
      ++v9;
    }

    while (v9 != v7);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type HostPreferencesCombiner and conformance HostPreferencesCombiner()
{
  result = lazy protocol witness table cache variable for type HostPreferencesCombiner and conformance HostPreferencesCombiner;
  if (!lazy protocol witness table cache variable for type HostPreferencesCombiner and conformance HostPreferencesCombiner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostPreferencesCombiner and conformance HostPreferencesCombiner);
  }

  return result;
}

uint64_t static ViewModifier.makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  static DynamicPropertyCache.fields(of:)(a5, v33);
  v10 = v33[0];
  v9 = v33[1];
  v11 = v34;
  v12 = v35;
  outlined init with copy of _ViewListInputs(a2, v33);
  v21 = v12;
  v22 = v8;
  v24 = v11;
  v25 = v8;
  *&v27 = v10;
  *(&v27 + 1) = v9;
  v28 = v11;
  v29 = v12;
  static ViewModifier.makeBody(modifier:inputs:fields:)(&v26, &v30, &v25, v33, &v27);
  v13 = v26;
  v15 = v30;
  v14 = v31;
  v16 = v32;
  type metadata accessor for _ViewModifier_Content();
  *&v27 = a3;
  *(&v27 + 1) = a4;
  v28 = 1;
  v17 = type metadata accessor for BodyInput();
  _GraphInputs.append<A, B>(_:to:)(&v27, v17, v17, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v27) = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v27, v33, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v16 & 1) == 0)
  {
    v30 = v15;
    v31 = v14;
    v26 = v22;
    *&v27 = v10;
    *(&v27 + 1) = v9;
    v28 = v24;
    v29 = v21;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v26, &v27, a5);
  }

  outlined destroy of _ViewListInputs(v33);
  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

uint64_t static ViewModifierContentProvider.providerMakeViewList(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  outlined init with copy of _ViewListInputs(a1, v14);
  v5 = type metadata accessor for BodyInput();
  v6 = _GraphInputs.popLast<A, B>(_:)(v5, &protocol witness table for BodyInput<A>, v12);
  v7 = v13;
  if (v13 == 255)
  {
    static _ViewListOutputs.emptyViewList(inputs:)(v14, a3);
  }

  else
  {
    v9 = v12[0];
    v8 = v12[1];
    if (v13)
    {
      (v12[0])(v6, v14);
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      outlined copy of BodyInputElement();
      static _ViewListOutputs.unaryViewList<A>(viewType:inputs:body:)(v14, partial apply for closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:), v10, a2, a3);
    }

    outlined consume of BodyInputElement?(v9, v8, v7);
  }

  return outlined destroy of _ViewListInputs(v14);
}

uint64_t sub_18D074038()
{

  return swift_deallocObject();
}

uint64_t static _ViewListOutputs.unaryViewList<A>(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = *(a1 + 32);
  v45[1] = *(a1 + 16);
  v45[2] = v11;
  v45[0] = *a1;
  v12 = WORD2(v11);
  type metadata accessor for UnaryElements<BodyUnaryViewGenerator>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v44[3] = v13;
  v44[4] = &protocol witness table for UnaryElements<A>;
  v14 = swift_allocObject();
  v44[0] = v14;
  *(v14 + 16) = v9;
  *(v14 + 20) = v10;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = *(a1 + 16);
  *(v14 + 40) = *a1;
  *(v14 + 56) = v15;
  *(v14 + 72) = *(a1 + 32);
  if ((v12 & 0x100) != 0)
  {
    v19 = *&v45[0];
    outlined init with copy of _GraphInputs(v45, v34);
    v20 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v19);
    Attribute = AGWeakAttributeGetAttribute();
    v17 = *MEMORY[0x1E698D3F8];
    v18 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v16 = 0;
    }

    else
    {
      v16 = v20;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v45, v34);
    v16 = 0;
    v17 = *MEMORY[0x1E698D3F8];
    v18 = 1;
  }

  v22 = *(a1 + 64);
  if (v22 != v17)
  {
    goto LABEL_13;
  }

  v23 = !v18;
  if ((*(a1 + 56) & 3) == 1)
  {
    v23 = 1;
  }

  if (v23 & 1) != 0 || (v24 = *(a1 + 128), v24 != 255) && ((v24 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v44, v33);
    v25 = *(a1 + 48);
    v26 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v32 = *(a1 + 112);
    v27 = *(a1 + 128);
    v28 = *(a1 + 72);
    v29 = *(a1 + 80);
    if (v22 == v17)
    {
      v22 = v17;
    }

    outlined init with take of AnyTrackedValue(v33, v34);
    v35 = v25;
    v36 = v26;
    v37 = v16;
    v38 = v18;
    v39 = v32;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v22;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v30 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v34);
    *a4 = v30;
    *(a4 + 8) = 0;
    *(a4 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v44, a4);
    *(a4 + 40) = 0;
    v25 = *(a1 + 48);
  }

  *(a4 + 48) = v25 + 1;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_18D07438C()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for _ViewListOutputs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _ViewInputs.ScrapeableParentID)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs.KeyValue>, &type metadata for PreferencesOutputs.KeyValue, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferenceKey.Type>, &lazy cache variable for type metadata for PreferenceKey.Type, &lazy cache variable for type metadata for PreferenceKey);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<Attribute<Transaction>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<GraphicsFilter>, &type metadata for GraphicsFilter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<BitVector64>, &type metadata for BitVector64);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformAccessibilitySettingsDefinition.Entry>, &type metadata for PlatformAccessibilitySettingsDefinition.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ShapeStyle_Pack.Effect>, &type metadata for _ShapeStyle_Pack.Effect);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradientVector.Stop>, &type metadata for ResolvedGradientVector.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ShaderVectorData.Element>, &type metadata for ShaderVectorData.Element);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<GraphHost>>, type metadata accessor for Unmanaged<GraphHost>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<ViewGraph>>, type metadata accessor for Unmanaged<ViewGraph>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<UnsafeRawPointer>, MEMORY[0x1E69E6270]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvedGradient.Stop>, &type metadata for ResolvedGradient.Stop);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGPoint>, type metadata accessor for CGPoint);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextVariantsStorage.Variant>, &type metadata for TextVariantsStorage.Variant);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>, &type metadata for Material.Layer.SDFLayer.GroupLayer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<_DisplayList_Identity>, &type metadata for _DisplayList_Identity);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<WeakAttribute<_DisplayList_StableIdentityScope>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextSizeCache.Entry>, &type metadata for TextSizeCache.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<MatchedGeometryScope.Frame>, &type metadata for MatchedGeometryScope.Frame);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<WeakAttribute<()>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<Attribute<ViewList>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<LazyPrefetchOperation>, &type metadata for LazyPrefetchOperation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Line>, &type metadata for Text.Layout.Line);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGRect>, type metadata accessor for CGRect, MEMORY[0x1E69E6F90], type metadata accessor for DisplayList.ArchiveIDs?);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapeableContent>, &type metadata for ScrapeableContent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, type metadata accessor for _ContiguousArrayStorage<Range<Int>>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<DebugReplaceableView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Unmanaged<DynamicViewList<AnyView>.Item>>, type metadata accessor for Unmanaged<DynamicViewList<AnyView>.Item>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t static ViewModifierContentProvider.providerMakeView(view:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[1];
  v61 = a1[2];
  v62 = v3;
  v5 = a1[3];
  v63 = a1[4];
  v6 = a1[1];
  v59 = *a1;
  v60 = v6;
  v55 = v61;
  v56 = v5;
  v57 = a1[4];
  v64 = *(a1 + 20);
  v58 = *(a1 + 20);
  v53 = v59;
  v54 = v4;
  v7 = type metadata accessor for BodyInput();
  outlined init with copy of _ViewInputs(&v59, &v37);
  _ViewInputs.popLast<A, B>(_:)(v7, &protocol witness table for BodyInput<A>, v51);
  v8 = v52;
  if (v52 == 255)
  {
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = 0;
    v21 = *MEMORY[0x1E698D3F8];
    v39 = v55;
    v40 = v56;
    v41 = v57;
    LODWORD(v42) = v58;
    v37 = v53;
    v38 = v54;
    result = outlined destroy of _ViewInputs(&v37);
    *(a2 + 12) = v21;
    return result;
  }

  v9 = v51[0];
  v10 = v51[1];
  if (v52)
  {
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v45 = v53;
    v46 = v54;
    v11 = swift_allocObject();
    v12 = v62;
    *(v11 + 48) = v61;
    *(v11 + 64) = v12;
    *(v11 + 80) = v63;
    *(v11 + 96) = v64;
    v13 = v60;
    *(v11 + 16) = v59;
    *(v11 + 32) = v13;
    *(v11 + 104) = v9;
    *(v11 + 112) = v10;
    v39 = v55;
    v40 = v56;
    v41 = v57;
    LODWORD(v42) = v58;
    v37 = v53;
    v38 = v54;
    *(&v42 + 1) = partial apply for closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:);
    v43 = v11;
    v44 = 0;
    v14 = v45;
    outlined init with copy of _ViewInputs(&v45, &v23);
    outlined init with copy of _ViewInputs(&v59, &v23);
    outlined init with copy of _ViewInputs(&v45, &v23);
    outlined copy of BodyInputElement?(v9, v10, v8);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v14);
    result = (*(v15 + 8))(&v37, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
    v17 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {
      __break(1u);
      return result;
    }

    v18 = v44;
    v19 = HIDWORD(v44);
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v40;

    outlined destroy of MakeViewRoot(&v23);

    outlined consume of BodyInputElement?(v9, v10, v8);
    outlined destroy of _ViewInputs(&v45);
    *a2 = v17;
    *(a2 + 8) = v18;
    *(a2 + 12) = v19;
    v33 = v55;
    v34 = v56;
    v35 = v57;
    v36 = v58;
    v31 = v53;
    v32 = v54;
    v20 = &v31;
  }

  else
  {
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v45 = v53;
    v46 = v54;
    v33 = v55;
    v34 = v56;
    v35 = v57;
    v36 = v58;
    v31 = v53;
    v32 = v54;
    v22 = outlined init with copy of _ViewInputs(&v45, &v37);
    v9(v22, &v31);
    outlined consume of BodyInputElement?(v9, v10, v8);
    v25 = v33;
    v26 = v34;
    v27 = v35;
    LODWORD(v28) = v36;
    v23 = v31;
    v24 = v32;
    outlined destroy of _ViewInputs(&v23);
    v39 = v55;
    v40 = v56;
    v41 = v57;
    LODWORD(v42) = v58;
    v37 = v53;
    v38 = v54;
    v20 = &v37;
  }

  return outlined destroy of _ViewInputs(v20);
}

uint64_t sub_18D0748B8()
{

  return swift_deallocObject();
}

uint64_t closure #1 in Attribute.setValue(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphSetValue();
  *a1 = result;
  return result;
}

uint64_t _GraphInputs.popLast<A, B>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  PropertyList.subscript.getter(a1, *v3, a1, v6);
  v7 = type metadata accessor for Stack();
  Stack.pop()(v7, a3);
  v9[0] = v9[1];
  return PropertyList.subscript.setter(v9, a1, a1, v6);
}

uint64_t Stack.pop()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v4 = *(a1 + 16);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v6 = swift_projectBox();
    v7 = *(v6 + *(TupleTypeMetadata2 + 48));
    v8 = *(v4 - 8);
    (*(v8 + 16))(a2, v6, v4);
    *v2 = v7;
    (*(v8 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(*(*(a1 + 16) - 8) + 56);

    return v10(a2, 1, 1);
  }
}

uint64_t storeEnumTagSinglePayload for BodyInputElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t static Stack<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v14 = *v13;
  if (!*v12)
  {
    if (!v14)
    {
      v25 = 1;
      return v25 & 1;
    }

LABEL_8:
    v25 = 0;
    return v25 & 1;
  }

  type metadata accessor for Stack();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = swift_projectBox();
  if (!v14)
  {
    goto LABEL_8;
  }

  v17 = *(TupleTypeMetadata2 + 48);
  v30 = *(v16 + v17);
  v18 = v16;
  v19 = swift_projectBox();
  v32 = v14;
  v20 = v19;
  v31 = *(v19 + v17);
  v21 = v6;
  v22 = *(v6 + 16);
  v22(v11, v18, a3);
  v23 = v20;
  v24 = v31;
  v22(v8, v23, a3);

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {

    v27 = *(v21 + 8);
    v27(v8, a3);
    v27(v11, a3);

    goto LABEL_8;
  }

  v33 = v24;
  v34 = v30;
  v25 = static Stack<A>.== infix(_:_:)(&v34, &v33, a3, a4);
  v26 = *(v21 + 8);
  v26(v8, a3);
  v26(v11, a3);

  return v25 & 1;
}

uint64_t static ViewModifier.makeBody(modifier:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5)
{
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(38);

    v15 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v15);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v10 = *(a5 + 5);
    v11 = *(a5 + 16);
    v19 = *a3;
    v16 = *a5;
    v17 = v11;
    v18 = v10;
    v12 = type metadata accessor for ModifierBodyAccessor();
    WitnessTable = swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, &v19, a4, &v16, v12, WitnessTable);
  }

  return result;
}

uint64_t type metadata accessor for ModifierBodyAccessor()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t _GraphInputs.append<A, B>(_:to:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  type metadata accessor for Stack();
  v15[2] = a6;
  swift_getWitnessTable();
  _GraphInputs.recordReusableInput<A>(_:)(a3, a3, a5);
  v12 = *(a5 + 8);
  PropertyList.subscript.getter(a3, *v7, a3, v12);
  v13 = swift_checkMetadataState();
  Stack.push(_:)(a1, v13);
  v15[0] = v15[1];
  return PropertyList.subscript.setter(v15, a3, a3, v12);
}

uint64_t _GraphInputs.recordReusableInput<A>(_:)(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  v7 = &static GraphReuseOptions.overrideValue;
  result = swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      result = swift_once();
    }

    v7 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v7 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(a1);
    v9 = *v3;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v9, v16);
    if (v10)
    {
      v11 = (v10 + 72);
      v12 = (v10 + 80);
    }

    else
    {
      v11 = &static ReusableInputs.defaultValue;
      v12 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v13 = *v11;
    v14 = *v12;

    if (!v14 || *(v14 + 16) != a2)
    {
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = a3;
      v15[4] = v14;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v3, v13 | v16, v15);
    }
  }

  return result;
}

uint64_t sub_18D0752C4()
{

  return swift_deallocObject();
}

uint64_t Stack.push(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = swift_allocBox();
  v8 = v7;
  v9 = *(TupleTypeMetadata2 + 48);
  result = (*(*(v4 - 8) + 16))(v7, a1, v4);
  *(v8 + v9) = *v2;
  *v2 = v6;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BodyInputElement(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of BodyInputElement();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t outlined consume of BodyInputElement?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of BodyInputElement();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Stack<BodyInputElement> and conformance <A> Stack<A>()
{
  result = lazy protocol witness table cache variable for type Stack<BodyInputElement> and conformance <A> Stack<A>;
  if (!lazy protocol witness table cache variable for type Stack<BodyInputElement> and conformance <A> Stack<A>)
  {
    _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(255, &lazy cache variable for type metadata for Stack<BodyInputElement>, &type metadata for BodyInputElement, type metadata accessor for Stack);
    lazy protocol witness table accessor for type BodyInputElement and conformance BodyInputElement();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Stack<BodyInputElement> and conformance <A> Stack<A>);
  }

  return result;
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

uint64_t closure #1 in variable initialization expression of static GraphReuseOptions.defaultsValue@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v2 = static NSUserDefaults.swiftUI;
  if (!static NSUserDefaults.swiftUI)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_11:
    _s2os6LoggerVSgWOhTm_2(&v9, type metadata accessor for Any?);
    goto LABEL_12;
  }

  v3 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DE17B10);
  v4 = [v2 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v6 = v7;
    goto LABEL_15;
  }

LABEL_12:
  result = getenv("SWIFTUI_GRAPH_REUSE_OPTIONS");
  if (result)
  {
    result = atoi(result);
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

LABEL_15:
  *a1 = v6;
  return result;
}

void one-time initialization function for swiftUI()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD750C0);
  v2 = [v0 initWithSuiteName_];

  static NSUserDefaults.swiftUI = v2;
}

uint64_t outlined destroy of Logger?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s2os6LoggerVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s2os6LoggerVSgMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s2os6LoggerVSgMaTm_2(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s2os6LoggerVSgWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AtomicBuffer<TrackerData>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BodyInputElement and conformance BodyInputElement()
{
  result = lazy protocol witness table cache variable for type BodyInputElement and conformance BodyInputElement;
  if (!lazy protocol witness table cache variable for type BodyInputElement and conformance BodyInputElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyInputElement and conformance BodyInputElement);
  }

  return result;
}

unint64_t type metadata accessor for Any.Type()
{
  result = lazy cache variable for type metadata for Any.Type;
  if (!lazy cache variable for type metadata for Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Any.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init()
{
  result = lazy protocol witness table cache variable for type BaseViewList.Init and conformance BaseViewList.Init;
  if (!lazy protocol witness table cache variable for type BaseViewList.Init and conformance BaseViewList.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseViewList.Init and conformance BaseViewList.Init);
  }

  return result;
}

uint64_t ConditionalMetadata<>.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30[4] = *MEMORY[0x1E69E9840];
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25[-3] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 32);
  if (*(v4 + 85))
  {
    v9 = specialized _GraphInputs.pushScope<A>(id:)(v12);
  }

  v13 = *v4;
  LODWORD(v26) = *(v5 + 24);
  v27 = v13;
  v24 = *(v5 + 8);
  v28 = v24;
  v29 = v12;
  MEMORY[0x1EEE9AC00](v9);
  *(&v24 - 4) = a3;
  v30[0] = &type metadata for ViewDescriptor;
  v30[1] = v14;
  v30[2] = a3;
  v30[3] = &protocol witness table for ViewDescriptor;
  v15 = type metadata accessor for UnwrapConditional();
  *(&v24 - 3) = v15;
  *(&v24 - 2) = swift_getWitnessTable();
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v13);
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v24 - 3), v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v27);
  v18 = *(v5 + 40);
  if (!v18)
  {
    __break(1u);
  }

  v19 = LODWORD(v30[0]);
  v20 = (*(v8 + 16))(v11, v18, a3);
  MEMORY[0x1EEE9AC00](v20);
  *(&v24 - 2) = a3;
  *(&v24 - 2) = v19;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in Attribute.setValue(_:), (&v24 - 2), a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v21);
  (*(v8 + 8))(v11, a3);
  _GraphValue.init(_:)(v19, v30);
  v22 = LODWORD(v30[0]);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v25[0] = v22;
  (*(a4 + 32))(&v26, v25, v5 + 48, a3, a4);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v22, a3, a4);
  return outlined assign with take of _ViewListOutputs?(&v26, v5 + 184);
}

unint64_t lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers()
{
  result = lazy protocol witness table cache variable for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers;
  if (!lazy protocol witness table cache variable for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers);
  }

  return result;
}

uint64_t initializeWithCopy for CachedEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t closure #1 in DynamicViewList.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v35 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v30 - v8;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicViewList();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v17 = a1;
  outlined init with copy of _ViewListInputs(a1 + *(v16 + 40), v38);
  v18 = v39;
  swift_beginAccess();
  v19 = v18[3];
  v42[1] = v18[2];
  v42[2] = v19;
  v20 = v18[5];
  v42[3] = v18[4];
  v42[4] = v20;
  v42[0] = v18[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v21 = swift_allocObject();
  memmove((v21 + 16), v18 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v42, v36);

  v39 = v21;
  if (((*(a3 + 32))(a2, a3) & 1) != 0 && (v41 & 1) == 0)
  {
    v41 |= 1uLL;
  }

  v40 = 0;
  (*(v13 + 16))(v15, v17, v12);
  v22 = *(v12 + 16);
  Value = AGGraphGetValue();
  (*(*(v22 - 8) + 16))(v11, Value, v22);
  (*(v13 + 8))(v15, v12);
  v25 = v32;
  v24 = v33;
  v26 = v34;
  (*(v33 + 16))(v32, v17, v34);
  (*(a3 + 72))(v36, v25, *(v17 + *(v12 + 36)), v38, a2, a3);
  (*(v24 + 8))(v25, v26);
  (*(v31 + 8))(v11, a2);
  LODWORD(v22) = _ViewListOutputs.makeAttribute(inputs:)(v38);
  outlined destroy of _ViewListInputs(v38);
  v27 = v35;
  *v35 = v22;
  v28 = v36[7];
  LOBYTE(v26) = v37;
  result = outlined destroy of _ViewListOutputs(v36);
  *(v27 + 4) = (v28 == 1) & ~v26;
  return result;
}

uint64_t specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t *, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!(a5 >> 62))
  {
    v36 = a5;
    v37 = a6;
    v15 = a2;
    v16 = a1;
    return a3(v15, &v36, v16);
  }

  if (a5 >> 62 != 1)
  {
    v18 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v21 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v34 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    v35 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v22 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    EnumTag = AGTypeGetEnumTag();
    v24 = AGTypeProjectEnumData();
    if (EnumTag == 1)
    {
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = a4;
      v30 = v19;
      v31 = v20;
      v32 = v21;
    }

    else
    {
      v27 = a2 + v21;
      if (__OFADD__(a2, v21))
      {
        goto LABEL_18;
      }

      v26 = a1;
      v28 = a3;
      v29 = a4;
      v31 = v34;
      v30 = v35;
      v32 = v22;
    }

    specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(v26, v27, v28, v29, v30, v31, v32);
    v24 = v18;
    v27 = EnumTag;
LABEL_14:
    v25 = a1;

    return MEMORY[0x1EEDEECD8](v24, v27, v25);
  }

  v10 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v13 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v14 = AGTypeGetEnumTag();
  if (v14 == 1)
  {
    v36 = 0;
    v37 = 0;
    v15 = a2;
    v16 = 0;
    return a3(v15, &v36, v16);
  }

  v33 = v14;
  v24 = AGTypeProjectEnumData();
  v27 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, v27, a3, a4, v11, v12, v13);
    v24 = v10;
    v27 = v33;
    goto LABEL_14;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return MEMORY[0x1EEDEECD8](v24, v27, v25);
}

uint64_t closure #1 in ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *(a4 + 32) = result;
    *(a4 + 40) = a3;
    List = type metadata accessor for ConditionalMetadata<>.MakeList();
    return TypeConformance<>.visitType<A>(visitor:)(a4, List, &protocol witness table for ConditionalMetadata<A><>.MakeList<A1>);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnwrapConditional<A, B, C>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t destroy for ConditionalMetadata<>.MakeList(uint64_t a1)
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*a1);

  result = swift_weakDestroy();
  v3 = *(a1 + 224);
  if (v3 != 255)
  {
    if (v3)
    {
    }

    else
    {

      return __swift_destroy_boxed_opaque_existential_1(a1 + 184);
    }
  }

  return result;
}

uint64_t type metadata completion function for DynamicViewList.WrappedList()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _ViewInputs.intern<A>(_:id:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = v3[1];
  v16[0] = *v3;
  v16[1] = v6;
  v8 = *v3;
  v7 = v3[1];
  v16[2] = v3[2];
  v9 = *a2;
  v13 = v8;
  v14 = v7;
  v15 = v3[2];
  v12 = v9;
  outlined init with copy of _GraphInputs(v16, v17);
  v10 = _GraphInputs.intern<A>(_:id:)(a1, &v12, a3);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  outlined destroy of _GraphInputs(v17);
  return v10;
}

uint64_t protocol witness for static _VariadicView_ImplicitRoot.implicitRoot.getter in conformance _VStackLayout@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static HorizontalAlignment.center;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ImplicitRootType)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for ImplicitRootType);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static ImplicitRootType.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

uint64_t _ViewInputs.implicitRootBodyInputs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v12 = v1[2];
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v10, v9[0]);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 64) = *MEMORY[0x1E698D3F8];
  *(a1 + 72) = MEMORY[0x1E69E7CD0];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  swift_weakInit();
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  v6 = v11;
  *a1 = v10;
  *(a1 + 16) = v6;
  *(a1 + 32) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  outlined init with copy of _GraphInputs(&v10, v9);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v7 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = static Semantics.forced >= v7;
    if (static Semantics.forced >= v7)
    {
      return result;
    }
  }

  if ((v5 & 2) == 0)
  {
    *(a1 + 56) = v5 | 2;
  }

  return result;
}

uint64_t _GraphInputs.intern<A>(_:id:)(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  specialized static GraphHost.currentHost.getter();
  v9 = v5;
  v6 = default argument 1 of GraphHost.intern<A>(_:for:id:)(a3);
  v7 = GraphHost.intern<A>(_:for:id:)(a1, v6, &v9, a3);

  return v7;
}

uint64_t static _ConditionalContent.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent();
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(v6, partial apply for closure #1 in static _ConditionalContent.makeConditionalMetadata<A>(_:), a1, a2, &v8);
  return ConditionalMetadata.init(_:)(&v8, a3);
}

uint64_t static ViewDescriptor.fetchConditionalType(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for conditionalCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static ViewDescriptor.conditionalCache;
  if (*(static ViewDescriptor.conditionalCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = v4[7] + 24 * v5;
    v8 = *v7;
    *a2 = *v7;
    *(a2 + 8) = *(v7 + 8);
    outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v8);
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0xF000000000000007;
  }

  return swift_endAccess();
}

uint64_t initializeWithCopy for DynamicViewList(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = v8 + 11;
  v10 = *v8;
  v8 += 147;
  v11 = v7 + 11;
  *v7 = v10;
  v7 += 147;
  v12 = v11 & 0xFFFFFFFFFFFFFFF8;
  v13 = v9 & 0xFFFFFFFFFFFFFFF8;
  *v12 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v12 + 16) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v12 + 24) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v12 + 28) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 28);
  *(v12 + 32) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v12 + 36) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 36);
  *(v12 + 40) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v12 + 48) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v12 + 56) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 56);
  *(v12 + 64) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 64);
  *(v12 + 72) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 72);
  *(v12 + 80) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 80);
  *(v12 + 88) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 88);

  swift_weakCopyInit();
  v14 = *(v13 + 112);
  *(v12 + 128) = *(v13 + 128);
  *(v12 + 112) = v14;
  v15 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  *(v7 & 0xFFFFFFFFFFFFFFF8) = v15;
  v16 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v15;

  return a1;
}

void type metadata accessor for _ConditionalContent<(), ()>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<(), ()>)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<(), ()>);
    }
  }
}

uint64_t one-time initialization function for conditionalTypeDescriptor()
{
  type metadata accessor for _ConditionalContent<(), ()>();
  result = MEMORY[0x193AC2090]();
  if (result)
  {
    conditionalTypeDescriptor = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for optionalTypeDescriptor()
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for ()?);
  result = MEMORY[0x193AC2090]();
  if (result)
  {
    optionalTypeDescriptor = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for ConditionalTypeDescriptor<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, type metadata accessor for ConditionalTypeDescriptor);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ConditionalTypeDescriptor<ViewDescriptor>>);
    }
  }
}

void type metadata accessor for UniqueID?()
{
  if (!lazy cache variable for type metadata for UniqueID?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UniqueID?);
    }
  }
}

unint64_t *initializeWithCopy for ConditionalMetadata(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

id DynamicViewList.init(metadata:view:inputs:lastItem:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for DynamicViewList();
  *(a5 + v11[9]) = a2;
  outlined init with take of _ViewListInputs(a3, a5 + v11[10]);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a5 + v11[11]) = result;
    v13 = v11[12];
    type metadata accessor for DynamicViewList.Item();
    type metadata accessor for Unmanaged();
    type metadata accessor for Array();
    type metadata accessor for MutableBox();
    v14 = Array.init()();
    result = MutableBox.__allocating_init(_:)(&v14);
    *(a5 + v13) = result;
    *(a5 + v11[13]) = a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DynamicView.makeDynamicViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v20 = a1;
  v26 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = type metadata accessor for DynamicViewList();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  LODWORD(a2) = *a2;
  (*(v7 + 16))(v9, v20, AssociatedTypeWitness, v12);
  v15 = v21;
  outlined init with copy of _ViewListInputs(v21, v25);
  DynamicViewList.init(metadata:view:inputs:lastItem:)(v9, a2, v25, 0, v14);
  v23 = v10;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ViewList>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, closure #1 in Attribute.init<A>(_:)partial apply, v22, v10, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  result = (*(v11 + 8))(v14, v10);
  *a4 = v25[0];
  *(a4 + 8) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = *(v15 + 48);
  *(a4 + 56) = 0;
  *(a4 + 64) = 1;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DynamicViewList<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t destroy for ConditionalMetadata(unint64_t *a1)
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*a1);
}

uint64_t destroy for DynamicViewList(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = (a1 + *(v3 + 56) + 3) & 0xFFFFFFFFFFFFFFFCLL;

  swift_weakDestroy();
}

uint64_t static _ConditionalContent<>._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for _ConditionalContent();
  static _ConditionalContent.makeConditionalMetadata<A>(_:)(&type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v11);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  v7 = v5;
  swift_getWitnessTable();
  static DynamicView.makeDynamicViewList(metadata:view:inputs:)(&v8, &v7, a2, a3);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v8);
}

uint64_t closure #1 in static _ConditionalContent.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v20 = a3;
  v21 = a4;
  v22 = a2;
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(a2, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a3, a4, &v17);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(a1, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a3, a4, &v17);
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = swift_allocObject();
  result = type metadata accessor for _ConditionalContent.Storage();
  *(v15 + 16) = result;
  *(v15 + 24) = v9;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  *(v15 + 48) = v12;
  *(v15 + 56) = v13;
  *(v15 + 64) = v14;
  if (__OFADD__(v11, v14))
  {
    __break(1u);
  }

  else
  {
    *a5 = v15 | 0x8000000000000000;
    a5[1] = 0;
    a5[2] = v11 + v14;
  }

  return result;
}

uint64_t outlined assign with take of _ViewListOutputs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _ViewListOutputs?);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ConditionalContent<>.makeChildViewList(metadata:view:inputs:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12[1] = *(a4 + 16);
  v13 = a5;
  v14 = a6;
  v15 = *a1;
  v16 = v9;
  v17 = v10;
  v18 = a2;
  v19 = a3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in _ConditionalContent<>.makeChildViewList(metadata:view:inputs:), v12, a4, MEMORY[0x1E69E73E0], &type metadata for _ViewListOutputs, MEMORY[0x1E69E7410], a8);
}

uint64_t ConditionalMetadata.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (v5)
    {
      v8 = v5;
      do
      {
        result = AGMakeUniqueID();
        v10 = *(v7 + 2);
        v9 = *(v7 + 3);
        if (v10 >= v9 >> 1)
        {
          v11 = result;
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
          result = v11;
        }

        *(v7 + 2) = v10 + 1;
        *&v7[8 * v10 + 32] = result;
        --v8;
      }

      while (v8);
    }

    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v7;
  }

  return result;
}

uint64_t type metadata completion function for DynamicViewList()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for DynamicViewList.Item()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MutableBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t instantiation function for generic protocol witness table for DynamicViewList<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for _TraitWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t destroy for _TraitWritingModifier(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of AnyTrackedValue(&v12, v10 + 40 * a1 + 32);
}

uint64_t static PropertyKey.valuesEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a2;
  v9 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13compareValues__7optionsSbx_xSo19AGComparisonOptionsVtlFSbSPyxGXEfU_TA_0, &v6, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v4);
  return v10;
}

{
  return static PropertyKey.valuesEqual(_:_:)(a1, a2) & 1;
}

uint64_t _s14AttributeGraph13compareValues__7optionsSbx_xSo19AGComparisonOptionsVtlFSbSPyxGXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = a1;
  v15 = v10;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:), &v12, v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:)@<X0>(_BYTE *a1@<X8>)
{
  result = AGCompareValues();
  *a1 = result;
  return result;
}

uint64_t AnyHashable2.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyHashableBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = GradientBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t protocol witness for _ViewList_SublistTransform_Item.apply(sublist:) in conformance ModifiedViewList.Transform(uint64_t a1)
{
  v3 = *v1;
  v10 = &type metadata for ModifiedElements;
  v11 = &protocol witness table for ModifiedElements;
  v4 = swift_allocObject();
  *&v9 = v4;
  outlined init with copy of AnyTrackedValue(a1 + 32, v4 + 16);
  *(v4 + 56) = *(v3 + 40);
  *(v4 + 64) = *(v3 + 24);
  v5 = *(v3 + 80);
  v13 = *(v3 + 64);
  v14 = v5;
  v12 = *(v3 + 48);
  v6 = v12;
  *(v4 + 96) = v13;
  *(v4 + 112) = v5;
  *(v4 + 80) = v6;
  outlined init with copy of _GraphInputs(&v12, v8);
  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  return outlined init with take of AnyTrackedValue(&v9, a1 + 32);
}

uint64_t protocol witness for ViewList.applyNodes(from:style:list:transform:to:) in conformance ModifiedViewList(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v11 = *a2;
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *(v10 + 40);
  v16[3] = a1;
  v16[4] = v11;
  v17 = a3;
  v18 = BYTE4(a3) & 1;
  v19 = a5;
  v20 = a6;
  return a10(v14, a9, v16, v12, v13) & 1;
}

uint64_t type metadata completion function for AnyGestureStorage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _ViewList_TemporarySublistTransform.apply(sublist:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = *v3;
    v5 = v3[1];

    specialized Array.reserveCapacity(_:)(v5);
    v6 = v4[2];
    if (!v6)
    {
    }

    v7 = &v4[5 * v6 - 1];
    while (v6 <= v4[2])
    {
      --v6;
      outlined init with copy of AnyTrackedValue(v7, v13);
      v8 = v14;
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v9 + 16))(a1, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v7 -= 40;
      if (!v6)
      {
      }
    }

    __break(1u);
    return specialized Array.reserveCapacity(_:)(0);
  }

  if (!v3)
  {
    return specialized Array.reserveCapacity(_:)(0);
  }

  specialized Array.reserveCapacity(_:)(v3[6]);
  do
  {
    outlined init with copy of AnyTrackedValue((v3 + 1), v13);
    v11 = v14;
    v12 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v12 + 16))(a1, v11, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    v3 = *v3;
  }

  while (v3);
  return result;
}

uint64_t closure #1 in ModifiedViewList.applyNodes(from:style:list:transform:to:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v21 = a4;
  v19 = v14;
  v20 = v15;
  result = (*(v17 + 64))(a3, &v21, a5 | ((HIDWORD(a5) & 1) << 32), &v19, a6, a7, v16, v17);
  *a8 = result & 1;
  return result;
}

uint64_t _ViewListOutputs.makeAttribute(inputs:)(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListOutputs.Views(v1, v19);
  if (v20)
  {
    v3 = LODWORD(v19[0]);
    if (*(&v19[0] + 1))
    {
      LODWORD(v16[0]) = v19[0];
      *(&v16[0] + 1) = *(&v19[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();
      v3 = Attribute.init<A>(body:value:flags:update:)();
    }
  }

  else
  {
    outlined init with take of AnyTrackedValue(v19, v18);
    outlined init with copy of AnyTrackedValue(v18, v15);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56) & 3;
    if (*(a1 + 37))
    {
      v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*a1);
      Attribute = AGWeakAttributeGetAttribute();
      v7 = Attribute == *MEMORY[0x1E698D3F8];
      if (Attribute == *MEMORY[0x1E698D3F8])
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    *&v13 = 0;
    BYTE8(v13) = 0;
    outlined init with copy of AnyTrackedValue(v15, &v10);
    *(&v12 + 1) = v4;

    *&v13 = MEMORY[0x1E69E7CD0];
    BYTE8(v13) = 0;
    v14 = MEMORY[0x1E69E7CC0];
    if (v5 == 1)
    {
      _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(1);
    }

    if (!v7)
    {
      _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
    v16[1] = v11;
    v16[2] = v12;
    v16[3] = v13;
    v17 = v14;
    v16[0] = v10;
    *(&v11 + 1) = &unk_1F0084288;
    *&v12 = lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
    *&v10 = swift_allocObject();
    outlined init with copy of BaseViewList(v16, v10 + 16);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    v3 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList(v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  return v3;
}

uint64_t sub_18D078EA8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(char a1)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v18 = a1 & 1;
  v22 = a1;
  v5 = *v1;
  v6 = *v1 + 32;
  v7 = *(*v1 + 16);
  do
  {
    if (v7 == v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
          *v2 = v5;
        }

        type metadata accessor for ViewTraitCollection.AnyTrait<LeafContentType.TraitKey>(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<CanTransitionTraitKey>, &type metadata for CanTransitionTraitKey, &protocol witness table for CanTransitionTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
        v20 = v17;
        v21 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
        LOBYTE(v19) = v18;
        v5[2] = v16 + 1;
        result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v16 + 4]);
        goto LABEL_13;
      }

LABEL_15:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      *v2 = v5;
      goto LABEL_10;
    }

    if (v4 >= v5[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v4;
    outlined init with copy of AnyTrackedValue(v6 + v3 * 8, &v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v10 = (v9[1])(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v3 += 5;
  }

  while (v10 != &type metadata for CanTransitionTraitKey);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v2 = result;
  }

  if (v4 - 1 < v5[2])
  {
    v12 = v5[v3 + 2];
    v13 = v5[v3 + 3];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v3 - 1], v12);
    result = (*(v13 + 24))(&v22, MEMORY[0x1E69E6370], v12, v13);
LABEL_13:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t destroy for BaseViewList.Init(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void _ViewList_Node.applySublists(from:style:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v9 = *a2;
  v37 = *a3;
  v38 = *(a3 + 8);
  v10 = outlined init with copy of _ViewList_Node(v5, &v44);
  if (v49 <= 1u)
  {
    if (v49)
    {
      *&v40[16] = v46;
      v41 = v47;
      v42[0] = *v48;
      *(v42 + 13) = *&v48[13];
      v39 = v44;
      *v40 = v45;
      v26 = *(&v44 + 1);
      if (v9)
      {
        v26 = *(&v44 + 1) * (v9 >> 1);
        if ((*(&v44 + 1) * (v9 >> 1)) >> 64 != v26 >> 63)
        {
          goto LABEL_22;
        }
      }

      v27 = *a1 - v26;
      if (*a1 >= v26)
      {
        outlined destroy of _ViewList_Sublist(&v39);
        *a1 = v27;
      }

      else
      {
        *&v43[0] = v37;
        BYTE8(v43[0]) = v38;
        _ViewList_TemporarySublistTransform.apply(sublist:)(&v39);
        a4(&v39);
        outlined destroy of _ViewList_Sublist(&v39);
        *a1 = 0;
      }
    }

    else
    {
      v11 = DWORD2(v46);
      v12 = BYTE12(v46);
      outlined init with take of AnyTrackedValue(&v44, &v39);
      v14 = *&v40[8];
      v13 = *&v40[16];
      __swift_project_boxed_opaque_existential_1(&v39, *&v40[8]);
      v53[0] = v9;
      v51 = v37;
      v52 = v38;
      *&v43[1] = a4;
      *(&v43[1] + 1) = a5;
      v15 = *(v13 + 64);
      v50 = v12;
      v15(a1, v53, v11 | (v12 << 32), &v51, partial apply for closure #1 in ViewList.applySublists(from:style:list:transform:to:), v43, v14, v13);
      __swift_destroy_boxed_opaque_existential_1(&v39);
    }

    return;
  }

  if (v49 != 2)
  {
    LODWORD(v39) = v44;
    *(&v39 + 1) = *(&v44 + 1);
    *v40 = v45;
    v40[8] = BYTE8(v45);
    v51 = v9;
    *&v43[0] = v37;
    BYTE8(v43[0]) = v38;
    MEMORY[0x1EEE9AC00](a1);
    v30 = a4;
    v31 = a5;
    _ViewList_Section.applyNodes(from:style:transform:to:)(v28, &v51, v43, partial apply for closure #2 in _ViewList_Node.applySublists(from:style:transform:to:), v29);

    return;
  }

  v36 = v9;
  v32[1] = v32;
  MEMORY[0x1EEE9AC00](v10);
  v34 = v16;
  v35 = v29;
  v17 = 0;
  v30 = a4;
  v31 = a5;
  v18 = *(v16 + 16);
  v33 = v16 + 32;
  while (1)
  {
    if (v17 == v18)
    {
      v17 = v18;
      memset(v43, 0, 44);
      goto LABEL_11;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v34 + 16))
    {
      goto LABEL_21;
    }

    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v33 + 48 * v17++, v43, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
LABEL_11:
    *&v40[12] = *(&v43[1] + 12);
    v39 = v43[0];
    *v40 = v43[1];
    if (*(&v43[1] + 1))
    {
      v19 = a1;
      v20 = *&v40[24];
      outlined init with take of AnyTrackedValue(&v39, v43);
      v21 = *(&v43[1] + 1);
      v22 = *&v43[2];
      __swift_project_boxed_opaque_existential_1(v43, *(&v43[1] + 1));
      v53[0] = v36;
      v51 = v37;
      v52 = v38;
      v23 = *(v22 + 64);
      v50 = 0;
      v24 = v20;
      a1 = v19;
      v25 = v23(v19, v53, v24, &v51, partial apply for closure #1 in _ViewList_Node.applySublists(from:style:transform:to:), v35, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v43);
      if (v25)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(uint64_t a1, void (*a2)(uint64_t **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v12 = *v6;
  v13 = *(v6 + 8);
  (*(a6 + 8))(&v27, a5, a6);
  v14 = v27;
  if (v13 == 1)
  {
    specialized _ViewList_SublistTransform.push(_:flags:)(a1, &v27, v12, a5, a6);
    v27 = v12;
    v28[0] = 1;
    a2(&v27);
    LOBYTE(v27) = v14;
    return _ViewList_SublistTransform.pop(flags:)(&v27);
  }

  else
  {
    v25 = a5;
    v26 = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    if (v12)
    {
      v17 = v12[6];
      v18 = v12[7] + 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = v17 + (v14 & 1);
    v27 = v12;
    v20 = outlined init with take of AnyTrackedValue(&v24, v28);
    v29 = v19;
    v30 = v18;
    MEMORY[0x1EEE9AC00](v20);
    v22[2] = v23;
    v22[3] = a5;
    v22[4] = a6;
    v22[5] = a2;
    v22[6] = a3;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v27, partial apply for closure #1 in _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:), v22, &type metadata for _ViewList_TemporarySublistTransform.ItemNode, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v21);
    return outlined destroy of _AnyAnimatableData(&v27);
  }
}

uint64_t _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  AnyHashable2.init<A>(_:)(v12, a5, &v21);
  v14 = v21;
  v15 = *(v5 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 24 * v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = a4;
  *(v19 + 48) = a2;
  *(v19 + 52) = a3 & 1;
  *(v5 + 8) = v15;
  return result;
}

uint64_t partial apply for closure #1 in _ViewList_Node.applySublists(from:style:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *a4;
  v8 = *(a4 + 8);
  v13 = *a2;
  v11 = v7;
  v12 = v8;
  _ViewList_Node.applySublists(from:style:transform:to:)(a1, &v13, &v11, v6, v5);
  return v9 & 1;
}

uint64_t initializeWithCopy for _ViewList_Node(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 93);
  if (v3 >= 4)
  {
    v3 = *a2 + 4;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      *a1 = *a2;
      *(a1 + 93) = 2;
LABEL_11:

      return a1;
    }

    *a1 = *a2;
    v12 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v12;
    *(a1 + 24) = *(a2 + 24);
    v11 = 3;
LABEL_10:
    *(a1 + 93) = v11;

    goto LABEL_11;
  }

  if (v3)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    v6 = *(a2 + 56);
    *(a1 + 56) = v6;
    v7 = v6;
    v8 = **(v6 - 8);

    v8(a1 + 32, a2 + 32, v7);
    v10 = *(a2 + 80);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = v10;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 92) = *(a2 + 92);
    v11 = 1;
    goto LABEL_10;
  }

  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))(a1);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 93) = 0;
  return a1;
}

uint64_t initializeWithCopy for _ViewList_Sublist(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 32, a2 + 32, v5);
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);

  return a1;
}

uint64_t BaseViewList.applyNodes(from:style:list:transform:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, unint64_t *, _BYTE *, uint64_t *))
{
  v6 = v5;
  v9 = *a2;
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = v5[3];
  v13 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v12);
  result = (*(v13 + 8))(v12, v13);
  v15 = result;
  v16 = result;
  if (v9)
  {
    v16 = result * (v9 >> 1);
    if ((result * (v9 >> 1)) >> 64 != v16 >> 63)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

  v17 = *a1;
  v18 = __OFSUB__(*a1, v16);
  v19 = *a1 - v16;
  if (v19 < 0 == v18)
  {
    *a1 = v19;
    v22 = 1;
    return v22 & 1;
  }

  v20 = *(v6 + 40);
  if (v20 < 0xFFFFFFFF80000000)
  {
    goto LABEL_10;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    outlined init with copy of AnyTrackedValue(v6, v32);
    v21 = *(v6 + 64);
    v28[0] = v17;
    v28[1] = v15;
    v29 = 0;
    v30 = v20;
    v31 = MEMORY[0x1E69E7CC0];
    v32[5] = MEMORY[0x1E69E7CC0];
    v32[6] = v21;
    v33 = a3;
    v34 = BYTE4(a3) & 1;
    v27 = v9;
    outlined init with copy of _ViewList_Sublist(v28, v26);
    v26[93] = 1;
    v24 = v10;
    v25 = v11;

    v22 = a5(a1, &v27, v26, &v24);
    outlined destroy of _ViewList_Node(v26);
    outlined destroy of _ViewList_Sublist(v28);
    *a1 = 0;
    return v22 & 1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for BaseViewList.Init(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);

  return a1;
}

__n128 BaseViewList.Init.value.getter@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  outlined init with copy of AnyTrackedValue(v1, v22);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  v7 = *(v1 + 60);
  v16 = *(v1 + 72);
  v17 = *(v1 + 64);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v2 + 96);
  LODWORD(v2) = *(v2 + 100);
  v11 = *MEMORY[0x1E698D3F8];

  if (v2 == v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = *AGGraphGetValue();
  }

  a1[3] = &unk_1F0084288;
  a1[4] = lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
  v13 = swift_allocObject();
  *a1 = v13;
  *&v20 = 0;
  BYTE8(v20) = 0;
  outlined init with copy of AnyTrackedValue(v22, v18);
  *(&v19 + 1) = v4;

  *&v20 = v9;
  BYTE8(v20) = v10;
  v21 = v12;
  if (!v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_10:
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(v6);
    if (v8 == 255)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(1);
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v8 != 255)
  {
LABEL_7:
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA0C13ContentOffsetO_Tt0B5(v17, v16, v8);
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v22);
  v14 = v20;
  *(v13 + 48) = v19;
  *(v13 + 64) = v14;
  *(v13 + 80) = v21;
  result = v18[1];
  *(v13 + 16) = v18[0];
  *(v13 + 32) = result;
  return result;
}