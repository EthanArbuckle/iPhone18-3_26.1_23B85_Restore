void type metadata accessor for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>)
  {
    type metadata accessor for (Int, TypeConformance<StyleContextDescriptor>)(255, &lazy cache variable for type metadata for (Int, TypeConformance<ViewDescriptor>), &lazy cache variable for type metadata for TypeConformance<ViewDescriptor>, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, TypeConformance<ViewDescriptor>)>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    _sSnySiGMaTm_0(255, a3, a4, a5, type metadata accessor for TupleTypeDescription);
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *v6;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>(0, a3, a4, a5, a6);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v34 = v7;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1170](*(v11 + 40), v24);
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v7 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v7 = v34;
    if (v33 >= 64)
    {
      bzero((v9 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_33:
  *v7 = v11;
  return result;
}

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _TraitWritingModifier()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ForEach()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double DynamicBody.init(accessor:container:phase:links:resetSeed:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, double *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v13 = type metadata accessor for DynamicBody();
  *(a7 + v13[13]) = a2;
  *(a7 + v13[14]) = a3;
  v14 = (a7 + v13[15]);
  *v14 = v12;
  result = a4[1];
  v14[1] = result;
  *(a7 + v13[16]) = a5;
  return result;
}

void _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v73 = type metadata accessor for OSSignpostID();
  v6 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  LODWORD(a1) = *a1;
  v12 = *a2;
  LOBYTE(v13) = *(a2 + 16);
  v14 = *v3;
  v15 = *(v3 + 12);
  if (one-time initialization token for linkCreate != -1)
  {
LABEL_72:
    swift_once();
  }

  v16 = byte_1ED53762A;
  if (byte_1ED53762A >= 2u)
  {
    v56 = *(&static Signpost.linkCreate + 1);
    v59 = static Signpost.linkCreate;
    v55 = word_1ED537628;
    v63 = HIBYTE(word_1ED537628);
    if (byte_1ED53762A == 2)
    {
      if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
      {
        return;
      }
    }

    else if ((word_1ED537628 & 0x100) != 0)
    {
      static os_signpost_type_t.event.getter();
      if ((kdebug_is_enabled() & 1) == 0)
      {
        return;
      }

      if (one-time initialization token for _signpostLog != -1)
      {
LABEL_75:
        swift_once();
      }

      if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
      {
        return;
      }
    }

    else
    {
      static os_signpost_type_t.event.getter();
      if ((kdebug_is_enabled() & 1) == 0)
      {
        return;
      }
    }

    v77 = a3;
    swift_getMetatypeMetadata();
    v54 = String.init<A>(describing:)();
    v58 = v17;
    v53 = specialized static Tracing.libraryName(defining:)();
    v57 = v18;
    v19 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    if ((v13 & 1) == 0)
    {
      v64 = v16;
      v49 = a1;

      if (v15)
      {
        a3 = v59;
        if (v59 == 20)
        {
          v20 = 3;
        }

        else
        {
          v20 = 4;
        }

        if (!v14)
        {
          __break(1u);
          return;
        }

        v21 = 0;
        v62 = v12 + 32;
        v46 = v59 >> 14;
        v47 = bswap32(v59);
        v16 = v47 | v46 & 0x3FFFC;
        v67 = 16 * v20;
        v68 = v20;
        v71 = (v6 + 16);
        v72 = (v6 + 8);
        LODWORD(v6) = 0;
        v48 = xmmword_18DDACAA0;
        v45 = v12;
        v50 = v10;
        v61 = v14;
        v60 = v15;
        v66 = v59;
        do
        {
          v13 = (v14 + v6);
          if (v15 == v21 + 1)
          {
            v6 = 0;
          }

          else
          {
            v6 = (*(v13 + 2) + v6);
          }

          v22 = *(v12 + 16);
          if (v21 == v22)
          {
            break;
          }

          if (v21 >= v22)
          {
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v65 = v21 + 1;
          a1 = *(v62 + 32 * v21 + 16);
          v23 = static os_signpost_type_t.event.getter();
          if (v64 >= 2)
          {
            v15 = v23;
            if (v64 == 2)
            {
              if ((_SwiftUIIsAppleInternalBuild() & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            else
            {
              static os_signpost_type_t.event.getter();
              if (v63)
              {
                if ((kdebug_is_enabled() & 1) == 0)
                {
                  goto LABEL_66;
                }

                if (one-time initialization token for _signpostLog != -1)
                {
                  swift_once();
                }

                if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
                {
                  goto LABEL_66;
                }
              }

              else if ((kdebug_is_enabled() & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            v51 = v6;
            static OSSignpostID.exclusive.getter();
            type metadata accessor for _ContiguousArrayStorage<CVarArg>();
            v6 = swift_allocObject();
            *(v6 + 16) = v48;
            v24 = _typeName(_:qualified:)();
            v14 = v25;
            v10 = MEMORY[0x1E69E6158];
            *(v6 + 56) = MEMORY[0x1E69E6158];
            v26 = lazy protocol witness table accessor for type String and conformance String();
            *(v6 + 32) = v24;
            *(v6 + 40) = v14;
            v27 = MEMORY[0x1E69E6810];
            *(v6 + 96) = MEMORY[0x1E69E6810];
            v28 = MEMORY[0x1E69E6870];
            *(v6 + 64) = v26;
            *(v6 + 72) = v13;
            *(v6 + 136) = v10;
            *(v6 + 144) = v26;
            v29 = v54;
            *(v6 + 104) = v28;
            *(v6 + 112) = v29;
            *(v6 + 120) = v58;
            *(v6 + 176) = v10;
            *(v6 + 184) = v26;
            *(v6 + 152) = v53;
            *(v6 + 160) = v57;
            *(v6 + 216) = MEMORY[0x1E69E6530];
            *(v6 + 224) = MEMORY[0x1E69E65A8];
            *(v6 + 192) = a1;
            *(v6 + 256) = MEMORY[0x1E69E7668];
            *(v6 + 264) = MEMORY[0x1E69E76D0];
            *(v6 + 232) = v49;
            *(v6 + 296) = v27;
            *(v6 + 304) = v28;
            if (Counter < 0)
            {
              goto LABEL_74;
            }

            *(v6 + 272) = Counter;
            v30 = one-time initialization token for _signpostLog;

            if (v30 != -1)
            {
              swift_once();
            }

            v10 = v50;
            if ((v63 & 1) == 0)
            {
              v12 = v15;
              v69 = *v71;
              v31 = v69(v75, v50, v73);
              a1 = 0;
              v76 = 1;
              v70 = v6 + 32;
LABEL_42:
              v74 = &v44;
              MEMORY[0x1EEE9AC00](v31);
              v13 = &v44 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
              v10 = v13 + 8;
              a3 = v68;
              v33 = v68;
              v34 = v13 + 8;
              do
              {
                *(v34 - 1) = 0;
                *v34 = 0;
                v34 += 16;
                --v33;
              }

              while (v33);
              v14 = v70 + 40 * a1;
              while (1)
              {
                v35 = *(v6 + 16);
                if (a1 == v35)
                {
                  v76 = 0;
LABEL_50:
                  a3 = v66;
                  if (v66 == 20)
                  {
                    OSSignpostID.rawValue.getter();
                  }

                  kdebug_trace();
                  if (v13[8] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v13[24] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (v13[40] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (a3 != 20 && v13[56] == 1)
                  {
                    kdebug_trace_string();
                  }

                  if (one-time initialization token for continuation != -1)
                  {
                    swift_once();
                  }

                  v38 = v73;
                  v39 = *v72;
                  v40 = v75;
                  (*v72)(v75, v73);
                  v41 = __swift_project_value_buffer(v38, static OSSignpostID.continuation);
                  v31 = v69(v40, v41, v38);
                  if ((v76 & 1) == 0)
                  {
                    LODWORD(a1) = v72;
                    v42 = v73;
                    v39(v75, v73);
                    v43 = v50;
                    v39(v50, v42);
                    v10 = v43;

                    v12 = v45;
                    goto LABEL_65;
                  }

                  goto LABEL_42;
                }

                if (a1 >= v35)
                {
                  break;
                }

                ++a1;
                outlined init with copy of AnyTrackedValue(v14, &v77);
                v36 = v78;
                v15 = v79;
                __swift_project_boxed_opaque_existential_1(&v77, v78);
                *(v10 - 1) = CVarArg.kdebugValue(_:)(v16 | v12, v36);
                *v10 = v37 & 1;
                v10 += 16;
                __swift_destroy_boxed_opaque_existential_1(&v77);
                v14 += 40;
                if (!--a3)
                {
                  goto LABEL_50;
                }
              }

              __break(1u);
              goto LABEL_72;
            }

            os_signpost(_:dso:log:name:signpostID:_:_:)();
            (*v72)(v10, v73);

LABEL_65:
            LODWORD(v6) = v51;
          }

LABEL_66:
          v15 = v60;
          v21 = v65;
          v14 = v61;
        }

        while (v60 != v65 || v6);
      }
    }
  }
}

void one-time initialization function for linkCreate()
{
  *&static Signpost.linkCreate = "LinkCreate";
  *(&static Signpost.linkCreate + 1) = 10;
  word_1ED537628 = 258;
  byte_1ED53762A = 3;
}

uint64_t type metadata completion function for _VariadicView.Tree()
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

uint64_t type metadata completion function for SimultaneousGesture()
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

uint64_t specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<Namespace.Box>);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(32);
  *result = v6;
  *(result + 8) = 32;
  *(result + 16) = a1;
  v8 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  if (result - v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result - v8 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v2 + 3);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 3) = v11;
  if (a2 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(result + 12) = *(result + 12) & 0x80000000 | a2;
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<FullEnvironmentBox>);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(64);
  *result = v6;
  *(result + 8) = 64;
  v8 = *(a1 + 32);
  v9 = *(a1 + 16);
  *(result + 16) = *a1;
  *(result + 32) = v9;
  *(result + 48) = v8;
  v10 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  if (result - v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result - v10 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(v2 + 3);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 3) = v13;
  if (a2 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(result + 12) = *(result + 12) & 0x80000000 | a2;
      return outlined init with copy of FullEnvironmentBox(a1, v14);
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void type metadata accessor for BoxVTable<Text.Measurements.Box>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for BoxVTable();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of _ViewListOutputs.Views(v4, v38);
  if (v39)
  {
    v8 = v38[0];
    v9 = *(&v38[0] + 1);
    v10 = a2[1];
    v27 = *a2;
    v28 = v10;
    v29 = a2[2];
    type metadata accessor for ModifiedViewList.ListModifier();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = a3;
    *(v11 + 32) = a4;
    outlined init with copy of _GraphInputs(&v27, &v35);
    *(v11 + 40) = AGCreateWeakAttribute();
    v12 = v28;
    *(v11 + 48) = v27;
    *(v11 + 64) = v12;
    *(v11 + 80) = v29;
    LODWORD(v35) = v8;
    *(&v35 + 1) = v11;
    BYTE8(v37) = 1;
    v13 = &v35;
  }

  else
  {
    outlined init with take of AnyTrackedValue(v38, v34);
    outlined init with copy of AnyTrackedValue(v34, v26);
    v14 = a2[1];
    v35 = *a2;
    v36 = v14;
    v37 = a2[2];
    outlined init with copy of AnyTrackedValue(v26, &v27);
    outlined init with copy of _GraphInputs(&v35, v24);
    v15 = AGCreateWeakAttribute();
    v16 = v15;
    v17 = HIDWORD(v15);
    __swift_destroy_boxed_opaque_existential_1(v26);
    *(&v29 + 1) = __PAIR64__(v17, v16);
    *&v30 = a3;
    *(&v30 + 1) = a4;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v24[3] = &type metadata for ModifiedElements;
    v24[4] = &protocol witness table for ModifiedElements;
    v18 = swift_allocObject();
    v24[0] = v18;
    v19 = v30;
    v20 = v32;
    v21 = v33;
    v18[5] = v31;
    v18[6] = v20;
    v18[7] = v21;
    v22 = v28;
    v18[1] = v27;
    v18[2] = v22;
    v18[3] = v29;
    v18[4] = v19;
    __swift_destroy_boxed_opaque_existential_1(v34);
    v25 = 0;
    v13 = v24;
  }

  return outlined assign with take of _ViewListOutputs.Views(v13, v4);
}

uint64_t sub_18D054218()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t initializeWithCopy for _ViewListOutputs.Views(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);

    v4 = 1;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1);
    v4 = 0;
  }

  *(a1 + 40) = v4;
  return a1;
}

uint64_t destroy for _ViewListInputs()
{

  return swift_weakDestroy();
}

uint64_t sub_18D0543E0()
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {

    return AGSubgraphEndTreeElement();
  }

  return result;
}

uint64_t destroy for _ViewListOutputs(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_VStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_VStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_HStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_HStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06HStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06HStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA019FlexibleButtonFrameC0V_Tt2t4B5, 2u, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA019FlexibleButtonFrameC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5, 0x10002u, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06ZStackC0V_Tt2t4B5, 0x10002u, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06ZStackC0V_Tt4B5);
}

{

  return specialized static Layout.makeLayoutView(root:inputs:body:)(a1, a2, a3, a4, _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06VStackC0V_Tt2t4B5, _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA06VStackC0V_Tt4B5);
}

uint64_t closure #2 in static ModifiedContent<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[1] = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:), a4, v12);
  v9 = v12[0];
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v11 = v9;
  (*(a6 + 32))(&v11, a2, a4, a6);
  return $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v9, a4, a6);
}

uint64_t static View.makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  static DynamicPropertyCache.fields(of:)(a3, v26);
  v7 = v26[0];
  v6 = v26[1];
  v8 = v27;
  v9 = v28;
  outlined init with copy of _ViewListInputs(a2, v26);
  v17 = v5;
  v18 = v5;
  *&v20 = v7;
  *(&v20 + 1) = v6;
  v21 = v8;
  v22 = v9;
  static View.makeBody(view:inputs:fields:)(&v19, &v23, &v18, v26, &v20);
  v10 = v19;
  v11 = v24;
  v16 = v23;
  v12 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v20) = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v20, v26, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((v12 & 1) == 0)
  {
    v23 = v16;
    v24 = v11;
    v19 = v17;
    *&v20 = v7;
    *(&v20 + 1) = v6;
    v21 = v8;
    v22 = v9;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v19, &v20, a3);
  }

  outlined destroy of _ViewListInputs(v26);
  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

uint64_t static ModifiedContent<>._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *a1;
  v11 = v17;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeView(view:inputs:), a4, &v16);
  v12 = v16;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v11;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v15 = v12;
  (*(a6 + 32))(&v15, a2, partial apply for closure #2 in static ModifiedContent<>._makeViewList(view:inputs:), v13, a4, a6);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v12, a4, a6);
}

uint64_t closure #1 in static ModifiedContent<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 + 36);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14[5];
}

uint64_t closure #1 in static PointerOffset.of(_:)partial apply@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  return partial apply for closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for (regions: SafeAreaRegions, spacing: CGFloat?, edge: Edge, alignmentKey: AlignmentKey)(0);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_8(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for CGPoint(0);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  type metadata accessor for Attribute<Transaction>(0, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return closure #1 in static PointerOffset.of(_:)(a1, a2);
}

{
  return _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_9(a1, a2);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = type metadata accessor for ModifiedContent();
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t static ModifiedContent<>._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v45 = a2[2];
  v46 = v12;
  v47 = a2[4];
  v48 = *(a2 + 20);
  v13 = a2[1];
  v43 = *a2;
  v44 = v13;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v22[1] = v11;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeView(view:inputs:), a4, v22);
  v14 = v22[0];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = v11;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v33 = v43;
  v34 = v44;
  v17 = v45;
  LODWORD(v35) = 0;
  v21 = v14;
  v39[0] = v43;
  v39[1] = v44;
  v40 = v48;
  v39[3] = v46;
  v39[4] = v47;
  v39[2] = v35;
  v29 = v35;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  v18 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v43, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  v18(&v21, &v27, partial apply for closure #2 in static ModifiedContent<>._makeView(view:inputs:), v15, a4, a6);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v17;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v33);
    AGSubgraphEndTreeElement();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

uint64_t closure #2 in static ModifiedContent<>._makeView(view:inputs:)@<X0>(__int128 *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a1[3];
  v41 = a1[2];
  v42 = v10;
  v43 = a1[4];
  v44 = *(a1 + 20);
  v11 = a1[1];
  v39 = *a1;
  v40 = v11;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v18[1] = a2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:), a3, v18);
  v12 = v18[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  v14 = v41;
  LODWORD(v31) = 0;
  v17 = v12;
  v35[0] = v39;
  v35[1] = v40;
  v36 = v44;
  v35[3] = v42;
  v35[4] = v43;
  v35[2] = v31;
  v25 = v31;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v23 = v39;
  v24 = v40;
  v15 = *(a5 + 24);
  outlined init with copy of _ViewInputs(&v39, v37);
  outlined init with copy of _ViewInputs(v35, v37);
  v15(&v17, &v23, a3, a5);
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v38 = v28;
  v37[0] = v23;
  v37[1] = v24;
  outlined destroy of _ViewInputs(v37);
  LODWORD(v31) = v14;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v29);
    AGSubgraphEndTreeElement();
  }

  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v23 = v29;
  v24 = v30;
  return outlined destroy of _ViewInputs(&v23);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance _VStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
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
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t static View.makeBody(view:inputs:fields:)(_DWORD *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5)
{
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    v15 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v15);

    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
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
    v12 = type metadata accessor for ViewBodyAccessor();
    WitnessTable = swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)(a1, a2, &v19, a4, &v16, v12, WitnessTable);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ViewListOptionsInput>, &type metadata for ViewListOptionsInput, &protocol witness table for ViewListOptionsInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ViewListOptionsInput, 0, v6);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ViewListOptionsInput)
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

void type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeWithCopy for _ViewListInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  swift_weakCopyInit();
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ArchivedViewInput)
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for InterfaceIdiomInput)
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

void AnyInterfaceIdiom.init(idiom:)(_BYTE *a1@<X0>, void *a2@<X8>)
{
  switch(*a1)
  {
    case 0:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<CarPlayInterfaceIdiom>;
      break;
    case 1:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<ClarityUIInterfaceIdiom>;
      break;
    case 2:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>;
      break;
    case 3:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<WidgetInterfaceIdiom>;
      break;
    case 4:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<MacInterfaceIdiom>;
      break;
    case 5:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<MacCatalystInterfaceIdiom>;
      break;
    case 6:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>;
      break;
    case 7:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<PadInterfaceIdiom>;
      break;
    case 8:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<TVInterfaceIdiom>;
      break;
    case 9:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<TouchBarInterfaceIdiom>;
      break;
    case 0xA:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>;
      break;
    case 0xB:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<VisionInterfaceIdiom>;
      break;
    default:
      v3 = &lazy cache variable for type metadata for InterfaceIdiomBox<NoKitInterfaceIdiom>;
      break;
  }

  type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, v3);
  *a2 = v4;
  a2[1] = &protocol witness table for InterfaceIdiomBox<A>;
}

void type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for InterfaceIdiomBox();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA012ComplicationcD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19InterfaceIdiomInputV_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v6, v11);
  if (!v7 || (result = _s7SwiftUI11PropertyKeyPAASQ5ValueRpzrlE11valuesEqualySbAE_AEtFZAA19InterfaceIdiomInputV_Tt1B5(a2, a3, *(v7 + 72), *(v7 + 80)), (result & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<InterfaceIdiomInput>, &type metadata for InterfaceIdiomInput, &protocol witness table for InterfaceIdiomInput, type metadata accessor for TypedElement);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for InterfaceIdiomInput, 0, v9);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.SavedTransactionKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.SavedTransactionKey.defaultValue;
  }

  return *v3;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.SavedTransactionKey)
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

uint64_t CachedEnvironment.animatedSize(for:)(__int128 *a1)
{
  v2 = a1[3];
  v39 = a1[2];
  v40 = v2;
  v41 = a1[4];
  v42 = *(a1 + 20);
  v3 = a1[1];
  v37 = *a1;
  v38 = v3;
  if ((BYTE4(v39) & 0x20) == 0)
  {
    return DWORD2(v41);
  }

  v6 = HIDWORD(v38);
  *v31 = *a1;
  *&v31[12] = *(a1 + 12);
  v7 = a1[3];
  v33 = a1[2];
  v34 = v7;
  v35 = a1[4];
  v8 = *(a1 + 20);
  v32 = HIDWORD(v38);
  v36 = v8;
  v9 = *v31;
  v10 = *&v31[8];
  v11 = *&v31[24];
  outlined init with copy of _ViewInputs(&v37, v26);
  outlined init with copy of _ViewInputs(v31, v26);
  v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
  if (*(v12 + 16))
  {
    v6 = *(v12 + 32);
  }

  outlined destroy of _ViewInputs(v31);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v13 = specialized CachedEnvironment.attribute<A>(id:_:)(static CachedEnvironment.ID.pixelLength);
  v14 = v13;
  if ((*(v1 + 65) & 1) != 0 || *(v1 + 16) != v35 || *(v1 + 20) != __PAIR64__(v13, DWORD2(v35)) || *(v1 + 28) != v10 || *(v1 + 32) != v6 || *(v1 + 36) != v11)
  {
    *&v26[12] = *(a1 + 12);
    *v26 = *a1;
    v15 = a1[3];
    v27 = a1[2];
    v28 = v15;
    v29 = a1[4];
    v16 = *(a1 + 20);
    *&v26[28] = v6;
    v30 = v16;
    v24[3] = v15;
    v24[4] = v29;
    v25 = v16;
    v24[0] = *v26;
    v24[1] = *&v26[16];
    v24[2] = v27;
    v17 = *v1;
    outlined init with copy of _ViewInputs(v26, v22);
    CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)(v24, v14, v17, v22);
    LOBYTE(v24[0]) = 0;
    v18 = v22[1];
    *(v1 + 16) = v22[0];
    *(v1 + 32) = v18;
    *(v1 + 48) = v22[2];
    *(v1 + 64) = v23;
    *(v1 + 65) = 0;
  }

  if (*(v1 + 56) == 1)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    *(v1 + 52) = OffsetAttribute2;
    *(v1 + 56) = 0;
  }

  else
  {
    OffsetAttribute2 = *(v1 + 52);
  }

  *v26 = *a1;
  *&v26[12] = *(a1 + 12);
  v19 = a1[3];
  v27 = a1[2];
  v28 = v19;
  v29 = a1[4];
  v20 = *(a1 + 20);
  *&v26[28] = v6;
  v30 = v20;
  outlined destroy of _ViewInputs(v26);
  return OffsetAttribute2;
}

uint64_t one-time initialization function for pixelLength()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.pixelLength = result;
  return result;
}

uint64_t CachedEnvironment.animatedCGSize(for:)(__int128 *a1)
{
  v2 = a1[3];
  v39 = a1[2];
  v40 = v2;
  v41 = a1[4];
  v42 = *(a1 + 20);
  v3 = a1[1];
  v37 = *a1;
  v38 = v3;
  if ((BYTE4(v39) & 0x20) != 0)
  {
    v6 = HIDWORD(v38);
    *v31 = *a1;
    *&v31[12] = *(a1 + 12);
    v7 = a1[3];
    v33 = a1[2];
    v34 = v7;
    v35 = a1[4];
    v8 = *(a1 + 20);
    v32 = HIDWORD(v38);
    v36 = v8;
    v9 = *v31;
    v10 = *&v31[8];
    v11 = *&v31[24];
    outlined init with copy of _ViewInputs(&v37, v26);
    outlined init with copy of _ViewInputs(v31, v26);
    v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
    if (*(v12 + 16))
    {
      v6 = *(v12 + 32);
    }

    outlined destroy of _ViewInputs(v31);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v13 = specialized CachedEnvironment.attribute<A>(id:_:)(static CachedEnvironment.ID.pixelLength);
    v14 = v13;
    if ((*(v1 + 65) & 1) != 0 || *(v1 + 16) != v35 || *(v1 + 20) != __PAIR64__(v13, DWORD2(v35)) || *(v1 + 28) != v10 || *(v1 + 32) != v6 || *(v1 + 36) != v11)
    {
      *&v26[12] = *(a1 + 12);
      *v26 = *a1;
      v15 = a1[3];
      v27 = a1[2];
      v28 = v15;
      v29 = a1[4];
      v16 = *(a1 + 20);
      *&v26[28] = v6;
      v30 = v16;
      v24[3] = v15;
      v24[4] = v29;
      v25 = v16;
      v24[0] = *v26;
      v24[1] = *&v26[16];
      v24[2] = v27;
      v17 = *v1;
      outlined init with copy of _ViewInputs(v26, v22);
      CachedEnvironment.AnimatedFrame.init(inputs:pixelLength:environment:)(v24, v14, v17, v22);
      LOBYTE(v24[0]) = 0;
      v18 = v22[1];
      *(v1 + 16) = v22[0];
      *(v1 + 32) = v18;
      *(v1 + 48) = v22[2];
      *(v1 + 64) = v23;
      *(v1 + 65) = 0;
    }

    if (*(v1 + 64) == 1)
    {
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      *(v1 + 60) = OffsetAttribute2;
      *(v1 + 64) = 0;
    }

    else
    {
      OffsetAttribute2 = *(v1 + 60);
    }

    *v26 = *a1;
    *&v26[12] = *(a1 + 12);
    v20 = a1[3];
    v27 = a1[2];
    v28 = v20;
    v29 = a1[4];
    v21 = *(a1 + 20);
    *&v26[28] = v6;
    v30 = v21;
    outlined destroy of _ViewInputs(v26);
    return OffsetAttribute2;
  }

  else
  {

    return AGGraphCreateOffsetAttribute2();
  }
}

unint64_t lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform()
{
  result = lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform;
  if (!lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets()
{
  result = lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets;
  if (!lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 48);
  v13 = *(a2 + 16);
  v80 = *(a2 + 32);
  v81 = v12;
  v14 = *(a2 + 48);
  v82 = *(a2 + 64);
  v15 = *(a2 + 16);
  v79[0] = *a2;
  v79[1] = v15;
  v16 = *(a2 + 64);
  v76 = v14;
  v77 = v16;
  v74 = v13;
  v75 = v80;
  v83 = *(a2 + 80);
  v17 = *(a2 + 80);
  v73 = v79[0];
  LODWORD(v77) = a3;
  *(&v77 + 4) = __PAIR64__(a4, a3);
  v78 = v17;
  LODWORD(v75) = v80 | 0x18;
  outlined init with copy of _ViewInputs(v79, &v67);
  specialized _ViewInputs.setContainerShape<A>(_:isSystemShape:)(a5, 1);
  v69 = v75;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v67 = v73;
  v68 = v74;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(v79, &v62);
  outlined init with copy of _ViewInputs(&v67, &v62);
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v58 = v69;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v56 = v67;
  v57 = v68;
  v27 = v69;
  LODWORD(v58) = 0;
  v62 = v67;
  v63 = v68;
  v66 = v72;
  *&v64[16] = v70;
  v65 = v71;
  *v64 = v58;
  outlined init with copy of _ViewInputs(&v67, &v51);
  outlined init with copy of _ViewInputs(&v62, &v51);
  v19 = AGMakeUniqueID();
  v49 = v62;
  v50 = v63;
  v20 = *v64;
  v47 = *&v64[4];
  v48 = *&v64[20];
  v31 = v65;
  v21 = v66;
  v32 = DWORD2(v65);
  v22 = *&v64[28];
  *v53 = *v64;
  *&v53[16] = *&v64[16];
  v54 = v65;
  v55 = v66;
  v51 = v62;
  v52 = v63;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v62, v45);
  v23 = CachedEnvironment.animatedPosition(for:)(&v51);
  *v53 = *v64;
  *&v53[16] = *&v64[16];
  v54 = v65;
  v55 = v66;
  v51 = v62;
  v52 = v63;
  v24 = CachedEnvironment.animatedSize(for:)(&v51);
  swift_endAccess();
  *&v51 = v19;
  *(&v51 + 1) = __PAIR64__(v23, v22);
  LODWORD(v52) = v24;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Transform and conformance _SafeAreaInsetsModifier.Transform();
  v25 = Attribute.init<A>(body:value:flags:update:)();
  *&v51 = v19;
  *(&v51 + 1) = __PAIR64__(HIDWORD(v65), a6);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _SafeAreaInsetsModifier.Insets and conformance _SafeAreaInsetsModifier.Insets();
  LODWORD(v19) = Attribute.init<A>(body:value:flags:update:)();
  v41[0] = v49;
  v41[1] = v50;
  *&v42[4] = v47;
  *&v42[20] = v48;
  *v42 = v20 | 4;
  *&v42[28] = v25;
  *&v43 = v31;
  *(&v43 + 1) = __PAIR64__(v19, v32);
  v44 = v21;
  v37 = *v42;
  v38 = *&v42[16];
  v39 = v43;
  v40 = v21;
  v35 = v49;
  v36 = v50;
  outlined init with copy of _ViewInputs(v41, &v51);
  specialized closure #1 in closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:)(&v35, v79, a1, a7, a8, a9);
  v45[2] = v37;
  v45[3] = v38;
  v45[4] = v39;
  v46 = v40;
  v45[0] = v35;
  v45[1] = v36;
  outlined destroy of _ViewInputs(v45);
  *&v53[20] = v48;
  v51 = v49;
  v52 = v50;
  *&v53[4] = v47;
  *v53 = v20 | 4;
  *&v53[28] = v25;
  *&v54 = v31;
  *(&v54 + 1) = __PAIR64__(v19, v32);
  v55 = v21;
  outlined destroy of _ViewInputs(&v51);
  outlined destroy of _ViewInputs(&v62);
  LODWORD(v58) = v27;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a9, &v56);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _ViewInputs(v79);
  outlined destroy of _ViewInputs(&v67);
  v33[2] = v58;
  v33[3] = v59;
  v33[4] = v60;
  v34 = v61;
  v33[0] = v56;
  v33[1] = v57;
  outlined destroy of _ViewInputs(v33);
  v37 = v75;
  v38 = v76;
  v39 = v77;
  v40 = v78;
  v35 = v73;
  v36 = v74;
  return outlined destroy of _ViewInputs(&v35);
}

unint64_t lazy protocol witness table accessor for type ContainerShapeTransform and conformance ContainerShapeTransform()
{
  result = lazy protocol witness table cache variable for type ContainerShapeTransform and conformance ContainerShapeTransform;
  if (!lazy protocol witness table cache variable for type ContainerShapeTransform and conformance ContainerShapeTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerShapeTransform and conformance ContainerShapeTransform);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in ViewGraph.init<A>(rootViewType:requestedOutputs:)@<X0>(__int128 *a1@<X1>, _DWORD *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a1[4];
  v46[3] = a1[3];
  *v47 = v9;
  *&v47[16] = *(a1 + 20);
  v10 = a1[2];
  v46[1] = a1[1];
  v46[2] = v10;
  v46[0] = *a1;
  v11 = *&v47[12];
  v12 = a2[16];
  v13 = a2[17];
  v14 = a2[18];
  v15 = v10 | 0x18;
  _GraphValue.init(_:)(a3, &v42);
  v16 = v42;
  v17 = a1[1];
  v42 = *a1;
  v43 = v17;
  *v44 = v15;
  *&v44[4] = *(a1 + 36);
  *&v44[16] = a1[3];
  v24 = v13;
  v25 = v12;
  *v45 = v12;
  *&v45[4] = v13;
  *&v45[8] = v14;
  *&v45[12] = v11;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(v46, v40);
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v34 = *v44;
  v35 = *&v44[16];
  v36 = *v45;
  v37 = *&v45[16];
  v32 = v42;
  v33 = v43;
  v19 = *v44;
  LODWORD(v34) = 0;
  LODWORD(v26[0]) = v16;
  v38[0] = v42;
  v38[1] = v43;
  v39 = *&v45[16];
  v38[3] = *&v44[16];
  v38[4] = *v45;
  v38[2] = v34;
  *v30 = v34;
  *&v30[16] = *&v44[16];
  *v31 = *v45;
  *&v31[16] = *&v45[16];
  v28 = v42;
  v29 = v43;
  v20 = *(a5 + 24);
  outlined init with copy of _ViewInputs(&v42, v40);
  outlined init with copy of _ViewInputs(v38, v40);
  v20(v26, &v28, a4, a5);
  v40[2] = *v30;
  v40[3] = *&v30[16];
  v40[4] = *v31;
  v41 = *&v31[16];
  v40[0] = v28;
  v40[1] = v29;
  outlined destroy of _ViewInputs(v40);
  LODWORD(v34) = v19;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a6, &v32);
    AGSubgraphEndTreeElement();
  }

  v26[2] = v34;
  v26[3] = v35;
  v26[4] = v36;
  v27 = v37;
  v26[0] = v32;
  v26[1] = v33;
  outlined destroy of _ViewInputs(v26);
  v21 = a1[1];
  v28 = *a1;
  v29 = v21;
  *v30 = v15;
  *&v30[4] = *(a1 + 36);
  *&v30[16] = a1[3];
  *v31 = v25;
  *&v31[4] = v24;
  *&v31[8] = v14;
  *&v31[12] = v11;
  return outlined destroy of _ViewInputs(&v28);
}

unint64_t lazy protocol witness table accessor for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment()
{
  result = lazy protocol witness table cache variable for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment;
  if (!lazy protocol witness table cache variable for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerShapeEnvironment and conformance ContainerShapeEnvironment);
  }

  return result;
}

uint64_t static View.makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v55 = *(a2 + 32);
  v56 = v7;
  v57 = *(a2 + 64);
  v58 = *(a2 + 80);
  v8 = *(a2 + 16);
  v53 = *a2;
  v54 = v8;
  static DynamicPropertyCache.fields(of:)(a3, &v47);
  v9 = v47;
  v10 = v48;
  v11 = DWORD1(v48);
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v47 = v53;
  v48 = v54;
  LODWORD(v27) = v6;
  v35 = v9;
  LOBYTE(v36) = v10;
  DWORD1(v36) = v11;
  outlined init with copy of _ViewInputs(&v53, &v41);
  static View.makeBody(view:inputs:fields:)(v33, &v41, &v27, &v47, &v35);
  v12 = v33[0];
  if ((v42 & 1) == 0)
  {
    v35 = v41;
    LODWORD(v33[0]) = v6;
    v41 = v9;
    LOBYTE(v42) = v10;
    DWORD1(v42) = v11;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v33, &v41, a3);
  }

  outlined consume of DynamicPropertyCache.Fields.Layout();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v41 = v47;
  v42 = v48;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v29 = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v27 = v41;
  v28 = v42;
  v15 = v43;
  LODWORD(v29) = 0;
  LODWORD(v19[0]) = v12;
  v33[0] = v41;
  v33[1] = v42;
  v34 = v46;
  v33[3] = v44;
  v33[4] = v45;
  v33[2] = v29;
  v23 = v29;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v21 = v41;
  v22 = v42;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v41, &v35);
  outlined init with copy of _ViewInputs(v33, &v35);
  v17(v19, &v21, AssociatedTypeWitness, AssociatedConformanceWitness);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v35 = v21;
  v36 = v22;
  outlined destroy of _ViewInputs(&v35);
  LODWORD(v29) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a4, &v27);
    AGSubgraphEndTreeElement();
  }

  v19[2] = v49;
  v19[3] = v50;
  v19[4] = v51;
  v20 = v52;
  v19[0] = v47;
  v19[1] = v48;
  outlined destroy of _ViewInputs(v19);
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  return outlined destroy of _ViewInputs(&v21);
}

unint64_t lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle()
{
  result = lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle;
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle;
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle;
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle;
  if (!lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UnevenRoundedRectangle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithTake for _ViewListInputs(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  swift_weakTakeInit();
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t PropertyList.merge(_:)(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  if (!*v1)
  {
    *v1 = result;
  }

  if (!result)
  {
    return result;
  }

  v22[0] = result;

  sub_18D0576A8(v4, v3, v21);
  if (LOBYTE(v21[0]) != 1)
  {
  }

  sub_18D0576A8(v4, v3, &v20);
  if (v20 == 1)
  {
    v5 = 0;
    v6 = v3;
    v7 = v4;
    while (1)
    {
      if (*(v6 + 48) >= *(v7 + 48))
      {
        if (__OFADD__(v5++, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          result = swift_stdlib_isStackAllocationSafe();
          if (!result)
          {
            v18 = swift_slowAlloc();
            closure #13 in PropertyList.merge(_:)(v18, v5, v22, v3, v21, v2);
            return MEMORY[0x193AC4820](v18, -1, -1);
          }

LABEL_30:
          MEMORY[0x1EEE9AC00](result);
          v14 = &v19 - v13;
          v15 = 0;
          while (1)
          {
            v16 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_39;
            }

            if (!v3)
            {
              break;
            }

            *&v14[8 * v15] = v3;
            v3 = *(v3 + 32);
            ++v15;
            if (v16 == v5)
            {
              v3 = (v14 - 8);
              while (1)
              {
                v4 = (v5 - 1);
                if (v5 < 1)
                {
                  break;
                }

                closure #3 in closure #13 in PropertyList.merge(_:)(*(v3 + 8 * v5), v2, &v20);
                v17 = v20;

                *v2 = v17;
                v5 = v4;
                if (!v4)
                {
                  return result;
                }
              }

              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          __break(1u);

          result = MEMORY[0x193AC4820](v4, -1, -1);
          __break(1u);
          return result;
        }

        v6 = *(v6 + 32);
        if (!v6)
        {
          goto LABEL_20;
        }

        v22[0] = v6;
      }

      else
      {
        v7 = *(v7 + 32);
        if (!v7)
        {
          goto LABEL_20;
        }
      }

      sub_18D0576A8(v7, v6, &v20);
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = 0;
  v6 = v3;
  v7 = v4;
LABEL_17:
  v21[0] = v5;
  closure #9 in PropertyList.merge(_:)(v7, v6, &v20);
  if (v20 != 1)
  {
LABEL_20:
    if (v4[3])
    {
      type metadata accessor for TypedElement<EmptyKey>(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
      swift_allocObject();
      result = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v3, v4).value;
      *v2 = result;
    }

    else
    {
      v9 = v4[4];
      v10 = *(*v4 + 216);

      v12 = v10(v11, v9);

      *v2 = v12;
    }

    return result;
  }

  if (v6 == v3)
  {
  }

  if (*v2 && *v2 == v7)
  {

    *v2 = v3;
    return result;
  }

  if (v5)
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    else if (!(v5 >> 60))
    {
      v4 = (8 * v5);
      if (8 * v5 > 1024)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for WeakBox<GlassContainerCache>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t initializeBufferWithCopyOfBuffer for ViewGraph.NextUpdate(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _ViewListOutputs.multiModifier<A>(_:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of _ViewListOutputs.Views(v4, v36);
  if (v37)
  {
    v8 = v36[0];
    v9 = *(&v36[0] + 1);
    type metadata accessor for ModifiedViewList.ListModifier();
    v10 = a2[1];
    v26 = *a2;
    v27 = v10;
    v28 = a2[2];
    outlined init with copy of _GraphInputs(&v26, v34);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = a3;
    *(v11 + 32) = a4;
    *(v11 + 40) = AGCreateWeakAttribute();
    v12 = a2[1];
    *(v11 + 48) = *a2;
    *(v11 + 64) = v12;
    *(v11 + 80) = a2[2];
    LODWORD(v34[0]) = v8;
    *(&v34[0] + 1) = v11;
    BYTE8(v35) = 1;
    v13 = v34;
  }

  else
  {
    outlined init with take of AnyTrackedValue(v36, v33);
    outlined init with copy of AnyTrackedValue(v33, v25);
    v14 = a2[1];
    v34[0] = *a2;
    v34[1] = v14;
    v16 = *a2;
    v15 = a2[1];
    v35 = a2[2];
    v22 = v16;
    v23 = v15;
    v24 = a2[2];
    outlined init with copy of _GraphInputs(v34, &v26);
    ModifiedElements.init<A>(base:modifier:baseInputs:)(v25, &v22, a3, a4, &v26);
    *(&v23 + 1) = &type metadata for ModifiedElements;
    *&v24 = &protocol witness table for ModifiedElements;
    v17 = swift_allocObject();
    *&v22 = v17;
    v18 = v31;
    v17[5] = v30;
    v17[6] = v18;
    v17[7] = v32;
    v19 = v27;
    v17[1] = v26;
    v17[2] = v19;
    v20 = v29;
    v17[3] = v28;
    v17[4] = v20;
    __swift_destroy_boxed_opaque_existential_1(v33);
    BYTE8(v24) = 0;
    v13 = &v22;
  }

  return outlined assign with take of _ViewListOutputs.Views(v13, v4);
}

uint64_t sub_18D057B90()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for DynamicStackOrientation)
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

uint64_t getEnumTagSinglePayload for _ViewListOutputs(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for DynamicStackOrientation);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<DynamicStackOrientation>, &type metadata for DynamicStackOrientation, &protocol witness table for DynamicStackOrientation, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for DynamicStackOrientation, 0, v6);
  }

  return result;
}

uint64_t destroy for _GraphInputs()
{
}

unint64_t lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries()
{
  result = lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries;
  if (!lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutChildGeometries and conformance LayoutChildGeometries);
  }

  return result;
}

__n128 ModifiedElements.init<A>(base:modifier:baseInputs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, a5);
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v12 = HIDWORD(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(a5 + 40) = v11;
  *(a5 + 44) = v12;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  v13 = *(a2 + 16);
  *(a5 + 64) = *a2;
  *(a5 + 80) = v13;
  result = *(a2 + 32);
  *(a5 + 96) = result;
  return result;
}

uint64_t static _ViewListOutputs.concat(_:inputs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(result + 16);
  if (!v4)
  {
    *(a3 + 24) = &type metadata for EmptyViewListElements;
    *(a3 + 32) = &protocol witness table for EmptyViewListElements;
    *(a3 + 40) = 0;
    *(a3 + 48) = *(a2 + 48);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    return result;
  }

  v5 = result;
  v32 = swift_allocObject();
  *(v32 + 16) = *(v3 + 48);
  v6 = MEMORY[0x1E69E7CC0];
  v31 = v5;
  v7 = v5 + 32;
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v29 = v7;
  v33 = v3;
  do
  {
    v12 = v11 + 1;
    outlined init with copy of _ViewListOutputs(v7, v36);
    v13 = v37;
    if (v37)
    {
      v14 = 0;
    }

    else
    {
      v14 = v8;
    }

    if ((v9 & 1) == 0)
    {
      v8 = v14 + v36[7];
    }

    outlined init with copy of _ViewListOutputs.Views(v36, v35);
    if (v35[40])
    {
      outlined destroy of _ViewListOutputs.Views(v35);
      if (v10 < v11)
      {
        mergeStatic #1 (from:to:) in static _ViewListOutputs.concat(_:inputs:)(v10, v11, v31, v32, v3, v34);
        v15 = _ViewListOutputs.makeAttribute(inputs:)(v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        if (v17 >= v16 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v6);
        }

        *(v6 + 2) = v17 + 1;
        *&v6[4 * v17 + 32] = v15;
        outlined destroy of _ViewListOutputs(v34);
        v3 = v33;
      }

      v18 = _ViewListOutputs.makeAttribute(inputs:)(v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v20 >= v19 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v6);
      }

      *(v6 + 2) = v20 + 1;
      *&v6[4 * v20 + 32] = v18;
      outlined destroy of _ViewListOutputs(v36);
      v10 = v11 + 1;
      v3 = v33;
    }

    else
    {
      outlined destroy of _ViewListOutputs(v36);
      outlined destroy of _ViewListOutputs.Views(v35);
    }

    v9 |= v13;
    v7 += 72;
    ++v11;
  }

  while (v4 != v12);
  if (v10 < v4)
  {
    if (!v10)
    {
      if (v4 == 1)
      {
        outlined init with copy of _ViewListOutputs(v29, a3);
        goto LABEL_39;
      }

      v26 = a3;
      *(a3 + 24) = &unk_1F0084390;
      *(a3 + 32) = &protocol witness table for MergedElements;
      v28 = swift_allocObject();
      *a3 = v28;
      v28[2] = v31;
      v28[3] = v29;
      v28[4] = 0;
      v28[5] = (2 * v4) | 1;
      *(a3 + 40) = 0;
      swift_beginAccess();
      v27 = *(v32 + 16);

LABEL_36:

      *(v26 + 48) = v27;
      *(v26 + 56) = v8;
      *(v26 + 64) = v9 & 1;
      return result;
    }

    mergeStatic #1 (from:to:) in static _ViewListOutputs.concat(_:inputs:)(v10, v4, v31, v32, v3, v36);
    v21 = _ViewListOutputs.makeAttribute(inputs:)(v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v23 = *(v6 + 2);
    v22 = *(v6 + 3);
    if (v23 >= v22 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
    }

    *(v6 + 2) = v23 + 1;
    *&v6[4 * v23 + 32] = v21;
    outlined destroy of _ViewListOutputs(v36);
  }

  v24 = *(v6 + 2);
  if (v24 == 1)
  {
    v25 = *(v6 + 8);
LABEL_35:
    v26 = a3;
    *a3 = v25;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
    swift_beginAccess();
    v27 = *(v32 + 16);
    goto LABEL_36;
  }

  if (v24)
  {
    v36[0] = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    lazy protocol witness table accessor for type _ViewList_Group.Init and conformance _ViewList_Group.Init();
    v25 = Attribute.init<A>(body:value:flags:update:)();
    goto LABEL_35;
  }

  static _ViewListOutputs.emptyViewList(inputs:)(v3, a3);
LABEL_39:
}

uint64_t sub_18D0583B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t destroy for _ViewListOutputs.Views(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 != 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t destroy for TupleView.MakeList()
{

  swift_weakDestroy();
}

unint64_t lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout()
{
  result = lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout;
  if (!lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout;
  if (!lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout;
  if (!lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VStackLayout and conformance _VStackLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _VStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout();
  *(a1 + 8) = result;
  return result;
}

void *sub_18D0585C8(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t protocol witness for UnaryViewGenerator.makeView(inputs:indirectMap:) in conformance TypedUnaryViewGenerator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v11[4] = *(a1 + 64);
  v12 = *(a1 + 80);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    return project #1 <A>(_:) in TypedUnaryViewGenerator.makeView(inputs:indirectMap:)(result, a2, v11, v6, v7, a3);
  }

  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = 0;
  *(a3 + 12) = result;
  return result;
}

uint64_t project #1 <A>(_:) in TypedUnaryViewGenerator.makeView(inputs:indirectMap:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v21 = a1;
  if (a2)
  {
    type metadata accessor for Attribute();

    Attribute.makeReusable(indirectMap:)(v10);

    v9 = v21;
  }

  _GraphValue.init(_:)(v9, &v20);
  v11 = v20;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v13 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v13;
  v32 = *(a3 + 64);
  v33 = *(a3 + 80);
  v14 = *(a3 + 16);
  v28 = *a3;
  v29 = v14;
  v15 = v30;
  LODWORD(v30) = 0;
  v19 = v11;
  v34[0] = v28;
  v34[1] = v14;
  v35 = v33;
  v34[3] = v13;
  v34[4] = v32;
  v34[2] = v30;
  v24 = v30;
  v25 = v13;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v14;
  v16 = *(a5 + 24);
  outlined init with copy of _ViewInputs(a3, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  v16(&v19, &v22, a4, a5);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v15;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a6, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v15 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v15;
  v20[4] = *(a2 + 64);
  v21 = *(a2 + 80);
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v23 = a1;
  v19[2] = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v19[3] = v17;
  (*(a7 + 16))(&v22, &v23, v20, a3, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:), v19, a6, a7);
  *a8 = v22;
  LOBYTE(a7) = swift_isEscapingClosureAtFileLocation();

  if (a7)
  {
    __break(1u);
  }

  return result;
}

uint64_t initializeWithCopy for ModifiedElements(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      result = specialized Set._Variant.insert(_:)(v11, *v10, v10[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      result = specialized Set._Variant.insert(_:)(v11, *v10, v10[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t partial apply for closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:)(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for UnaryElements() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:)(a1, v1 + v6, v7, v3, v4);
}

uint64_t closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  v43 = a1[2];
  v44 = v8;
  v45 = a1[4];
  v46 = *(a1 + 20);
  v9 = a1[1];
  v41 = *a1;
  v42 = v9;
  v10 = (a2 + *(type metadata accessor for UnaryElements() + 36));
  v11 = v10[2];
  v48 = v10[1];
  v49 = v11;
  v47 = *v10;
  v39 = v48;
  v40 = v11;
  v38 = v47;
  outlined init with copy of _GraphInputs(&v47, v35);
  if (a3)
  {

    _GraphInputs.makeReusable(indirectMap:)(v12);
  }

  v23 = v43;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v21 = v41;
  v22 = v42;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  outlined init with copy of _ViewInputs(&v41, v35);
  _GraphInputs.merge(_:ignoringPhase:)(&v29, 0);
  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v25;
  v28 = v26;
  v27[0] = v21;
  v27[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = *(a5 + 8);
  outlined init with copy of _ViewInputs(v27, v35);
  v13(&v15, a3, a4, a5);
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v29 = v15;
  v30 = v16;
  outlined destroy of _ViewInputs(&v29);
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v36 = v26;
  v35[0] = v21;
  v35[1] = v22;
  outlined destroy of _ViewInputs(v35);
  v37[0] = v38;
  v37[1] = v39;
  v37[2] = v40;
  return outlined destroy of _GraphInputs(v37);
}

uint64_t closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _OWORD *, uint64_t (*)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>), uint64_t), uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v16;
  v26[4] = *(a2 + 64);
  v27 = *(a2 + 80);
  v17 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v17;
  outlined init with copy of ModifiedElements(a10, v25);
  v18 = swift_allocObject();
  v19 = a7[1];
  *(v18 + 16) = *a7;
  *(v18 + 32) = v19;
  *(v18 + 48) = a7[2];
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  v20 = v25[5];
  *(v18 + 160) = v25[4];
  *(v18 + 176) = v20;
  *(v18 + 192) = v25[6];
  v21 = v25[1];
  *(v18 + 96) = v25[0];
  *(v18 + 112) = v21;
  v22 = v25[3];
  *(v18 + 128) = v25[2];
  *(v18 + 144) = v22;
  outlined init with copy of _GraphInputs(a7, &v24);

  LOBYTE(a5) = a5(a1, v26, partial apply for closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:), v18);

  return a5 & 1;
}

uint64_t sub_18D058FF0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocObject();
}

uint64_t specialized project #1 <A>(_:) in closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v26 = a1;
  if (a2)
  {
    type metadata accessor for Attribute();

    Attribute.makeReusable(indirectMap:)(v15);

    v13 = v26;
  }

  _GraphValue.init(_:)(v13, &v25);
  v16 = v25;
  swift_beginAccess();
  v17 = a3[3];
  v45 = a3[2];
  v46 = v17;
  v47 = a3[4];
  v48 = *(a3 + 20);
  v18 = a3[1];
  v43 = *a3;
  v44 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(&v43, v41);

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v33 = v43;
  v34 = v44;
  v21 = v45;
  LODWORD(v35) = 0;
  v24 = v16;
  v39[0] = v43;
  v39[1] = v44;
  v40 = v48;
  v39[3] = v46;
  v39[4] = v47;
  v39[2] = v35;
  v29 = v35;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  v22 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v43, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  v22(&v24, &v27, partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:), v19, a6, a7);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v33);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _ViewInputs(&v43);
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

uint64_t sub_18D059320()
{

  return swift_deallocObject();
}

uint64_t closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v12;
  v40 = *(a1 + 64);
  v41 = *(a1 + 80);
  v13 = *(a1 + 16);
  v36 = *a1;
  v37 = v13;
  v14 = a2[1];
  v33 = *a2;
  v34 = v14;
  v35 = a2[2];
  if (a3)
  {
    outlined init with copy of _GraphInputs(a2, &v27);

    _GraphInputs.makeReusable(indirectMap:)(v15);
  }

  else
  {
    outlined init with copy of _GraphInputs(a2, &v27);
  }

  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v27 = v36;
  v28 = v37;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  outlined init with copy of _ViewInputs(&v36, &v18);
  _GraphInputs.merge(_:ignoringPhase:)(&v24, 0);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    *a7 = MEMORY[0x1E69E7CC0];
    *(a7 + 8) = 0;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v18 = v27;
    v19 = v28;
    outlined destroy of _ViewInputs(&v18);
    v24 = v33;
    v25 = v34;
    v26 = v35;
    result = outlined destroy of _GraphInputs(&v24);
    *(a7 + 12) = Attribute;
  }

  else
  {
    specialized project #1 <A>(_:) in closure #1 in closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:)(Attribute, a3, &v27, a4, a5, *(a6 + 48), *(a6 + 56), a7);
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v18 = v27;
    v19 = v28;
    outlined destroy of _ViewInputs(&v18);
    v24 = v33;
    v25 = v34;
    v26 = v35;
    return outlined destroy of _GraphInputs(&v24);
  }

  return result;
}

uint64_t UnaryElements.makeElements(from:inputs:indirectMap:body:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, _OWORD *, uint64_t (*)(__int128 *a1), uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v14)
  {
    v18 = (*v14 - 1) & ~((*v14 - 1) >> 63);
    *v13 = 0;
    v13[1] = 0;
    v19 = 1;
  }

  else
  {
    v20 = *(v15 + 48);
    v31[2] = *(v15 + 32);
    v31[3] = v20;
    v31[4] = *(v15 + 64);
    v32 = *(v15 + 80);
    v21 = *(v15 + 16);
    v31[0] = *v15;
    v31[1] = v21;
    v22 = *(v11 + 16);
    v30 = v13;
    v23 = v7;
    v24 = v16;
    v22(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v16);
    v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = *(v24 + 16);
    (*(v11 + 32))(v27 + v25, v17, v24);
    *(v27 + v26) = a4;

    v19 = a5(v30, v31, partial apply for closure #1 in UnaryElements.makeElements(from:inputs:indirectMap:body:), v27);

    v18 = 0;
  }

  *a2 = v18;
  return v19 & 1;
}

uint64_t sub_18D059704()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for UnaryElements() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t initializeWithCopy for UnaryElements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 28) = *(v8 + 28);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 40) = *(v8 + 40);

  return a1;
}

uint64_t _s7SwiftUI18_ViewList_ElementsPAAE07makeAllE06inputs11indirectMap4bodyAA01_C7OutputsVSgAA01_C6InputsV_AA017IndirectAttributeJ0CSgAjL_AiLctXEtFA2jL_AiLctcXEfU_AJ_SbtAL_AiLctXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v5(v9, a3, a4);
  return 1;
}

uint64_t closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t, uint64_t))
{
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  a5(v8, a3, a4);
  return 1;
}

uint64_t protocol witness for _ViewList_Elements.count.getter in conformance ModifiedElements()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for _ViewList_Elements.makeElements(from:inputs:indirectMap:body:) in conformance ModifiedElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *(a3 + 48);
  v23[2] = *(a3 + 32);
  v23[3] = v13;
  v23[4] = *(a3 + 64);
  v24 = *(a3 + 80);
  v14 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = *(v7 + 80);
  v25[0] = *(v7 + 64);
  v25[1] = v16;
  v25[2] = *(v7 + 96);
  v17 = *(v7 + 24);
  v18 = *(v7 + 32);
  v19 = *(v7 + 40);
  __swift_project_boxed_opaque_existential_1(v7, v17);
  v22[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?, @unowned Bool);
  v22[3] = v15;
  v22[4] = v25;
  v22[5] = a4;
  v22[6] = v19;
  v22[7] = v7;
  v20 = (*(v18 + 16))(a1, a2, v23, a4, partial apply for closure #1 in closure #1 in ModifiedElements.makeElements(from:inputs:indirectMap:body:), v22, v17, v18);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if ((a2 & 1) == 0)
  {
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _GraphInputs.merge(_:ignoringPhase:)(uint64_t a1, char a2)
{
  v3 = v2;
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v9 = *(a1 + 32);
  v8 = *(a1 + 36);
  PropertyList.merge(_:)(*a1);
  swift_beginAccess();
  v10 = *(v5 + 16);
  v11 = *(v2 + 16);
  swift_beginAccess();
  v12 = *(v11 + 16);
  if (v10 != v12 && (specialized Set._Variant.insert(_:)(&v19, v10) & 1) != 0)
  {
    v19 = AGCreateWeakAttribute();
    v20 = v12;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MergedEnvironment and conformance MergedEnvironment();
    v13 = Attribute.init<A>(body:value:flags:update:)();
    _GraphInputs.environment.setter(v13);
  }

  v14 = v3[7];
  if (v7 != v14 && (specialized Set._Variant.insert(_:)(&v19, v7) & 1) != 0)
  {
    v19 = AGCreateWeakAttribute();
    v20 = v14;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MergedTransaction and conformance MergedTransaction();
    v3[7] = Attribute.init<A>(body:value:flags:update:)();
  }

  if ((a2 & 1) == 0)
  {
    v15 = v3[6];
    if (v6 != v15 && (specialized Set._Variant.insert(_:)(&v19, v6) & 1) != 0)
    {
      v19 = AGCreateWeakAttribute();
      v20 = v15;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type MergedPhase and conformance MergedPhase();
      v3[6] = Attribute.init<A>(body:value:flags:update:)();
      v16 = v3[8];
      if ((v16 & 0x40) == 0)
      {
        v3[8] = v16 | 0x40;
      }
    }
  }

  v3[8] |= v9;

  result = specialized Set.formUnion<A>(_:)(v17);
  v3[9] |= (v3[9] | v8) & 1;
  return result;
}

uint64_t partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return v3(v7);
}

double _FrameLayout.init(width:height:alignment:)@<D0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  specialized _FrameLayout.init(width:height:alignment:)(a1, a2 & 1, a3, a4 & 1, a5, a6, v10);
  v8 = v10[1];
  *a7 = v10[0];
  a7[1] = v8;
  result = *&v11;
  a7[2] = v11;
  return result;
}

uint64_t specialized _FrameLayout.init(width:height:alignment:)@<X0>(double a1@<X0>, BOOL a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v14 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
LABEL_7:
      LOBYTE(v16) = a4;
      goto LABEL_30;
    }
  }

  else if (static Semantics.forced < v14)
  {
    goto LABEL_7;
  }

  if (a2 || (v17 = a1 >= 0.0) && (*&a1 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    if (a4)
    {
      LOBYTE(v16) = 1;
      goto LABEL_30;
    }

    v16 = 0;
    v17 = a2;
    goto LABEL_17;
  }

  a1 = 0.0;
  v16 = 1;
  if ((a4 & 1) == 0)
  {
LABEL_17:
    if (a3 >= 0.0)
    {
      v18 = (*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000;
      if ((*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000)
      {
        v19 = 1;
      }

      else
      {
        v19 = v16;
      }

      if ((*&a3 & 0x7FF0000000000000) == 0x7FF0000000000000)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = a3;
      }

      if (v19 != 1)
      {
        LOBYTE(v16) = 0;
        a2 = v17;
        goto LABEL_30;
      }

      a2 = v17;
      a3 = v20;
      LOBYTE(v16) = v18;
    }

    else
    {
      a3 = 0.0;
      LOBYTE(v16) = 0;
      a2 = v17;
    }

    goto LABEL_27;
  }

  a2 = v17;
LABEL_27:
  static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
LABEL_30:
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v16 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeWithCopy for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:)(uint64_t a1)
{
  v3 = **(v1 + 16);

  *(a1 + 8) = v3;
  return result;
}

void type metadata accessor for Int?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSiSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI035CoreInteractionRepresentableFeatureC0V7ElementV_Tt1gq5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

double protocol witness for static StatefulRule.initialValue.getter in conformance GlassEffectItemRadii@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)@<X0>(uint64_t result@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X3>, void *a4@<X4>, char **a5@<X5>, void *a6@<X8>)
{
  v6 = a4;
  v8 = result;
  v53 = *MEMORY[0x1E69E9840];
  v9 = *(result + 48);
  v50 = *(result + 32);
  v51 = v9;
  v10 = *(result + 48);
  *v52 = *(result + 64);
  v11 = *(result + 16);
  v49[0] = *result;
  v49[1] = v11;
  v47 = v49[0];
  v48 = v11;
  v46[0] = *(result + 36);
  *&v52[16] = *(result + 80);
  *(v46 + 12) = v10;
  v33 = *&v52[4];
  v12 = *&v52[12];
  v13 = v50;
  v14 = BYTE4(v50);
  if ((BYTE4(v50) & 0x20) != 0)
  {
    if (*(a3 + 4))
    {
      __break(1u);
      return result;
    }

    v17 = *a4;
    LODWORD(v41[0]) = *a3;
    *(&v41[0] + 1) = v17;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(v49, v44);
    lazy protocol witness table accessor for type LayoutChildGeometry and conformance LayoutChildGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v15 = AGGraphCreateOffsetAttribute2();
    v13 |= 0x18u;
  }

  else
  {
    v15 = *&v52[8];
    OffsetAttribute2 = *v52;
    outlined init with copy of _ViewInputs(v49, v44);
  }

  v18 = v8[1];
  v41[0] = *v8;
  v41[1] = v18;
  *v42 = v13;
  *&v42[4] = *(v8 + 36);
  *&v42[16] = v8[3];
  *v43 = OffsetAttribute2;
  *&v43[4] = v33;
  *&v43[8] = v15;
  v31 = v12;
  *&v43[12] = v12;
  *v39 = *v42;
  *&v39[16] = *&v42[16];
  *v40 = *v43;
  *&v40[16] = HIDWORD(v12);
  v37 = v41[0];
  v38 = v18;
  outlined init with copy of _ViewInputs(v41, v44);
  a2(&v34, &v37);
  v44[2] = *v39;
  v44[3] = *&v39[16];
  v44[4] = *v40;
  v45 = *&v40[16];
  v44[0] = v37;
  v44[1] = v38;
  outlined destroy of _ViewInputs(v44);
  v19 = v34;
  v20 = v35;
  v21 = v36;
  if ((v14 & 0x20) != 0)
  {
    v22 = MEMORY[0x1E698D3F8];
    v23 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v23;
    v29 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      *a5 = v23;
    }

    v25 = *v22;
    v27 = *(v23 + 2);
    v26 = *(v23 + 3);
    if (v27 >= v26 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
      *a5 = v23;
    }

    *(v23 + 2) = v27 + 1;
    v28 = &v23[8 * v27];
    *(v28 + 8) = v21;
    *(v28 + 9) = v25;
    v6 = v29;
  }

  v37 = v47;
  v38 = v48;
  *v39 = v13;
  *&v39[4] = v46[0];
  *&v39[16] = *(v46 + 12);
  *v40 = OffsetAttribute2;
  *&v40[4] = v33;
  *&v40[8] = v15;
  *&v40[12] = v31;
  result = outlined destroy of _ViewInputs(&v37);
  ++*v6;
  *a6 = v19;
  a6[1] = v20 | (v21 << 32);
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_VStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _FrameLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

void type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

uint64_t specialized MergedElements.count.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = 0;
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    return v4;
  }

  if (a2 > v3)
  {
    v3 = a2;
  }

  v6 = v3 - a2;
  v7 = a1 + 72 * a2;
  while (v6)
  {
    outlined init with copy of _ViewListOutputs(v7, v18);
    outlined init with copy of _ViewListOutputs.Views(v18, v13);
    if (v14)
    {
      goto LABEL_12;
    }

    outlined init with take of AnyTrackedValue(v13, v15);
    v8 = v16;
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = (*(v9 + 8))(v8, v9);
    outlined destroy of _ViewListOutputs(v18);
    v11 = __OFADD__(v4, v10);
    v4 += v10;
    if (v11)
    {
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(v15);
    --v6;
    v7 += 72;
    if (!--v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  outlined destroy of _ViewListOutputs.Views(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryLayoutComputer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for UnaryLayoutComputer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance UnaryChildGeometry<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for UnaryChildGeometry<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery()
{
  result = lazy protocol witness table cache variable for type LayoutPositionQuery and conformance LayoutPositionQuery;
  if (!lazy protocol witness table cache variable for type LayoutPositionQuery and conformance LayoutPositionQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPositionQuery and conformance LayoutPositionQuery);
  }

  return result;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _FlexFrameLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_FlexFrameLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<_FlexFrameLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutChildGeometry and conformance LayoutChildGeometry()
{
  result = lazy protocol witness table cache variable for type LayoutChildGeometry and conformance LayoutChildGeometry;
  if (!lazy protocol witness table cache variable for type LayoutChildGeometry and conformance LayoutChildGeometry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutChildGeometry and conformance LayoutChildGeometry);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance StaticLayoutComputer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for StaticLayoutComputer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout()
{
  result = lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout;
  if (!lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout;
  if (!lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FlexFrameLayout and conformance _FlexFrameLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _FlexFrameLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t static _LayoutRoot._makeView(root:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  v15[4] = *(a2 + 64);
  v16 = *(a2 + 80);
  v12 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v12;
  v14[1] = v10;
  type metadata accessor for _LayoutRoot();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _LayoutRoot._makeView(root:inputs:body:), a5, v14);
  return (*(a6 + 88))(v14, v15, a3, a4, a5, a6);
}

uint64_t outlined init with copy of WeakBox<GlassContainerCache>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for GlassEffectBackdropObserver?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of HoverEffectContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for [LayoutDirection](0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t MergedElements.makeElements(from:inputs:indirectMap:body:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = *(a3 + 16);
  v62 = *a3;
  v63 = v10;
  v64 = *(a3 + 32);
  v11 = *(a3 + 48);
  v61[0] = *(a3 + 56);
  v12 = a10 >> 1;
  *(v61 + 12) = *(a3 + 68);
  if (a10 >> 1 == a9)
  {
    v13 = 1;
    v50 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v14 = *(v50 + 2);
    if (v14 == 1)
    {
      v27 = *(v50 + 4);
      v28 = *(v50 + 5);

      *a1 = v27;
      a1[1] = v28;
    }

    else if (v14)
    {
      v49 = v13;
      v29 = v11;
      *&v51 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v30 = v51;
      v31 = v50 + 40;
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;
        *&v51 = v30;
        v34 = *(v30 + 16);
        v35 = *(v30 + 24);

        if (v34 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v34 + 1, 1);
          v30 = v51;
        }

        v31 += 4;
        *(v30 + 16) = v34 + 1;
        v36 = v30 + 16 * v34;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        --v14;
      }

      while (v14);
      *&v51 = v30;
      *(&v51 + 1) = MEMORY[0x1E69E7CC0];
      *v52 = 0;
      v37 = *(v29 + 16);
      if (v37)
      {

        v38 = (v29 + 40);
        do
        {
          static PreferenceKey.visitKey<A>(_:)(&v51, *(v38 - 1), &type metadata for MultiPreferenceCombinerVisitor, *v38, &protocol witness table for MultiPreferenceCombinerVisitor);
          v38 += 2;
          --v37;
        }

        while (v37);
      }

      else
      {
      }

      v39 = MEMORY[0x1E698D3F8];
      v40 = *v52;
      v41 = *(&v51 + 1);

      v42 = v40 | (*v39 << 32);
      *a1 = v41;
      a1[1] = v42;

      v13 = v49;
    }

    else
    {

      *a1 = 0;
      a1[1] = 0;
    }

    return v13 & 1;
  }

  else
  {
    if (a9 <= v12)
    {
      v15 = a10 >> 1;
    }

    else
    {
      v15 = a9;
    }

    v16 = v15 - a9;
    v17 = a8 + 72 * a9;
    v18 = ~a9 + v12;
    v50 = MEMORY[0x1E69E7CC0];
    while (v16)
    {
      v19 = v18;
      outlined init with copy of _ViewListOutputs(v17, &v59);
      *&v52[9] = *(v60 + 9);
      v51 = v59;
      *v52 = v60[0];
      if (BYTE8(v60[1]))
      {
        goto LABEL_34;
      }

      outlined init with take of AnyTrackedValue(&v51, v56);
      v20 = v57;
      v21 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v51 = v62;
      *v52 = v63;
      *&v52[16] = v64;
      v53 = v11;
      v54[0] = v61[0];
      *(v54 + 12) = *(v61 + 12);
      v13 = (*(v21 + 16))(v55, a2, &v51, a4, a5, a6, v20, v21);
      v22 = v55[0];
      if (v55[0])
      {
        v23 = v55[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        }

        v25 = *(v50 + 2);
        v24 = *(v50 + 3);
        if (v25 >= v24 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v50);
        }

        *(v50 + 2) = v25 + 1;
        v26 = &v50[16 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v23;
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
      if (v13)
      {
        --v16;
        v17 += 72;
        v18 = v19 - 1;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    __break(1u);
LABEL_34:
    outlined destroy of _ViewListOutputs.Views(&v51);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout()
{
  result = lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout;
  if (!lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout;
  if (!lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _FrameLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5Tm(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t))
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _PaddingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout()
{
  result = lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout;
  if (!lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout;
  if (!lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _PaddingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static PrimitiveSpacer._makeView(view:inputs:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v20 = 0;
  v21 = v5;
  v6 = *a2;
  v7 = *(a2 + 9);
  if ((v7 & 2) != 0)
  {
    if ((v7 & 4) != 0)
    {
      v10 = (*(a2 + 9) & 8) == 0;
    }

    else
    {
      v9 = a1;
      v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(*a2);
      a1 = v9;
      v10 = 2;
    }

    LODWORD(v22) = a1;
    BYTE4(v22) = v10;
    DWORD2(v22) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<Spacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v8 = 128;
    v20 = 128;
    v21 = v5;
  }

  else
  {
    v8 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = a2[3];
    v24 = a2[2];
    v25 = v15;
    v26 = a2[4];
    v27 = *(a2 + 20);
    v16 = a2[1];
    v22 = *a2;
    v23 = v16;
    result = (*(v12 + 8))(&v22, result, v12);
    if (result)
    {
      v17 = a2[3];
      v24 = a2[2];
      v25 = v17;
      v26 = a2[4];
      v27 = *(a2 + 20);
      v18 = a2[1];
      v22 = *a2;
      v23 = v18;
      result = (*(v14 + 16))(&v22, &v19, v13, v14);
      v8 = v20;
      v5 = v21;
    }
  }

  *a3 = v19;
  *(a3 + 8) = v8;
  *(a3 + 12) = v5;
  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v20 = 0;
  v21 = v5;
  v6 = *a2;
  v7 = *(a2 + 9);
  if ((v7 & 2) != 0)
  {
    if ((v7 & 4) != 0)
    {
      v10 = (*(a2 + 9) & 8) == 0;
    }

    else
    {
      v9 = a1;
      v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(*a2);
      a1 = v9;
      v10 = 2;
    }

    LODWORD(v22) = a1;
    BYTE4(v22) = v10;
    DWORD2(v22) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<ConditionalSpacer>);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v8 = 128;
    v20 = 128;
    v21 = v5;
  }

  else
  {
    v8 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = a2[3];
    v24 = a2[2];
    v25 = v15;
    v26 = a2[4];
    v27 = *(a2 + 20);
    v16 = a2[1];
    v22 = *a2;
    v23 = v16;
    result = (*(v12 + 8))(&v22, result, v12);
    if (result)
    {
      v17 = a2[3];
      v24 = a2[2];
      v25 = v17;
      v26 = a2[4];
      v27 = *(a2 + 20);
      v18 = a2[1];
      v22 = *a2;
      v23 = v18;
      result = (*(v14 + 16))(&v22, &v19, v13, v14);
      v8 = v20;
      v5 = v21;
    }
  }

  *a3 = v19;
  *(a3 + 8) = v8;
  *(a3 + 12) = v5;
  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v20 = 0;
  v21 = v5;
  v6 = *a2;
  v7 = *(a2 + 9);
  if ((v7 & 2) != 0)
  {
    if ((v7 & 4) != 0)
    {
      v10 = (*(a2 + 9) & 8) == 0;
    }

    else
    {
      v9 = a1;
      v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(*a2);
      a1 = v9;
      v10 = 2;
    }

    LODWORD(v22) = a1;
    BYTE4(v22) = v10;
    DWORD2(v22) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<_TextBaselineRelativeSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v8 = 128;
    v20 = 128;
    v21 = v5;
  }

  else
  {
    v8 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = a2[3];
    v24 = a2[2];
    v25 = v15;
    v26 = a2[4];
    v27 = *(a2 + 20);
    v16 = a2[1];
    v22 = *a2;
    v23 = v16;
    result = (*(v12 + 8))(&v22, result, v12);
    if (result)
    {
      v17 = a2[3];
      v24 = a2[2];
      v25 = v17;
      v26 = a2[4];
      v27 = *(a2 + 20);
      v18 = a2[1];
      v22 = *a2;
      v23 = v18;
      result = (*(v14 + 16))(&v22, &v19, v13, v14);
      v8 = v20;
      v5 = v21;
    }
  }

  *a3 = v19;
  *(a3 + 8) = v8;
  *(a3 + 12) = v5;
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v17 = 0;
  v18 = v5;
  v6 = *a2;
  if ((*(a2 + 36) & 2) != 0)
  {
    LODWORD(v19) = a1;
    BYTE4(v19) = 0;
    DWORD2(v19) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<_HSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v7 = 128;
    v17 = 128;
    v18 = v5;
  }

  else
  {
    v7 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v10 = result;
    v11 = v9;
    v12 = a2[3];
    v21 = a2[2];
    v22 = v12;
    v23 = a2[4];
    v24 = *(a2 + 20);
    v13 = a2[1];
    v19 = *a2;
    v20 = v13;
    result = (*(v9 + 8))(&v19, result, v9);
    if (result)
    {
      v14 = a2[3];
      v21 = a2[2];
      v22 = v14;
      v23 = a2[4];
      v24 = *(a2 + 20);
      v15 = a2[1];
      v19 = *a2;
      v20 = v15;
      result = (*(v11 + 16))(&v19, &v16, v10, v11);
      v7 = v17;
      v5 = v18;
    }
  }

  *a3 = v16;
  *(a3 + 8) = v7;
  *(a3 + 12) = v5;
  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v17 = 0;
  v18 = v5;
  v6 = *a2;
  if ((*(a2 + 36) & 2) != 0)
  {
    LODWORD(v19) = a1;
    BYTE4(v19) = 1;
    DWORD2(v19) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<_VSpacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v7 = 128;
    v17 = 128;
    v18 = v5;
  }

  else
  {
    v7 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v10 = result;
    v11 = v9;
    v12 = a2[3];
    v21 = a2[2];
    v22 = v12;
    v23 = a2[4];
    v24 = *(a2 + 20);
    v13 = a2[1];
    v19 = *a2;
    v20 = v13;
    result = (*(v9 + 8))(&v19, result, v9);
    if (result)
    {
      v14 = a2[3];
      v21 = a2[2];
      v22 = v14;
      v23 = a2[4];
      v24 = *(a2 + 20);
      v15 = a2[1];
      v19 = *a2;
      v20 = v15;
      result = (*(v11 + 16))(&v19, &v16, v10, v11);
      v7 = v17;
      v5 = v18;
    }
  }

  *a3 = v16;
  *(a3 + 8) = v7;
  *(a3 + 12) = v5;
  return result;
}

void type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for SpacerLayoutComputer();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Spacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

uint64_t lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020SpacerRepresentationV033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020SpacerRepresentationV033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.SpacerRepresentationKey)
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SpacerLayoutComputer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for SpacerLayoutComputer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ForEachState()
{
  type metadata accessor for ForEach();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ForEachState.LazyEdits();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for ForEachState.LazyEdits()
{
  result = type metadata accessor for ForEachState.EditsBuilder();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata accessor for _ViewListOutputs?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18D05DA3C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t protocol witness for UnaryViewGenerator.makeView(inputs:indirectMap:) in conformance BodyUnaryViewGenerator(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

void static ForEach<>._makeViewList(view:inputs:)(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v64 = *a1;
  static ForEach<>.makeForEachViewList(view:inputs:)(&v64, a2, &v66);
  if (BYTE8(v68) == 0xFF)
  {
    v56 = a9;
    outlined destroy of _ViewListOutputs?(&v66);
    *&v66 = a3;
    *(&v66 + 1) = a4;
    *&v67 = a5;
    *(&v67 + 1) = a6;
    *&v68 = a7;
    *(&v68 + 1) = a8;
    type metadata accessor for ForEachState();
    v18 = a7;
    outlined init with copy of _ViewListInputs(a2, &v66);
    v19 = swift_allocObject();
    v20 = ForEachState.init(inputs:)(&v66);
    v60 = &v54;
    v64 = v17;
    v65 = v19;
    MEMORY[0x1EEE9AC00](v20);
    *&v66 = a3;
    *(&v66 + 1) = a4;
    *&v67 = a5;
    *(&v67 + 1) = a6;
    *&v68 = v18;
    *(&v68 + 1) = a8;
    v21 = type metadata accessor for ForEachState.Info();
    v22 = a4;
    v23 = a2;
    v51[2] = v21;
    v57 = a3;
    *&v66 = a3;
    *(&v66 + 1) = v22;
    v61 = v22;
    *&v58 = a5;
    *&v67 = a5;
    *(&v67 + 1) = a6;
    *(&v58 + 1) = a6;
    *&v59 = v18;
    *&v68 = v18;
    *(&v68 + 1) = a8;
    *(&v59 + 1) = a8;
    v52 = type metadata accessor for ForEachState.Info.Init();
    WitnessTable = swift_getWitnessTable();
    v24 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v64, partial apply for closure #1 in Attribute.init<A>(_:), v51, v52, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);

    v26 = v66;
    *(v19 + 160) = v66;
    *(v19 + 164) = 0;
    v60 = v23;
    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*v23);
    v28 = static WeakAttribute.== infix(_:_:)();
    if ((v28 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (one-time initialization token for evictByDefault != -1)
    {
      v28 = swift_once();
    }

    if (static ForEachEvictionInput.evictByDefault != 1)
    {
      v36 = *(&v59 + 1);
      v34 = *(&v58 + 1);
      v35 = v58;
      v33 = v57;
    }

    else
    {
LABEL_6:
      v29 = specialized static GraphHost.currentHost.getter();
      v55 = v26;
      v30 = v29;
      swift_beginAccess();
      v31 = *(v30 + 64);

      v54 = v51;
      v62[0] = v19;
      v62[1] = v27;
      v63 = v31;
      MEMORY[0x1EEE9AC00](v32);
      v33 = v57;
      *&v66 = v57;
      *(&v66 + 1) = v61;
      v34 = *(&v58 + 1);
      v35 = v58;
      v67 = v58;
      v36 = *(&v59 + 1);
      v68 = v59;
      v37 = type metadata accessor for ForEachState.Evictor();
      v51[-2] = v37;
      v51[-1] = swift_getWitnessTable();
      type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
      v39 = v38;

      v40 = v37;
      v26 = v55;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v62, closure #1 in Attribute.init<A>(_:)partial apply, &v51[-4], v40, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v41);

      v28 = AGGraphSetFlags();
    }

    v44 = v56;
    v61 = v51;
    v62[0] = v26;
    MEMORY[0x1EEE9AC00](v28);
    *&v66 = v33;
    *(&v66 + 1) = v45;
    *&v67 = v35;
    *(&v67 + 1) = v34;
    *&v68 = v46;
    *(&v68 + 1) = v36;
    v47 = type metadata accessor for ForEachList.Init();
    v51[-2] = v47;
    v51[-1] = swift_getWitnessTable();
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v62, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_15, &v51[-4], v47, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v49);
    v50 = v66;
    *(v19 + 168) = v66;
    *(v19 + 172) = 0;

    *v44 = v50;
    *(v44 + 8) = 0;
    *(v44 + 40) = 1;
    *(v44 + 48) = v60[6];
    *(v44 + 56) = 0;
    *(v44 + 64) = 1;
  }

  else
  {
    v42 = v69;
    *(a9 + 32) = v68;
    *(a9 + 48) = v42;
    *(a9 + 64) = v70;
    v43 = v67;
    *a9 = v66;
    *(a9 + 16) = v43;
  }
}

double static ForEach<>.makeForEachViewList(view:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v11 = *a1;
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  type metadata accessor for ForEachSubviewCollection();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  v4 = swift_dynamicCast();
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v5 = partial apply for closure #1 in static ForEach<>.makeForEachViewList(view:inputs:);
  }

  else
  {
    v11 = v3;
    type metadata accessor for ForEachSectionCollection();
    swift_getWitnessTable();
    lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
    type metadata accessor for ForEach();
    type metadata accessor for _GraphValue();
    v6 = swift_dynamicCast();
    if (!v6)
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0;
      *(a3 + 40) = 255;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      return result;
    }

    MEMORY[0x1EEE9AC00](v6);
    v5 = partial apply for closure #2 in static ForEach<>.makeForEachViewList(view:inputs:);
  }

  _GraphValue.subscript.getter(v5, &type metadata for AnyView, &v11);
  v7 = v11;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI11DynamicViewPAAE04makecD4List8metadata4view6inputsAA01_dF7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_dF6InputsVtFZAA03AnyD0V_Tt3B5(v7, a2, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI11DynamicViewPAAE04makecD4List8metadata4view6inputsAA01_dF7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_dF6InputsVtFZAA03AnyD0V_Tt3B5(v7, a2, a3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID()
{
  result = lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID;
  if (!lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID;
  if (!lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID);
  }

  return result;
}

uint64_t closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of _ViewListInputs(a2, v19);
  v11 = *a2;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v11, v18);
  if (v12)
  {
    v13 = *(v12 + 72);
  }

  else
  {
    v13 = 0;
  }

  v20 |= v13;
  MEMORY[0x1EEE9AC00](v12);
  LODWORD(v18) = a3;
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:), a5, &v17);
  v14 = v17;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v16 = v14;
  (*(a7 + 32))(&v16, v19, a5, a7);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v14, a5, a7);
  return outlined destroy of _ViewListInputs(v19);
}

unint64_t lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID()
{
  result = lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID;
  if (!lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID;
  if (!lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24IsInGlassEffectContainerV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24IsInGlassEffectContainerV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for IsInGlassEffectContainer)
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

uint64_t outlined destroy of WeakBox<GlassContainerCache>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for GlassEffectBackdropObserver?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for WeakBox<GlassContainerCache>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 48);
  *v18 = *(a1 + 32);
  *&v18[16] = v4;
  *&v18[32] = *(a1 + 64);
  v5 = *v18;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v18);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(v18, v17, &lazy cache variable for type metadata for (ViewIdentity, GlassContainer.ItemData));
    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v5;
    v9 = v3[7] + 40 * result;
    v10 = *&v18[8];
    v11 = *&v18[24];
    *(v9 + 32) = *&v18[40];
    *v9 = v10;
    *(v9 + 16) = v11;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(v18, v17, &lazy cache variable for type metadata for (ViewIdentity, GlassContainer.ItemData));
    v15 = v8[1];
    *v18 = *v8;
    *&v18[16] = v15;
    *&v18[32] = v8[2];
    v5 = *v18;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v18);
    v8 += 3;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.GlassContainerCacheKey)
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.GlassContainerCacheKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(v4, v11[0]);
  if (!v5 || (outlined init with copy of WeakBox<GlassContainerCache>(v5 + 72, v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox), type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox), v6 = AGCompareValues(), result = outlined destroy of WeakBox<GlassContainerCache>(v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox), !v6))
  {
    outlined init with copy of WeakBox<GlassContainerCache>(a2, v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.GlassContainerCacheKey>, &type metadata for _GraphInputs.GlassContainerCacheKey, &protocol witness table for _GraphInputs.GlassContainerCacheKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    outlined init with copy of WeakBox<GlassContainerCache>(v11, v9 + 72, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);

    value = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.GlassContainerCacheKey, 0, v8).value;
    outlined destroy of WeakBox<GlassContainerCache>(v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
    *a1 = value;
  }

  return result;
}

uint64_t static GlassEffectContainerModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v111 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v107 = *(a2 + 32);
  v108 = v7;
  v9 = *(a2 + 48);
  v109 = *(a2 + 64);
  v10 = *(a2 + 16);
  v105 = *a2;
  v106 = v10;
  v102 = v9;
  v101 = v107;
  v103 = *(a2 + 64);
  v11 = *a1;
  v110 = *(a2 + 80);
  v104 = *(a2 + 80);
  v99 = v105;
  v100 = v8;
  v12 = v9;
  *&v91[0] = v9;
  v13 = &type metadata for GlassContainer.Item.Key;
  v14 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  outlined init with copy of _ViewInputs(&v105, &v93);

  v15 = *(v12 + 2);
  if (v14 == v15)
  {
    goto LABEL_4;
  }

  if (v14 >= v15)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*&v12[16 * v14 + 32] != &type metadata for GlassContainer.Item.Key)
  {
LABEL_4:
    if (v15 < v14)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v15 >= *(v12 + 3) >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v12);
      *&v102 = v12;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v14, v14, 1, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    *&v102 = v12;
  }

  *&v93 = v12;
  v13 = &type metadata for GlassContainer.DataStorage.Key;
  v17 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.DataStorage.Key);

  v18 = *(v12 + 2);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
      goto LABEL_20;
    }

    if (*&v12[16 * v17 + 32] == &type metadata for GlassContainer.DataStorage.Key)
    {
      goto LABEL_17;
    }
  }

  if (v18 < v17)
  {
    goto LABEL_33;
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  if (!v19 || v18 >= *(v12 + 3) >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v18 + 1, 1, v12);
    *&v102 = v12;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);
  *&v102 = v12;
LABEL_17:
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24IsInGlassEffectContainerV_Tt2g5(&v99, 1);

  LODWORD(v93) = 2143289344;
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GlassEffectBackdropObserver();
  v20 = swift_allocObject();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  *(v20 + 24) = 0;
  *(v20 + 24) = AGCreateWeakAttribute();
  v95 = v107;
  v96 = v108;
  v97 = v109;
  v98 = v110;
  v93 = v105;
  v94 = v106;
  type metadata accessor for GlassContainerCache();
  swift_allocObject();
  outlined init with copy of _ViewInputs(&v105, v91);

  v13 = GlassContainerCache.init(observer:inputs:)(v21, &v93);
  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of WeakBox<GlassContainerCache>(v52, v51);

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(&v99, v51);

  outlined destroy of WeakBox<GlassContainerCache>(v52);

  outlined destroy of WeakBox<GlassContainerCache>(v51);
  v91[2] = v101;
  v91[3] = v102;
  v91[4] = v103;
  v92 = v104;
  v91[0] = v99;
  v91[1] = v100;
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  v85 = v99;
  v86 = v100;
  v22 = outlined init with copy of _ViewInputs(v91, &v93);
  a3(&v48, v22, &v85);
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v93 = v85;
  v94 = v86;
  outlined destroy of _ViewInputs(&v93);
  a3 = v48;
  a4 = v49;
  v23 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v48);
  if ((v23 & 0x100000000) != 0 || (v24 = v23, v25 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO11DataStorageV0I0V_TtB5(a3), (v25 & 0x100000000) != 0))
  {

    v87 = v101;
    v88 = v102;
    v89 = v103;
    v90 = v104;
    v85 = v99;
    v86 = v100;
    result = outlined destroy of _ViewInputs(&v85);
    goto LABEL_31;
  }

  v26 = v25;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v28 = v106;
  swift_beginAccess();
  v29 = *(v28 + 16);
  *&v85 = __PAIR64__(v24, OffsetAttribute2);
  *(&v85 + 1) = __PAIR64__(v29, v26);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdatedContainerStorage and conformance UpdatedContainerStorage();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v87 = v107;
  v88 = v108;
  v89 = v109;
  v90 = v110;
  v85 = v105;
  v86 = v106;
  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of WeakBox<GlassContainerCache>(v47, v46);
  outlined init with copy of _ViewInputs(&v105, &v79);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(&v85, v46);

  outlined destroy of WeakBox<GlassContainerCache>(v47);

  outlined destroy of WeakBox<GlassContainerCache>(v46);
  if (one-time initialization token for materialBackdropProxy != -1)
  {
    goto LABEL_36;
  }

LABEL_20:
  v30 = static CachedEnvironment.ID.materialBackdropProxy;
  swift_beginAccess();
  v31 = specialized CachedEnvironment.attribute<A>(id:_:)(v30);
  swift_endAccess();
  Description = v13[7].Description;
  *&v79 = __PAIR64__(v31, v11);
  *(&v79 + 1) = Description;
  *&v80 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ContainerStorageView.Init and conformance ContainerStorageView.Init();

  v33 = Attribute.init<A>(body:value:flags:update:)();

  v81 = v87;
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v79 = v85;
  v80 = v86;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v71 = v81;
  v72 = v82;
  v73 = v83;
  v74 = v84;
  v69 = v79;
  v70 = v80;
  v35 = v81;
  LODWORD(v71) = 0;
  LODWORD(v61[0]) = v33;
  v75[0] = v79;
  v75[1] = v80;
  v76 = v84;
  v75[3] = v82;
  v75[4] = v83;
  v75[2] = v71;
  v65 = v71;
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v63 = v79;
  v64 = v80;
  outlined init with copy of _ViewInputs(&v79, v77);
  outlined init with copy of _ViewInputs(v75, v77);
  static ContainerStorageView._makeView(view:inputs:)(&v63, &v44);
  v77[2] = v65;
  v77[3] = v66;
  v77[4] = v67;
  v78 = v68;
  v77[0] = v63;
  v77[1] = v64;
  outlined destroy of _ViewInputs(v77);
  LODWORD(v71) = v35;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v44, &v69);
    AGSubgraphEndTreeElement();
  }

  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  outlined destroy of _ViewInputs(&v63);
  v57 = MEMORY[0x1E69E7CC0];
  v58 = 0;
  v53 = a3;
  v54 = a4;
  v55 = v44;
  v56 = v45;
  v36 = v108;
  v37 = *(v108 + 16);
  if (v37)
  {

    v38 = (v36 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v53, *(v38 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v38, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v38 += 2;
      --v37;
    }

    while (v37);
  }

  else
  {
  }

  v40 = v57;
  v41 = v58;

  v48 = v40;
  v49 = v41;
  LOBYTE(v61[0]) = 1;
  PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
  LOBYTE(v61[0]) = 1;
  PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);

  v59[2] = v87;
  v59[3] = v88;
  v59[4] = v89;
  v60 = v90;
  v59[0] = v85;
  v59[1] = v86;
  outlined destroy of _ViewInputs(v59);
  v61[2] = v101;
  v61[3] = v102;
  v61[4] = v103;
  v62 = v104;
  v61[0] = v99;
  v61[1] = v100;
  result = outlined destroy of _ViewInputs(v61);
  a3 = v48;
  a4 = v49;
LABEL_31:
  v42 = v50;
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 12) = v42;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24IsInGlassEffectContainerV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for IsInGlassEffectContainer);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24IsInGlassEffectContainerV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<IsInGlassEffectContainer>, &type metadata for IsInGlassEffectContainer, &protocol witness table for IsInGlassEffectContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInGlassEffectContainer, 0, v6);
  }

  return result;
}

uint64_t closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a3 = MEMORY[0x1E69E7CC0];
    *(a3 + 8) = 0;
    *(a3 + 12) = result;
  }

  else
  {
    v7 = _GraphValue.init(_:)(result, &v13);
    v8 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v8;
    v11[4] = *(a1 + 64);
    v12 = *(a1 + 80);
    v9 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v9;
    v10 = MEMORY[0x1EEE9AC00](v7);
    return (*(*(a2 + 8) + 32))(&v13, v11, partial apply for closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:), v10);
  }

  return result;
}

uint64_t closure #1 in static _LayoutRoot._makeView(root:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _LayoutRoot();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, _OWORD *))
{
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  v5 = a2[2];
  v12 = *MEMORY[0x1E698D3F8];
  v22 = v5;
  v13 = MEMORY[0x1E69E7CD0];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  swift_weakInit();
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v9[0] = v20;
  v9[1] = v21;
  v9[2] = v22;
  v10 = 0;
  v11 = 0;
  v6 = outlined init with copy of _GraphInputs(&v20, &v8);
  a3(v6, v9);
  return outlined destroy of _ViewListInputs(v9);
}

uint64_t static Layout.makeLayoutView(root:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, ValueMetadata *a4@<X4>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 16);
  v10 = *(a2 + 48);
  v73 = *(a2 + 32);
  v74 = v10;
  v75 = *(a2 + 64);
  v11 = *(a2 + 16);
  v71 = *a2;
  v72 = v11;
  v65 = v71;
  v66 = v9;
  v12 = *a1;
  v76 = *(a2 + 80);
  v32 = v12;
  v67 = v73;
  v13 = *(a5 + 8);
  v14 = *(v13 + 48);
  outlined init with copy of _GraphInputs(&v71, v63);
  v14(&v32, &v65, a4, v13);
  v77[0] = v65;
  v77[1] = v66;
  v77[2] = v67;
  outlined destroy of _GraphInputs(v77);
  v15 = DWORD1(v73);
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v65 = v71;
  v66 = v72;
  if (a4 == &type metadata for AnyLayout)
  {
    v19 = DWORD1(v73) & 0xFFFFFFF3;
    DWORD1(v67) = DWORD1(v73) & 0xFFFFFFF3;
    LODWORD(v61[0]) = v32;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(&v71, v63);
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for Axis?, &type metadata for Axis, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type AnyLayoutProperties and conformance AnyLayoutProperties();
    v21 = Attribute.init<A>(body:value:flags:update:)();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v65, v21);

    v18 = 0;
    v30 = 0;
    v17 = 2;
  }

  else
  {
    v16 = *(a5 + 24);
    outlined init with copy of _ViewInputs(&v71, v63);
    v16(v63, a4, a5);
    v17 = v63[0];
    v18 = BYTE1(v63[0]);
    v30 = BYTE2(v63[0]);
    if (LOBYTE(v63[0]) == 2)
    {
      v19 = v15 & 0xFFFFFFF3;
      DWORD1(v67) = v19;
      v20 = *MEMORY[0x1E698D3F8];

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v65, v20);
    }

    else
    {
      if (v63[0])
      {
        v19 = v15 & 0xFFFFFFF3 | 4;
      }

      else
      {
        v19 = v15 | 0xC;
      }

      DWORD1(v67) = v19;
    }
  }

  v22 = v65;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v22, *&v63[0]);
  if (v23)
  {
    if ((*(v23 + 72) & 1) == 0)
    {
      goto LABEL_11;
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
LABEL_11:
      if ((v19 & 0x800) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v26 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v22, *&v63[0]);
  if (v26)
  {
    v27 = *(v26 + 72) | 0x4000;
  }

  else
  {
    v27 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v65, v27);

  if ((v19 & 0x800) == 0)
  {
LABEL_12:
    DWORD1(v67) = v19;
  }

LABEL_13:
  v61[2] = v67;
  v61[3] = v68;
  v61[4] = v69;
  v62 = v70;
  v61[0] = v65;
  v61[1] = v66;
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v54 = v65;
  v55 = v66;
  v24 = outlined init with copy of _ViewInputs(v61, v63);
  a3(v60, v24, &v54);
  v63[2] = v56;
  v63[3] = v57;
  v63[4] = v58;
  v64 = v59;
  v63[0] = v54;
  v63[1] = v55;
  outlined destroy of _ViewInputs(v63);
  outlined init with copy of _ViewListOutputs.Views(v60, &v51);
  if (v53)
  {
    v25 = v51;
    if (v52)
    {
      LODWORD(v54) = v51;
      *(&v54 + 1) = v52;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v25 = Attribute.init<A>(body:value:flags:update:)();
    }

    v47 = v67;
    v48 = v68;
    v49 = v69;
    v45 = v65;
    v46 = v66;
    v41 = v67;
    v42 = v68;
    v43 = v69;
    v37[0] = v32;
    v50 = v70;
    v44 = v70;
    v39 = v65;
    v40 = v66;
    LOBYTE(v38[0]) = v17;
    BYTE1(v38[0]) = v18;
    BYTE2(v38[0]) = v30;
    outlined init with copy of _ViewInputs(&v45, &v54);
    static Layout.makeDynamicView(root:inputs:properties:list:)(v37, &v39, v25, a4, a5, a6);

    v56 = v41;
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v54 = v39;
    v55 = v40;
    outlined destroy of _ViewInputs(&v54);
  }

  else
  {
    outlined init with take of _ViewList_Elements(&v51, v38);
    v47 = v67;
    v48 = v68;
    v49 = v69;
    v45 = v65;
    v46 = v66;
    v41 = v67;
    v42 = v68;
    v43 = v69;
    if ((v19 & 0x800) != 0)
    {
      v36 = v32;
      v50 = v70;
      v44 = v70;
      v39 = v65;
      v40 = v66;
      v33 = v17;
      v34 = v18;
      v35 = v30;
      v56 = v73;
      v57 = v74;
      v58 = v75;
      v59 = v76;
      v54 = v71;
      v55 = v72;
      outlined init with copy of _ViewInputs(&v45, v37);
      v28 = _ViewListOutputs.makeAttribute(viewInputs:)(&v54);
      static Layout.makeDynamicView(root:inputs:properties:list:)(&v36, &v39, v28, a4, a5, a6);
    }

    else
    {
      v37[0] = v32;
      v50 = v70;
      v44 = v70;
      v39 = v65;
      v40 = v66;
      LOBYTE(v36) = v17;
      BYTE1(v36) = v18;
      BYTE2(v36) = v30;
      outlined init with copy of _ViewInputs(&v45, &v54);
      static Layout.makeStaticView(root:inputs:properties:list:)(v37, &v39, &v36, v38, a4, a5, a6);
    }

    v56 = v41;
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v54 = v39;
    v55 = v40;
    outlined destroy of _ViewInputs(&v54);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  outlined destroy of _ViewListOutputs(v60);
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v54 = v65;
  v55 = v66;
  return outlined destroy of _ViewInputs(&v54);
}

uint64_t type metadata completion function for AnchorBox()
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

void type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ConcentricProxy and conformance ConcentricProxy()
{
  result = lazy protocol witness table cache variable for type ConcentricProxy and conformance ConcentricProxy;
  if (!lazy protocol witness table cache variable for type ConcentricProxy and conformance ConcentricProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricProxy and conformance ConcentricProxy);
  }

  return result;
}

uint64_t static ConcentricEdgePaddingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v66 = *a2;
  v8 = *(a2 + 2);
  v50 = *(a2 + 3);
  v9 = *(a2 + 9);
  v51 = *(a2 + 8);
  v64 = *(a2 + 40);
  v10 = *(a2 + 15);
  v65 = *(a2 + 14);
  v11 = *(a2 + 16);
  v12 = *(a2 + 18);
  v13 = *(a2 + 76);
  if ((v9 & 0x22) == 0)
  {
    return a3();
  }

  v41 = *(a2 + 17);
  v43 = v13;
  v40 = a5;
  v44 = a6;
  v45 = a3;
  v46 = a4;
  v47 = a7;
  swift_beginAccess();
  v14 = *(v8 + 16);
  v15 = *MEMORY[0x1E698D3F8];
  *&v52 = __PAIR64__(v12, v11);
  v42 = v12;
  *(&v52 + 1) = __PAIR64__(v14, v10);
  v53 = v15;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricProxy and conformance ConcentricProxy();
  v38 = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for containerShape != -1)
  {
    swift_once();
  }

  v16 = static CachedEnvironment.ID.containerShape;
  swift_beginAccess();
  v17 = specialized CachedEnvironment.attribute<A>(id:_:)(v16);
  swift_endAccess();
  if (one-time initialization token for defaultPadding != -1)
  {
    swift_once();
  }

  v39 = v10;
  v18 = static CachedEnvironment.ID.defaultPadding;
  swift_beginAccess();
  v19 = specialized CachedEnvironment.attribute<A>(id:_:)(v18);
  swift_endAccess();
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v20 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20);
  v22 = swift_endAccess();
  v23 = v7;
  *&v52 = __PAIR64__(v17, v7);
  *(&v52 + 1) = __PAIR64__(v21, v19);
  v53 = __PAIR64__(v15, v38);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v40;
  v25 = v44;
  v36 = type metadata accessor for ConcentricEdgePaddingModifier.EdgePadding();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EdgeInsets>(0, &lazy cache variable for type metadata for Attribute<EdgeInsets>, &type metadata for EdgeInsets, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v52, closure #1 in Attribute.init<A>(_:)partial apply, v35, v36, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v28 = v49[0];
  type metadata accessor for ConcentricEdgePaddingModifier();
  v48 = v23;
  v52 = v66;
  v53 = v8;
  v54 = v50;
  v55 = v51;
  v56 = v9;
  v57 = v64;
  v58 = v65;
  v59 = v39;
  v60 = v11;
  v61 = v41;
  v62 = v42;
  v63 = v43;
  v29 = static ViewModifier.makeConcentricLayout(padding:modifier:inputs:body:)(v49, v28, &v48, &v52, v45);
  v30 = v49[0];
  v31 = v49[1];
  MEMORY[0x1EEE9AC00](v29);
  v35[0] = v24;
  v35[1] = v25;
  LODWORD(v36) = v32;
  BYTE4(v36) = BYTE4(v32) & 1;
  MEMORY[0x1EEE9AC00](v32);
  result = AGGraphMutateAttribute();
  v34 = v47;
  *v47 = v30;
  v34[1] = v31;
  return result;
}

uint64_t static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:)(int *a1, uint64_t a2, char a3, void (*a4)(uint64_t, __int128 *), uint64_t a5, uint64_t a6, ValueMetadata *a7, uint64_t a8)
{
  v13 = *(a2 + 48);
  v14 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v13;
  v15 = *(a2 + 48);
  v35 = *(a2 + 64);
  v16 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v16;
  v28 = v33;
  v29 = v15;
  v30 = *(a2 + 64);
  v17 = *a1;
  v36 = *(a2 + 80);
  v31 = *(a2 + 80);
  v26 = v32[0];
  v27 = v14;
  outlined init with copy of _ViewInputs(v32, &v43);
  PreferencesInputs.remove<A>(_:)(a7, a7);
  v39[2] = v28;
  v39[3] = v29;
  v39[4] = v30;
  v40 = v31;
  v39[0] = v26;
  v39[1] = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v43 = v26;
  v44 = v27;
  v18 = outlined init with copy of _ViewInputs(v39, v41);
  a4(v18, &v43);
  v41[2] = v45;
  v41[3] = v46;
  v41[4] = v47;
  v42 = v48;
  v41[0] = v43;
  v41[1] = v44;
  outlined destroy of _ViewInputs(v41);
  v37 = v34;
  v38 = DWORD2(v34);
  v24 = v34;
  v25 = DWORD2(v34);
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v21 = v17;
  v22 = a3;
  v23 = v32;
  outlined init with copy of PreferencesInputs(&v37, &v43);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v24, a7, partial apply for implicit closure #1 in static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:), v20, a7, a8);

  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v43 = v26;
  v44 = v27;
  return outlined destroy of _ViewInputs(&v43);
}

unint64_t static ViewModifier.makeConcentricLayout(padding:modifier:inputs:body:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 48);
  v44 = *(a4 + 32);
  v45 = v7;
  v8 = *(a4 + 48);
  *v46 = *(a4 + 64);
  v9 = *(a4 + 16);
  v43[0] = *a4;
  v43[1] = v9;
  v41 = v43[0];
  v42 = v9;
  v40[0] = *(a4 + 36);
  *&v46[16] = *(a4 + 80);
  *(v40 + 12) = v8;
  v10 = v44;
  v11 = *&v46[4];
  v12 = *&v46[12];
  outlined init with copy of _ViewInputs(v43, &v34);
  v13 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  *&v34 = __PAIR64__(v13, a2);
  swift_weakInit();

  v35 = 0u;
  v36 = 0u;
  LOBYTE(v37) = 1;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ConcentricPaddingUpdater(&v34);
  AGGraphSetFlags();
  *&v34 = __PAIR64__(a2, *v46);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for CGPoint(0);
  lazy protocol witness table accessor for type ConcentricPosition and conformance ConcentricPosition();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  *&v34 = __PAIR64__(a2, *&v46[8]);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricSize and conformance ConcentricSize();
  v15 = Attribute.init<A>(body:value:flags:update:)();
  v16 = v10 | 0x18;
  v31[0] = v41;
  v31[1] = v42;
  *v32 = v10 | 0x18;
  *&v32[16] = *(v40 + 12);
  *&v32[4] = v40[0];
  *v33 = v14;
  *&v33[4] = v11;
  *&v33[8] = v15;
  *&v33[12] = v12;
  *v29 = *v32;
  *&v29[16] = *&v32[16];
  *v30 = *v33;
  *&v30[16] = HIDWORD(v12);
  v27 = v41;
  v28 = v42;
  v17 = outlined init with copy of _ViewInputs(v31, &v34);
  (a5)(&v24, v17, &v27);
  v36 = *v29;
  v37 = *&v29[16];
  v38 = *v30;
  v39 = *&v30[16];
  v34 = v27;
  v35 = v28;
  outlined destroy of _ViewInputs(&v34);
  LODWORD(a5) = v26;
  v19 = *MEMORY[0x1E698D3F8];
  if ((BYTE4(v44) & 2) != 0)
  {
    *&v27 = __PAIR64__(v26, v13);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer();
    v21 = Attribute.init<A>(body:value:flags:update:)();
    v20 = v25 | 0x80;
  }

  else
  {
    v20 = v25;
    v21 = v26;
  }

  v22 = a5 == v19;
  if (v22)
  {
    a5 = 0;
  }

  else
  {
    a5 = a5;
  }

  v27 = v41;
  v28 = v42;
  *v29 = v16;
  *&v29[4] = v40[0];
  *&v29[16] = *(v40 + 12);
  *v30 = v14;
  *&v30[4] = v11;
  *&v30[8] = v15;
  *&v30[12] = v12;
  outlined destroy of _ViewInputs(&v27);
  *a1 = v24;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  return a5 | (v22 << 32);
}

uint64_t one-time initialization function for containerShape()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.containerShape = result;
  return result;
}

uint64_t one-time initialization function for defaultPadding()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.defaultPadding = result;
  return result;
}

void type metadata accessor for Attribute<EdgeInsets>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ConcentricEdgePaddingModifier<A>.EdgePadding()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ConcentricEdgePaddingModifier<A>.EdgePadding(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater()
{
  result = lazy protocol witness table cache variable for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater;
  if (!lazy protocol witness table cache variable for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater);
  }

  return result;
}

uint64_t initializeWithCopy for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ConcentricPosition and conformance ConcentricPosition()
{
  result = lazy protocol witness table cache variable for type ConcentricPosition and conformance ConcentricPosition;
  if (!lazy protocol witness table cache variable for type ConcentricPosition and conformance ConcentricPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricPosition and conformance ConcentricPosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConcentricSize and conformance ConcentricSize()
{
  result = lazy protocol witness table cache variable for type ConcentricSize and conformance ConcentricSize;
  if (!lazy protocol witness table cache variable for type ConcentricSize and conformance ConcentricSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConcentricSize and conformance ConcentricSize);
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t type metadata completion function for LazyState()
{
  result = type metadata accessor for LazyState.Storage();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LazyState.Storage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t LazyState.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *(a3 + *(type metadata accessor for LazyState() + 28)) = 0;
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for LazyState.Storage();

  return swift_storeEnumTagMultiPayload();
}

void *initializeWithCopy for LazyState(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a2;
  }

  else if (v8 == 2)
  {
    v9 = *a2;
  }

  else if (v8 == 3)
  {
    v9 = *a2 | (a2[2] << 16);
  }

  else
  {
    v9 = *a2;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 2;
  v6 = v9 + 2;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1, a2);
    v11 = 1;
  }

  else
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;

    v11 = 0;
  }

  *(a1 + v5) = v11;
  *((a1 + v5 + 8) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v5 + 8] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for LazyState(unsigned __int8 *a1, uint64_t a2)
{
  if (*(*(*(a2 + 16) - 8) + 64) <= 0x10uLL)
  {
    v2 = 16;
  }

  else
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 < 2)
  {
    goto LABEL_18;
  }

  if (v2 <= 3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = *a1;
  }

  else if (v5 == 2)
  {
    v6 = *a1;
  }

  else if (v5 == 3)
  {
    v6 = *a1 | (a1[2] << 16);
  }

  else
  {
    v6 = *a1;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 2;
  v3 = v6 + 2;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_18:
  if (v3 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))(a1);
  }

  else
  {
  }
}

uint64_t type metadata completion function for _ValueActionModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _AnimationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Binding.init(value:location:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  *a3 = 0;
  a3[1] = a2;
  v6 = *(v5 + 88);
  v7 = type metadata accessor for Binding();
  v8 = *(*(v6 - 8) + 32);
  v9 = a3 + *(v7 + 32);

  return v8(v9, a1, v6);
}

uint64_t View.environment<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  EnvironmentObjectKey.init()(a3);
  KeyPath = swift_getKeyPath();
  v9 = a1;
  View.environment<A>(_:_:)(KeyPath, &v9, a2, a4);
}

uint64_t sub_18D061C98@<X0>(uint64_t *a1@<X8>)
{
  result = specialized EnvironmentValues.subscript.getter();
  *a1 = result;
  return result;
}

__n128 sub_18D061D04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

SwiftUI::LocalizedStringKey __swiftcall LocalizedStringKey.init(stringLiteral:)(SwiftUI::LocalizedStringKey stringLiteral)
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  stringLiteral.arguments._rawValue = v1;
  stringLiteral.hasFormatting = v2;
  return stringLiteral;
}

uint64_t Text.init(_:tableName:bundle:comment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for LocalizedTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  return result;
}

uint64_t PreferencesInputs.makeIndirectOutputs()@<X0>(void *a1@<X8>)
{
  v20 = a1;
  v2 = *v1;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = 0;
  v3 = *(v2 + 16);
  if (v3)
  {
    v23 = *MEMORY[0x1E698D3F8];

    v4 = 0;
    v5 = (v2 + 40);
    v6 = v3;
    v21 = v2;
    v22 = v3;
    while (v4 < v6)
    {
      if (v3 == v4)
      {
        goto LABEL_15;
      }

      v7 = *(v5 - 1);
      v8 = *v5;
      if (AGGraphGetCurrentAttribute() == v23)
      {
        v9 = AGSubgraphGetCurrent();
        if (!v9)
        {
          goto LABEL_17;
        }

        v10 = v9;
        v11 = AGSubgraphGetGraph();
      }

      else
      {
        v11 = AGGraphGetAttributeGraph();
      }

      if (!AGGraphGetContext())
      {
        goto LABEL_16;
      }

      ++v4;

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v24 = &v20;
      v13 = *(AssociatedTypeWitness - 8);
      v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v16 = &v20 - v15;
      (*(v8 + 16))(v7, v8, v14);
      v25[0] = 6;
      GraphHost.intern<A>(_:for:id:)(v16, v7, v25, AssociatedTypeWitness);

      (*(v13 + 8))(v16, AssociatedTypeWitness);
      LODWORD(v16) = AGGraphCreateIndirectAttribute2();
      swift_beginAccess();
      PreferencesOutputs.appendPreference<A>(key:value:)(v7, v16, v7, v8);
      swift_endAccess();
      v3 = v22;
      v6 = *(v21 + 16);
      v5 += 2;
      if (v4 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

LABEL_13:

    result = swift_beginAccess();
    v18 = v27;
    v19 = v20;
    *v20 = v26;
    *(v19 + 2) = v18;
  }

  return result;
}

uint64_t PreferencesOutputs.appendPreference<A>(key:value:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
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
  v12 = v8 + 24 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a4;
  *(v12 + 48) = a2;
  *v4 = v8;
  return result;
}

unint64_t PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v7 = v6;
  v43 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 8);
  v38 = *a1;
  v12 = v38;
  v14 = PreferenceKeys._index(of:)(a5);
  v15 = *(v38 + 16);
  v35[2] = a4;
  if (v14 == v15)
  {
    goto LABEL_4;
  }

  if (v14 >= v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v38 + 16 * v14 + 32) == a5)
  {
    v25 = a3();
    v26 = PreferencesOutputs.subscript.getter(a5, a5, a6);
    v35[1] = v35;
    v27 = *MEMORY[0x1E698D3F8];
    if ((v26 & 0x100000000) == 0)
    {
      v27 = v26;
    }

    v36 = v25;
    v38 = __PAIR64__(v27, v25);
    MEMORY[0x1EEE9AC00](v26);
    v35[0] = 0;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v32 = type metadata accessor for PreferenceTransform();
    WitnessTable = swift_getWitnessTable();
    v28 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, partial apply for closure #1 in Attribute.init<A>(_:), &v30, v32, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
    LOBYTE(v38) = 0;
    PreferencesOutputs.subscript.setter(v37, a5, a5, a6);
    v16 = 0;
  }

  else
  {
LABEL_4:
    v36 = 0;
    v16 = 1;
  }

  result = (*(a6 + 40))(a5, a6);
  if ((result & 1) == 0)
  {
    return result;
  }

  v38 = v12;
  result = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
  v18 = *(v12 + 16);
  if (result == v18)
  {
    return result;
  }

  if (result >= v18)
  {
LABEL_19:
    __break(1u);
  }

  if (*(v12 + 16 * result + 32) == &type metadata for HostPreferencesKey)
  {
    v19 = v36;
    if (v16)
    {
      v19 = a3();
    }

    v20 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(*v7);
    v21 = *MEMORY[0x1E698D3F8];
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;
    }

    ++static HostPreferencesKey.nodeId;
    v38 = __PAIR64__(v13, v19);
    v39 = v21;
    v40 = 0;
    v41 = 0;
    v42 = static HostPreferencesKey.nodeId;
    MEMORY[0x1EEE9AC00](v20);
    v22 = type metadata accessor for HostPreferencesTransform();
    WitnessTable = v22;
    v34 = swift_getWitnessTable();
    type metadata accessor for Attribute<PreferenceValues>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v38, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_8, &AssociatedTypeWitness, v22, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
    LOBYTE(v38) = 0;
    return PreferencesOutputs.subscript.setter(v37, &type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
  }

  return result;
}

uint64_t type metadata completion function for _PreferenceWritingModifier()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id _ConditionalContent.Container.init(content:provider:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for _ConditionalContent.Container();
  v8 = *(a3 - 8);
  (*(v8 + 16))(&a4[*(v7 + 52)], a2, a3);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v10 = result;
    result = (*(v8 + 8))(a2, a3);
    *&a4[*(v7 + 56)] = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for _ConditionalContent.Container()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _ConditionalContent.Info()
{
  result = type metadata accessor for _ConditionalContent.Storage();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeWithCopy for _ConditionalContent.Container(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = v11;
  v12 = v11;
  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ConditionalContent<A, B>.Container<A1>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for _ConditionalContent<A, B>.Container<A1>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void destroy for _ConditionalContent.Container(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 4) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = *((*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t TupleTypeDescription.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TypeConformance();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = Array.init()();
  v51 = v13;
  result = AGTupleCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v45 = result;
    if (result)
    {
      v38 = a4;
      v16 = 0;
      v43 = (v9 + 16);
      v44 = 0x800000018DD790C0;
      v42 = (v9 + 8);
      *&v15 = 136446210;
      v39 = v15;
      v17 = v45;
      v40 = v11;
      v41 = a2;
      do
      {
        v18 = AGTupleElementType();
        static ProtocolDescriptor.conformance(of:)(v18, a2, a3, &v47);
        v19 = v47;
        if (v47)
        {
          v20 = v48;
          v47 = v16;
          v48 = v19;
          v49 = v20;
          type metadata accessor for Array();
          result = Array.append(_:)();
        }

        else
        {
          v47 = 0;
          v48 = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v47 = 0x65646E6920746120;
          v48 = 0xEA00000000002078;
          v50 = v16;
          v21 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v21);

          MEMORY[0x193ABEDD0](0x2065707974202CLL, 0xE700000000000000);
          v22 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v22);

          v23 = v47;
          v24 = v48;
          v47 = 0xD000000000000015;
          v48 = v44;
          MEMORY[0x193ABEDD0](v23, v24);

          v25 = v48;
          v46 = v47;
          if (one-time initialization token for unlocatedIssuesLog != -1)
          {
            swift_once();
          }

          v26 = __swift_project_value_buffer(v8, static Log.unlocatedIssuesLog);
          swift_beginAccess();
          (*v43)(v11, v26, v8);

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = v8;
            v30 = a3;
            v31 = swift_slowAlloc();
            v32 = TupleTypeMetadata2;
            v33 = a1;
            v34 = swift_slowAlloc();
            v47 = v34;
            *v31 = v39;
            *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v25, &v47);
            _os_log_impl(&dword_18D018000, v27, v28, "%{public}s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v34);
            v35 = v34;
            a1 = v33;
            TupleTypeMetadata2 = v32;
            MEMORY[0x193AC4820](v35, -1, -1);
            v36 = v31;
            a3 = v30;
            v8 = v29;
            v11 = v40;
            a2 = v41;
            MEMORY[0x193AC4820](v36, -1, -1);
          }

          (*v42)(v11, v8);

          v17 = v45;
        }

        ++v16;
      }

      while (v17 != v16);
      v13 = v51;
      a4 = v38;
    }

    *a4 = v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys()
{
  result = lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys;
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys;
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys;
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys;
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in PreferenceCombiner.init(attributes:)@<X0>(uint64_t *a1@<X8>)
{
  result = AGCreateWeakAttribute();
  *a1 = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of isDebuggerAttached()
{
  v9 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ContiguousArrayStorage<Int32>();
  bzero(v8, 0x288uLL);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDACA80;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  v7 = 648;
  v1 = sysctl((v0 + 32), 4u, v8, &v7, 0, 0);

  if (!v1)
  {
    return (v8[33] >> 3) & 1;
  }

  static os_log_type_t.error.getter();
  type metadata accessor for _ContiguousArrayStorage<CVarArg>();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDA6EB0;
  v3 = MEMORY[0x193ABE310]();
  v4 = MEMORY[0x1E69E7358];
  *(v2 + 56) = MEMORY[0x1E69E72F0];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  type metadata accessor for OS_os_log();
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  return 0;
}

uint64_t one-time initialization function for isDebuggerAttached()
{
  result = closure #1 in variable initialization expression of isDebuggerAttached();
  isDebuggerAttached = result & 1;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Int32>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Int32>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int32>);
    }
  }
}

uint64_t one-time initialization function for default()
{
  type metadata accessor for InternalAnimationBox<BezierAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<DefaultAnimation>, lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation);
  result = swift_allocObject();
  static Animation.default = result;
  return result;
}

{
  result = AGMakeUniqueID();
  static Spacing.Category.default = result;
  return result;
}

{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v0;
  }

  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  static ResolvedGradient.ColorSpace.default = v2;
  return result;
}

void type metadata accessor for InternalAnimationBox<BezierAnimation>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for InternalAnimationBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation()
{
  result = lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation;
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation;
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation;
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation;
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DefaultAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for AnimationBox()
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 104), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

uint64_t withAnimation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v10, a1);

  withTransaction<A>(_:_:)(v8, a2, a3, a4);
}

uint64_t withTransaction<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v5 = type metadata accessor for Error();
  return _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v9, partial apply for closure #1 in withTransaction<A>(_:_:), v7, &type metadata for Transaction, v5, a4, MEMORY[0x1E69E7288], &v8);
}

uint64_t closure #1 in withTransaction<A>(_:_:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  _threadTransactionData();
  v10 = one-time initialization token for v5;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v11)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  v12 = _setThreadTransactionData();
  a2(v12);
  _setThreadTransactionData();

  if (v7)
  {
    *a5 = v7;
  }

  return result;
}

Swift::Void __swiftcall ViewGraphGeometryObservers.removeAll()()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ViewGraphGeometryObservers.Observer();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
}

uint64_t ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  if (a2)
  {
    ViewGraphGeometryObservers.removeAll()();
  }

  (*(v8 + 16))(v11, a1, AssociatedTypeWitness, v9);
  type metadata accessor for ViewGraphGeometryObservers.Observer();
  swift_allocObject();
  v15 = ViewGraphGeometryObservers.Observer.init(callback:)(v14, a4);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();

  return Dictionary.subscript.setter();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t Bindable<A>.subscript.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  swift_unknownObjectRetain();

  return Binding.init<A>(_:keyPath:isolation:)(v5, a1, 0, 0, a2);
}

uint64_t ObjectLocation.get()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  ObjectLocation.checkIsolation()(a1, a2, a3);
  v11 = a1;
  swift_unknownObjectRetain();
  v8 = swift_readAtKeyPath();
  (*(*(a4 - 8) + 16))(a5);
  v8(v10, 0);
  return swift_unknownObjectRelease();
}

uint64_t ObjectLocation.checkIsolation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();

  if (a3)
  {
    if (v9 == a3)
    {
      result = pthread_main_np();
      if (!result)
      {
        v21 = a2;
        type metadata accessor for ReferenceWritableKeyPath();

        v11 = String.init<A>(describing:)();
        v13 = v12;
        if (one-time initialization token for runtimeIssuesLog != -1)
        {
          swift_once();
        }

        v14 = static Log.runtimeIssuesLog;
        Logger.init(_:)();

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v21 = v18;
          *v17 = 136315138;
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

          *(v17 + 4) = v19;
          _os_log_impl(&dword_18D018000, v15, v16, "%s is isolated to the main actor. Accessing it via Binding from a different actor will cause undefined behaviors, and potential data races; This warning will become a runtime crash in a future version of SwiftUI.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x193AC4820](v18, -1, -1);
          MEMORY[0x193AC4820](v17, -1, -1);
        }

        else
        {
        }

        return (*(v6 + 8))(v8, v5);
      }
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ObjectLocation<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Binding.init<A>(_:keyPath:isolation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v15 - v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  ObjectLocation.get()(a1, a2, a3, v10, v12);
  type metadata accessor for ObjectLocation();
  swift_getWitnessTable();
  type metadata accessor for LocationBox();
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v13 = LocationBox.__allocating_init(_:)(v15);
  Binding.init(value:location:)(v12, v13, a5);
  swift_unknownObjectRelease_n();

  return swift_unknownObjectRelease_n();
}

unint64_t lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor()
{
  result = lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor;
  if (!lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor;
  if (!lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor;
  if (!lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.OpacityColor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor();
  *(a1 + 8) = result;
  return result;
}

uint64_t AnchorBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

__n128 one-time initialization function for white(__n128 a1, uint64_t a2, __n128 **a3)
{
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  v4 = swift_allocObject();
  result = a1;
  v4[1] = a1;
  v4[2].n128_u32[0] = 2143289344;
  *a3 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider()
{
  result = lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider;
  if (!lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider;
  if (!lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider;
  if (!lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider();
  *(a1 + 8) = result;
  return result;
}

void one-time initialization function for thin()
{
  dword_1ED5240C4 = 0;
  static Material.thin = 1;
  byte_1ED5240C0 = 3;
}

uint64_t static Material.thin.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for thin != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.thin;
  v3 = dword_1ED5240C4;
  *a1 = static Material.thin;
  v4 = byte_1ED5240C0;
  *(a1 + 8) = byte_1ED5240C0;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

uint64_t Color.opacity(_:)(uint64_t a1, double a2)
{
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return v4;
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

uint64_t Transaction.disablesAnimations.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>);
    }
  }
}

uint64_t type metadata completion function for SubscriptionLifetime.Connection()
{
  result = type metadata accessor for CombineIdentifier();
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

uint64_t ObservedObjectPropertyBox.update(property:phase:)(uint64_t *a1)
{
  if (!pthread_main_np())
  {
    v3 = _typeName(_:qualified:)();
    v5 = v4;
    v6 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v7 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v5, &v15);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_18D018000, v7, v6, "Updating ObservedObject<%s> from background threads will cause undefined behavior; make sure to update it from the main thread.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193AC4820](v9, -1, -1);
      MEMORY[0x193AC4820](v8, -1, -1);
    }

    else
    {
    }
  }

  closure #1 in ObservedObjectPropertyBox.update(property:phase:)(a1, v1);
  v11 = AGGraphGetWeakValue() != 0;
  result = v11 & v12;
  v14 = v1[2];
  if (result == 1)
  {
    v1[2] = ++v14;
  }

  *a1 = v14;
  return result;
}

uint64_t closure #1 in ObservedObjectPropertyBox.update(property:phase:)(uint64_t a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v16 - v5;
  v7 = *(a1 + 8);
  v8 = one-time initialization token for v6;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v9)
  {
LABEL_7:
    v10 = AssociatedTypeWitness != type metadata accessor for ObservableObjectPublisher();
    v11 = a2[3];
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v10 = 0;
  v11 = a2[3];
  if (!v11)
  {
LABEL_13:
    v18 = *a2;

    dispatch thunk of ObservableObject.objectWillChange.getter();
    swift_getAssociatedConformanceWitness();
    v13 = type metadata accessor for AttributeInvalidatingSubscriber();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    SubscriptionLifetime.subscribe<A>(subscriber:to:)(&v18, v6, v13, WitnessTable);

    (*(v17 + 8))(v6, AssociatedTypeWitness);

    goto LABEL_14;
  }

LABEL_11:
  if (v7 != v11)
  {
    goto LABEL_13;
  }

  v12 = SubscriptionLifetime.isUninitialized.getter();

  if (v12 || v10)
  {
    goto LABEL_13;
  }

LABEL_14:
  a2[3] = v7;
  return swift_unknownObjectRelease();
}

_BYTE *initializeWithCopy for SubscriptionLifetime.StateType(_BYTE *__dst, _DWORD *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + v9);
  if (v10 >= 2 && v9 != 0)
  {
    v10 = *a2 + 2;
  }

  if (v10 == 1)
  {
    (*(v4 + 16))(__dst);
    v16 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = (&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v16;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v19 + 24);
    *(v18 + 24) = v20;
    *(v18 + 32) = *(v19 + 32);
    v21 = **(v20 - 8);

    v21(v18, v19, v20);
    *((v18 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v10)
  {
    (*(v4 + 16))(__dst);
    v13 = (&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    __dst[v9] = 0;

    return __dst;
  }

  return memcpy(__dst, a2, v9 | 1);
}

void *sub_18D0651EC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  return a1;
}

_DWORD *destroy for SubscriptionLifetime.StateType(_DWORD *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  v4 = (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 8;
  v6 = ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = *(result + v6);
  if (v8 >= 2 && v7 != 0)
  {
    v8 = *result + 2;
  }

  if (v8 == 1)
  {
    v10 = result;
    (*(v2 + 8))();

    return __swift_destroy_boxed_opaque_existential_1((((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  else if (!v8)
  {
    (*(v2 + 8))();
  }

  return result;
}

uint64_t SubscriptionLifetime.subscribe<A>(subscriber:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v68 = a1;
  v69 = a2;
  v76 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  v65 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 88);
  v74[0] = *(v5 + 80);
  v8 = v74[0];
  v74[1] = v10;
  v60 = v10;
  v74[2] = v9;
  v75 = v11;
  v59 = v11;
  v12 = type metadata accessor for SubscriptionLifetime.Connection();
  v62 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v53 - v13;
  v14 = type metadata accessor for SubscriptionLifetime.StateType();
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v53 - v21;
  v22 = v5;
  v24 = v23;
  v25 = *(v22 + 104);
  swift_beginAccess();
  v26 = *(v24 + 16);
  v56 = v25;
  v26(v18, &v4[v25], v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = v12;
  v64 = v9;
  v58 = v24;
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v65;
    v29 = MEMORY[0x1E69E6530];
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v53 - 48, "to subscriber subscription subscriptionID ");
    v70 = v8;
    v71 = type metadata accessor for AnyCancellable();
    v72 = type metadata accessor for Subscription();
    v73 = v29;
    v30 = *(swift_getTupleTypeMetadata() + 64);
    v31 = v66;
    (*(v19 + 32))(v66, v18, v8);
    v32 = outlined init with take of AnyTrackedValue(&v18[v30], v74);
    MEMORY[0x1EEE9AC00](v32);
    v33 = v69;
    *(&v53 - 4) = v8;
    *(&v53 - 3) = v33;
    *(&v53 - 4) = 3;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v53 - 6), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v34);
    v35 = v19;
    if (v70 == 1)
    {
      (*(v19 + 8))(v66, v8);

      return __swift_destroy_boxed_opaque_existential_1(v74);
    }

    v54 = v14;
    v38 = v4;
    v39 = v28;
    AnyCancellable.cancel()();
    __swift_project_boxed_opaque_existential_1(v74, v75);
    dispatch thunk of Cancellable.cancel()();

    v55 = v35;
    v40 = v8;
    (*(v35 + 8))(v66, v8);
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {
    v55 = v19;
    v37 = v14;
    v38 = v4;
    v39 = v65;
    v40 = v8;
    v41 = *(v24 + 8);
    v54 = v37;
    v41(v18);
  }

  v42 = *(v38 + 2);
  *(v38 + 2) = v42 + 1;
  v66 = *(v39 + 16);
  v43 = v60;
  (v66)(v7, v68, v60);

  SubscriptionLifetime.Connection.init(parent:downstream:subscriptionID:)(v7, v42, v43, v67);
  type metadata accessor for AnyCancellable();
  v44 = v40;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v46 = *(TupleTypeMetadata3 + 48);
  v47 = *(TupleTypeMetadata3 + 64);
  v48 = v57;
  (*(v55 + 16))(v57, v69, v44);
  (v66)(v7, v68, v43);
  *&v48[v46] = AnyCancellable.__allocating_init<A>(_:)();
  *&v48[v47] = v42;
  v49 = v54;
  swift_storeEnumTagMultiPayload();
  v50 = v56;
  swift_beginAccess();
  (*(v58 + 40))(&v38[v50], v48, v49);
  swift_endAccess();
  v51 = v63;
  swift_getWitnessTable();
  v52 = v67;
  Publisher.subscribe<A>(_:)();
  return (*(v62 + 8))(v52, v51);
}

uint64_t SubscriptionLifetime.Connection.init(parent:downstream:subscriptionID:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  CombineIdentifier.init()();
  v8 = type metadata accessor for SubscriptionLifetime.Connection();
  swift_weakInit();
  swift_weakAssign();

  result = (*(*(a3 - 8) + 32))(a4 + *(v8 + 56), a1, a3);
  *(a4 + *(v8 + 60)) = a2;
  return result;
}

unsigned __int8 *assignWithTake for SubscriptionLifetime.StateType(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = __dst[v11];
  if (v12 >= 2 && v11 != 0)
  {
    v12 = *__dst + 2;
  }

  if (v12 == 1)
  {
    (*(v6 + 8))(__dst, v5);

    __swift_destroy_boxed_opaque_existential_1(((&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  else if (!v12)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = __src[v11];
  if (v11)
  {
    v15 = v14 >= 2;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v14 = *__src + 2;
  }

  if (v14 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    v18 = (&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v19 = (&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v21;
    v22 = *(v21 + 16);
    *(v20 + 32) = *(v21 + 32);
    *v20 = v23;
    *(v20 + 16) = v22;
    *((v20 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
    __dst[v11] = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 32))(__dst, __src, v5);
    v16 = (&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v17 = (&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    __dst[v11] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v11 | 1);
}

uint64_t initializeWithCopy for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = (*(v7 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_weakCopyInit();
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v12 + 8 + v9) & ~v12;
  v14 = (v12 + 8 + v8) & ~v12;
  (*(v10 + 16))(v13, v14);
  *((*(v11 + 48) + 7 + v13) & 0xFFFFFFFFFFFFFFF8) = *((*(v11 + 48) + 7 + v14) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = (*(v7 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_weakTakeInit();
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v12 + 8 + v9) & ~v12;
  v14 = (v12 + 8 + v8) & ~v12;
  (*(v10 + 32))(v13, v14);
  *((*(v11 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8) = *((*(v11 + 32) + 7 + v14) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t SubscriptionLifetime.Connection.receive(subscription:)(void *a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (SubscriptionLifetime.shouldAcceptSubscription(_:for:)(a1, *(v2 + *(a2 + 60))))
    {
      dispatch thunk of Subscriber.receive(subscription:)();
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      static Subscribers.Demand.unlimited.getter();
      dispatch thunk of Subscription.request(_:)();
    }
  }

  return result;
}

uint64_t SubscriptionLifetime.shouldAcceptSubscription(_:for:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = type metadata accessor for SubscriptionLifetime.StateType();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(v5 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v13, v2 + v17, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v8 + 8))(v13, v7);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    v30 = v10;
    v28 = type metadata accessor for AnyCancellable();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v19 = *&v13[*(TupleTypeMetadata3 + 64)];
    v20 = *(v33 + 32);
    v31 = *&v13[*(TupleTypeMetadata3 + 48)];
    v32 = v16;
    v29 = v20;
    v21 = v20();
    if (v19 == a2)
    {
      MEMORY[0x1EEE9AC00](v21);
      strcpy(&v27 - 48, "to subscriber subscription subscriptionID ");
      v34 = v6;
      v35 = v28;
      v36 = type metadata accessor for Subscription();
      v37 = MEMORY[0x1E69E6530];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v23 = TupleTypeMetadata[12];
      v33 = a2;
      v24 = TupleTypeMetadata[16];
      v28 = TupleTypeMetadata[20];
      v25 = v30;
      (v29)(v30, v32, v6);
      *&v25[v23] = v31;
      outlined init with copy of AnyTrackedValue(a1, &v25[v24]);
      *&v25[v28] = v33;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v8 + 40))(v2 + v17, v25, v7);
      swift_endAccess();
      return 1;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Cancellable.cancel()();

    (*(v33 + 8))(v32, v6);
  }

  return 0;
}

unint64_t type metadata accessor for Subscription()
{
  result = lazy cache variable for type metadata for Subscription;
  if (!lazy cache variable for type metadata for Subscription)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Subscription);
  }

  return result;
}

uint64_t destroy for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombineIdentifier();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = (a1 + *(v5 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_weakDestroy();
  v7 = *(*(a2 + 24) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);

  return v8(v9);
}

uint64_t AttributeInvalidatingSubscriber.receive(subscription:)(void *a1)
{
  swift_beginAccess();
  v3 = type metadata accessor for AttributeInvalidatingSubscriber.StateType();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v7, v1 + 32, v3);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Cancellable.cancel()();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    outlined init with copy of AnyTrackedValue(a1, v6);
    swift_beginAccess();
    (*(v4 + 40))(v1 + 32, v6, v3);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    static Subscribers.Demand.unlimited.getter();
    return dispatch thunk of Subscription.request(_:)();
  }
}

__n128 initializeWithCopy for AttributeInvalidatingSubscriber.StateType(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  return result;
}

__n128 assignWithTake for AttributeInvalidatingSubscriber.StateType(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t specialized static ObservedObject._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = specialized static ObservedObject.makeBoxAndSignal<A>(in:container:fieldOffset:)(a1, a2);
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    type metadata accessor for ObservedObject();
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v8, a4, a5, a2);
  }

  return result;
}

void *initializeWithCopy for ObservedObjectPropertyBox(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  swift_unknownObjectRetain();
  return a1;
}

uint64_t specialized static ObservedObject.makeBoxAndSignal<A>(in:container:fieldOffset:)(uint64_t a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = Attribute.init<A>(body:value:flags:update:)();
  v4 = specialized static GraphHost.currentHost.getter();
  v5 = AGCreateWeakAttribute();
  v6 = specialized ObservedObjectPropertyBox.init(host:invalidation:)(v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v15[0] = v6;
  v15[1] = v8;
  v15[2] = v10;
  v15[3] = v12;
  v13 = type metadata accessor for ObservedObjectPropertyBox();
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v15, a2, v13);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t specialized ObservedObjectPropertyBox.init(host:invalidation:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SubscriptionLifetime();
  SubscriptionLifetime.__allocating_init()();
  type metadata accessor for AttributeInvalidatingSubscriber();
  return specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(a1, a2);
}

uint64_t SubscriptionLifetime.__allocating_init()()
{
  v0 = swift_allocObject();
  SubscriptionLifetime.init()();
  return v0;
}

uint64_t SubscriptionLifetime.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for SubscriptionLifetime.StateType();
  swift_storeEnumTagMultiPayload();
  return v0;
}

uint64_t specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  swift_weakAssign();
  *(v3 + 24) = a2;
  return v3;
}

uint64_t specialized static StateObject._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v13 = 0;
  v8 = specialized static ObservedObject.makeBoxAndSignal<A>(in:container:fieldOffset:)(&v12, 0);
  v11[0] = v12;
  v11[1] = v13;
  v9 = type metadata accessor for StateObject.Box();
  v11[2] = 0;
  v11[3] = 0;
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v11, a2, v9);
  swift_unknownObjectRelease();
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    type metadata accessor for StateObject();
    LODWORD(v11[0]) = 6;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v8, a4, a5, a2);
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItem.SelectionContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t type metadata completion function for SubscriptionLifetime()
{
  result = type metadata accessor for SubscriptionLifetime.StateType();
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

uint64_t type metadata completion function for SubscriptionLifetime.StateType()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v4 = &v3;
    swift_getTupleTypeLayout();
    v5 = &v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

Swift::Void __swiftcall EnvironmentValues.configureForRoot()()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  static Locale.current.getter();
  v11 = *(v2 + 16);
  v11(v7, v10, v1);
  v12 = *v0;
  v11(v4, v7, v1);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v0, v4);

  v13 = *(v2 + 8);
  v13(v4, v1);
  if (v0[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v12, *v0);
  }

  v13(v7, v1);
  v13(v10, v1);
}

uint64_t ViewGraphGeometryObservers.stopObserving(proposal:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for ViewGraphGeometryObservers.Observer();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
}

void one-time initialization function for zero()
{
  static _ProposedSize.zero = 0;
  byte_1EAB0C548 = 0;
  qword_1EAB0C550 = 0;
  byte_1EAB0C558 = 0;
}

void one-time initialization function for infinity()
{
  static _ProposedSize.infinity = 0x7FF0000000000000;
  byte_1EAB10040 = 0;
  qword_1EAB10048 = 0x7FF0000000000000;
  byte_1EAB10050 = 0;
}

uint64_t initializeWithCopy for ContentPathObservers.Observer(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for Binding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

uint64_t View.transformEnvironment<A>(_:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v5 = type metadata accessor for _EnvironmentKeyTransformModifier();
  return View.modifier<A>(_:)(v7, a4, v5);
}

uint64_t CachedEnvironment.attribute<A>(id:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(v3 + 1);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == v4)
    {
      return *(v8 - 2);
    }
  }

  v22 = *v3;
  v23 = a2;
  v24 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v18[2] = v11;
  v19 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v22, partial apply for closure #1 in Attribute.init<A>(_:), v18, v19, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  v10 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v15 = *(v5 + 2);
  v14 = *(v5 + 3);
  if (v15 >= v14 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
  }

  *(v5 + 2) = v15 + 1;
  v16 = &v5[16 * v15];
  *(v16 + 4) = v4;
  *(v16 + 10) = v10;
  *(v3 + 1) = v5;
  return v10;
}

void *EnvironmentValues.isLuminanceReduced.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}