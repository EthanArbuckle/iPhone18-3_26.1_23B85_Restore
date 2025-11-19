uint64_t *MaskDisplayList.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1[4];
  v4 = v1[5];
  v26 = *(v1 + 24);
  v6 = *MEMORY[0x1E698D3F8];
  v7 = MEMORY[0x1E69E7CC0];
  if (v4 == *MEMORY[0x1E698D3F8])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *Value;
    v8 = *(Value + 8);
    v9 = *(Value + 12);

    if (!*(v10 + 16))
    {
      goto LABEL_10;
    }
  }

  v25 = v3;
  if (v5 == v6)
  {
    v12 = 0;
    v13 = 0x40000000;
    v14 = v7;
    if (*(v7 + 16))
    {
LABEL_7:
      type metadata accessor for CGPoint(0);
      v15 = AGGraphGetValue();
      v16 = *v15;
      v17 = v15[1];
      v18 = AGGraphGetValue();
      v19 = v16 - *v18;
      v20 = v17 - v18[1];
      v21 = swift_allocObject();
      *(v21 + 16) = v10;
      *(v21 + 24) = v8;
      *(v21 + 28) = v9;
      *(v21 + 32) = 0;
      type metadata accessor for CGSize(0);
      *&v29 = v19;
      *(&v29 + 1) = v20;
      v22 = *AGGraphGetValue();
      ++static DisplayList.Version.lastValue;
      v30 = v22;
      *v32 = 0x700000000;
      *&v32[8] = v14;
      *&v32[16] = v13 | v12;
      *&v32[24] = v25;
      *&v31 = static DisplayList.Version.lastValue;
      *(&v31 + 1) = v21;
      LOBYTE(v35[0]) = v26;
      DisplayList.Item.canonicalize(options:)(v35);
      v33[2] = v31;
      v34[0] = *v32;
      *(v34 + 12) = *&v32[12];
      v33[0] = v29;
      v33[1] = v30;
      v27[2] = v31;
      v28[0] = *v32;
      *(v28 + 12) = *&v32[12];
      v27[0] = v29;
      v27[1] = v30;
      outlined init with copy of DisplayList.Item(v33, v35);
      DisplayList.init(_:)(v27, a1);
      v35[2] = v31;
      v36[0] = *v32;
      *(v36 + 12) = *&v32[12];
      v35[0] = v29;
      v35[1] = v30;
      return outlined destroy of DisplayList.Item(v35);
    }
  }

  else
  {
    v24 = AGGraphGetValue();
    v14 = *v24;
    v12 = *(v24 + 12) << 32;
    v13 = *(v24 + 8) | 0x40000000;

    if (*(v14 + 16))
    {
      goto LABEL_7;
    }
  }

LABEL_10:

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return result;
}

uint64_t sub_18D281824()
{

  return swift_deallocObject();
}

uint64_t assignWithTake for _AnyAnimatableData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

Swift::Void __swiftcall EnvironmentalViewChild.updateValue()()
{
  v2 = v0;
  v110 = *MEMORY[0x1E69E9840];
  v95 = type metadata accessor for OSSignpostID();
  v76 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v66 - v5;
  v6 = *(v2 + 16);
  v77 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v66 - v9;
  v79 = type metadata accessor for UncheckedSendable();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v86 = &v66 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v85 = v17;
  v18 = *(v17 + 48);
  v88 = *(v1 + 8);
  Value = AGGraphGetValue();
  v21 = v20;
  v22 = *(*(v6 - 8) + 16);
  v87 = v6;
  v22(v16, Value, v6);
  v83 = v16;
  v16[v18] = v21 & 1;
  v23 = AGGraphGetValue();
  v26 = *v23;
  v25 = v23[1];
  if (v21)
  {
  }

  else
  {
    v27 = v24;

    if ((v27 & 1) == 0 || (v28 = , v29 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v28), , (v29 & 1) == 0))
    {
      if (AGGraphGetOutputValue())
      {
        (*(v84 + 8))(v83, v85);

        return;
      }
    }
  }

  v75 = v25;
  PropertyList.Tracker.reset()();
  if (v26)
  {
    v30 = *(v26 + 64);
  }

  else
  {
    v30 = 0;
  }

  v31 = v81;
  v32 = *(v88 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v32 + 16));
  *(v32 + 24) = v30;
  os_unfair_lock_unlock((v32 + 16));

  v80 = v26;

  (*(v84 + 16))(v13, v83, v85);
  UncheckedSendable.init(_:)(v13, v87, v86);
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v33 = static Signpost.bodyInvoke;
    v34 = word_1ED539040;
    v106 = static Signpost.bodyInvoke;
    v107 = word_1ED539040;
    v74 = HIBYTE(word_1ED539040);
    v108 = byte_1ED539042;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v45 = v86;
      v46 = closure #1 in EnvironmentalViewChild.updateValue()(v80, v88, v87, v77, v31);
      goto LABEL_48;
    }

    v72 = v34;
    v70 = *(&v33 + 1);
    v73 = v33;
    v71 = v8;
    static OSSignpostID.exclusive.getter();
    v35 = static os_signpost_type_t.begin.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_18DDAB4C0;
    v37 = AGTypeID.description.getter();
    v39 = v38;
    v40 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v41 = lazy protocol witness table accessor for type String and conformance String();
    *(v36 + 64) = v41;
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    v42 = specialized static Tracing.libraryName(defining:)();
    *(v36 + 96) = v40;
    *(v36 + 104) = v41;
    *(v36 + 72) = v42;
    *(v36 + 80) = v43;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v44 = v73;
    v69 = _signpostLog;
    if (v74)
    {
      break;
    }

    v67 = AssociatedTypeWitness;
    v68 = v2;
    if (v73 == 20)
    {
      v47 = 3;
    }

    else
    {
      v47 = 4;
    }

    AssociatedTypeWitness = bswap32(v73) | (4 * WORD1(v73));
    v2 = v35;
    v48 = v76 + 16;
    v89 = *(v76 + 16);
    v49 = v89(v96, v82, v95);
    v31 = 0;
    LOBYTE(v100) = 1;
    v98 = v47;
    v93 = 16 * v47;
    v90 = v48;
    v94 = (v48 - 8);
    v92 = v36 + 32;
    v91 = v44;
LABEL_21:
    v97 = &v66;
    MEMORY[0x1EEE9AC00](v49);
    v8 = &v66 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = v8 + 8;
    v52 = v98;
    v53 = v8 + 8;
    do
    {
      *(v53 - 1) = 0;
      *v53 = 0;
      v53 += 16;
      --v52;
    }

    while (v52);
    v54 = v92 + 40 * v31;
    v55 = v98;
    while (1)
    {
      v56 = *(v36 + 16);
      if (v31 == v56)
      {
        LOBYTE(v100) = 0;
LABEL_29:
        v59 = v91;
        if (v91 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v8[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v8[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v8[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v59 != 20 && v8[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v60 = v95;
        v61 = *v94;
        v62 = v96;
        (*v94)(v96, v95);
        v63 = __swift_project_value_buffer(v60, static OSSignpostID.continuation);
        v49 = v89(v62, v63, v60);
        if ((v100 & 1) == 0)
        {
          v61(v96, v95);

          v2 = v68;
          AssociatedTypeWitness = v67;
          v31 = v81;
          goto LABEL_44;
        }

        goto LABEL_21;
      }

      if (v31 >= v56)
      {
        break;
      }

      ++v31;
      outlined init with copy of AnyTrackedValue(v54, &v106);
      v57 = v109;
      __swift_project_boxed_opaque_existential_1(&v106, v109);
      *(v51 - 1) = CVarArg.kdebugValue(_:)(AssociatedTypeWitness | v2, v57);
      *v51 = v58 & 1;
      v51 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v106);
      v54 += 40;
      if (!--v55)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  v105 = v35;
  v103 = _signpostLog;
  v104 = &dword_18D018000;
  *&v106 = v73;
  *(&v106 + 1) = v70;
  LOBYTE(v107) = v72;
  v100 = "%{public}@.body [in %{public}@]";
  v101 = 31;
  v102 = 2;
  v99 = v36;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

LABEL_44:
  closure #1 in EnvironmentalViewChild.updateValue()(v80, v88, v87, v77, v31);
  static os_signpost_type_t.end.getter();
  v8 = v71;
  v64 = v82;
  if (v74)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    v64 = v82;
    kdebug_trace();
  }

  v46 = (*(v76 + 8))(v64, v95);
  v45 = v86;
LABEL_48:
  MEMORY[0x1EEE9AC00](v46);
  *(&v66 - 2) = v2;
  *(&v66 - 1) = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31, partial apply for closure #1 in StatefulRule.value.setter, (&v66 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v65);

  (*(v8 + 1))(v31, AssociatedTypeWitness);
  (*(v84 + 8))(v83, v85);
  (*(v78 + 8))(v45, v79);
}

uint64_t closure #1 in EnvironmentalViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for UncheckedSendable();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15[-v12];
  closure #1 in closure #1 in EnvironmentalViewChild.updateValue()(a1, a2, a3, a4, &v15[-v12]);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a5, v13, AssociatedTypeWitness);
}

uint64_t closure #1 in closure #1 in EnvironmentalViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  v15[0] = a1;
  v15[1] = a2;
  v13 = *(a4 + 40);

  v13(v15, a3, a4);

  return UncheckedSendable.init(_:)(v12, AssociatedTypeWitness, a5);
}

uint64_t EnvironmentReader.body(environment:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return v2(&v4);
}

uint64_t *specialized GeometryEffectDisplayList.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = BYTE4(a2);
  v6 = MEMORY[0x1E69E7CC0];
  if (*MEMORY[0x1E698D3F8] != a2)
  {
    Value = AGGraphGetValue();
    v9 = *Value;
    v7 = *(Value + 12) << 32;
    v8 = *(Value + 8) | 0x40000000;

    if (*(v9 + 16))
    {
      goto LABEL_3;
    }

LABEL_8:

    *a3 = v6;
    *(a3 + 8) = 0;
    *(a3 + 12) = 0;
    return result;
  }

  v7 = 0;
  v8 = 0x40000000;
  v9 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_8;
  }

LABEL_3:
  type metadata accessor for CGPoint(0);
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = AGGraphGetValue();
  v14 = v11 - *v13;
  v15 = v12 - v13[1];
  v16 = AGGraphGetValue();
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  type metadata accessor for CGSize(0);
  v20 = AGGraphGetValue();
  v21 = *v20;
  v22 = v20[1];
  v23 = AGGraphGetValue();
  v24 = v18 * v21;
  v25 = v19 * v22;
  if (*v23)
  {
    v17 = (v17 * -128.0 + 0.0) * 0.0078125;
    v26 = v21 - v24;
  }

  else
  {
    v26 = v24;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  *(v27 + 24) = v26;
  *(v27 + 32) = v25;
  *(v27 + 88) = 2;

  *&v33 = v14;
  *(&v33 + 1) = v15;
  v28 = *AGGraphGetValue();
  ++static DisplayList.Version.lastValue;
  v34 = v28;
  *v36 = 0x900000000;
  *&v36[8] = v9;
  *&v36[16] = v8 | v7;
  *&v36[24] = a1;
  *&v35 = static DisplayList.Version.lastValue;
  *(&v35 + 1) = v27;
  LOBYTE(v39[0]) = v3;
  DisplayList.Item.canonicalize(options:)(v39);
  v37[2] = v35;
  v38[0] = *v36;
  *(v38 + 12) = *&v36[12];
  v37[0] = v33;
  v37[1] = v34;
  v31[2] = v35;
  v32[0] = *v36;
  *(v32 + 12) = *&v36[12];
  v31[0] = v33;
  v31[1] = v34;
  outlined init with copy of DisplayList.Item(v37, v39);
  DisplayList.init(_:)(v31, a3);

  v39[2] = v35;
  v40[0] = *v36;
  *(v40 + 12) = *&v36[12];
  v39[0] = v33;
  v39[1] = v34;
  return outlined destroy of DisplayList.Item(v39);
}

void DisplayList.Item.backdropFilter(size:)(_OWORD *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v58 = *v3;
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v10 = *(v3 + 56);
  v9 = *(v3 + 64);
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.width = a2;
  v60.size.height = a3;
  if (CGRectEqualToRect(v58, v60) && (v9 & 0xC0000000) == 0x40000000 && (v8 & 0xFF00000000) == 0xA00000000)
  {
    v17 = v7[6];
    v53 = v7[5];
    v54 = v17;
    *v55 = v7[7];
    *&v55[12] = *(v7 + 124);
    v18 = v7[2];
    v49 = v7[1];
    v50 = v18;
    v19 = v7[4];
    v51 = v7[3];
    v52 = v19;
    v20 = v7[6];
    v46 = v7[5];
    v47 = v20;
    v48[0] = v7[7];
    *(v48 + 12) = *(v7 + 124);
    v21 = v7[2];
    v42 = v7[1];
    v43 = v21;
    v22 = v7[4];
    v44 = v7[3];
    v45 = v22;
    outlined init with copy of GraphicsFilter(&v49, &v35);
    specialized _ColorMatrix.init(_:premultiplied:)(&v42, 0, v56);
    if ((v57 & 1) == 0)
    {
      if (*(v10 + 2) == 1)
      {
        v23 = v10[4];
        v24 = v10[5];
        v25 = v10[6];
        v26 = v10[7];
        v28 = *(v10 + 9);
        v27 = *(v10 + 10);
        v30 = *(v10 + 11);
        v29 = *(v10 + 12);
        outlined copy of DisplayList.Item.Value(v28, v27, v30, v29);
        v61.origin.x = 0.0;
        v61.origin.y = 0.0;
        v59.origin.x = v23;
        v59.origin.y = v24;
        v59.size.width = v25;
        v59.size.height = v26;
        v61.size.width = a2;
        v61.size.height = a3;
        if (!CGRectEqualToRect(v59, v61) || (v29 & 0xC0000000) != 0 || v28 >> 60)
        {
          outlined consume of DisplayList.Item.Value(v28, v27, v30, v29);
        }

        else
        {
          v31 = *(v28 + 32);
          outlined consume of DisplayList.Item.Value(v28, v27, v30, v29);
          if (v31 == 0.0)
          {
            v37 = v56[2];
            v38 = v56[3];
            v39 = v56[4];
            v35 = v56[0];
            v36 = v56[1];
            LODWORD(v40) = 2139095040;
            BYTE4(v40) = 0;
            _s7SwiftUI14GraphicsFilterOWOi14_(&v35);
            v46 = v39;
            v47 = v40;
            v48[0] = v41[0];
            *(v48 + 12) = *(v41 + 12);
            v42 = v35;
            v43 = v36;
            v44 = v37;
            v45 = v38;
            _ViewInputs.base.modify(&v42, v32);
LABEL_19:
            v33 = v47;
            a1[4] = v46;
            a1[5] = v33;
            a1[6] = v48[0];
            *(a1 + 108) = *(v48 + 12);
            v34 = v43;
            *a1 = v42;
            a1[1] = v34;
            v15 = v44;
            v16 = v45;
            goto LABEL_9;
          }
        }
      }

      _s7SwiftUI14GraphicsFilterOSgWOi0_(&v42);
      goto LABEL_19;
    }
  }

  _s7SwiftUI14GraphicsFilterOSgWOi0_(&v49);
  v13 = v54;
  a1[4] = v53;
  a1[5] = v13;
  a1[6] = *v55;
  *(a1 + 108) = *&v55[12];
  v14 = v50;
  *a1 = v49;
  a1[1] = v14;
  v15 = v51;
  v16 = v52;
LABEL_9:
  a1[2] = v15;
  a1[3] = v16;
}

uint64_t outlined init with copy of (Path, FillStyle)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (Path, FillStyle)?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (Path, FillStyle)?()
{
  if (!lazy cache variable for type metadata for (Path, FillStyle)?)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (Path, FillStyle));
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (Path, FillStyle)?);
    }
  }
}

uint64_t *$defer #1 () in DisplayList.Index.skip(item:)(uint64_t *result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(result + 16);
  if ((v4 & 0xC) != 0)
  {
    v5 = *result;
    if ((result[2] & 4) != 0)
    {
      *result = result[1];
    }

    if ((v4 & 8) != 0)
    {
      result[1] = v5;
    }
  }

  if (v4)
  {
    *result = a2;
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
LABEL_8:
    *(result + 16) = a4;
    return result;
  }

  result[1] = a3;
  *(result + 16) = a4;
  return result;
}

void DisplayList.ViewUpdater.Model.State.adjust(for:)(_OWORD *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(v1 + 96);
  if (v4 || *(*(v1 + 88) + 16))
  {
    *&__dst.a = *a1;
    *&__dst.c = v2;
    *&__dst.tx = v3;
    v38.width = 1.0;
    v38.height = 1.0;
    width = CGSizeApplyAffineTransform(v38, &__dst).width;
    if (fabs(width + -1.0) > 0.001)
    {
      v32 = 1.0 / width;
      if (v4)
      {
        swift_beginAccess();
        v6 = v4[2].f64[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_beginAccess();
          type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for MutableBox<ResolvedShadowStyle>, &type metadata for ResolvedShadowStyle, type metadata accessor for MutableBox);
          v7 = swift_allocObject();
          memmove((v7 + 16), &v4[1], 0x35uLL);

          v4 = v7;
        }

        swift_beginAccess();
        v4[2].f64[1] = v32 * v6;
        v31 = vbicq_s8(vmulq_n_f64(v4[3], v32), vceqzq_f64(v4[3]));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_beginAccess();
          type metadata accessor for MutableBox<ResolvedShadowStyle>(0, &lazy cache variable for type metadata for MutableBox<ResolvedShadowStyle>, &type metadata for ResolvedShadowStyle, type metadata accessor for MutableBox);
          v8 = swift_allocObject();
          memmove((v8 + 16), &v4[1], 0x35uLL);

          v4 = v8;
        }

        swift_beginAccess();
        v4[3] = v31;

        *(v1 + 96) = v4;
      }

      v9 = *(v1 + 88);
      v10 = *(v9 + 2);
      if (v10)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (*(v9 + 2))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          if (*(v9 + 2))
          {
LABEL_13:
            v11 = 0;
            v12 = v10 - 1;
            v13 = 32;
            do
            {
              v14 = &v9[v13];
              memmove(&__dst, &v9[v13], 0x7CuLL);
              if (!_s7SwiftUI14GraphicsFilterOWOg(&__dst))
              {
                v15 = _s7SwiftUI14GraphicsFilterOWOj6_(&__dst);
                v16 = *v15;
                v17 = *(v15 + 8);
                v18 = *(v15 + 9);
                v20 = *(v14 + 2);
                v19 = *(v14 + 3);
                v21 = *(v14 + 1);
                v33[0] = *v14;
                v33[1] = v21;
                v33[2] = v20;
                v33[3] = v19;
                v22 = *(v14 + 108);
                v23 = *(v14 + 6);
                v24 = *(v14 + 4);
                v33[5] = *(v14 + 5);
                v34[0] = v23;
                *(v34 + 12) = v22;
                v33[4] = v24;
                outlined destroy of GraphicsFilter(v33);
                *v35 = v32 * v16;
                BYTE8(v35[0]) = v17;
                BYTE9(v35[0]) = v18;
                _s7SwiftUI14GraphicsFilterOWOi_(v35);
                v25 = v35[0];
                v26 = v35[1];
                v27 = v35[3];
                *(v14 + 2) = v35[2];
                *(v14 + 3) = v27;
                *v14 = v25;
                *(v14 + 1) = v26;
                v28 = v35[4];
                v29 = v35[5];
                v30 = v36[0];
                *(v14 + 108) = *(v36 + 12);
                *(v14 + 5) = v29;
                *(v14 + 6) = v30;
                *(v14 + 4) = v28;
              }

              if (v12 == v11)
              {
                goto LABEL_19;
              }

              ++v11;
              v13 += 128;
            }

            while (v11 < *(v9 + 2));
          }
        }

        __break(1u);
LABEL_19:
        *(v1 + 88) = v9;
      }
    }
  }
}

void DisplayList.Item.opaqueContentPath()(int8x16_t *a1@<X8>)
{
  v2 = v1[4].i64[0];
  if ((v2 & 0xC0000000) != 0)
  {
    goto LABEL_2;
  }

  v6 = *v1;
  v7 = v1[2].u64[1];
  if (v7 >> 60 == 4)
  {
    v34 = *v1;
    v32 = a1;
    v19 = v1[3].i64[0];
    v18 = v1[3].i64[1];
    v20 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v22 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v39 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v38[0] = v20;
    v38[1] = v21;
    v29 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v30 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v24 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x41);
    v25 = *(**((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x38) + 104);
    v26 = outlined copy of DisplayList.Content.Value(v7);
    if (v25(v26))
    {
      if (*v34.i64 == 0.0 && *&v34.i64[1] == 0.0)
      {
        outlined init with copy of Path(v38, &v37);
      }

      else
      {
        CGAffineTransformMakeTranslation(&v37, *v34.i64, *&v34.i64[1]);
        Path.applying(_:)(&v37.a, v35);
        v29 = v35[1];
        v30 = v35[0];
        v22 = v36;
      }

      outlined consume of DisplayList.Item.Value(v7, v19, v18, v2);
      if (v23)
      {
        v27 = 256;
      }

      else
      {
        v27 = 0;
      }

      if (v24)
      {
        v28 = 0x10000;
      }

      else
      {
        v28 = 0;
      }

      v4 = v28 | v27 | v22;
      a1 = v32;
      v5 = v29;
      v3 = v30;
    }

    else
    {
      outlined consume of DisplayList.Item.Value(v7, v19, v18, v2);
      v3 = 0uLL;
      v4 = 512;
      v5 = 0uLL;
      a1 = v32;
    }
  }

  else
  {
    if (v7 >> 60 != 1 || *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x1C) != 1.0)
    {
LABEL_2:
      v3 = 0uLL;
      v4 = 512;
      v5 = 0uLL;
      goto LABEL_3;
    }

    v8 = v1[1];
    v31 = v8;
    v33 = *v1;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x24);
    v10 = v6.i64[1];
    v11 = v8.i64[1];
    v12 = a1;
    IsNull = CGRectIsNull(*v6.i8);
    a1 = v12;
    if (IsNull)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = vdupq_n_s64(v14);
    v5 = vbicq_s8(v31, v15);
    v3 = vbicq_s8(v33, v15);
    if (IsNull)
    {
      v16 = 6;
    }

    else
    {
      v16 = 0;
    }

    if (v9)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    v4 = v17 | v16;
  }

LABEL_3:
  *a1 = v3;
  a1[1] = v5;
  a1[2].i8[2] = BYTE2(v4);
  a1[2].i16[0] = v4;
}

uint64_t getEnumTagSinglePayload for _FixedSizeLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

uint64_t outlined destroy of (Path, FillStyle)?(uint64_t a1)
{
  type metadata accessor for (Path, FillStyle)?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DisplayList.ViewUpdater.Platform.updateProperties(_:state:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 104);
  v6 = *v2 & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 152))((v5 >> 1) & 1, *(a1 + 8));
  v7 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v7;
  v8 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v8;
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v10 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v10;
  v11 = *(&v15[0] + 1);
  outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v15, &v14);
  v12 = CoreViewLayer(v4 & 3, v11);
  [v12 setDisableUpdateMask_];

  result = outlined destroy of DisplayList.ViewUpdater.ViewInfo(v15);
  if (*(a1 + 64) != 17)
  {
    return (*(v6 + 160))((v5 >> 8) & 1, v11);
  }

  return result;
}

uint64_t Path.intersectRoundedRects(_:)(uint64_t a1)
{
  v2 = *v1;
  v4 = v1[1].i64[0];
  v3 = v1[1].i64[1];
  v5 = v1[2].u8[0];
  if (v5 == 2)
  {
    v11 = *(v2.i64[0] + 16);
    v7 = *(v2.i64[0] + 32);
    v8 = *(v2.i64[0] + 40);
    v9 = *(v2.i64[0] + 48);
    v10 = *(v2.i64[0] + 56);
    v6 = *(v2.i64[0] + 64);
  }

  else
  {
    if (v5 == 1)
    {
      v7 = *v1[1].i64;
      v8 = *&v1[1].i64[1];
      if (vabdd_f64(*&v4, *&v3) >= 0.001)
      {
        return 0;
      }

      v6 = 0;
      v9 = *&v4 * 0.5;
      v10 = *&v4 * 0.5;
    }

    else
    {
      if (v1[2].i8[0])
      {
        return 0;
      }

      v6 = 0;
      v7 = *v1[1].i64;
      v8 = *&v1[1].i64[1];
      v9 = 0.0;
      v10 = 0.0;
    }

    v11 = *v1;
  }

  v12 = *a1;
  v13 = *(a1 + 32);
  if (v13 == 2)
  {
    v15 = *(*&v12 + 32);
    v18 = *(*&v12 + 48);
    v16 = *(*&v12 + 64);
    v17 = *(*&v12 + 16);
    v14 = *(*&v12 + 24);
  }

  else
  {
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    if (v13 == 1)
    {
      if (fabs(vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0]) >= 0.001)
      {
        return 0;
      }

      v16 = 0;
      v17 = *a1;
      v18 = vdupq_lane_s64(COERCE__INT64(0.5 * v15.width), 0);
    }

    else
    {
      if (*(a1 + 32))
      {
        return 0;
      }

      v16 = 0;
      v17 = *a1;
      v18 = 0;
    }
  }

  v19.f64[0] = v9;
  v19.f64[1] = v10;
  v41 = v11;
  v43 = v15;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v19), vceqzq_f64(v18))))) & 1) == 0)
  {
    outlined consume of Path.Storage(v2.i64[0], v2.i64[1], v4, v3, v5);
    *&v50.origin.x = v41.i64[0];
    v52.size.width = v43.width;
    *&v50.origin.y = v41.i64[1];
    v52.size.height = v43.height;
    v50.size.width = v7;
    v50.size.height = v8;
    v52.origin.x = v17;
    v52.origin.y = v14;
    v51 = CGRectIntersection(v50, v52);
    y = v51.origin.y;
    x = v51.origin.x;
    height = v51.size.height;
    width = v51.size.width;
    IsNull = CGRectIsNull(v51);
    *v26.i64 = x;
    *&v26.i64[1] = y;
    *v27.i64 = width;
    *&v27.i64[1] = height;
    if (IsNull)
    {
      v24 = 6;
    }

    else
    {
      v24 = 0;
    }

    if (IsNull)
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    v29 = vdupq_n_s64(v28);
    *v1 = vbicq_s8(v26, v29);
    v1[1] = vbicq_s8(v27, v29);
    goto LABEL_56;
  }

  v20 = v9 == v18.width && v10 == v18.height;
  v37 = v10;
  v39 = v9;
  if (!v20 || ((v6 ^ v16) & 1) != 0)
  {
LABEL_49:
    v35 = *v1;
    v36 = v18;
    v46 = v11;
    v47.width = v7;
    v47.height = v8;
    v48.width = v9;
    v48.height = v10;
    v49 = v6;
    v45.rect.origin.x = v17;
    v45.rect.origin.y = v14;
    v45.rect.size = v15;
    v45.cornerSize = v18;
    v45.style = v16;
    if (FixedRoundedRect.contains(_:)(&v45))
    {
      outlined consume of Path.Storage(v35.i64[0], v35.i64[1], v4, v3, v5);
      v33 = swift_allocObject();
      *(v33 + 16) = v17;
      *(v33 + 24) = v14;
      *(v33 + 32) = v43;
      *(v33 + 48) = v36;
      *(v33 + 64) = v16;
LABEL_53:
      v1->i64[0] = v33;
      v1->i64[1] = 0;
      v24 = 2;
      v1[1].i64[0] = 0;
      v1[1].i64[1] = 0;
      goto LABEL_56;
    }

    *v46.i64 = v17;
    *&v46.i64[1] = v14;
    v47 = v43;
    v48 = v36;
    v49 = v16;
    v45.rect.origin = v41;
    v45.rect.size.width = v7;
    v45.rect.size.height = v8;
    v45.cornerSize.width = v39;
    v45.cornerSize.height = v37;
    v45.style = v6;
    if (FixedRoundedRect.contains(_:)(&v45))
    {
      outlined consume of Path.Storage(v35.i64[0], v35.i64[1], v4, v3, v5);
      v33 = swift_allocObject();
      *(v33 + 16) = v41;
      *(v33 + 32) = v7;
      *(v33 + 40) = v8;
      *(v33 + 48) = v39;
      *(v33 + 56) = v37;
      *(v33 + 64) = v6;
      goto LABEL_53;
    }

    return 0;
  }

  if (vabdd_f64(*v11.i64, v17) >= 0.001 || vabdd_f64(v7, v15.width) >= 0.001)
  {
    v30 = v11.i64[1];
    if (vabdd_f64(*&v11.i64[1], v14) < 0.001 && vabdd_f64(v8, v15.height) < 0.001)
    {
      outlined consume of Path.Storage(v2.i64[0], v2.i64[1], v4, v3, v5);
      if (*v41.i64 > v17)
      {
        v31 = *v41.i64;
      }

      else
      {
        v31 = v17;
      }

      v32 = *v41.i64 + v7;
      if (v43.width + v17 < *v41.i64 + v7)
      {
        v32 = v43.width + v17;
      }

      if (v31 < v32)
      {
        v7 = v32 - v31;
        v23 = swift_allocObject();
        *(v23 + 16) = v31;
        *(v23 + 24) = v30;
        goto LABEL_32;
      }

LABEL_55:
      *v1 = 0u;
      v1[1] = 0u;
      v24 = 6;
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  outlined consume of Path.Storage(v2.i64[0], v2.i64[1], v4, v3, v5);
  if (*&v41.i64[1] > v14)
  {
    v21 = *&v41.i64[1];
  }

  else
  {
    v21 = v14;
  }

  v22 = *&v41.i64[1] + v8;
  if (v14 + v43.height < *&v41.i64[1] + v8)
  {
    v22 = v14 + v43.height;
  }

  if (v21 >= v22)
  {
    goto LABEL_55;
  }

  v8 = v22 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v41.i64[0];
  *(v23 + 24) = v21;
LABEL_32:
  *(v23 + 32) = v7;
  *(v23 + 40) = v8;
  *(v23 + 48) = v39;
  *(v23 + 56) = v37;
  *(v23 + 64) = v6;
  v1->i64[0] = v23;
  v1->i64[1] = 0;
  v24 = 2;
  v1[1].i64[0] = 0;
  v1[1].i64[1] = 0;
LABEL_56:
  v1[2].i8[0] = v24;
  return 1;
}

uint64_t CombiningTransition.body(content:phase:)@<X0>(char a1@<W1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = type metadata accessor for PlaceholderContentView();
  v6 = a2[2];
  v7 = a2[4];
  type metadata accessor for ApplyTransitionModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  Transition.apply<A>(content:phase:)(v12, a1, v6, v5, v7, &protocol witness table for PlaceholderContentView<A>);
  v13 = a2[3];
  v14 = a2[5];
  v17[2] = &protocol witness table for PlaceholderContentView<A>;
  v17[3] = &protocol witness table for ApplyTransitionModifier<A>;
  WitnessTable = swift_getWitnessTable();
  Transition.apply<A>(content:phase:)(v11, a1, v13, v8, v14, WitnessTable);
  return (*(v9 + 8))(v11, v8);
}

__n128 protocol witness for Transition.body(content:phase:) in conformance ScaleTransition@<Q0>(char a1@<W1>, __n128 *a2@<X8>)
{
  v3 = *v2;
  if (a1 == 1)
  {
    v3 = 1.0;
  }

  a2->n128_f64[0] = v3;
  a2->n128_f64[1] = v3;
  result = *(v2 + 8);
  a2[1] = result;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI11DisplayListV11ViewUpdaterC5ModelO4ClipV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  for (i = v2 - 1; ; --i)
  {
    v6 = v3[3];
    *v38 = v3[2];
    *&v38[16] = v6;
    *&v38[32] = v3[4];
    *&v38[43] = *(v3 + 75);
    v7 = v3[1];
    v36 = *v3;
    v37 = v7;
    v8 = v4[3];
    *v40 = v4[2];
    *&v40[16] = v8;
    *&v40[32] = v4[4];
    *&v40[43] = *(v4 + 75);
    v9 = v4[1];
    v39[0] = *v4;
    v39[1] = v9;
    v10 = *&v36;
    v11 = *v39;
    if (v38[0] > 2u)
    {
      break;
    }

    if (!v38[0])
    {
      if (v40[0])
      {
        goto LABEL_59;
      }

LABEL_22:
      v13 = *(&v37 + 1);
      v14 = *&v37;
      v15 = *(&v36 + 1);
      v16 = *(v39 + 1);
      v17 = v9;
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
      v47.origin.x = v10;
      v47.origin.y = v15;
      v47.size.width = v14;
      v47.size.height = v13;
      v49.origin.x = v11;
      v49.origin.y = v16;
      v49.size = v17;
      if (!CGRectEqualToRect(v47, v49))
      {
        goto LABEL_58;
      }

      goto LABEL_47;
    }

    if (v38[0] == 1)
    {
      if (v40[0] != 1)
      {
        goto LABEL_59;
      }

      goto LABEL_22;
    }

    if (v40[0] != 2)
    {
      return 0;
    }

    v19 = *(v36 + 48);
    v18 = *(v36 + 56);
    v20 = *(v36 + 64);
    v33 = *(v36 + 32);
    v34 = *(v36 + 40);
    v22 = *(v36 + 16);
    v21 = *(v36 + 24);
    v31 = *(*&v39[0] + 24);
    v32 = *(*&v39[0] + 16);
    v23 = *(*&v39[0] + 32);
    v24 = *(*&v39[0] + 40);
    v26 = *(*&v39[0] + 48);
    v25 = *(*&v39[0] + 56);
    v27 = *(*&v39[0] + 64);
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
    v48.origin.x = v22;
    v48.origin.y = v21;
    v48.size.width = v33;
    v48.size.height = v34;
    v50.origin.y = v31;
    v50.origin.x = v32;
    v50.size.width = v23;
    v50.size.height = v24;
    if (!CGRectEqualToRect(v48, v50) || v19 != v26 || v18 != v25 || v20 != v27)
    {
LABEL_58:
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v39);
LABEL_59:
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v36);
      return 0;
    }

LABEL_47:
    v29 = v40[56];
    if (v38[56])
    {
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v39);
      result = outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v36);
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v40[56])
      {
        goto LABEL_58;
      }

      v41 = *&v38[8];
      v42 = *&v38[24];
      v43 = *&v38[40];
      v44 = *&v40[8];
      v45 = *&v40[24];
      v46 = *&v40[40];
      v30 = static CGAffineTransform.== infix(_:_:)();
      outlined destroy of DisplayList.ViewUpdater.Model.Clip(v39);
      result = outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v36);
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    if (v38[57] != v40[57] || v40[58] != v38[58])
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v4 += 6;
    v3 += 6;
  }

  if (v38[0] <= 4u)
  {
    if (v38[0] == 3)
    {
      if (v40[0] != 3)
      {
        return 0;
      }
    }

    else if (v40[0] != 4)
    {
      return 0;
    }

    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
    v28 = &v36;
LABEL_35:
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v28, v35);
    goto LABEL_47;
  }

  if (v38[0] != 5)
  {
    if (v40[0] != 6 || *(&v39[0] + 1) | *&v39[0] | *&v9.width | *&v9.height)
    {
      goto LABEL_59;
    }

    v28 = v39;
    goto LABEL_35;
  }

  if (v40[0] != 5)
  {
    return 0;
  }

  if (*(v36 + 16))
  {
    if (*(v36 + 16) == 1)
    {
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
      result = outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
      v12 = *(*&v11 + 16);
      if (*(*&v11 + 16))
      {
LABEL_19:
        if (v12 != 1 && one-time initialization token for bufferCallbacks != -1)
        {
          swift_once();
        }

LABEL_46:
        if ((RBPathEqualToPath() & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_47;
      }
    }

    else
    {
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
      result = outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
      if (one-time initialization token for bufferCallbacks != -1)
      {
        result = swift_once();
      }

      v12 = *(*&v11 + 16);
      if (*(*&v11 + 16))
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (!*(v36 + 24))
    {
      goto LABEL_61;
    }

    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v39, v35);
    result = outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v36, v35);
    v12 = *(*&v11 + 16);
    if (*(*&v11 + 16))
    {
      goto LABEL_19;
    }
  }

  if (*(*&v11 + 24))
  {
    goto LABEL_46;
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MaskLayer.setClips(_:transform:)(Swift::OpaquePointer _, CGAffineTransform *transform)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC7SwiftUI9MaskLayer_clips] = _;

  v6 = &v2[OBJC_IVAR____TtC7SwiftUI9MaskLayer_clipTransform];
  v7 = *&transform->tx;
  *(v6 + 1) = *&transform->c;
  *(v6 + 2) = v7;
  *v6 = *&transform->a;
  v8 = *(_._rawValue + 2);
  if (v8 == 1)
  {
    v9 = *(_._rawValue + 5);
    v40 = *(_._rawValue + 4);
    v41 = v9;
    v42[0] = *(_._rawValue + 6);
    *(v42 + 11) = *(_._rawValue + 107);
    v10 = *(_._rawValue + 3);
    v38 = *(_._rawValue + 2);
    v39 = v10;
    outlined init with copy of DisplayList.ViewUpdater.Model.Clip(&v38, v33);
    specialized static MaskLayer.update(layer:clip:transform:)(v2, &v38, &transform->a);
    outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v38);
    type metadata accessor for CALayer();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v3 setSublayers_];

    return;
  }

  if (!v8)
  {
    [v2 setPath_];
    type metadata accessor for CALayer();
    v31 = Array._bridgeToObjectiveC()().super.isa;
    [v2 setSublayers_];

    return;
  }

  [v2 setPath_];
  v12 = [v2 sublayers];
  v30 = v2;
  if (v12)
  {
    v13 = v12;
    type metadata accessor for CALayer();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v37 = v14;

  v15 = 0;
  v16 = 0;
  v17 = 32;
  do
  {
    v19 = *(_._rawValue + v17 + 48);
    v34 = *(_._rawValue + v17 + 32);
    v35 = v19;
    v36[0] = *(_._rawValue + v17 + 64);
    v20 = v36[0];
    *(v36 + 11) = *(_._rawValue + v17 + 75);
    v21 = *(_._rawValue + v17 + 16);
    v33[0] = *(_._rawValue + v17);
    v33[1] = v21;
    v38 = v33[0];
    v39 = v21;
    v40 = v34;
    v41 = v19;
    v42[0] = v20;
    *(v42 + 11) = *(v36 + 11);
    if (v14 >> 62)
    {
      if (v15 >= __CocoaSet.count.getter())
      {
LABEL_20:
        v27 = objc_allocWithZone(MEMORY[0x1E69794A0]);
        outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v33, v32);
        v25 = [v27 init];
        [v25 setAnchorPoint_];
        MEMORY[0x193ABF170]([v25 setNoAnimationDelegate]);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = 1;
        v14 = v37;
        goto LABEL_23;
      }
    }

    else if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v33, v32);
      v23 = MEMORY[0x193AC03C0](v15, v14);
    }

    else
    {
      if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v15 + 32);
      outlined init with copy of DisplayList.ViewUpdater.Model.Clip(v33, v32);
      v23 = v22;
    }

    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClassUnconditional();
    v26 = v24;
LABEL_23:
    specialized static MaskLayer.update(layer:clip:transform:)(v25, &v38, &transform->a);
    if (v15)
    {
      v32[0] = 0x6E49656372756F73;
      v32[1] = 0xE800000000000000;
      v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v18 = 0;
    }

    ++v15;
    [v25 setCompositingFilter_];
    swift_unknownObjectRelease();

    outlined destroy of DisplayList.ViewUpdater.Model.Clip(&v38);
    v17 += 96;
  }

  while (v8 != v15);

  if (v14 >> 62)
  {
LABEL_30:
    v28 = __CocoaSet.count.getter();
    if (v8 >= v28)
    {
      goto LABEL_31;
    }

LABEL_28:
    specialized Array.replaceSubrange<A>(_:with:)(v8, v28);
LABEL_32:
    type metadata accessor for CALayer();
    v29 = Array._bridgeToObjectiveC()().super.isa;
    [v30 setSublayers_];

    return;
  }

  v28 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 < v28)
  {
    goto LABEL_28;
  }

LABEL_31:
  if (v16)
  {
    goto LABEL_32;
  }
}

id specialized static MaskLayer.update(layer:clip:transform:)(void *a1, uint64_t a2, double *a3)
{
  a = *a3;
  b = a3[1];
  c = a3[2];
  d = a3[3];
  tx = a3[4];
  ty = a3[5];
  v11 = *(a2 + 16);
  v52[0] = *a2;
  v52[1] = v11;
  v53 = *(a2 + 32);
  v54[0] = v52[0];
  v54[1] = v11;
  v55 = v53;
  outlined init with copy of Path.Storage(v54, &v56);
  ShapeType.init(_:)(v52, &v56);
  v12 = v61;
  if (v69)
  {
    if (v69 != 1)
    {
      if (v69 == 3 && !((v62 << 8) | ((v63 | (v64 << 16)) << 40) | v61 | v68 | v67 | v66 | *&v56 | *&v57 | *&v58 | *&v59 | *&v60 | *&v65))
      {
        [a1 setPath_];
        v13 = 0.0;
        [a1 setBorderWidth_];
        [a1 setBackgroundColor_];
      }

      else
      {
        outlined destroy of ShapeType(&v56);
        v13 = 0.0;
        [a1 setPosition_];
        [a1 setBorderWidth_];
        [a1 setBackgroundColor_];
        v14 = Path.cgPath.getter();
        [a1 setPath_];

        v15 = MEMORY[0x1E69797F8];
        if ((*(a2 + 89) & 1) == 0)
        {
          v15 = MEMORY[0x1E6979800];
        }

        v16 = *v15;
        [a1 setFillRule_];
      }

      v17 = 0.0;
      if (*(a2 + 88))
      {
        goto LABEL_14;
      }

LABEL_13:
      v29 = *(a2 + 56);
      *&t1.a = *(a2 + 40);
      *&t1.c = v29;
      *&t1.tx = *(a2 + 72);
      t2.a = a;
      t2.b = b;
      t2.c = c;
      t2.d = d;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v49, &t1, &t2);
      a = v49.a;
      b = v49.b;
      c = v49.c;
      d = v49.d;
      tx = v49.tx;
      ty = v49.ty;
      goto LABEL_14;
    }

    v17 = v56;
    v13 = v57;
    v43 = d;
    v45 = a;
    v18 = ty;
    v19 = v58;
    v47 = tx;
    v20 = b;
    v21 = c;
    v22 = v59;
    v23 = v60;
    v42 = v65;
    [a1 setPosition_];
    v24 = v19;
    ty = v18;
    d = v43;
    v25 = v22;
    c = v21;
    b = v20;
    tx = v47;
    [a1 setBounds_];
    [a1 setPath_];
    v26 = v23;
    a = v45;
    [a1 setCornerRadius_];
    v27 = MEMORY[0x1E69796E8];
    if ((v12 & 1) == 0)
    {
      v27 = MEMORY[0x1E69796E0];
    }

    v28 = *v27;
    [a1 setCornerCurve_];

    [a1 setBorderWidth_];
    [a1 setBackgroundColor_];
    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = v56;
    v13 = v57;
    v46 = b;
    v48 = tx;
    v31 = c;
    v32 = a;
    v33 = v58;
    v34 = d;
    v35 = ty;
    v36 = v59;
    v44 = v60;
    [a1 setPosition_];
    v37 = v33;
    a = v32;
    c = v31;
    v38 = v36;
    ty = v35;
    d = v34;
    b = v46;
    tx = v48;
    [a1 setBounds_];
    [a1 setPath_];
    [a1 setCornerRadius_];
    v39 = MEMORY[0x1E69796E8];
    if ((v12 & 1) == 0)
    {
      v39 = MEMORY[0x1E69796E0];
    }

    v40 = *v39;
    [a1 setCornerCurve_];

    [a1 setBorderWidth_];
    v41 = [a1 borderColor];
    [a1 setBackgroundColor_];

    if ((*(a2 + 88) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = tx + v13 * c + v17 * a - v17;
  t1.ty = ty + v13 * d + v17 * b - v13;
  return [a1 setAffineTransform_];
}

unint64_t type metadata accessor for CALayer()
{
  result = lazy cache variable for type metadata for CALayer[0];
  if (!lazy cache variable for type metadata for CALayer[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for CALayer);
  }

  return result;
}

uint64_t MatchedSharedFrame.updateValue()(uint64_t a1)
{
  v2 = v1;
  v49 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Pair();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = *(a1 + 24);
  v9 = type metadata accessor for _MatchedGeometryEffect();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = *(v2 + 13);
  if (v13 == *MEMORY[0x1E698D3F8])
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == v13)
    {
      __break(1u);
    }

    *(v2 + 13) = CurrentAttribute;
    v13 = CurrentAttribute;
  }

  v28 = v10;
  v29 = v8;
  v30 = v5;
  v31 = v4;
  v15 = *(v2 + 14);
  v16 = *(v2 + 60);
  if (v15 != *AGGraphGetValue() >> 1)
  {
    v25 = *(v2 + 60);
    *(v2 + 14) = *AGGraphGetValue() >> 1;
    if ((v2[3] & 1) == 0)
    {
      MatchedGeometryScope.releaseFrame(index:owner:)(*(v2 + 5), *(v2 + 13));
      *(v2 + 5) = 0;
      *(v2 + 48) = 1;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    LOBYTE(v35) = 1;
    v47 = 0u;
    *v48 = 0u;
    v46 = 0u;
    v48[16] = 1;
    *&v48[20] = v13;
    type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
    return AGGraphSetOutputValue();
  }

  if (v16)
  {
    goto LABEL_10;
  }

LABEL_6:
  v17 = v2[1];
  v46 = *v2;
  v47 = v17;
  *v48 = v2[2];
  *&v48[13] = *(v2 + 45);

  MatchedSharedFrame.modifier.getter(v12);
  _MatchedGeometryEffect.qualifiedID.getter(v9, v7);
  (*(v28 + 8))(v12, v9);
  v18 = *(v2 + 1);
  v19 = *(v2 + 2);
  v20 = *(v2 + 6);
  v21 = *(v2 + 1);
  v22 = lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID();
  v42 = v29;
  v43 = v22;
  v23 = v31;
  WitnessTable = swift_getWitnessTable();
  LODWORD(v18) = MatchedGeometryScope.frame<A>(index:for:view:)(v44, v2 + 40, v7, v13 | (v21 << 32), v18, v19, v20, v23, WitnessTable);

  (*(v30 + 8))(v7, v23);
  v32 = v45;
  v35 = v44[0];
  v36 = v44[1];
  v37 = v44[2];
  v38 = v45;
  v39 = v33;
  v40 = v34;
  v41 = v18;
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
  return AGGraphSetOutputValue();
}

uint64_t _MatchedGeometryEffect.qualifiedID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v2, v5, v6);
  v12 = *(v2 + *(a1 + 36));
  return Pair.init(_:_:)(v8, &v12, v5, &type metadata for Namespace.ID, a2);
}

uint64_t closure #3 in MatchedGeometryScope.frame<A>(index:for:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_beginAccess();
  *&v21 = __PAIR64__(*(v7 + 16), v6);
  *(&v21 + 1) = a1;
  *&v22 = a2;
  v8 = MEMORY[0x1E69E7CC0];
  v23 = 0;
  v24 = 0;
  *(&v22 + 1) = MEMORY[0x1E69E7CC0];
  v18 = v21;
  v19 = v22;
  v25 = 0;
  memset(v20, 0, 20);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
  lazy protocol witness table accessor for type SharedFrame and conformance SharedFrame();

  LODWORD(a2) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of SharedFrame(&v21);
  AGGraphSetFlags();
  outlined init with copy of AnyHashable(a3, &v18 + 8);
  LODWORD(v18) = a2;
  *&v20[16] = v8;
  *&v20[24] = 0;
  v20[28] = 0;
  swift_beginAccess();
  v9 = *(a1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 112) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(a1 + 112) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[64 * v12];
  v14 = v18;
  v15 = v19;
  v16 = *v20;
  *(v13 + 77) = *&v20[13];
  *(v13 + 3) = v15;
  *(v13 + 4) = v16;
  *(v13 + 2) = v14;
  *(a1 + 112) = v9;
  return swift_endAccess();
}

unint64_t lazy protocol witness table accessor for type SharedFrame and conformance SharedFrame()
{
  result = lazy protocol witness table cache variable for type SharedFrame and conformance SharedFrame;
  if (!lazy protocol witness table cache variable for type SharedFrame and conformance SharedFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedFrame and conformance SharedFrame);
  }

  return result;
}

uint64_t initializeWithCopy for SharedFrame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  return a1;
}

uint64_t destroy for SharedFrame()
{
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> Pair<A, B>()
{
  Hasher.init(_seed:)();
  Pair<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v9 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v9;
    }

    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v10, a2, 1, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v7;
  v11 = v10 + 32 + 28 * result;
  if (v9)
  {
    v12 = *(v10 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = v11 + 28 * a3;
      v15 = (v10 + 32 + 28 * a2);
      if (result != v15 || result >= v15 + 28 * v14)
      {
        v17 = a3;
        v18 = a7;
        v19 = a6;
        v20 = a5;
        v21 = a4;
        result = memmove(result, v15, 28 * v14);
        a4 = v21;
        a5 = v20;
        a6 = v19;
        a3 = v17;
        a7 = v18;
      }

      v22 = *(v10 + 16);
      v13 = __OFADD__(v22, v9);
      v23 = v22 + v9;
      if (!v13)
      {
        *(v10 + 16) = v23;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v11 = a4;
    *(v11 + 8) = a5;
    *(v11 + 16) = a6;
    *(v11 + 24) = a7;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MatchedGeometryScope.Frame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);

  return a1;
}

uint64_t SharedFrame.updateValue()()
{
  v7 = v0;
  v129 = *MEMORY[0x1E69E9840];
  v9 = *(v0 + 8);
  v8 = *(v0 + 16);
  swift_beginAccess();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_85;
  }

  v10 = *(v9 + 112);
  if (v8 >= *(v10 + 16))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v2 = v8 << 6;
  v0 = *(v10 + (v8 << 6) + 80);
  v11 = *(v0 + 16);

  v3 = -v11;
  v4 = -1;
  v12 = 36;
  do
  {
    if (v4 - v11 == -1)
    {

      SharedFrame.reset()();
      v16 = *MEMORY[0x1E698D3F8];
      LOBYTE(v124) = 1;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v115 = 1;
      v116 = v16;
LABEL_46:
      type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
      return AGGraphSetOutputValue();
    }

    if (++v4 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_74;
    }

    v5 = v12 + 28;
    type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
    Value = AGGraphGetValue();
    v12 = v5;
  }

  while (*(Value + 24) != 1);

  if (*(v7 + 32))
  {
    v14 = AGGraphGetValue();
    if (v15)
    {
      v6 = *v14;
    }

    else
    {
      v6 = -INFINITY;
    }
  }

  else
  {
    v6 = -INFINITY;
  }

  Attribute = AGWeakAttributeGetAttribute();
  v1 = Attribute;
  LODWORD(v4) = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v18 = *(v9 + 112);
    if (v8 >= *(v18 + 16))
    {
      goto LABEL_89;
    }

    v19 = *(v18 + v2 + 80);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + 44;
      while (*(v21 - 12) != Attribute)
      {
        v21 += 28;
        if (!--v20)
        {
          goto LABEL_23;
        }
      }

      v0 = *(v7 + 40);
      if (v0 != *AGGraphGetValue() >> 1)
      {
        v0 = v7;
        SharedFrame.reset()();
      }
    }

LABEL_23:
    LODWORD(v5) = v1;
  }

  v2 = *(v7 + 8);
  v9 = *(v7 + 16);
  swift_beginAccess();
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

  v8 = *(v2 + 112);
  if (v9 >= *(v8 + 16))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v3 = v9 << 6;
  if (*(*(v8 + (v9 << 6) + 80) + 16) < 2uLL || (v0 = v2, v22 = MatchedGeometryScope.sourceViewIndex(frameIndex:)(v9), v8 = *(v2 + 112), (v23 & 1) != 0))
  {
    v24 = 0;
    goto LABEL_29;
  }

  if (v9 >= *(v8 + 16))
  {
    goto LABEL_90;
  }

  if ((*(v8 + v3 + 92) & 1) == 0)
  {
    v24 = v22 + 1 < *(*(v8 + v3 + 80) + 16);
    if (!v22)
    {
      goto LABEL_29;
    }

LABEL_61:
    v108 = v24;
    v0 = v22;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 112) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_62;
  }

  v24 = 0;
  if (v22)
  {
    goto LABEL_61;
  }

  while (1)
  {
LABEL_29:
    if (v9 >= *(v8 + 16))
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v25 = *(v8 + v3 + 80);
    v26 = *(v25 + 16);
    if (!v26)
    {
      SharedFrame.reset()();
      LOBYTE(v124) = 1;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v115 = 1;
      v116 = v4;
      goto LABEL_46;
    }

    v8 = *(v25 + 36);
    v27 = v1 != v4 && v5 == *(v25 + 32);
    LODWORD(v5) = *(v25 + 32);
    v28 = v27;
    if (v26 == 1 || (v28 & 1) != 0)
    {
      if (!v24)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v107 = *(v25 + 32);
    v108 = v24;
    v1 = AGGraphClearUpdate();
    v0 = *AGGraphGetValue();

    AGGraphSetUpdate();
    v102 = Transaction.animationIgnoringTransitionPhase.getter(v0);
    if (!v102)
    {

      v87 = v108;
      goto LABEL_82;
    }

    v29 = *(v2 + 112);
    if (v9 >= *(v29 + 16))
    {
      goto LABEL_91;
    }

    v101 = v0;
    if (*(*(v29 + v3 + 80) + 16) >= 2uLL)
    {
      v30 = AGGraphGetValue();
      v112 = 0uLL;
      v113 = *v30;
      v105 = v113;
      v114 = v30[1];
      v31 = AGGraphGetValue();
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = *(v31 + 24);
      v36 = *(v31 + 32);
      v37 = *(v31 + 40);
      type metadata accessor for CGPoint(0);

      v38 = AGGraphGetValue();
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = v40 - v35;
      v42 = v36 - (*v38 - v34);
      v43 = v37 - v41;
      v44 = AGGraphGetValue();
      v45 = vmuld_lane_f64(*(v44 + 16), v105, 1) + 0.0;
      v112.f64[0] = *(v44 + 8) * v105.f64[0] + 0.0;
      v112.f64[1] = v45;
      v122 = 0.0;
      v120 = 0u;
      v121 = 0u;
      LOBYTE(v123) = 2;
      *&v124 = v32;
      *(&v124 + 1) = v33;
      v125 = v39;
      v126 = v40;
      v127 = v42;
      v128 = v43;
      specialized ApplyViewTransform.convert(to:transform:)(&v120, &v124);
      outlined destroy of CoordinateSpace(&v120);
      v46 = AGGraphGetValue();
      v117 = 0uLL;
      v47 = v46[1];
      v118 = *v46;
      v103 = v118;
      v119 = v47;
      v48 = AGGraphGetValue();
      v50 = *v48;
      v49 = *(v48 + 8);
      v51 = *(v48 + 16);
      v52 = *(v48 + 24);
      v53 = *(v48 + 32);
      v54 = *(v48 + 40);

      v55 = AGGraphGetValue();
      v56 = *v55;
      v57 = *(v55 + 8);
      v58 = v53 - (*v55 - v51);
      v59 = AGGraphGetValue();
      v60 = vmuld_lane_f64(*(v59 + 16), v103, 1) + 0.0;
      v117.f64[0] = *(v59 + 8) * v103.f64[0] + 0.0;
      v117.f64[1] = v60;
      memset(v111, 0, 40);
      v111[40] = 2;
      *&v120 = v50;
      *(&v120 + 1) = v49;
      *&v121 = v56;
      *(&v121 + 1) = v57;
      v122 = v58;
      v123 = v54 - (v57 - v52);
      specialized ApplyViewTransform.convert(to:transform:)(v111, &v120);
      outlined destroy of CoordinateSpace(v111);
      v61 = vsubq_f64(v117, v112);
      v62 = vsubq_f64(v103, v105);
      v3 = v101;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v61), vceqzq_f64(v62))))) & 1) == 0)
      {
        goto LABEL_81;
      }

      v104 = v62;
      v106 = v61;
      v6 = *AGGraphGetValue();
      if (*(v7 + 32))
      {

        v111[0] = 0;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v102, v101, v106.f64[0], v106.f64[1], v104.f64[0], v104.f64[1], v6);

        goto LABEL_77;
      }

      type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
      v0 = swift_allocObject();
      v88 = MEMORY[0x1E69E7CC0];
      v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *(v0 + 124) = 1;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 108) = 0u;
      *(v0 + 128) = v88;
      *(v0 + 136) = v88;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 168) = v88;
      *(v0 + 16) = v102;
      *(v0 + 24) = v89;
      swift_beginAccess();
      *(v0 + 48) = v104;
      *(v0 + 32) = v106;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 64) = v6;
      *(v0 + 80) = v6;
      swift_retain_n();

      v91 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v90));
      if (v92)
      {

        v93 = 0;
        *(v0 + 72) = 0;
LABEL_69:
        LOBYTE(v94) = 1;
        goto LABEL_76;
      }

      if (v91 > 0.0)
      {
        v95 = log2(v91 * 240.0);
        v96 = exp2(floor(v95 + 0.01)) * 0.00416666667;
        *(v0 + 72) = v96;
        if (v96 >= 0.0166666667)
        {

          v93 = 0;
          goto LABEL_69;
        }

LABEL_75:
        v97 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v3);
        v93 = v97;
        v94 = HIDWORD(v97) & 1;

LABEL_76:
        *(v0 + 120) = v93;
        *(v0 + 124) = v94;
        *(v7 + 32) = v0;
LABEL_77:
        v98 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v3);
        if (v98)
        {
          v1 = v98[9];
          if (v1)
          {
            v99 = swift_retain_n();
            MEMORY[0x193ABF170](v99);
            if (*((*(v7 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_97;
            }

            goto LABEL_80;
          }
        }

        goto LABEL_81;
      }

LABEL_74:
      *(v0 + 72) = 0;
      goto LABEL_75;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    *(v2 + 112) = v8;
LABEL_62:
    v110 = v4;
    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v4 = v8 + v3;
    specialized Array.remove(at:)(v0, &v112);
    v84 = v112;
    v85 = v113;
    v86 = DWORD2(v113);
    *(v2 + 112) = v8;
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_95;
    }

    v0 = v4 + 80;
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, *&v84.f64[0], *&v84.f64[1], v85, v86);
    *(v2 + 112) = v8;
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_96;
    }

    ++*(v4 + 88);
    *(v2 + 112) = v8;
    swift_endAccess();
    v8 = *(v2 + 112);
    LODWORD(v4) = v110;
    v24 = v108;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_80:
  v100 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(*v1 + 88))(v100);

LABEL_81:

  v87 = v108;
LABEL_82:
  LODWORD(v5) = v107;
  if (v87)
  {
LABEL_48:
    AGGraphClearUpdate();
    closure #4 in SharedFrame.updateValue()(v7);
    AGGraphSetUpdate();
  }

LABEL_49:
  *(v7 + 44) = AGCreateWeakAttribute();
  *(v7 + 40) = *AGGraphGetValue() >> 1;
  v64 = AGGraphGetValue();
  v65 = *v64;
  v66 = *(v64 + 24);
  *v111 = 0uLL;
  *&v111[16] = v65;
  *&v111[24] = *(v64 + 8);
  v109 = *&v111[24];
  *&v111[40] = v66;
  v67 = AGGraphGetValue();
  v68 = *v67;
  v69 = *(v67 + 8);
  v70 = *(v67 + 16);
  v71 = *(v67 + 24);
  v72 = *(v67 + 32);
  v73 = *(v67 + 40);
  type metadata accessor for CGPoint(0);

  v74 = AGGraphGetValue();
  v75 = *v74;
  v76 = *(v74 + 8);
  v77 = v72 - (*v74 - v70);
  v78 = AGGraphGetValue();
  v79 = *(v78 + 16) * v109 + 0.0;
  *v111 = v65 * *(v78 + 8) + 0.0;
  *&v111[8] = v79;
  *&v114 = 0;
  v112 = 0u;
  v113 = 0u;
  BYTE8(v114) = 2;
  v117.f64[0] = v68;
  v117.f64[1] = v69;
  v118.f64[0] = v75;
  v118.f64[1] = v76;
  v119.f64[0] = v77;
  v119.f64[1] = v73 - (v76 - v71);
  specialized ApplyViewTransform.convert(to:transform:)(&v112, &v117);
  outlined destroy of CoordinateSpace(&v112);
  if (*(v7 + 32))
  {
    v112 = *v111;
    *&v113 = v65;
    *(&v113 + 1) = v109;
    v80 = *(v7 + 4);

    if (specialized AnimatorState.update(_:at:environment:)(&v112, v80, v6))
    {

      *(v7 + 32) = 0;
      _s7SwiftUI11SharedFrame33_F035CBEF00D3D777B3359545F684D774LLV14AttributeGraph08ObservedL0AaeFP7destroyyyFTW_0();
    }

    else
    {
      specialized AnimatorState.nextUpdate()();
    }

    v81 = v112;
    v82 = v113;
    *v111 = v112;
    *&v111[16] = v113;
  }

  else
  {
    v81 = *v111;
    v82 = *&v111[16];
    LODWORD(v4) = v5;
  }

  v112 = v81;
  v113 = v82;
  v114 = *&v111[32];
  v115 = 0;
  v116 = v4;
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
  AGGraphSetOutputValue();
}

void _s7SwiftUI11SharedFrame33_F035CBEF00D3D777B3359545F684D774LLV14AttributeGraph08ObservedL0AaeFP7destroyyyFTW_0()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  if (!__CocoaSet.count.getter())
  {
    return;
  }

  v6 = __CocoaSet.count.getter();
  if (v6)
  {
    v3 = v6;
    if (v6 >= 1)
    {
LABEL_3:
      for (i = 0; i != v3; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x193AC03C0](i, v2);
        }

        else
        {
          v5 = *(v2 + 8 * i + 32);
        }

        (*(*v5 + 96))();
      }

      goto LABEL_12;
    }

    __break(1u);
  }

LABEL_12:

  *(v1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of MatchedGeometryScope.Frame(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for RoundedRectangle._Inset(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset()
{
  result = lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset;
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset;
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset;
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }

  return result;
}

double GeometryProxy.frame<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  specialized static Update.begin()();
  v10 = 0;
  v11 = 0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v10 = *InputValue;
    v11 = InputValue[1];
  }

  static Update.end()();
  (*(a3 + 8))(v33, a2, a3);
  specialized static Update.begin()();
  v32[0] = 0;
  v32[1] = 0;
  v32[2] = v10;
  v32[3] = v11;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v13 = *(v3 + 2);
  v29 = *(v3 + 1);
  v30 = v13;
  v31 = v3[12];
  v14 = GeometryProxy.placementContext.getter(v24);
  MEMORY[0x1EEE9AC00](v14);
  v22[2] = v32;
  v22[3] = v33;
  v23 = v15;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(closure #1 in GeometryProxy.rect(_:in:)partial apply, v22, v17, v18, v19, v16 | (v15 << 32));
  v20 = *v32;
  static Update.end()();
  outlined destroy of CoordinateSpace(v33);
  return v20;
}

uint64_t MatchedGeometryScope.sourceViewIndex(frameIndex:)(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = result;
    result = swift_beginAccess();
    v3 = 0;
    v4 = v2 << 6;
    v12 = v2;
    while (1)
    {
      v5 = *(v1 + 112);
      v6 = *(v5 + 16);
      if (v6 <= v2)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v5 + v4 + 88);
      v8 = *(v5 + v4 + 80);
      v9 = *(v8 + 16);
      if (v9)
      {
        break;
      }

      v10 = 0;
      if (v6 <= v2)
      {
        goto LABEL_21;
      }

LABEL_15:
      if (*(v5 + v4 + 88) == v7)
      {
        return v10;
      }

      if (++v3 == 8)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = v8 + 44;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      result = AGGraphGetValue();
      if ((*result & 1) == 0)
      {
        type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
        result = AGGraphGetValue();
        if (*(result + 24) == 1)
        {
          break;
        }
      }

      ++v10;
      v11 += 28;
      if (v9 == v10)
      {
        v10 = 0;
        break;
      }
    }

    v5 = *(v1 + 112);
    v2 = v12;
    if (*(v5 + 16) > v12)
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MatchedSharedFrame.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _MatchedGeometryEffect();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t Pair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for Pair();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a4);
}

uint64_t MatchedGeometryScope.frame<A>(index:for:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9)
{
  v11 = v9;
  LODWORD(v48) = a7;
  *&v47 = a6;
  v46 = a5;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v21, v16);
  AnyHashable.init<A>(_:)();
  if (*(a2 + 8))
  {
LABEL_8:
    swift_beginAccess();
    v22 = *(v11 + 120);
    if (*(v22 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
      if (v27)
      {
        a9 = *(*(v22 + 56) + 8 * v26);
        swift_endAccess();
        v10 = 1;
        goto LABEL_22;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v22 = *(v11 + 112);
    v28 = *(v22 + 16);

    if (v28)
    {
      a9 = 0;
      v10 = 92;
      do
      {
        if (a9 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        outlined init with copy of MatchedGeometryScope.Frame(v22 + v10 - 60, v50);
        v29 = *(v51 + 16);
        outlined destroy of MatchedGeometryScope.Frame(v50);
        if (!v29)
        {

          swift_beginAccess();
          v22 = *(v11 + 112);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v11 + 112) = v22;
          if ((result & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_18;
        }

        ++a9;
        v10 += 64;
      }

      while (v28 != a9);
    }

    a9 = *(*(v11 + 112) + 16);
    AGGraphClearUpdate();
    v30 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #3 in MatchedGeometryScope.frame<A>(index:for:view:)(v11, a9, v52);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v10 = 0;
    goto LABEL_21;
  }

  v22 = *a2;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v23 = *(v11 + 112);
  if (v22 >= *(v23 + 16))
  {
    goto LABEL_38;
  }

  v10 = v22 << 6;
  outlined init with copy of AnyHashable(v23 + (v22 << 6) + 40, v50);
  a9 = MEMORY[0x193AC01F0](v50, v52);
  outlined destroy of AnyHashable(v50);
  if ((a9 & 1) == 0)
  {
    MatchedGeometryScope.releaseFrame(index:owner:)(v22, a4);
    goto LABEL_8;
  }

  v24 = *(v11 + 112);
  if (v22 < *(v24 + 16))
  {
    v25 = v24 + v10;
LABEL_30:
    outlined init with copy of MatchedGeometryScope.Frame(v25 + 32, v50);
    type metadata accessor for (ViewFrame?, AnyOptionalAttribute)();
    Value = AGGraphGetValue();
    v39 = *(Value + 32);
    v40 = *(Value + 40);
    v41 = *(Value + 48);
    v42 = *(Value + 52);
    v43 = *(Value + 16);
    v48 = *Value;
    v47 = v43;
    outlined destroy of MatchedGeometryScope.Frame(v50);
    v44 = v47;
    *a1 = v48;
    *(a1 + 16) = v44;
    *(a1 + 32) = v39;
    *(a1 + 40) = v40;
    *(a1 + 48) = v41;
    outlined destroy of AnyHashable(v52);
    return v42;
  }

  while (1)
  {
    __break(1u);
LABEL_40:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
    v22 = result;
    *(v11 + 112) = result;
LABEL_18:
    if (a9 >= *(v22 + 16))
    {
      break;
    }

    result = outlined assign with copy of AnyHashable(v52, v22 + v10 - 52);
    *(v11 + 112) = v22;
    if (a9 >= *(v22 + 16))
    {
      goto LABEL_42;
    }

    *(v22 + v10) = 0;
    *(v11 + 112) = v22;
    swift_endAccess();
    outlined init with copy of MatchedGeometryScope.Frame(v22 + v10 - 60, v50);
    outlined destroy of MatchedGeometryScope.Frame(v50);
    v10 = 1;
    AGGraphMutateAttribute();
LABEL_21:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v11 + 120);
    *(v11 + 120) = 0x8000000000000000;
    v22 = &v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a9, v52, isUniquelyReferenced_nonNull_native);
    *(v11 + 120) = v49;
    swift_endAccess();
LABEL_22:
    swift_beginAccess();
    v18 = *(v11 + 112);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 112) = v18;
    if (v33)
    {
      if ((a9 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_32:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v11 + 112) = v18;
      if ((a9 & 0x8000000000000000) != 0)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    if (a9 >= *(v18 + 2))
    {
      goto LABEL_34;
    }

    v34 = &v18[64 * a9];
    v22 = (v34 + 80);
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, a4, v46, v47, v48);
    *(v11 + 112) = v18;
    if (a9 >= *(v18 + 2))
    {
      goto LABEL_35;
    }

    ++*(v34 + 22);
    *(v11 + 112) = v18;
    swift_endAccess();
    if (v10)
    {
      outlined init with copy of MatchedGeometryScope.Frame((v34 + 32), v50);
      outlined destroy of MatchedGeometryScope.Frame(v50);
      v35 = AGCreateWeakAttribute();
      v10 = specialized static GraphHost.currentHost.getter();
      v36 = v35;
      v22 = v10;
      specialized GraphHost.continueTransaction<A>(_:)(v36);
    }

    *a2 = a9;
    *(a2 + 8) = 0;
    v37 = *(v11 + 112);
    if (a9 < *(v37 + 16))
    {
      v25 = v37 + (a9 << 6);
      goto LABEL_30;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t CoordinateSpace.Name.space.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of CoordinateSpace.Name(v1, v6);
  if (v8)
  {
    *a1 = *&v6[0];
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t static Pair<>.== infix(_:_:)()
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Pair();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t ModifierTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v26 = a4;
  v25 = a2;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PlaceholderContentView();
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24[-v18];
  if (v25 == 1)
  {
    v5 += *(a3 + 36);
  }

  (*(v8 + 16))(v10, v5, v7, v17);
  View.modifier<A>(_:)(v10, v11, v7);
  (*(v8 + 8))(v10, v7);
  v20 = *(a3 + 24);
  v27 = &protocol witness table for PlaceholderContentView<A>;
  v28 = v20;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v12, WitnessTable);
  v22 = *(v13 + 8);
  v22(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)(v19, v12, WitnessTable);
  return (v22)(v19, v12);
}

void type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path getter for EnvironmentValues.displayScale : EnvironmentValues@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 1.0;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t @objc closure #1 in closure #1 in closure #1 in ShapeType.initFromFilled(type:shape:)(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v5;
  v8 = *(a1 + 40);

  ShapeType.initFromStroked(type:shape:style:)(a2, a3, v7);
  return outlined destroy of StrokeStyle(v7);
}

void ShapeType.initFromStroked(type:shape:style:)(int a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a3 + 24) + 16))
  {
    return;
  }

  if (a1 != 3)
  {
    if (a1 == 1)
    {
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      v12 = *(a2 + 64);
      v13 = *(a2 + 72);
      v44.origin.x = v10;
      v44.origin.y = v11;
      v44.size.width = v12;
      v44.size.height = v13;
      Width = CGRectGetWidth(v44);
      v45.origin.x = v10;
      v45.origin.y = v11;
      v45.size.width = v12;
      v45.size.height = v13;
      if (Width != CGRectGetHeight(v45))
      {
        return;
      }

      v17 = *(a2 + 16);
      *&v40.a = *a2;
      *&v40.c = v17;
      *&v40.tx = *(a2 + 32);
      if (!CGAffineTransformIsIdentity(&v40))
      {
        return;
      }

      v18 = *(v3 + 48);
      *&v40.tx = *(v3 + 32);
      v41 = v18;
      v42 = *(v3 + 64);
      v43 = *(v3 + 80);
      v19 = *(v3 + 16);
      *&v40.a = *v3;
      *&v40.c = v19;
      outlined destroy of ShapeType(&v40);
      v20 = *a3;
      v46.origin.x = v10;
      v46.origin.y = v11;
      v46.size.width = v12;
      v46.size.height = v13;
      v21 = CGRectGetWidth(v46) * 0.5;
      if (v21 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v20 * 0.5 + v21;
      }

      v47.origin.x = v10;
      v47.origin.y = v11;
      v47.size.width = v12;
      v47.size.height = v13;
      *v3 = CGRectInset(v47, v20 * -0.5, v20 * -0.5);
      *(v3 + 32) = v22;
      *(v3 + 40) = 0;
      *(v3 + 48) = v20;
    }

    else
    {
      if (a1)
      {
        return;
      }

      if (*(a3 + 12))
      {
        return;
      }

      if (*(a3 + 16) <= 1.4142)
      {
        return;
      }

      v4 = *(a2 + 16);
      *&v40.a = *a2;
      *&v40.c = v4;
      *&v40.tx = *(a2 + 32);
      if (!CGAffineTransformIsIdentity(&v40))
      {
        return;
      }

      v7 = *(v3 + 48);
      *&v40.tx = *(v3 + 32);
      v41 = v7;
      v42 = *(v3 + 64);
      v43 = *(v3 + 80);
      v8 = *(v3 + 16);
      *&v40.a = *v3;
      *&v40.c = v8;
      outlined destroy of ShapeType(&v40);
      v9 = *a3;
      *v3 = CGRectInset(*(a2 + 48), *a3 * -0.5, *a3 * -0.5);
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = v9;
    }

LABEL_27:
    *(v3 + 80) = 1;
    return;
  }

  v23 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = *(a2 + 48);
  v26 = *(a2 + 56);
  v27 = *(a2 + 64);
  v28 = *(a2 + 72);
  v30 = *(a2 + 80);
  v29 = *(a2 + 88);
  v31 = *(a2 + 96) == 1;
  if (v30 == v29 || vabdd_f64(v30, v29) < 0.001)
  {
    *&v40.a = *a2;
    *&v40.c = v23;
    *&v40.tx = v24;
    if (CGAffineTransformIsIdentity(&v40))
    {
      v33 = *(v3 + 48);
      *&v40.tx = *(v3 + 32);
      v41 = v33;
      v42 = *(v3 + 64);
      v43 = *(v3 + 80);
      v34 = *(v3 + 16);
      *&v40.a = *v3;
      *&v40.c = v34;
      outlined destroy of ShapeType(&v40);
      v35 = *a3;
      v48.origin.x = v25;
      v48.origin.y = v26;
      v48.size.width = v27;
      v48.size.height = v28;
      v36 = CGRectGetWidth(v48);
      v49.origin.x = v25;
      v49.origin.y = v26;
      v49.size.width = v27;
      v49.size.height = v28;
      Height = CGRectGetHeight(v49);
      if (Height >= v36)
      {
        Height = v36;
      }

      v38 = Height * 0.5;
      if (v38 >= v30)
      {
        v38 = v30;
      }

      if (v38 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v35 * 0.5 + v38;
      }

      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v27;
      v50.size.height = v28;
      *v3 = CGRectInset(v50, v35 * -0.5, v35 * -0.5);
      *(v3 + 32) = v39;
      *(v3 + 40) = v31;
      *(v3 + 48) = v35;
      goto LABEL_27;
    }
  }
}

uint64_t _ShapeStyle_Pack.Style.modifyStyle(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v38.a = a1;
  *&v38.b = a2;
  *&v38.c = a3;
  result = RBSymbolUpdateLayerGetFillType();
  if (result == 2 && !*(v3 + 85))
  {
    v8 = *(v3 + 16);
    v41 = *v3;
    v42 = v8;
    RBSymbolUpdateLayerGetGradientAxis();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    *&v38.a = a1;
    *&v38.b = a2;
    *&v38.c = a3;
    RBSymbolUpdateLayerFillRect();
    v19 = v18 + v10 * v17;
    v22 = v21 + v12 * v20;
    v36 = v21 + v16 * v20;
    v37 = v18 + v14 * v17;
    RBSymbolUpdateLayerFillTransform();
    v23 = *&a1;
    d = v38.d;
    tx = v38.tx;
    ty = v38.ty;
    ResolvedGradient.init(standardColor:style:)(&v41, &v38);
    a = v38.a;
    b_low = LOBYTE(v38.b);
    b_high = HIDWORD(v38.b);
    c_low = LOBYTE(v38.c);
    v38.a = v23;
    *&v38.b = a2;
    *&v38.c = a3;
    v38.d = d;
    v38.tx = tx;
    v38.ty = ty;
    v43.x = v19;
    v43.y = v22;
    v31 = CGPointApplyAffineTransform(v43, &v38);
    v38.a = v23;
    *&v38.b = a2;
    *&v38.c = a3;
    v38.d = d;
    v38.tx = tx;
    v38.ty = ty;
    v44.y = v36;
    v44.x = v37;
    v32 = CGPointApplyAffineTransform(v44, &v38);
    LOBYTE(v38.a) = c_low;
    _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
    v33 = swift_allocObject();
    *(v33 + 16) = a;
    *(v33 + 24) = b_low;
    *(v33 + 28) = b_high;
    *(v33 + 32) = c_low;
    *(v33 + 40) = v31;
    *(v33 + 56) = v32;
    *(v33 + 72) = 0;
    v34 = *(v3 + 48);
    *&v38.tx = *(v3 + 32);
    v39 = v34;
    v40[0] = *(v3 + 64);
    *(v40 + 14) = *(v3 + 78);
    v35 = *(v3 + 16);
    *&v38.a = *v3;
    *&v38.c = v35;
    result = outlined destroy of _ShapeStyle_Pack.Fill(&v38);
    *v3 = v33;
    *(v3 + 85) = 1;
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance LayoutSubviews(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = 0;
}

uint64_t LayoutComputer.explicitAlignment(_:at:)(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    v9 = a1;
    v11 = a2[1];
    v13 = *a2;
    swift_once();
    v4 = v11;
    v3 = v13;
    a1 = v9;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v10 = v4;
  v12 = v3;
  v6 = a1;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  a1 = v6;
  v4 = v10;
  v3 = v12;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v14[0] = v3;
    v14[1] = v4;
    return (*(*v5 + 144))(a1, v14);
  }

  return result;
}

uint64_t type metadata completion function for AnyTransition.RemovalVisitor()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t SharedFrame.reset()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        v3 = v6;
        if (v6 >= 1)
        {
LABEL_3:
          for (i = 0; i != v3; ++i)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v5 = MEMORY[0x193AC03C0](i, v2);
            }

            else
            {
              v5 = *(v2 + 8 * i + 32);
            }

            (*(*v5 + 96))();
          }

          goto LABEL_12;
        }

        __break(1u);
      }

LABEL_12:

      *(v1 + 24) = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

void type metadata accessor for TransitionBox<PushTransition>()
{
  if (!lazy cache variable for type metadata for TransitionBox<PushTransition>)
  {
    lazy protocol witness table accessor for type PushTransition and conformance PushTransition();
    v0 = type metadata accessor for TransitionBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransitionBox<PushTransition>);
    }
  }
}

uint64_t static AnyTransition.push(from:)(char a1)
{
  type metadata accessor for TransitionBox<PushTransition>();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type PushTransition and conformance PushTransition()
{
  result = lazy protocol witness table cache variable for type PushTransition and conformance PushTransition;
  if (!lazy protocol witness table cache variable for type PushTransition and conformance PushTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PushTransition and conformance PushTransition);
  }

  return result;
}

uint64_t AnyTransition.FirstVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnyTransition.SecondVisitor();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v5 + 16))(v7, a1, a2, v10);
  (*(v5 + 32))(v12, v7, a2);
  *&v12[*(v8 + 36)] = 0;
  AnyTransition.visitBase<A>(applying:)(v12, *v2, v8, &protocol witness table for AnyTransition.SecondVisitor<A>);
  v13 = *&v12[*(v8 + 36)];
  v14 = *(v9 + 8);

  v14(v12, v8);

  v2[1] = v13;
  return result;
}

uint64_t AnyTransition.combined(with:)(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = 0;
  v2 = *(*a2 + 80);

  result = v2(&v5, &unk_1F00ADAC8, &protocol witness table for AnyTransition.FirstVisitor);
  v4 = v6;
  if (v6)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for AnyTransition.SecondVisitor()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t AnyTransition.SecondVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v44 = a2;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v41 = a1;
  v42 = v7;
  v45 = v8;
  v46 = a3;
  v47 = v7;
  v48 = a4;
  v9 = type metadata accessor for CombiningTransition();
  v10 = type metadata accessor for UncheckedSendable();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v34 - v11;
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v34 - v13;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UncheckedSendable();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v19 = &v34 - v18;
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UncheckedSendable();
  v34 = *(v24 - 8);
  v35 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - v26;
  (*(v20 + 16))(v23, v5, v8, v25);
  UncheckedSendable.init(_:)(v23, v8, v27);
  (*(v14 + 16))(v17, v41, a3);
  UncheckedSendable.init(_:)(v17, a3, v19);
  v28 = v38;
  closure #1 in AnyTransition.SecondVisitor.visit<A>(_:)(v19, v8, a3, v42, v43, v38);
  v29 = v39;
  v30 = v36;
  (*(v39 + 32))(v36, v28, v9);
  swift_getWitnessTable();
  v31 = specialized AnyTransition.init<A>(_:)(v30, v9);
  (*(v29 + 8))(v30, v9);
  v32 = *(v44 + 36);

  *(v5 + v32) = v31;
  (*(v37 + 8))(v19, v40);
  return (*(v34 + 8))(v27, v35);
}

uint64_t closure #1 in AnyTransition.SecondVisitor.visit<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v10 = type metadata accessor for CombiningTransition();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  Transition.combined<A>(with:)(a1, a2, a3, v14 - v11);
  return UncheckedSendable.init(_:)(v12, v10, a6);
}

uint64_t Transition.combined<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return CombiningTransition.init(transition1:transition2:)(v14, v10, a2, a3, a4);
}

uint64_t CombiningTransition.init(transition1:transition2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for CombiningTransition();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t getEnumTagSinglePayload for GroupElementsOfContent(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x40)
  {
    v3 = 64;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = (v3 & 0xFFFFFFFFFFFFFFF8) + 24;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483646;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_5:
      v4 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v12 = v11 - 1;
  if (v7)
  {
    v12 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v12) ^ 0x80000000;
}

__n128 _StrokedShape.init(shape:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for _StrokedShape() + 36);
  result = *a2;
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 32) = *(a2 + 32);
  return result;
}

uint64_t _BackgroundModifier.init(background:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for _BackgroundModifier();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t static CustomAnimationModifiedContent.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for CustomAnimationModifiedContent();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t closure #4 in SharedFrame.updateValue()(uint64_t a1)
{
  v2 = a1;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v4 + 112);
  if (v3 >= *(v6 + 16))
  {
    goto LABEL_19;
  }

  v7 = *(v6 + (v3 << 6) + 80);
  v8 = *(v7 + 16);
  if (v8 >= 2)
  {

    v9 = v7 + 72;
    v10 = 1;
    v4 = &type metadata for _GraphInputs.Phase;
    while (1)
    {
      if (v10 >= v8)
      {
        __break(1u);
        goto LABEL_18;
      }

      v1 = *(v9 - 8);
      if ((*AGGraphGetValue() & 1) == 0)
      {
        type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
        if (*(AGGraphGetValue() + 24) == 1)
        {
          break;
        }
      }

      ++v10;
      v9 += 28;
      if (v8 == v10)
      {
      }
    }

    v1 = *(v2 + 8);
    v4 = *(v2 + 16);
    swift_beginAccess();
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    v11 = *(v1 + 112);
    if (v4 < *(v11 + 16))
    {
      outlined init with copy of AnyHashable(v11 + (v4 << 6) + 40, v13);
      _StringGuts.grow(_:)(98);
      MEMORY[0x193ABEDD0](0xD000000000000032, 0x800000018DD792E0);
      v12 = AnyHashable.description.getter();
      MEMORY[0x193ABEDD0](v12);

      MEMORY[0x193ABEDD0](0xD00000000000002ELL, 0x800000018DD79320);
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

      v4 = *(v2 + 8);
      v1 = *(v2 + 16);
      swift_beginAccess();
      v2 = *(v4 + 112);

      result = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 112) = v2;
      if ((result & 1) == 0)
      {
        goto LABEL_22;
      }

      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    if ((v1 & 0x8000000000000000) == 0)
    {
LABEL_13:
      if (v1 < *(v2 + 16))
      {
        *(v2 + (v1 << 6) + 92) = 1;
        *(v4 + 112) = v2;
        swift_endAccess();

        outlined destroy of AnyHashable(v13);
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t assignWithCopy for HoverEffectContext(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];

  return a1;
}

uint64_t assignWithCopy for StateObject(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of StateObject<A>.Storage<A>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of StateObject<A>.Storage<A>(v6, v7, v8);
  return a1;
}

uint64_t specialized static DisplayList.BackdropGroup.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return 1;
}

uint64_t StaticLayoutComputer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 4);
  v8 = *(v1 + 8);
  v9 = *(a1 + 24);
  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  WitnessTable = swift_getWitnessTable();
  StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v6, v7, v8, a1, v3, WitnessTable, v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t destroy for ContentTransition.State(uint64_t a1)
{
  outlined consume of ContentTransition.Storage(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 13));
}

void type metadata accessor for (Int, RBDisplayListContents)()
{
  if (!lazy cache variable for type metadata for (Int, RBDisplayListContents))
  {
    type metadata accessor for RBDisplayListContents();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, RBDisplayListContents));
    }
  }
}

uint64_t Transaction._animationFrameInterval.setter(uint64_t a1, char a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v2, a1, a2 & 1);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(v6, v13);
  if (!result)
  {
    goto LABEL_8;
  }

  v10 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v11 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>();
    v12 = swift_allocObject();
    *(v12 + 72) = *&a2;
    *(v12 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v11);
  }

  if (*(result + 9) != *&a2)
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_8;
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
    lazy protocol witness table accessor for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationFrameIntervalKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationFrameIntervalKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

uint64_t Transaction._animationReason.setter(unint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1, a1 | ((HIDWORD(a1) & 1) << 32));
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(v4, v11);
  if (!result)
  {
    goto LABEL_8;
  }

  v8 = *(result + 76);
  if ((a2 & 0x100000000) != 0)
  {
    if (*(result + 76))
    {
      return result;
    }

LABEL_8:
    v9 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationReasonKey>>();
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 76) = BYTE4(a2) & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  if (*(result + 18) != a2)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationReasonKey>, &type metadata for AnimationReasonKey, &protocol witness table for AnimationReasonKey, type metadata accessor for TransactionPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationReasonKey> and conformance TransactionPropertyKey<A>);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CoreSystem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for AnimatorState.Fork()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(int a1, char *a2, uint64_t a3, char a4, char *a5, unint64_t a6)
{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEffectLocalModifier, type metadata accessor for GlassEffectLocalModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for Rectangle.AsymmetricalInset, type metadata accessor for Rectangle.AsymmetricalInset.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for _GlassContainerStorageView, type metadata accessor for _GlassContainerStorageView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEntryContainerView, type metadata accessor for GlassEntryContainerView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for CombinedContentShape, type metadata accessor for CombinedContentShape.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassTransitionStateModifier, type metadata accessor for GlassTransitionStateModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for KickModifier, type metadata accessor for KickModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEffectShapeModifier, type metadata accessor for GlassEffectShapeModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for FlexInteractionModifier, type metadata accessor for FlexInteractionModifier.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for VariableBlurEffect, type metadata accessor for VariableBlurEffect.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEffectView, type metadata accessor for GlassEffectView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassEntryView, type metadata accessor for GlassEntryView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for SummarySymbol, type metadata accessor for SummarySymbol.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for GlassItemView, type metadata accessor for GlassItemView.Type);
}

{

  specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, a2, a3, a4, a5, a6, &type metadata for DistanceGesture, type metadata accessor for DistanceGesture.Type);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _GeometryGroupEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t specialized MaterialProvider.foregroundEnvironment(_:for:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 | (*(a2 + 12) << 32);
  v6 = *a1;
  outlined copy of Material.ID(*a2, *(a2 + 8));
  swift_retain_n();
  outlined copy of Material.ID(v3, v4);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a1, v3, v5);

  outlined consume of Material.ID(v3, v4);
  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v6, *a1);
  }

  return outlined consume of Material.ID(v3, v4);
}

uint64_t one-time initialization function for kitTracking()
{
  result = MEMORY[0x193ABEC20](0x696B636172545443, 0xEA0000000000676ELL);
  static NSAttributedStringKey.kitTracking = result;
  return result;
}

void specialized closure #1 in DynamicBody.updateValue()(_OWORD *a1, uint64_t a2, char *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = *(a2 + 8);
  LODWORD(v33[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v33) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v26 = v12;
    swift_once();
    v12 = v26;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v29 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v35 = v15;
          *(&v35 + 1) = v16;
          LOBYTE(v36) = OutputValue != 0;
          BYTE1(v36) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v31 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v31;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v30 = OutputValue != 0;
  v28 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v28, v10, v8, v9 | (v10 << 32), v30, v31, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v28, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v28, -1, -1);
LABEL_28:
  v23 = a1[1];
  v33[0] = *a1;
  v33[1] = v23;
  v34[0] = a1[2];
  v24 = v34[0];
  *(v34 + 9) = *(a1 + 41);
  v25 = *a3;
  v35 = v33[0];
  v36 = v23;
  v37[0] = v24;
  *(v37 + 9) = *(v34 + 9);
  if (v25)
  {
    outlined init with copy of GlassEffectLocalModifier(v33, v32);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v35);
    outlined destroy of GlassEffectLocalModifier(v33);
  }
}

{
  v37 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  LODWORD(v32[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v17;
        if (v10 + v19 == 1)
        {
          v17 = 0;
        }

        else
        {
          v17 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v16] = v20 & 0x7FFFFFFF;
          v18 = -v19;
          if (!__OFADD__(v16++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v34 = v15;
          *(&v34 + 1) = v16;
          LOBYTE(v35) = OutputValue != 0;
          BYTE1(v35) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), v29, v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  v23 = a1[1];
  v32[0] = *a1;
  v32[1] = v23;
  v33[0] = a1[2];
  *(v33 + 9) = *(a1 + 41);
  if (*a3)
  {
    v24 = a1[1];
    v34 = *a1;
    v35 = v24;
    v36[0] = a1[2];
    *(v36 + 9) = *(a1 + 41);
    outlined init with copy of _GlassContainerStorageView(v32, v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v34);
    outlined destroy of _GlassContainerStorageView(v32);
  }
}

{
  v5 = v3;
  v52 = *MEMORY[0x1E69E9840];
  v44 = *(a2 + 8);
  LODWORD(v37[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v37) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>(), !AGGraphGetOutputValue()))
  {
    v9 = 1;
  }

  else
  {
    v9 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v9;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>();
  OutputValue = AGGraphGetOutputValue();
  v14 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v4 = v14;
    swift_once();
    v14 = v4;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    v4 = v3;
    v5 = OutputValue;
    if (v12 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v14);
      v18 = &v34 - v17;
      v19 = 0;
      v20 = 0;
      v21 = 0;
LABEL_13:
      v22 = -v21;
      while ((v12 + v22) | v20)
      {
        if (!v10)
        {
          goto LABEL_38;
        }

        v24 = v10 + v20;
        if (v12 + v22 == 1)
        {
          v20 = 0;
        }

        else
        {
          v20 += *(v24 + 8);
        }

        v23 = *(v24 + 12);
        --v22;
        if (v23 < 0)
        {
          *&v18[8 * v19] = v23 & 0x7FFFFFFF;
          v21 = -v22;
          if (!__OFADD__(v19++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = *(v16 + 616);
        if (*(v26 + 16) >= 0x45uLL)
        {
          if (*(v26 + 100) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            *&v44 = v18;
            *(&v44 + 1) = v19;
            LOBYTE(v45) = v5 != 0;
            BYTE1(v45) = v15;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }

          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v35 = v14;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v14 = v35;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v33 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v33, v12, v10, v11 | (v12 << 32), v5 != 0, v35, 7);
  if (v4)
  {

    MEMORY[0x193AC4820](v33, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v33, -1, -1);
LABEL_28:
  v27 = a1[5];
  v40 = a1[4];
  v41 = v27;
  v28 = a1[7];
  v42 = a1[6];
  v43 = v28;
  v29 = a1[1];
  v37[0] = *a1;
  v37[1] = v29;
  v30 = a1[3];
  v38 = a1[2];
  v39 = v30;
  v31 = *a3;
  v46 = v38;
  v47 = v30;
  v44 = v37[0];
  v45 = v29;
  v50 = v42;
  v51 = v28;
  v48 = v40;
  v49 = v27;
  if (v31)
  {
    outlined init with copy of TranslationKickModifier<Int>(v37, &v36);
    specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v44);
    outlined destroy of TranslationKickModifier<Int>(v37);
  }
}

{
  v37 = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 8);
  LODWORD(v32[0]) = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, v32) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Rectangle, MeshGradient>(), !AGGraphGetOutputValue()))
  {
    v7 = 1;
  }

  else
  {
    v7 = AGGraphCurrentAttributeWasModified();
  }

  *a3 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x45uLL)
  {
    __break(1u);
  }

  else
  {
    if (*(static CustomEventTrace.enabledCategories + 100) != 1)
    {
      goto LABEL_28;
    }

    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v28 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v17;
      while ((v10 + v19) | v16)
      {
        if (!v8)
        {
          goto LABEL_38;
        }

        v21 = v8 + v16;
        if (v10 + v19 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 += *(v21 + 8);
        }

        v20 = *(v21 + 12);
        --v19;
        if (v20 < 0)
        {
          *&v15[8 * v18] = v20 & 0x7FFFFFFF;
          v17 = -v19;
          if (!__OFADD__(v18++, 1))
          {
            goto LABEL_13;
          }

          __break(1u);
          break;
        }
      }

      if (v18 < 0)
      {
        __break(1u);
      }

      else if (*(static CustomEventTrace.enabledCategories + 2) >= 0x45uLL)
      {
        if (*(static CustomEventTrace.enabledCategories + 100) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
          *&v34 = v15;
          *(&v34 + 1) = v18;
          LOBYTE(v35) = OutputValue != 0;
          BYTE1(v35) = v13;
          type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
          AGGraphAddTraceEvent();
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  v30 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v30;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  v29 = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), v29, v30, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
LABEL_28:
  v23 = a1[1];
  v32[0] = *a1;
  v32[1] = v23;
  v33[0] = a1[2];
  *(v33 + 10) = *(a1 + 42);
  if (*a3 == 1)
  {
    v24 = a1[1];
    v34 = *a1;
    v35 = v24;
    v36[0] = a1[2];
    *(v36 + 10) = *(a1 + 42);
    outlined init with copy of MeshGradient(v32, v31);
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v34);
    outlined destroy of MeshGradient(v32);
  }
}

uint64_t partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 44);
  v8 = *MEMORY[0x1E698D3F8];
  result = a2(0, v5, v6);
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v8 == v7)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  *(a1 + 8) = v11;
  return result;
}

uint64_t partial apply for closure #2 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t a1)
{
  v3 = *(v1 + 44);
  v4 = *MEMORY[0x1E698D3F8];
  result = type metadata accessor for UnaryChildGeometry();
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (v4 == v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  *(a1 + 12) = v7;
  return result;
}

{
  v3 = *(v1 + 44);
  v4 = *MEMORY[0x1E698D3F8];
  result = type metadata accessor for UnaryPositionAwareChildGeometry();
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (v4 == v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  *(a1 + 24) = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>()
{
  result = lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>;
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>);
  }

  return result;
}

void type metadata accessor for VTable<_AnyAnimatableData.Empty>()
{
  if (!lazy cache variable for type metadata for VTable<_AnyAnimatableData.Empty>)
  {
    lazy protocol witness table accessor for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty();
    v0 = type metadata accessor for VTable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VTable<_AnyAnimatableData.Empty>);
    }
  }
}

void one-time initialization function for empty()
{
  type metadata accessor for VTable<_AnyAnimatableData.Empty>();
  qword_1EAB14480 = &type metadata for EmptyAnimatableData;
  static _AnyAnimatableData.empty = v0;
}

uint64_t specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<X0>(uint64_t *a1@<X0>, Swift::UInt32 a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;

  return _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA03AnyD0V_Tt3B5(v9, a2, a3, a4, a5);
}

uint64_t _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA03AnyD0V_Tt3B5@<X0>(uint64_t a1@<X0>, Swift::UInt32 a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 1;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 1;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0u;
  *(a5 + 216) = 0u;
  *(a5 + 232) = 1;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(a5 + 352) = 0;
  *(a5 + 280) = 0;
  *(a5 + 288) = 0;
  *(a5 + 272) = v9;
  *(a5 + 296) = 0;
  *(a5 + 304) = 0;
  *(a5 + 312) = 0;
  *(a5 + 320) = 0;
  *(a5 + 328) = 0;
  *(a5 + 336) = 0;
  *(a5 + 344) = 0;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(v14) = 0;
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v10 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a5 + 64) = v10;
  *a5 = a1;
  v14 = a3;
  v15 = a4;
  v16 = 0;
  v17 = v10;
  v11 = *(*a1 + 88);

  v11(&v14);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance _VStackLayout(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, void, void, void))
{
  if (*(a1 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return a4(*a1, *(a1 + 1), v5 | *(a1 + 16), *v4, *(v4 + 8), *(v4 + 16));
}

uint64_t _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA03AnyC0VG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    outlined init with copy of ViewLayoutEngine<AnyLayout>(a1, v10);
    type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<AnyLayout>>();
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 376) = v7;
    *(v4 + 380) = v6;
    v8 = (v4 + 16);
  }

  else
  {
    outlined init with copy of ViewLayoutEngine<AnyLayout>(a1, v10);
    type metadata accessor for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>();
    v4 = swift_allocObject();
    v8 = (v4 + 16);
  }

  memcpy(v8, v10, 0x168uLL);
  result = outlined destroy of ViewLayoutEngine<AnyLayout>(a1);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

double static Material.Layer.Filter.colorMatrix(_:isPremultiplied:)@<D0>(__int128 *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = a1[3];
  v12 = a1[2];
  v13 = v4;
  v14 = a1[4];
  v5 = a1[1];
  v10 = *a1;
  v11 = v5;
  LOBYTE(v15) = a2;
  _s7SwiftUI14GraphicsFilterOWOi5_(&v10);
  v6 = v15;
  a3[4] = v14;
  a3[5] = v6;
  a3[6] = v16[0];
  *(a3 + 108) = *(v16 + 12);
  v7 = v11;
  *a3 = v10;
  a3[1] = v7;
  result = *&v12;
  v9 = v13;
  a3[2] = v12;
  a3[3] = v9;
  return result;
}

double one-time initialization function for defaultContentGroup()
{
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_18DDBA140;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0x80;
  *(v0 + 40) = v2;
  *(v0 + 48) = v2;
  static SDFStyle.defaultContentGroup = v0 | 0x8000000000000000;
  return result;
}

uint64_t sub_18D28B1B8()
{

  return swift_deallocObject();
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  swift_getWitnessTable();
  return static RendererEffect._viewListCount(inputs:body:)(a1, a2);
}

{
  return protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect(a1, a2);
}

uint64_t static RendererEffect._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t Material._apply(to:)(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(result + 24);
  if (v6 > 2)
  {
    if (v6 != 3 && v6 == 4)
    {
      v15 = (result + 48);
      v16 = *(result + 48);
      outlined copy of Material.ID(*v1, *(v1 + 8));

      outlined copy of Material.ID(v3, v4);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v15, v3, v4 | (v5 << 32));

      outlined consume of Material.ID(v3, v4);
      if (v15[1])
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v16, *v15);
      }

      return outlined consume of Material.ID(v3, v4);
    }
  }

  else if (*(result + 24))
  {
    if (v6 == 1)
    {
      v7 = *(result + 8);
      if (v7 == *(result + 16))
      {
        return result;
      }

      v22 = *result;
      v8 = *(result + 48);
      v9 = *(result + 56);
      v10 = *(result + 105);
      v11 = *(result + 106);
      v37 = v8;
      v38 = v9;
      *&v35[0] = v3;
      BYTE8(v35[0]) = v4;
      HIDWORD(v35[0]) = v5;
      v12 = EnvironmentValues.materialProvider(for:)(v35);
      if (v12)
      {
        v29 = 1;
        v28 = 1;
        *&v30 = v8;
        *(&v30 + 1) = v9;
        LOBYTE(v31) = v10;
        BYTE1(v31) = v11;
        v32 = 0;
        *&v33 = 0;
        BYTE8(v33) = 1;
        memset(v34, 0, 24);
        v34[24] = 1;
        v25 = v33;
        v26[0] = 0uLL;
        *(v26 + 9) = *&v34[9];
        v23 = v30;
        v24 = v31;
        v21 = *(*v12 + 80);
        outlined copy of Material.ID(v3, v4);

        outlined init with copy of Material.Context(&v30, &v37);
        v21(&v27, &v23);

        v35[2] = v25;
        v36[0] = v26[0];
        *(v36 + 9) = *(v26 + 9);
        v35[0] = v23;
        v35[1] = v24;
        outlined destroy of Material.Context(v35);
        v37 = v8;
        v38 = v9;
        v39 = v10;
        v40 = v11;
        v41 = 0;
        v42 = 0;
        v43 = 1;
        v45 = 0;
        v46 = 0;
        v44 = 0;
        v47 = 1;
        outlined destroy of Material.Context(&v37);
        v13 = v27;
        outlined consume of Material.ID(v3, v4);
        LOBYTE(v4) = 2;
        outlined copy of Material.ID(v13, 2u);
        outlined consume of Material.ID(v13, 2u);
        v3 = v13;
      }

      else
      {
        v37 = v8;
        v38 = v9;

        LODWORD(v5) = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v37) | v5;
        outlined copy of Material.ID(v3, v4);
      }

      v37 = v3;
      LOBYTE(v38) = v4;
      HIDWORD(v38) = v5;
      v48 = 3;
      v49 = 1065353216;
      v50 = 0;
      v51 = -1;
      v52 = MEMORY[0x1E69E7CC0];
      LOBYTE(v30) = v22;
      if (*(v2 + 40) == 1)
      {
        v19 = *(v2 + 32);
        outlined copy of Material.ID(v3, v4);
        outlined copy of _ShapeStyle_Shape.Result(v19, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v19, 1u);
        *(v2 + 32) = 0;
        *(v2 + 40) = 5;
      }

      else
      {
        outlined copy of Material.ID(v3, v4);
        v19 = MEMORY[0x1E69E7CC0];
      }

      *&v35[0] = v19;
      _ShapeStyle_Pack.subscript.setter(&v37, &v30, v7);
      outlined consume of Material.ID(v3, v4);
      v20 = *&v35[0];
      result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
      *(v2 + 32) = v20;
      v18 = 1;
    }

    else
    {
      type metadata accessor for MaterialView<Rectangle>(0, &lazy cache variable for type metadata for ColorBox<Color.BackgroundColorProvider>, lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider, &type metadata for Color.BackgroundColorProvider, type metadata accessor for ColorBox);
      v17 = swift_allocObject();
      result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
      *(v2 + 32) = v17;
      v18 = 3;
    }

    *(v2 + 40) = v18;
  }

  else
  {
    result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
  }

  return result;
}

double static Material.Layer.Filter.luminanceCurve(_:amount:)@<D0>(__n128 *a1@<X8>, __n128 a2@<Q0>, double a3@<D1>)
{
  v4 = a3;
  v9 = a2;
  v10.n128_f32[0] = v4;
  _s7SwiftUI14GraphicsFilterOWOi15_(&v9);
  v5 = v14;
  a1[4] = v13;
  a1[5] = v5;
  a1[6] = v15[0];
  *(a1 + 108) = *(v15 + 12);
  v6 = v10;
  *a1 = v9;
  a1[1] = v6;
  result = v11.n128_f64[0];
  v8 = v12;
  a1[2] = v11;
  a1[3] = v8;
  return result;
}

double static Material.Layer.Filter.saturation(amount:)@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  *v7 = a2;
  _s7SwiftUI14GraphicsFilterOWOi9_(v7);
  v3 = v11;
  a1[4] = v10;
  a1[5] = v3;
  a1[6] = v12[0];
  *(a1 + 108) = *(v12 + 12);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

double static Material.Layer.Filter.brightness(amount:)@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  *v7 = a2;
  _s7SwiftUI14GraphicsFilterOWOi10_(v7);
  v3 = v11;
  a1[4] = v10;
  a1[5] = v3;
  a1[6] = v12[0];
  *(a1 + 108) = *(v12 + 12);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Any>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Any>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>);
    }
  }
}

unint64_t type metadata accessor for NSArray()
{
  result = lazy cache variable for type metadata for NSArray;
  if (!lazy cache variable for type metadata for NSArray)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSArray);
  }

  return result;
}

Swift::Void __swiftcall Path.addCurve(to:control1:control2:)(CGPoint to, CGPoint control1, CGPoint control2)
{
  v4 = v3;
  y = control2.y;
  x = control2.x;
  v7 = control1.y;
  v8 = control1.x;
  v9 = to.y;
  v10 = to.x;
  v25 = *MEMORY[0x1E69E9840];
  v11 = *v3;
  v13 = (v3 + 8);
  v12 = *(v3 + 8);
  v14 = *(v3 + 32);
  if (v14 == 5)
  {
    v15 = *v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v15 = swift_allocObject();
      *(v15 + 24) = 0u;
      *(v15 + 40) = 0u;
      *(v15 + 56) = 0u;
      *(v15 + 72) = 0u;
      *(v15 + 88) = 0u;
      *(v15 + 104) = 0u;
      v16 = *(v11 + 16);
      *(v15 + 16) = v16;
      if (v16)
      {
        if (v16 == 1)
        {

          *(v15 + 24) = RBPathRetain();
          *(v15 + 32) = v17;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v21 = *(v11 + 24);
        if (!v21)
        {
          __break(1u);
          return;
        }

        *(v15 + 24) = v21;
        v22 = v21;
      }
    }

    v11 = 0;
    v12 = 0;
    v18 = 0;
    v19 = 0;
    LOBYTE(v14) = 6;
  }

  else
  {
    v18 = *(v3 + 16);
    v19 = *(v3 + 24);
    type metadata accessor for Path.PathBox();
    v15 = swift_allocObject();
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0u;
    *(v15 + 16) = 2;
    RBPathStorageInit();
    v20 = *(v15 + 16);

    if (v20 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v23[6] = v11;
    v23[7] = v12;
    v23[8] = v18;
    v23[9] = v19;
    v24 = v14;
    Path.append(to:)(v15 + 24);
  }

  outlined consume of Path.Storage(v11, v12, v18, v19, v14);
  *v4 = v15;
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *(v4 + 32) = 5;
  if (*(v15 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v23 = v8;
  *&v23[1] = v7;
  *&v23[2] = x;
  *&v23[3] = y;
  *&v23[4] = v10;
  *&v23[5] = v9;
  MEMORY[0x193AC35E0](v15 + 24, 3, v23, 0);
}

void Path.trimmedPath(from:to:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  if (v11 <= 2)
  {
    if (v11 >= 2)
    {
      if (CGRectIsNull(*(v7 + 16)))
      {
        goto LABEL_23;
      }
    }

    else if (CGRectIsNull(*v3))
    {
      goto LABEL_23;
    }

LABEL_18:
    if (a2 <= 0.0 && a3 >= 1.0)
    {
      outlined copy of Path.Storage(v7, v8, v9, v10, v11);
      goto LABEL_24;
    }

    if (a3 > a2)
    {
      Path.retainRBPath()();
      type metadata accessor for Path.PathBox();
      v7 = swift_allocObject();
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 16) = 2;
      RBPathStorageInit();
      *v14 = a2;
      *&v14[1] = a3;
      MEMORY[0x193AC35E0](v7 + 24, 18, v14, 0);
      Path.append(to:)(v7 + 24);
      MEMORY[0x193AC35E0](v7 + 24, 16, 0, 0);
      RBPathRelease();
      v8 = 0;
      v9 = 0;
      v10 = 0;
      LOBYTE(v11) = 5;
      goto LABEL_24;
    }

LABEL_23:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 6;
    goto LABEL_24;
  }

  if (v11 == 5)
  {
    if (*(v7 + 16))
    {
      if (*(v7 + 16) != 1)
      {
        v12 = one-time initialization token for bufferCallbacks;

        if (v12 != -1)
        {
          swift_once();
        }

LABEL_17:
        IsEmpty = RBPathIsEmpty();
        outlined destroy of Path(v3);
        if (IsEmpty)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_8:

      goto LABEL_17;
    }

    if (*(v7 + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (v11 == 6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_24:
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in Path.forEach(_:)(void (**a1)(__int128 *), uint64_t a2)
{
  LODWORD(v2) = *a2;
  if (*a2 <= 1)
  {
    if (!v2)
    {
      v3 = *a1;
      v8 = **(a2 + 8);
      v9 = 0u;
      v10 = 0u;
      v11 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = *a1;
      v8 = **(a2 + 8);
      v9 = 0u;
      v10 = 0u;
      LOBYTE(v2) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = *a1;
        v2 = *(a2 + 8);
        v4 = *v2;
        v8 = v2[1];
        v9 = v4;
        v10 = 0uLL;
        LOBYTE(v2) = 2;
        goto LABEL_11;
      case 3:
        v3 = *a1;
        v2 = *(a2 + 8);
        v5 = v2[1];
        v6 = *v2;
        v8 = v2[2];
        v9 = v6;
        v10 = v5;
        LOBYTE(v2) = 3;
        goto LABEL_11;
      case 4:
        v3 = *a1;
        v8 = 0u;
        v9 = 0u;
        v10 = 0u;
LABEL_11:
        v11 = v2;
LABEL_12:

        v3(&v8);

        break;
    }
  }

  return 1;
}

double _BackgroundShapeModifier.shape(in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  (*(*(a2 + 40) + 24))(v15, *(a2 + 24), 0.0, 0.0, a3, a4);
  v7 = v16;
  v8 = (v4 + *(a2 + 56));
  v9 = *v8;
  LODWORD(v8) = v8[1];
  v10 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v10;
  v11 = v8 == 0;
  v12 = 0x10000;
  if (v11)
  {
    v12 = 0;
  }

  v11 = v9 == 0;
  v13 = 256;
  if (v11)
  {
    v13 = 0;
  }

  *(a1 + 32) = v13 | v7 | v12;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  return 0.0;
}

uint64_t static Material.Layer.backdrop(scale:color:filters:)@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>, double a3@<D0>, unsigned int a4@<S1>, unsigned int a5@<S2>, unsigned int a6@<S3>, unsigned int a7@<S4>)
{
  a2[2].i32[1] = 1065353216;
  v11 = one-time initialization token for normal;

  if (v11 != -1)
  {
    swift_once();
  }

  *&v12 = a3;
  v13 = static GraphicsBlendMode.normal;
  v14 = byte_1ED52F818;
  a2[2].i64[1] = static GraphicsBlendMode.normal;
  a2[3].i8[0] = v14;
  v15.i64[0] = v12;
  v15.i64[1] = a5;
  *a2 = vorrq_s8(vshll_n_s32(__PAIR64__(a6, a4), 0x20uLL), v15);
  a2[1].i64[0] = a7 | 0x7FC0000000000000;
  a2[1].i64[1] = a1;
  a2[2].i8[0] = 1;

  return outlined copy of GraphicsBlendMode(v13, v14);
}

void _ShapeStyle_RenderedShape.bounds.getter()
{
  v1 = v0[1];
  v46 = *v0;
  v47 = v1;
  *&v51[12] = *(v0 + 92);
  v2 = v0[5];
  v50 = v0[4];
  *v51 = v2;
  v3 = v0[3];
  v48 = v0[2];
  v49 = v3;
  v4 = *&v51[24] >> 29;
  if (*&v51[24] >> 29 == 4)
  {
    return;
  }

  v5 = v46;
  if (v4 == 1)
  {
    v11 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
    v14 = *(v46 + 16);
    if (!v14)
    {
LABEL_28:
      v55.origin.x = v11;
      v55.origin.y = v10;
      v55.size.width = v13;
      v55.size.height = v12;
      CGRectIsNull(v55);
      return;
    }

    v15 = 0;
    v16 = (v46 + 64);
    v42 = *(MEMORY[0x1E695F050] + 24);
    v43 = *(MEMORY[0x1E695F050] + 16);
    v44 = *(MEMORY[0x1E695F050] + 8);
    v45 = *MEMORY[0x1E695F050];
    while (1)
    {
      if (v15 >= *(v5 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v21 = *(v16 - 4);
      v22 = *(v16 - 3);
      v23 = *(v16 - 2);
      v24 = *(v16 - 1);
      v25 = *v16;
      if (v25 > 2)
      {
        if (v25 == 5)
        {
          if (*(v21 + 16))
          {
            if (*(v21 + 16) == 1)
            {
              outlined copy of Path.Storage(*(v16 - 4), *(v16 - 3), *(v16 - 2), *(v16 - 1), 5u);
              v5 = v46;
              RBPathGetBoundingRect();
            }

            else
            {
              outlined copy of Path.Storage(*(v16 - 4), *(v16 - 3), *(v16 - 2), *(v16 - 1), 5u);
              v30 = MEMORY[0x193AC3640](v21 + 24);
            }

            v17 = v30;
            v18 = v31;
            v19 = v32;
            v20 = v33;
            goto LABEL_11;
          }

          v34 = *(v21 + 24);
          if (!v34)
          {
            goto LABEL_43;
          }

          v35 = v34;
          outlined copy of Path.Storage(v21, v22, v23, v24, 5u);
          outlined copy of Path.Storage(v21, v22, v23, v24, 5u);
          PathBoundingBox = CGPathGetPathBoundingBox(v35);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;

          outlined consume of Path.Storage(v21, v22, v23, v24, 5u);
          goto LABEL_24;
        }

        v18 = v44;
        v17 = v45;
        v20 = v42;
        v19 = v43;
        if (v25 != 6)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v25 >= 2)
        {
          x = *(v21 + 16);
          y = *(v21 + 24);
          width = *(v21 + 32);
          height = *(v21 + 40);
          outlined copy of Path.Storage(*(v16 - 4), *(v16 - 3), *(v16 - 2), *(v16 - 1), 2u);
LABEL_24:
          v20 = height;
          v19 = width;
          v18 = y;
          v17 = x;
          goto LABEL_11;
        }

        v17 = *(v16 - 4);
        v18 = *(v16 - 3);
        v19 = *(v16 - 2);
        v20 = *(v16 - 1);
      }

LABEL_11:
      ++v15;
      v52.origin.x = v11;
      v52.origin.y = v10;
      v52.size.width = v13;
      v52.size.height = v12;
      v53 = CGRectUnion(v52, *&v17);
      v11 = v53.origin.x;
      v10 = v53.origin.y;
      v13 = v53.size.width;
      v12 = v53.size.height;
      outlined consume of Path.Storage(v21, v22, v23, v24, v25);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_28;
      }
    }
  }

  if (!v4)
  {
    if (v48 > 2u)
    {
      if (v48 == 5)
      {
        if (*(v46 + 16))
        {
          if (*(v46 + 16) == 1)
          {
            outlined copy of Path.Storage(v46, *(&v46 + 1), v47, *(&v47 + 1), 5u);
            RBPathGetBoundingRect();
          }

          else
          {
            outlined copy of Path.Storage(v46, *(&v46 + 1), v47, *(&v47 + 1), 5u);
            v36 = MEMORY[0x193AC3640](v46 + 24);
          }

          v6 = v36;
          v7 = v37;
          v8 = v38;
          v9 = v39;
        }

        else
        {
          v40 = *(v46 + 24);
          if (!v40)
          {
            goto LABEL_44;
          }

          v41 = v40;
          outlined copy of Path.Storage(v46, *(&v46 + 1), v47, *(&v47 + 1), 5u);
          v56 = CGPathGetPathBoundingBox(v41);
          v6 = v56.origin.x;
          v7 = v56.origin.y;
          v8 = v56.size.width;
          v9 = v56.size.height;
        }

        outlined destroy of _ShapeStyle_RenderedShape.Shape(&v46);
      }

      else
      {
        if (v48 != 6)
        {
          goto LABEL_45;
        }

        v6 = *MEMORY[0x1E695F050];
        v7 = *(MEMORY[0x1E695F050] + 8);
        v8 = *(MEMORY[0x1E695F050] + 16);
        v9 = *(MEMORY[0x1E695F050] + 24);
      }
    }

    else if (v48 && v48 != 1)
    {
      v6 = *(v46 + 16);
      v7 = *(v46 + 24);
      v8 = *(v46 + 32);
      v9 = *(v46 + 40);
    }

    else
    {
      v7 = *(&v46 + 1);
      v6 = *&v46;
      v9 = *(&v47 + 1);
      v8 = *&v47;
    }

    v57.origin.x = v6;
    v57.origin.y = v7;
    v57.size.width = v8;
    v57.size.height = v9;
    CGRectIsNull(v57);
  }
}

uint64_t Material.ResolvedMaterial.layers.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  if (v2 == 3)
  {
    if ((v1 & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      type metadata accessor for _ContiguousArrayStorage<Material.Layer>();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_18DDA6EB0;
      v6 = v1;
      v7 = 3;
      v8 = v3;
      Material.ResolvedMaterial.intelligenceLightSourceLayer.getter(v4 + 32);
      return v4;
    }
  }

  else if (v2 == 2)
  {
    outlined copy of Material.ID(v1, 2u);
    return v1;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static CoreMaterialCache.shared);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  outlined copy of Material.ID(v1, v2);
  v1 = CoreMaterialCache.subscript.getter(&v6);
  outlined consume of Material.ID(v6, v7);
  os_unfair_lock_unlock(&static CoreMaterialCache.shared);
  return v1;
}

uint64_t *MaterialLayers.append(item:opacity:blendMode:)(_OWORD *a1, uint64_t a2, float a3)
{
  v4 = v3;
  v5 = a1[1];
  v6 = a1[3];
  v43 = a1[2];
  v44[0] = v6;
  *(v44 + 12) = *(a1 + 60);
  v7 = a1[1];
  v42[0] = *a1;
  v42[1] = v7;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = a1[3];
  v40 = v43;
  *v41 = v10;
  *&v41[12] = *(a1 + 60);
  v11 = v7;
  v38 = v42[0];
  v39 = v5;
  if (a3 == 1.0)
  {
    outlined init with copy of DisplayList.Item(v42, &v34);
  }

  else
  {
    v12 = LODWORD(a3);
    v13 = *v41;
    v14 = *&v41[16];
    v15 = *(&v40 + 1);
    v34 = 0uLL;
    v35 = v7;
    v36 = v40;
    *v37 = *v41;
    *&v37[16] = *&v41[16];
    *&v37[24] = 0;
    outlined init with copy of DisplayList.Item(v42, v32);
    outlined copy of DisplayList.Item.Value(v15, v13, *(&v13 + 1), v14);
    DisplayList.init(_:)(&v34, v32);
    v16 = *&v32[0];
    v17 = WORD4(v32[0]) | (HIDWORD(v32[0]) << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(v15, v13, *(&v13 + 1), v14);
    *(&v40 + 1) = v12;
    *v41 = 0x400000000;
    *&v41[8] = v16;
    *&v41[16] = v17;
  }

  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v18 = static GraphicsBlendMode.normal;
  if (v9)
  {
    if (byte_1ED52F818)
    {
      outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, 1);
      outlined copy of GraphicsBlendMode(v8, 1);
      outlined consume of GraphicsBlendMode(v8, 1);
      outlined consume of GraphicsBlendMode(v18, 1);
      if (v8 == v18)
      {
        goto LABEL_13;
      }

LABEL_12:
      v19 = *v41;
      v20 = *&v41[16];
      v21 = *(&v40 + 1);
      v34 = 0uLL;
      v35 = v11;
      v36 = v40;
      *v37 = *v41;
      *&v37[16] = *&v41[16];
      *&v37[24] = 0;
      outlined copy of GraphicsBlendMode(v8, v9);
      outlined copy of DisplayList.Item.Value(v21, v19, *(&v19 + 1), v20);
      DisplayList.init(_:)(&v34, v32);
      v22 = *&v32[0];
      v23 = WORD4(v32[0]) | (HIDWORD(v32[0]) << 32) | 0x40000000;
      outlined consume of DisplayList.Item.Value(v21, v19, *(&v19 + 1), v20);
      *(&v40 + 1) = v8;
      *v41 = v9 | 0x500000000;
      *&v41[8] = v22;
      *&v41[16] = v23;
      goto LABEL_13;
    }

LABEL_11:
    swift_unknownObjectRetain();
    outlined consume of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v18, v9 ^ 1);
    goto LABEL_12;
  }

  if (byte_1ED52F818)
  {
    goto LABEL_11;
  }

  outlined consume of GraphicsBlendMode(v8, 0);
  outlined consume of GraphicsBlendMode(v18, 0);
  if (v8 != v18)
  {
    goto LABEL_12;
  }

LABEL_13:
  LOBYTE(v34) = *v4;
  DisplayList.Item.canonicalize(options:)(&v34);
  v36 = v40;
  *v37 = *v41;
  *&v37[12] = *&v41[12];
  v34 = v38;
  v35 = v39;
  v24 = *(v4 + 8);
  outlined init with copy of DisplayList.Item(&v34, v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[80 * v26];
  *(v27 + 2) = v34;
  v28 = v35;
  v29 = v36;
  v30 = *v37;
  *(v27 + 92) = *&v37[12];
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  *(v27 + 3) = v28;
  *(v4 + 8) = v24;
  v32[2] = v40;
  v33[0] = *v41;
  *(v33 + 12) = *&v41[12];
  v32[0] = v38;
  v32[1] = v39;
  return outlined destroy of DisplayList.Item(v32);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!__dst)
  {
    v14 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v14;
    return v6;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + (v6 << 7) - 96);
      while (v6 + v9 <= *(a4 + 16))
      {
        v11 = v10[5];
        v16[4] = v10[4];
        v16[5] = v11;
        v17[0] = v10[6];
        *(v17 + 12) = *(v10 + 108);
        v12 = v10[1];
        v16[0] = *v10;
        v16[1] = v12;
        v13 = v10[3];
        v16[2] = v10[2];
        v16[3] = v13;
        memmove(v8, v10, 0x7CuLL);
        if (a3 + v9 == 1)
        {
          outlined init with copy of GraphicsFilter(v16, v15);
          v14 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += 128;
        outlined init with copy of GraphicsFilter(v16, v15);
        --v9;
        v10 -= 8;
        v14 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFE8 && *(a1 + 124))
  {
    return (*a1 + 131049);
  }

  if ((((((*(a1 + 120) >> 13) & 0x1E000 | (*(a1 + 120) >> 11) & 0x1FFFu) >> 12) & 0xFFFE001F | (32 * ((*(a1 + 120) >> 11) & 0xF80 | (*(a1 + 120) >> 9) & 0xFFF))) ^ 0x1FFFF) >= 0x1FFE8)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((((*(a1 + 120) >> 13) & 0x1E000 | (*(a1 + 120) >> 11) & 0x1FFFu) >> 12) & 0xFFFE001F | (32 * ((*(a1 + 120) >> 11) & 0xF80 | (*(a1 + 120) >> 9) & 0xFFF))) ^ 0x1FFFF;
  }

  return v3 + 1;
}

uint64_t ForegroundEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MaterialView.ChildEnvironment.environment.getter(v19);
  v18[27] = 0;
  *&v14 = 0;
  v13 = 0uLL;
  BYTE8(v14) = 4;
  *&v15 = 0;
  BYTE8(v15) = 5;
  v16 = v19[0];
  v17 = 0u;
  memset(v18, 0, 24);
  v18[24] = 1;
  *&v18[25] = 768;
  Value = AGGraphGetValue();
  (*(v7 + 16))(v9, Value, a2);
  (*(a3 + 32))(&v13, a2, a3);
  (*(v7 + 8))(v9, a2);
  v11 = *(&v16 + 1);
  *a4 = v16;
  a4[1] = v11;
  v19[4] = v17;
  v20[0] = *v18;
  *(v20 + 12) = *&v18[12];
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v16;

  return outlined destroy of _ShapeStyle_Shape(v19);
}

uint64_t Path.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  Path.retainRBPath()();

  RBPathApply();

  RBPathRelease();
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

id *ForEachState.deinit()
{
  outlined destroy of _ViewListInputs((v0 + 2));

  v1 = *(*v0 + 20);
  type metadata accessor for ForEach();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 26);
  v4 = type metadata accessor for ForEachState.LazyEdits();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t destroy for ForEachState.LazyEdits(_DWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80) & 0xF8 | 7;
  v9 = *(v7 + 64) + 31;
  v10 = 16;
  if (((v9 + ((v8 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x10)
  {
    v10 = ((v9 + ((v8 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v11 = *(a1 + v10);
  if (v11 >= 2 && v10 != 0)
  {
    v11 = *a1 + 2;
  }

  if (v11 != 1)
  {
    (*(v4 + 8))(a1, v3);

    (*(v7 + 8))((((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, v6);
  }
}

uint64_t objectdestroy_44Tm()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t specialized ChildEnvironment.updateValue()()
{
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *(Value + 8);

  AGGraphGetValue();
  if (v6)
  {
    goto LABEL_10;
  }

  if ((v3 & 1) == 0)
  {

    goto LABEL_6;
  }

  if (!*(v0 + 8))
  {
LABEL_10:

    goto LABEL_11;
  }

  if (specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()())
  {
LABEL_11:
    swift_setAtWritableKeyPath();

    AGGraphSetOutputValue();

    *(v0 + 8) = v4;
    *(v0 + 16) = v5;
    return result;
  }

LABEL_6:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_11;
  }
}

{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
  Value = AGGraphGetValue();
  v2 = Value[1];
  v14 = *Value;
  v15 = v2;
  v4 = v3 & 1;
  v16 = v3 & 1;

  v5 = AGGraphGetValue();
  v6 = v5[1];
  v19 = *v5;
  v20 = v6;
  v21 = v7 & 1;
  if (v7)
  {

    goto LABEL_7;
  }

  if (v4)
  {
    MEMORY[0x1EEE9AC00](v5);
    v13[2] = &v14;
    v10 = *(v0 + 8);
    v11 = *(v0 + 16);

    v12 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD16RedactionReasonsVG_s5NeverOSbTB5(partial apply for specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), v13, v10, v11);
    if (v12 == 2 || (v12 & 1) != 0)
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
    v17 = v15;

    swift_setAtWritableKeyPath();

    v17 = v19;
    v18 = v20;

    AGGraphSetOutputValue();

    v8 = v15;
    *(v0 + 8) = v14;
    *(v0 + 16) = v8;
  }
}

{
  v21 = *MEMORY[0x1E69E9840];
  type metadata accessor for _EnvironmentKeyWritingModifier<Font?>();
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v19[0] = *Value;
  v19[1] = v3;
  v5 = v4 & 1;
  v20 = v4 & 1;

  v6 = AGGraphGetValue();
  v7 = v6[1];
  v16 = *v6;
  v17 = v7;
  v18 = v8 & 1;
  if (v8)
  {
  }

  else
  {
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      v13[2] = v19;
      v10 = *(v0 + 8);
      v11 = *(v0 + 16);

      v12 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD4FontVSgG_s5NeverOSbTg5(partial apply for specialized closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), v13, v10, v11);
      if (v12 == 2 || (v12 & 1) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if (AGGraphGetOutputValue())
    {
    }
  }

LABEL_7:
  v14 = v3;

  swift_setAtWritableKeyPath();

  v14 = v16;
  v15 = v17;

  AGGraphSetOutputValue();

  result = outlined consume of _EnvironmentKeyWritingModifier<Font?>?(*(v0 + 8));
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  return result;
}

uint64_t specialized DynamicBody.updateValue()()
{
  v1 = v0;
  v76 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v58 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v62 = v3;
  v65 = v10;
  if (v19 != v18 >> 1)
  {
    v60 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v74[0] = v26;
        (*(v25 + 112))(v74);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v62;
    v15 = v60;
  }

  Value = AGGraphGetValue();
  v29 = Value[1];
  v28 = Value[2];
  v30 = *Value;
  *(v75 + 9) = *(Value + 41);
  v74[1] = v29;
  v75[0] = v28;
  v74[0] = v30;
  v31 = Value[1];
  v71 = *Value;
  v72 = v31;
  v73[0] = Value[2];
  *(v73 + 9) = *(Value + 41);
  v66 = v32 & 1;
  outlined init with copy of GlassEffectLocalModifier(v74, &v68);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v33 = static ObservationCenter._current;
  swift_beginAccess();
  v34 = pthread_getspecific(v33[2]);
  v35 = v63;
  if (!v34)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(v33[2], v36);
    *(&v69 + 1) = type metadata accessor for ObservationCenter();
    *&v68 = v33[3];
    outlined init with take of Any(&v68, v36);
    v35 = v63;

    v34 = v36;
  }

  outlined init with copy of Any(v34, &v68);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v67;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v59 = v5;
  LODWORD(v60) = CurrentAttribute;
  swift_beginAccess();
  v63 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v40 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v71, v1, &v66);
  *(StatusReg + 848) = v40;
  v41 = v64;
  outlined init with take of ObservationTracking._AccessList?(v15, v64);
  outlined init with copy of ObservationTracking._AccessList?(v41, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v42 = (*(v3 + 48))(v35, 1, v2);
  v43 = v65;
  if (v42 != 1)
  {
    v33 = *(v3 + 32);
    (v33)(v65, v35, v2);
    (*(v3 + 16))(v61, v43, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v47 = *(v1 + 16);
      v46 = *(v1 + 24);
      if (v47 >= v46 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v1);
      }

      *(v1 + 16) = v47 + 1;
      v48 = v62;
      (v33)(v1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v62 + 72) * v47, v61, v2);
      v3 = v48;
      *(v37 + 24) = v1;
      (*(v48 + 8))(v65, v2);
      v44 = v64;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v3 + 16);
    v51 = v3 + 16;
    v64 = *(v37 + 24);
    v65 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      v65(v56, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v63;

  v68 = v71;
  v69 = v72;
  v70[0] = v73[0];
  *(v70 + 9) = *(v73 + 9);
  return outlined destroy of GlassEffectLocalModifier(&v68);
}

{
  v1 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v54 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v57 = v10;
  if (v21 != v20 >> 1)
  {
    v54 = v13;
    v55 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v61[0] = v28;
        (*(v27 + 112))(v61);
        --v25;
      }

      while (v26);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v13 = v54;
    v3 = v55;
  }

  Value = AGGraphGetValue();
  v30 = Value[1];
  v61[0] = *Value;
  v61[1] = v30;
  v60 = v31 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v32 = static ObservationCenter._current;
  swift_beginAccess();
  v33 = pthread_getspecific(*(v32 + 2));
  if (!v33)
  {
    v34 = swift_slowAlloc();
    pthread_setspecific(*(v32 + 2), v34);
    v63 = type metadata accessor for ObservationCenter();
    v19 = *(v32 + 3);
    *&v62 = v19;
    outlined init with take of Any(&v62, v34);

    v33 = v34;
  }

  outlined init with copy of Any(v33, &v62);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v35 = v59;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v37 = v13;
  swift_beginAccess();
  v55 = *(v35 + 24);
  *(v35 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v39 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v61, v1, &v60);
  *(StatusReg + 848) = v39;
  v40 = v58;
  outlined init with take of ObservationTracking._AccessList?(v16, v58);
  outlined init with copy of ObservationTracking._AccessList?(v40, v37, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v37, 1, v2) != 1)
  {
    v32 = *(v3 + 32);
    v43 = v57;
    v32(v57, v37, v2);
    (*(v3 + 16))(v56, v43, v2);
    v1 = *(v35 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v35 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v46 = *(v1 + 16);
      v45 = *(v1 + 24);
      if (v46 >= v45 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v1);
      }

      *(v1 + 16) = v46 + 1;
      v32((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v46), v56, v2);
      *(v35 + 24) = v1;
      v41 = v3;
      (*(v3 + 8))(v57, v2);
      v42 = v58;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v35 + 24) = v1;
    goto LABEL_18;
  }

  v41 = v3;
  outlined destroy of ObservationTracking._AccessList?(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v42 = v37;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v47 = *(v35 + 24);
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v41 + 16;
    v50 = *(v41 + 16);
    v51 = v47 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v52 = *(v49 + 56);
    v58 = *(v35 + 24);

    do
    {
      v50(v5, v51, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v49 - 8))(v5, v2);
      v51 += v52;
      --v48;
    }

    while (v48);
  }

  *(v35 + 24) = v55;
}

{
  v1 = v0;
  v76 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v58 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v62 = v3;
  v65 = v10;
  if (v19 != v18 >> 1)
  {
    v60 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v74[0] = v26;
        (*(v25 + 112))(v74);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v62;
    v15 = v60;
  }

  Value = AGGraphGetValue();
  v29 = Value[1];
  v28 = Value[2];
  v30 = *Value;
  *(v75 + 9) = *(Value + 41);
  v74[1] = v29;
  v75[0] = v28;
  v74[0] = v30;
  v31 = Value[1];
  v71 = *Value;
  v72 = v31;
  v73[0] = Value[2];
  *(v73 + 9) = *(Value + 41);
  v66 = v32 & 1;
  outlined init with copy of _GlassContainerStorageView(v74, &v68);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v33 = static ObservationCenter._current;
  swift_beginAccess();
  v34 = pthread_getspecific(v33[2]);
  v35 = v63;
  if (!v34)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(v33[2], v36);
    *(&v69 + 1) = type metadata accessor for ObservationCenter();
    *&v68 = v33[3];
    outlined init with take of Any(&v68, v36);
    v35 = v63;

    v34 = v36;
  }

  outlined init with copy of Any(v34, &v68);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v67;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v59 = v5;
  LODWORD(v60) = CurrentAttribute;
  swift_beginAccess();
  v63 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v40 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v71, v1, &v66);
  *(StatusReg + 848) = v40;
  v41 = v64;
  outlined init with take of ObservationTracking._AccessList?(v15, v64);
  outlined init with copy of ObservationTracking._AccessList?(v41, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v42 = (*(v3 + 48))(v35, 1, v2);
  v43 = v65;
  if (v42 != 1)
  {
    v33 = *(v3 + 32);
    (v33)(v65, v35, v2);
    (*(v3 + 16))(v61, v43, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v47 = *(v1 + 16);
      v46 = *(v1 + 24);
      if (v47 >= v46 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v1);
      }

      *(v1 + 16) = v47 + 1;
      v48 = v62;
      (v33)(v1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v62 + 72) * v47, v61, v2);
      v3 = v48;
      *(v37 + 24) = v1;
      (*(v48 + 8))(v65, v2);
      v44 = v64;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v3 + 16);
    v51 = v3 + 16;
    v64 = *(v37 + 24);
    v65 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      v65(v56, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v63;

  v68 = v71;
  v69 = v72;
  v70[0] = v73[0];
  *(v70 + 9) = *(v73 + 9);
  return outlined destroy of _GlassContainerStorageView(&v68);
}

{
  v1 = v0;
  v67[70] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v59 = v3;
  v62 = v10;
  if (v19 != v18 >> 1)
  {
    v57 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v67[0] = v26;
        (*(v25 + 112))(v67);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v59;
    v15 = v57;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v67, Value, 0x230uLL);
  memcpy(v66, Value, sizeof(v66));
  v63 = v29 & 1;
  outlined init with copy of GlassEntryContainerView(v67, v65);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v60;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *(&v65[1] + 1) = type metadata accessor for ObservationCenter();
    *&v65[0] = v30[3];
    outlined init with take of Any(v65, v33);
    v32 = v60;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v64;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v56 = v5;
  LODWORD(v57) = CurrentAttribute;
  swift_beginAccess();
  v60 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v66, v1, &v63);
  *(StatusReg + 848) = v37;
  v38 = v61;
  outlined init with take of ObservationTracking._AccessList?(v15, v61);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v62;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v62, v32, v2);
    (*(v3 + 16))(v58, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v45 = v59;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v59 + 72) * v44, v58, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v62, v2);
      v41 = v61;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v61 = *(v34 + 24);
    v62 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v57;
    v53 = v56;
    do
    {
      v62(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v60;

  memcpy(v65, v66, sizeof(v65));
  return outlined destroy of GlassEntryContainerView(v65);
}

{
  v1 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v53 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v57 = v10;
  if (v21 != v20 >> 1)
  {
    v54 = v13;
    v55 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v62 = v28;
        (*(v27 + 112))(&v62);
        --v25;
      }

      while (v26);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v13 = v54;
    v3 = v55;
  }

  v61 = *AGGraphGetValue();
  v60 = v29 & 1;
  v30 = one-time initialization token for _current;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(*(v31 + 2));
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(*(v31 + 2), v33);
    v63 = type metadata accessor for ObservationCenter();
    v19 = *(v31 + 3);
    *&v62 = v19;
    outlined init with take of Any(&v62, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v62);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v59;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v36 = v13;
  swift_beginAccess();
  v55 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v61, v1, &v60);
  *(StatusReg + 848) = v38;
  v39 = v58;
  outlined init with take of ObservationTracking._AccessList?(v16, v58);
  outlined init with copy of ObservationTracking._AccessList?(v39, v36, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v36, 1, v2) != 1)
  {
    v31 = *(v3 + 32);
    v42 = v57;
    v31(v57, v36, v2);
    (*(v3 + 16))(v56, v42, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v45 = *(v1 + 16);
      v44 = *(v1 + 24);
      if (v45 >= v44 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v1);
      }

      *(v1 + 16) = v45 + 1;
      v31((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v45), v56, v2);
      *(v34 + 24) = v1;
      v40 = v3;
      (*(v3 + 8))(v57, v2);
      v41 = v58;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  v40 = v3;
  outlined destroy of ObservationTracking._AccessList?(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v36;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v40 + 16;
    v49 = *(v40 + 16);
    v50 = v46 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v51 = *(v48 + 56);
    v58 = *(v34 + 24);

    do
    {
      v49(v5, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v48 - 8))(v5, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v55;
}

{
  v1 = v0;
  v74 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v58 - v18;
  v19 = *AGGraphGetValue();
  v20 = *(v0 + 24);
  v62 = v10;
  if (v20 != v19 >> 1)
  {
    v59 = v13;
    v60 = v3;
    v21 = *(v0 + 20);
    if (v21)
    {
      v22 = *(v0 + 8);
      if (!v22)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v23 = 0;
      v24 = v21 - 1;
      do
      {
        v27 = (v22 + v23);
        if (v24)
        {
          v23 += *(v27 + 2);
        }

        else
        {
          v23 = 0;
        }

        v25 = v24 | v23;
        v26 = *v27;
        *&v68 = v27;
        (*(v26 + 112))(&v68);
        --v24;
      }

      while (v25);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v60;
    v13 = v59;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  Value = AGGraphGetValue();
  v29 = *(Value + 16);
  v31 = *(Value + 24);
  v30 = *(Value + 32);
  v32 = *(Value + 40);
  v33 = *(Value + 48);
  v68 = *Value;
  v69 = v29;
  v70 = v31;
  v71 = v30;
  v72 = v32;
  v73 = v33;
  v65 = v34 & 1;
  v35 = one-time initialization token for _current;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = static ObservationCenter._current;
  swift_beginAccess();
  v37 = pthread_getspecific(*(v36 + 2));
  if (!v37)
  {
    v38 = swift_slowAlloc();
    pthread_setspecific(*(v36 + 2), v38);
    v67 = type metadata accessor for ObservationCenter();
    v33 = *(v36 + 3);
    *&v66 = v33;
    outlined init with take of Any(&v66, v38);

    v37 = v38;
  }

  outlined init with copy of Any(v37, &v66);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v39 = v64;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v33 = CurrentAttribute;
  v41 = v13;
  swift_beginAccess();
  v60 = *(v39 + 24);
  *(v39 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v43 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v68, v1, &v65);
  *(StatusReg + 848) = v43;
  v44 = v63;
  outlined init with take of ObservationTracking._AccessList?(v16, v63);
  outlined init with copy of ObservationTracking._AccessList?(v44, v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v41, 1, v2) != 1)
  {
    v36 = *(v3 + 32);
    v47 = v62;
    v36(v62, v41, v2);
    (*(v3 + 16))(v61, v47, v2);
    v1 = *(v39 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v50 = *(v1 + 16);
      v49 = *(v1 + 24);
      if (v50 >= v49 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v1);
      }

      *(v1 + 16) = v50 + 1;
      v36((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v50), v61, v2);
      *(v39 + 24) = v1;
      v45 = v3;
      (*(v3 + 8))(v62, v2);
      v46 = v63;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v39 + 24) = v1;
    goto LABEL_18;
  }

  v45 = v3;
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = v41;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v46, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v51 = *(v39 + 24);
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = v45 + 16;
    v54 = *(v45 + 16);
    v55 = v51 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v56 = *(v53 + 56);
    v63 = *(v39 + 24);

    do
    {
      v54(v5, v55, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v33, v5);
      (*(v53 - 8))(v5, v2);
      v55 += v56;
      --v52;
    }

    while (v52);
  }

  *(v39 + 24) = v60;
}

{
  v1 = v0;
  v62 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v52 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v55 = v10;
  if (v21 != v20 >> 1)
  {
    v52 = v13;
    v53 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v60 = v28;
        (*(v27 + 112))(&v60);
        --v25;
      }

      while (v26);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v13 = v52;
    v3 = v53;
  }

  v59 = *AGGraphGetValue();
  v58 = v29 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(*(v30 + 2));
  if (!v31)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v30 + 2), v32);
    v61 = type metadata accessor for ObservationCenter();
    v19 = *(v30 + 3);
    *&v60 = v19;
    outlined init with take of Any(&v60, v32);

    v31 = v32;
  }

  outlined init with copy of Any(v31, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v35 = v13;
  swift_beginAccess();
  v53 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v59, v1, &v58, type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>, specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v37;
  v38 = v56;
  outlined init with take of ObservationTracking._AccessList?(v16, v56);
  outlined init with copy of ObservationTracking._AccessList?(v38, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v35, 1, v2) != 1)
  {
    v30 = *(v3 + 32);
    v41 = v55;
    v30(v55, v35, v2);
    (*(v3 + 16))(v54, v41, v2);
    v1 = *(v33 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v30((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v44), v54, v2);
      *(v33 + 24) = v1;
      v39 = v3;
      (*(v3 + 8))(v55, v2);
      v40 = v56;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v33 + 24) = v1;
    goto LABEL_18;
  }

  v39 = v3;
  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v45 = *(v33 + 24);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v39 + 16;
    v48 = *(v39 + 16);
    v49 = v45 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v50 = *(v47 + 56);
    v56 = *(v33 + 24);

    do
    {
      v48(v5, v49, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v47 - 8))(v5, v2);
      v49 += v50;
      --v46;
    }

    while (v46);
  }

  *(v33 + 24) = v53;
}

{
  v1 = v0;
  v93 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v66 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v66 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v70 = v3;
  v73 = v10;
  if (v19 != v18 >> 1)
  {
    v68 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v92[0] = v26;
        (*(v25 + 112))(v92);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v70;
    v15 = v68;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  Value = AGGraphGetValue();
  v28 = *Value;
  v29 = Value[1];
  v30 = Value[3];
  v92[2] = Value[2];
  v92[3] = v30;
  v92[0] = v28;
  v92[1] = v29;
  v31 = Value[4];
  v32 = Value[5];
  v33 = Value[7];
  v92[6] = Value[6];
  v92[7] = v33;
  v92[4] = v31;
  v92[5] = v32;
  v34 = *Value;
  v35 = Value[1];
  v36 = Value[3];
  v86 = Value[2];
  v87 = v36;
  v84 = v34;
  v85 = v35;
  v37 = Value[4];
  v38 = Value[5];
  v39 = Value[7];
  v90 = Value[6];
  v91 = v39;
  v88 = v37;
  v89 = v38;
  v74 = v40 & 1;
  outlined init with copy of TranslationKickModifier<Int>(v92, &v76);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v41 = static ObservationCenter._current;
  swift_beginAccess();
  v42 = pthread_getspecific(v41[2]);
  v43 = v71;
  if (!v42)
  {
    v44 = swift_slowAlloc();
    pthread_setspecific(v41[2], v44);
    *(&v77 + 1) = type metadata accessor for ObservationCenter();
    *&v76 = v41[3];
    outlined init with take of Any(&v76, v44);
    v43 = v71;

    v42 = v44;
  }

  outlined init with copy of Any(v42, &v76);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v45 = v75;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v67 = v5;
  LODWORD(v68) = CurrentAttribute;
  swift_beginAccess();
  v71 = *(v45 + 24);
  *(v45 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v84, v1, &v74);
  *(StatusReg + 848) = v48;
  v49 = v72;
  outlined init with take of ObservationTracking._AccessList?(v15, v72);
  outlined init with copy of ObservationTracking._AccessList?(v49, v43, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v50 = (*(v3 + 48))(v43, 1, v2);
  v51 = v73;
  if (v50 != 1)
  {
    v41 = *(v3 + 32);
    (v41)(v73, v43, v2);
    (*(v3 + 16))(v69, v51, v2);
    v1 = *(v45 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v55 = *(v1 + 16);
      v54 = *(v1 + 24);
      if (v55 >= v54 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v1);
      }

      *(v1 + 16) = v55 + 1;
      v56 = v70;
      (v41)(v1 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v70 + 72) * v55, v69, v2);
      v3 = v56;
      *(v45 + 24) = v1;
      (*(v56 + 8))(v73, v2);
      v52 = v72;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v45 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v49, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v52 = v43;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v52, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v57 = *(v45 + 24);
  v58 = *(v57 + 16);
  if (v58)
  {
    v60 = *(v3 + 16);
    v59 = v3 + 16;
    v72 = *(v45 + 24);
    v73 = v60;
    v61 = v57 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v62 = *(v59 + 56);

    v63 = v68;
    v64 = v67;
    do
    {
      v73(v64, v61, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v63, v64);
      (*(v59 - 8))(v64, v2);
      v61 += v62;
      --v58;
    }

    while (v58);
  }

  *(v45 + 24) = v71;

  v80 = v88;
  v81 = v89;
  v82 = v90;
  v83 = v91;
  v76 = v84;
  v77 = v85;
  v78 = v86;
  v79 = v87;
  return outlined destroy of TranslationKickModifier<Int>(&v76);
}

{
  v1 = v0;
  v115 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v73 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v73 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v75 = v3;
  v78 = v10;
  if (v19 != v18 >> 1)
  {
    v73 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v113[0] = v26;
        (*(v25 + 112))(v113);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v75;
    v15 = v73;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  Value = AGGraphGetValue();
  v28 = *(Value + 48);
  v30 = *Value;
  v29 = *(Value + 16);
  v113[2] = *(Value + 32);
  v113[3] = v28;
  v113[0] = v30;
  v113[1] = v29;
  v31 = *(Value + 112);
  v33 = *(Value + 64);
  v32 = *(Value + 80);
  v113[6] = *(Value + 96);
  v113[7] = v31;
  v113[4] = v33;
  v113[5] = v32;
  v34 = *(Value + 176);
  v36 = *(Value + 128);
  v35 = *(Value + 144);
  v113[10] = *(Value + 160);
  v113[11] = v34;
  v113[8] = v36;
  v113[9] = v35;
  v38 = *(Value + 208);
  v37 = *(Value + 224);
  v39 = *(Value + 192);
  v114 = *(Value + 240);
  v113[13] = v38;
  v113[14] = v37;
  v113[12] = v39;
  v40 = *(Value + 208);
  v109 = *(Value + 192);
  v110 = v40;
  v111 = *(Value + 224);
  v112 = *(Value + 240);
  v41 = *(Value + 144);
  v105 = *(Value + 128);
  v106 = v41;
  v42 = *(Value + 176);
  v107 = *(Value + 160);
  v108 = v42;
  v43 = *(Value + 80);
  v101 = *(Value + 64);
  v102 = v43;
  v44 = *(Value + 112);
  v103 = *(Value + 96);
  v104 = v44;
  v45 = *(Value + 16);
  v97 = *Value;
  v98 = v45;
  v46 = *(Value + 48);
  v99 = *(Value + 32);
  v100 = v46;
  v79 = v47 & 1;
  outlined init with copy of ScalePulseModifier<Int>(v113, &v81);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v48 = static ObservationCenter._current;
  swift_beginAccess();
  v49 = pthread_getspecific(v48[2]);
  v50 = v76;
  if (!v49)
  {
    v51 = swift_slowAlloc();
    pthread_setspecific(v48[2], v51);
    *(&v82 + 1) = type metadata accessor for ObservationCenter();
    *&v81 = v48[3];
    outlined init with take of Any(&v81, v51);
    v50 = v76;

    v49 = v51;
  }

  outlined init with copy of Any(v49, &v81);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v52 = v80;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v73 = v5;
  v5 = CurrentAttribute;
  swift_beginAccess();
  v76 = *(v52 + 24);
  *(v52 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v55 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v97, v1, &v79);
  *(StatusReg + 848) = v55;
  v56 = v77;
  outlined init with take of ObservationTracking._AccessList?(v15, v77);
  outlined init with copy of ObservationTracking._AccessList?(v56, v50, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v57 = (*(v3 + 48))(v50, 1, v2);
  v58 = v78;
  if (v57 != 1)
  {
    v48 = *(v3 + 32);
    (v48)(v78, v50, v2);
    (*(v3 + 16))(v74, v58, v2);
    v1 = *(v52 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v52 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v62 = *(v1 + 16);
      v61 = *(v1 + 24);
      v63 = v2;
      if (v62 >= v61 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v1);
      }

      *(v1 + 16) = v62 + 1;
      v64 = v75;
      (v48)(v1 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v75 + 72) * v62, v74, v63);
      v3 = v64;
      v2 = v63;
      *(v52 + 24) = v1;
      (*(v3 + 8))(v78, v63);
      v59 = v77;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v52 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v56, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v59 = v50;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v59, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v65 = *(v52 + 24);
  v66 = *(v65 + 16);
  if (v66)
  {
    v68 = *(v3 + 16);
    v67 = v3 + 16;
    v77 = *(v52 + 24);
    v78 = v68;
    v69 = v65 + ((*(v67 + 64) + 32) & ~*(v67 + 64));
    v70 = *(v67 + 56);

    v71 = v73;
    do
    {
      v78(v71, v69, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v5, v71);
      (*(v67 - 8))(v71, v2);
      v69 += v70;
      --v66;
    }

    while (v66);
  }

  *(v52 + 24) = v76;

  v93 = v109;
  v94 = v110;
  v95 = v111;
  v96 = v112;
  v89 = v105;
  v90 = v106;
  v91 = v107;
  v92 = v108;
  v85 = v101;
  v86 = v102;
  v87 = v103;
  v88 = v104;
  v81 = v97;
  v82 = v98;
  v83 = v99;
  v84 = v100;
  return outlined destroy of ScalePulseModifier<Int>(&v81);
}

{
  v1 = v0;
  v67[48] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v59 = v3;
  v62 = v10;
  if (v19 != v18 >> 1)
  {
    v57 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v67[0] = v26;
        (*(v25 + 112))(v67);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v59;
    v15 = v57;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v67, Value, 0x180uLL);
  memcpy(v66, Value, sizeof(v66));
  v63 = v29 & 1;
  outlined init with copy of GlassTransitionStateModifier(v67, v65);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v60;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *(&v65[1] + 1) = type metadata accessor for ObservationCenter();
    *&v65[0] = v30[3];
    outlined init with take of Any(v65, v33);
    v32 = v60;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v64;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v56 = v5;
  LODWORD(v57) = CurrentAttribute;
  swift_beginAccess();
  v60 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v66, v1, &v63);
  *(StatusReg + 848) = v37;
  v38 = v61;
  outlined init with take of ObservationTracking._AccessList?(v15, v61);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v62;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v62, v32, v2);
    (*(v3 + 16))(v58, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v45 = v59;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v59 + 72) * v44, v58, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v62, v2);
      v41 = v61;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v61 = *(v34 + 24);
    v62 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v57;
    v53 = v56;
    do
    {
      v62(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v60;

  memcpy(v65, v66, sizeof(v65));
  return outlined destroy of GlassTransitionStateModifier(v65);
}

{
  v1 = v0;
  v66[43] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v58 = v3;
  v61 = v10;
  if (v19 != v18 >> 1)
  {
    v56 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v66[0] = v26;
        (*(v25 + 112))(v66);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v58;
    v15 = v56;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v66, Value, 0x154uLL);
  memcpy(v65, Value, 0x154uLL);
  v62 = v29 & 1;
  outlined init with copy of GlassEffectShapeModifier(v66, v64);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v59;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *&v64[24] = type metadata accessor for ObservationCenter();
    *v64 = v30[3];
    outlined init with take of Any(v64, v33);
    v32 = v59;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v55 = v5;
  LODWORD(v56) = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v65, v1, &v62);
  *(StatusReg + 848) = v37;
  v38 = v60;
  outlined init with take of ObservationTracking._AccessList?(v15, v60);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v61;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v61, v32, v2);
    (*(v3 + 16))(v57, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v45 = v58;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v58 + 72) * v44, v57, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v61, v2);
      v41 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v60 = *(v34 + 24);
    v61 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v56;
    v53 = v55;
    do
    {
      v61(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v59;

  memcpy(v64, v65, sizeof(v64));
  return outlined destroy of GlassEffectShapeModifier(v64);
}

{
  v1 = v0;
  v81 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v59 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v63 = v3;
  v66 = v10;
  if (v19 != v18 >> 1)
  {
    v61 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        *&v79[0] = v26;
        (*(v25 + 112))(v79);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v63;
    v15 = v61;
  }

  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
  Value = AGGraphGetValue();
  v79[0] = *Value;
  v29 = *(Value + 32);
  v28 = *(Value + 48);
  v30 = *(Value + 16);
  v80 = *(Value + 64);
  v79[2] = v29;
  v79[3] = v28;
  v79[1] = v30;
  v31 = *(Value + 48);
  v76 = *(Value + 32);
  v77 = v31;
  v78 = *(Value + 64);
  v32 = *(Value + 16);
  v74 = *Value;
  v75 = v32;
  v67 = v33 & 1;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v79, &v69, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v34 = static ObservationCenter._current;
  swift_beginAccess();
  v35 = pthread_getspecific(v34[2]);
  v36 = v64;
  if (!v35)
  {
    v37 = swift_slowAlloc();
    pthread_setspecific(v34[2], v37);
    *(&v70 + 1) = type metadata accessor for ObservationCenter();
    *&v69 = v34[3];
    outlined init with take of Any(&v69, v37);
    v36 = v64;

    v35 = v37;
  }

  outlined init with copy of Any(v35, &v69);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v38 = v68;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v60 = v5;
  LODWORD(v61) = CurrentAttribute;
  swift_beginAccess();
  v64 = *(v38 + 24);
  *(v38 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v74, v1, &v67);
  *(StatusReg + 848) = v41;
  v42 = v65;
  outlined init with take of ObservationTracking._AccessList?(v15, v65);
  outlined init with copy of ObservationTracking._AccessList?(v42, v36, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v43 = (*(v3 + 48))(v36, 1, v2);
  v44 = v66;
  if (v43 != 1)
  {
    v34 = *(v3 + 32);
    (v34)(v66, v36, v2);
    (*(v3 + 16))(v62, v44, v2);
    v1 = *(v38 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v48 = *(v1 + 16);
      v47 = *(v1 + 24);
      if (v48 >= v47 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v1);
      }

      *(v1 + 16) = v48 + 1;
      v49 = v63;
      (v34)(v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v63 + 72) * v48, v62, v2);
      v3 = v49;
      *(v38 + 24) = v1;
      (*(v49 + 8))(v66, v2);
      v45 = v65;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v38 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v45 = v36;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v45, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v50 = *(v38 + 24);
  v51 = *(v50 + 16);
  if (v51)
  {
    v53 = *(v3 + 16);
    v52 = v3 + 16;
    v65 = *(v38 + 24);
    v66 = v53;
    v54 = v50 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
    v55 = *(v52 + 56);

    v56 = v61;
    v57 = v60;
    do
    {
      v66(v57, v54, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v56, v57);
      (*(v52 - 8))(v57, v2);
      v54 += v55;
      --v51;
    }

    while (v51);
  }

  *(v38 + 24) = v64;

  v71 = v76;
  v72 = v77;
  v73 = v78;
  v69 = v74;
  v70 = v75;
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v69, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
}

{
  v1 = v0;
  v66 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v55 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v58 = v10;
  if (v21 != v20 >> 1)
  {
    v55 = v13;
    v56 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v62[0] = v28;
        (*(v27 + 112))(v62);
        --v25;
      }

      while (v26);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v13 = v55;
    v3 = v56;
  }

  Value = AGGraphGetValue();
  v30 = *(Value + 32);
  v31 = *(Value + 16);
  v62[0] = *Value;
  v62[1] = v31;
  v63 = v30;
  v61 = v32 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v33 = static ObservationCenter._current;
  swift_beginAccess();
  v34 = pthread_getspecific(*(v33 + 2));
  if (!v34)
  {
    v35 = swift_slowAlloc();
    pthread_setspecific(*(v33 + 2), v35);
    v65 = type metadata accessor for ObservationCenter();
    v19 = *(v33 + 3);
    *&v64 = v19;
    outlined init with take of Any(&v64, v35);

    v34 = v35;
  }

  outlined init with copy of Any(v34, &v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v36 = v60;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v38 = v13;
  swift_beginAccess();
  v56 = *(v36 + 24);
  *(v36 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v40 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v62, v1, &v61);
  *(StatusReg + 848) = v40;
  v41 = v59;
  outlined init with take of ObservationTracking._AccessList?(v16, v59);
  outlined init with copy of ObservationTracking._AccessList?(v41, v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v38, 1, v2) != 1)
  {
    v33 = *(v3 + 32);
    v44 = v58;
    v33(v58, v38, v2);
    (*(v3 + 16))(v57, v44, v2);
    v1 = *(v36 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v36 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v47 = *(v1 + 16);
      v46 = *(v1 + 24);
      if (v47 >= v46 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v1);
      }

      *(v1 + 16) = v47 + 1;
      v33((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v47), v57, v2);
      *(v36 + 24) = v1;
      v42 = v3;
      (*(v3 + 8))(v58, v2);
      v43 = v59;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v36 + 24) = v1;
    goto LABEL_18;
  }

  v42 = v3;
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v43 = v38;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v43, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v48 = *(v36 + 24);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v42 + 16;
    v51 = *(v42 + 16);
    v52 = v48 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v53 = *(v50 + 56);
    v59 = *(v36 + 24);

    do
    {
      v51(v5, v52, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v50 - 8))(v5, v2);
      v52 += v53;
      --v49;
    }

    while (v49);
  }

  *(v36 + 24) = v56;
}

{
  v1 = v0;
  v67 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v56 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v56 - v18;
  v19 = *(v0 + 24);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 48);
  v59 = v10;
  if (v21 != v20 >> 1)
  {
    v56 = v13;
    v57 = v3;
    v22 = *(v0 + 44);
    if (v22)
    {
      v23 = *(v0 + 32);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v65 = v28;
        (*(v27 + 112))(&v65);
        --v25;
      }

      while (v26);
    }

    *(v1 + 48) = *AGGraphGetValue() >> 1;
    v13 = v56;
    v3 = v57;
  }

  Value = AGGraphGetValue();
  v30 = *(Value + 8);
  v31 = *(Value + 16);
  v63[0] = *Value;
  v63[1] = v30;
  v64 = v31;
  v62 = v32 & 1;
  v33 = one-time initialization token for _current;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = static ObservationCenter._current;
  swift_beginAccess();
  v35 = pthread_getspecific(*(v34 + 2));
  if (!v35)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(*(v34 + 2), v36);
    v66 = type metadata accessor for ObservationCenter();
    v19 = *(v34 + 3);
    *&v65 = v19;
    outlined init with take of Any(&v65, v36);

    v35 = v36;
  }

  outlined init with copy of Any(v35, &v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v61;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v39 = v13;
  swift_beginAccess();
  v57 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v63, v1, &v62);
  *(StatusReg + 848) = v41;
  v42 = v60;
  outlined init with take of ObservationTracking._AccessList?(v16, v60);
  outlined init with copy of ObservationTracking._AccessList?(v42, v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v39, 1, v2) != 1)
  {
    v34 = *(v3 + 32);
    v45 = v59;
    v34(v59, v39, v2);
    (*(v3 + 16))(v58, v45, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v48 = *(v1 + 16);
      v47 = *(v1 + 24);
      if (v48 >= v47 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v1);
      }

      *(v1 + 16) = v48 + 1;
      v34((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48), v58, v2);
      *(v37 + 24) = v1;
      v43 = v3;
      (*(v3 + 8))(v59, v2);
      v44 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  v43 = v3;
  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v39;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v43 + 16;
    v52 = *(v43 + 16);
    v53 = v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v54 = *(v51 + 56);
    v60 = *(v37 + 24);

    do
    {
      v52(v5, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v51 - 8))(v5, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v57;
}

{
  v1 = v0;
  v67[36] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v59 = v3;
  v62 = v10;
  if (v19 != v18 >> 1)
  {
    v57 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v67[0] = v26;
        (*(v25 + 112))(v67);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v59;
    v15 = v57;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v67, Value, 0x11CuLL);
  memcpy(v66, Value, 0x11CuLL);
  v63 = v29 & 1;
  outlined init with copy of GlassEffectView(v67, v65);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v60;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *(&v65[1] + 1) = type metadata accessor for ObservationCenter();
    *&v65[0] = v30[3];
    outlined init with take of Any(v65, v33);
    v32 = v60;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v64;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v56 = v5;
  LODWORD(v57) = CurrentAttribute;
  swift_beginAccess();
  v60 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v66, v1, &v63);
  *(StatusReg + 848) = v37;
  v38 = v61;
  outlined init with take of ObservationTracking._AccessList?(v15, v61);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v62;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v62, v32, v2);
    (*(v3 + 16))(v58, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v45 = v59;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v59 + 72) * v44, v58, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v62, v2);
      v41 = v61;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v61 = *(v34 + 24);
    v62 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v57;
    v53 = v56;
    do
    {
      v62(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v60;

  memcpy(v65, v66, 0x11CuLL);
  return outlined destroy of GlassEffectView(v65);
}

{
  v1 = v0;
  v66[85] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v58 = v3;
  v61 = v10;
  if (v19 != v18 >> 1)
  {
    v56 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v66[0] = v26;
        (*(v25 + 112))(v66);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v58;
    v15 = v56;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v66, Value, 0x2A8uLL);
  memcpy(v65, Value, sizeof(v65));
  v62 = v29 & 1;
  outlined init with copy of GlassEntryView(v66, v64);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v59;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *&v64[24] = type metadata accessor for ObservationCenter();
    *v64 = v30[3];
    outlined init with take of Any(v64, v33);
    v32 = v59;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v55 = v5;
  LODWORD(v56) = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v65, v1, &v62);
  *(StatusReg + 848) = v37;
  v38 = v60;
  outlined init with take of ObservationTracking._AccessList?(v15, v60);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v61;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v61, v32, v2);
    (*(v3 + 16))(v57, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v45 = v58;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v58 + 72) * v44, v57, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v61, v2);
      v41 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v60 = *(v34 + 24);
    v61 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v56;
    v53 = v55;
    do
    {
      v61(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v59;

  memcpy(v64, v65, sizeof(v64));
  return outlined destroy of GlassEntryView(v64);
}

{
  v1 = v0;
  v66 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v56 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v56 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v59 = v10;
  if (v21 != v20 >> 1)
  {
    v56 = v13;
    v57 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v64 = v28;
        (*(v27 + 112))(&v64);
        --v25;
      }

      while (v26);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v13 = v56;
    v3 = v57;
  }

  Value = AGGraphGetValue();
  v30 = *Value;
  v31 = Value[1];
  v63[0] = v30;
  v63[1] = v31;
  v62 = v32 & 1;
  v33 = one-time initialization token for _current;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = static ObservationCenter._current;
  swift_beginAccess();
  v35 = pthread_getspecific(*(v34 + 2));
  if (!v35)
  {
    v36 = swift_slowAlloc();
    pthread_setspecific(*(v34 + 2), v36);
    v65 = type metadata accessor for ObservationCenter();
    v19 = *(v34 + 3);
    *&v64 = v19;
    outlined init with take of Any(&v64, v36);

    v35 = v36;
  }

  outlined init with copy of Any(v35, &v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v37 = v61;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v39 = v13;
  swift_beginAccess();
  v57 = *(v37 + 24);
  *(v37 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v63, v1, &v62);
  *(StatusReg + 848) = v41;
  v42 = v60;
  outlined init with take of ObservationTracking._AccessList?(v16, v60);
  outlined init with copy of ObservationTracking._AccessList?(v42, v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v39, 1, v2) != 1)
  {
    v34 = *(v3 + 32);
    v45 = v59;
    v34(v59, v39, v2);
    (*(v3 + 16))(v58, v45, v2);
    v1 = *(v37 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v48 = *(v1 + 16);
      v47 = *(v1 + 24);
      if (v48 >= v47 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v1);
      }

      *(v1 + 16) = v48 + 1;
      v34((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48), v58, v2);
      *(v37 + 24) = v1;
      v43 = v3;
      (*(v3 + 8))(v59, v2);
      v44 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v37 + 24) = v1;
    goto LABEL_18;
  }

  v43 = v3;
  outlined destroy of ObservationTracking._AccessList?(v42, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = v39;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v44, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v49 = *(v37 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v43 + 16;
    v52 = *(v43 + 16);
    v53 = v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v54 = *(v51 + 56);
    v60 = *(v37 + 24);

    do
    {
      v52(v5, v53, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v51 - 8))(v5, v2);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v37 + 24) = v57;
}

{
  v1 = v0;
  v66[129] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v17;
  v18 = *AGGraphGetValue();
  v19 = *(v0 + 24);
  v58 = v3;
  v61 = v10;
  if (v19 != v18 >> 1)
  {
    v56 = v15;
    v20 = *(v0 + 20);
    if (v20)
    {
      v21 = *(v0 + 8);
      if (!v21)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v20 - 1;
      do
      {
        v26 = (v21 + v22);
        if (v23)
        {
          v22 += *(v26 + 2);
        }

        else
        {
          v22 = 0;
        }

        v24 = v23 | v22;
        v25 = *v26;
        v66[0] = v26;
        (*(v25 + 112))(v66);
        --v23;
      }

      while (v24);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v3 = v58;
    v15 = v56;
  }

  Value = AGGraphGetValue();
  v29 = v28;
  memcpy(v66, Value, 0x408uLL);
  memcpy(v65, Value, sizeof(v65));
  v62 = v29 & 1;
  outlined init with copy of GlassItemView(v66, v64);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(v30[2]);
  v32 = v59;
  if (!v31)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v30[2], v33);
    *&v64[24] = type metadata accessor for ObservationCenter();
    *v64 = v30[3];
    outlined init with take of Any(v64, v33);
    v32 = v59;

    v31 = v33;
  }

  outlined init with copy of Any(v31, v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v63;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v55 = v5;
  LODWORD(v56) = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v65, v1, &v62);
  *(StatusReg + 848) = v37;
  v38 = v60;
  outlined init with take of ObservationTracking._AccessList?(v15, v60);
  outlined init with copy of ObservationTracking._AccessList?(v38, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v39 = (*(v3 + 48))(v32, 1, v2);
  v40 = v61;
  if (v39 != 1)
  {
    v30 = *(v3 + 32);
    (v30)(v61, v32, v2);
    (*(v3 + 16))(v57, v40, v2);
    v1 = *(v34 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v45 = v58;
      (v30)(v1 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v58 + 72) * v44, v57, v2);
      v3 = v45;
      *(v34 + 24) = v1;
      (*(v45 + 8))(v61, v2);
      v41 = v60;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v34 + 24) = v1;
    goto LABEL_18;
  }

  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v32;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v34 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v49 = *(v3 + 16);
    v48 = v3 + 16;
    v60 = *(v34 + 24);
    v61 = v49;
    v50 = v46 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v51 = *(v48 + 56);

    v52 = v56;
    v53 = v55;
    do
    {
      v61(v53, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v52, v53);
      (*(v48 - 8))(v53, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v34 + 24) = v59;

  memcpy(v64, v65, sizeof(v64));
  return outlined destroy of GlassItemView(v64);
}

{
  v1 = v0;
  v62 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v52 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v55 = v10;
  if (v21 != v20 >> 1)
  {
    v52 = v13;
    v53 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v60 = v28;
        (*(v27 + 112))(&v60);
        --v25;
      }

      while (v26);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v13 = v52;
    v3 = v53;
  }

  v59 = *AGGraphGetValue();
  v58 = v29 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(*(v30 + 2));
  if (!v31)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v30 + 2), v32);
    v61 = type metadata accessor for ObservationCenter();
    v19 = *(v30 + 3);
    *&v60 = v19;
    outlined init with take of Any(&v60, v32);

    v31 = v32;
  }

  outlined init with copy of Any(v31, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v57;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v35 = v13;
  swift_beginAccess();
  v53 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v37 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(&v59, v1, &v58, type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>, specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v37;
  v38 = v56;
  outlined init with take of ObservationTracking._AccessList?(v16, v56);
  outlined init with copy of ObservationTracking._AccessList?(v38, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v35, 1, v2) != 1)
  {
    v30 = *(v3 + 32);
    v41 = v55;
    v30(v55, v35, v2);
    (*(v3 + 16))(v54, v41, v2);
    v1 = *(v33 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v44 = *(v1 + 16);
      v43 = *(v1 + 24);
      if (v44 >= v43 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v1);
      }

      *(v1 + 16) = v44 + 1;
      v30((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v44), v54, v2);
      *(v33 + 24) = v1;
      v39 = v3;
      (*(v3 + 8))(v55, v2);
      v40 = v56;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v33 + 24) = v1;
    goto LABEL_18;
  }

  v39 = v3;
  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v40, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v45 = *(v33 + 24);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v39 + 16;
    v48 = *(v39 + 16);
    v49 = v45 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v50 = *(v47 + 56);
    v56 = *(v33 + 24);

    do
    {
      v48(v5, v49, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v47 - 8))(v5, v2);
      v49 += v50;
      --v46;
    }

    while (v46);
  }

  *(v33 + 24) = v53;
}

{
  v1 = v0;
  v62 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v53 - v18;
  v19 = *(v0 + 4);
  v20 = *AGGraphGetValue();
  v21 = *(v0 + 24);
  v56 = v10;
  if (v21 != v20 >> 1)
  {
    v53 = v13;
    v54 = v3;
    v22 = *(v0 + 20);
    if (v22)
    {
      v23 = *(v0 + 8);
      if (!v23)
      {
        __break(1u);
        result = outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = v22 - 1;
      do
      {
        v28 = (v23 + v24);
        if (v25)
        {
          v24 += *(v28 + 2);
        }

        else
        {
          v24 = 0;
        }

        v26 = v25 | v24;
        v27 = *v28;
        *&v60 = v28;
        (*(v27 + 112))(&v60);
        --v25;
      }

      while (v26);
    }

    *(v1 + 24) = *AGGraphGetValue() >> 1;
    v13 = v53;
    v3 = v54;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
  AGGraphGetValue();
  v59 = v29 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v30 = static ObservationCenter._current;
  swift_beginAccess();
  v31 = pthread_getspecific(*(v30 + 2));
  if (!v31)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v30 + 2), v32);
    v61 = type metadata accessor for ObservationCenter();
    v19 = *(v30 + 3);
    *&v60 = v19;
    outlined init with take of Any(&v60, v32);

    v31 = v32;
  }

  outlined init with copy of Any(v31, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v33 = v58;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_27;
  }

  v19 = CurrentAttribute;
  v35 = v13;
  swift_beginAccess();
  v54 = *(v33 + 24);
  *(v33 + 24) = MEMORY[0x1E69E7CC0];
  v36 = (*(v3 + 56))(v16, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  specialized closure #1 in DynamicBody.updateValue()(v36, v1, &v59);
  *(StatusReg + 848) = v38;
  v39 = v57;
  outlined init with take of ObservationTracking._AccessList?(v16, v57);
  outlined init with copy of ObservationTracking._AccessList?(v39, v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v35, 1, v2) != 1)
  {
    v30 = *(v3 + 32);
    v42 = v56;
    v30(v56, v35, v2);
    (*(v3 + 16))(v55, v42, v2);
    v1 = *(v33 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 24) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_18:
      v45 = *(v1 + 16);
      v44 = *(v1 + 24);
      if (v45 >= v44 >> 1)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v1);
      }

      *(v1 + 16) = v45 + 1;
      v30((v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v45), v55, v2);
      *(v33 + 24) = v1;
      v40 = v3;
      (*(v3 + 8))(v56, v2);
      v41 = v57;
      goto LABEL_21;
    }

LABEL_27:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    *(v33 + 24) = v1;
    goto LABEL_18;
  }

  v40 = v3;
  outlined destroy of ObservationTracking._AccessList?(v39, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = v35;
LABEL_21:
  outlined destroy of ObservationTracking._AccessList?(v41, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v46 = *(v33 + 24);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v40 + 16;
    v49 = *(v40 + 16);
    v50 = v46 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v51 = *(v48 + 56);
    v57 = *(v33 + 24);

    do
    {
      v49(v5, v50, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v19, v5);
      (*(v48 - 8))(v5, v2);
      v50 += v51;
      --v47;
    }

    while (v47);
  }

  *(v33 + 24) = v54;
}

{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52 = *AGGraphGetValue();
  v51 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v1);
    *(v23 + 24) = v45;

    v1 = v45;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v52, v1, &v51);
  *(StatusReg + 848) = v26;
  v27 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v27, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v28 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v30 = v49;
  v20(v49, v12, v2);
  (*(v3 + 16))(v48, v30, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v1);
  }

  v1[2] = v33 + 1;
  v34 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33;
  v28 = v3;
  v20(v34, v48, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v29 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v23 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v28 + 16);
    v37 = v28 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v42 = (v37 - 8);
    v50 = *(v23 + 24);

    do
    {
      v38(v5, v40, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v42)(v5, v2);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v23 + 24) = v47;
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v55 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 9);
  v57 = *Value;
  v58 = v20;
  v59 = v21;
  v53 = v22 & 1;
  outlined copy of Environment<ButtonSizing>.Content(v57, v20);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;

  return outlined consume of Environment<ButtonSizing>.Content(v57, v58);
}

{
  v1 = v0;
  v75 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v53 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v73[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v19 = *(Value + 16);
  v73[0] = *Value;
  v73[1] = v19;
  v20 = *(Value + 32);
  v21 = *(Value + 48);
  v22 = *(Value + 64);
  v74 = *(Value + 80);
  v73[3] = v21;
  v73[4] = v22;
  v73[2] = v20;
  v23 = *(Value + 16);
  v67 = *Value;
  v68 = v23;
  v24 = *(Value + 32);
  v25 = *(Value + 48);
  v26 = *(Value + 64);
  v72 = *(Value + 80);
  v70 = v25;
  v71 = v26;
  v69 = v24;
  v59 = v27 & 1;
  outlined init with copy of SafeAreaPaddingModifier(v73, &v61);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v28 = static ObservationCenter._current;
  swift_beginAccess();
  v29 = pthread_getspecific(v28[2]);
  v30 = v17;
  if (!v29)
  {
    v31 = swift_slowAlloc();
    pthread_setspecific(v28[2], v31);
    *(&v62 + 1) = type metadata accessor for ObservationCenter();
    *&v61 = v28[3];
    outlined init with take of Any(&v61, v31);
    v30 = v17;

    v29 = v31;
  }

  outlined init with copy of Any(v29, &v61);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v32 = v60;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v51 = v1[2];

    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51 + 1, 1, v1);
    *(v32 + 24) = v52;

    v1 = v52;
    goto LABEL_11;
  }

  v54 = CurrentAttribute;
  swift_beginAccess();
  v55 = *(v32 + 24);
  *(v32 + 24) = MEMORY[0x1E69E7CC0];
  v3[7](v14, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v3;
  v35 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(&v67, v1, &v59);
  *(StatusReg + 848) = v35;
  v53 = v5;
  outlined init with take of ObservationTracking._AccessList?(v14, v30);
  v36 = v56;
  outlined init with copy of ObservationTracking._AccessList?(v30, v56, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v36, 1, v2) == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v36;
    goto LABEL_14;
  }

  v37 = v58;
  v56 = v17[4];
  (v56)(v58, v36, v2);
  v5 = v2;
  (v17[2])(v57, v37, v2);
  swift_beginAccess();
  v1 = *(v32 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v40 = v1[2];
  v39 = v1[3];
  if (v40 >= v39 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v1);
  }

  v1[2] = v40 + 1;
  (v56)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v40, v57, v5);
  *(v32 + 24) = v1;
  swift_endAccess();
  (v17[1])(v58, v5);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = *(v32 + 24);
  v42 = *(v41 + 16);
  if (v42)
  {
    v44 = v17[2];
    v43 = (v17 + 2);
    v57 = *(v32 + 24);
    v58 = v44;
    v45 = v41 + ((v43[64] + 32) & ~v43[64]);
    v46 = *(v43 + 7);
    v47 = v43 - 8;

    v48 = v54;
    v49 = v53;
    do
    {
      (v58)(v49, v45, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v48, v49);
      (*v47)(v49, v5);
      v45 += v46;
      --v42;
    }

    while (v42);
  }

  *(v32 + 24) = v55;

  v63 = v69;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v61 = v67;
  v62 = v68;
  return outlined destroy of SafeAreaPaddingModifier(&v61);
}

{
  v1 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v48 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 32);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v54 = *Value;
  v55 = *(Value + 8);
  v53 = v20 & 1;
  v21 = one-time initialization token for _current;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(*(v22 + 2));
  if (!v23)
  {
    v24 = swift_slowAlloc();
    pthread_setspecific(*(v22 + 2), v24);
    v58 = type metadata accessor for ObservationCenter();
    v18 = *(v22 + 3);
    *&v57 = v18;
    outlined init with take of Any(&v57, v24);

    v23 = v24;
  }

  outlined init with copy of Any(v23, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v25 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v46 = *(v1 + 2);

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 + 1, 1, v1);
    *(v25 + 24) = v47;

    v1 = v47;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v25 + 24);
  *(v25 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v54, v1, &v53);
  *(StatusReg + 848) = v28;
  v29 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v29, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v30 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v12;
    goto LABEL_14;
  }

  v22 = *(v3 + 32);
  v32 = v51;
  v22(v51, v12, v2);
  (*(v3 + 16))(v50, v32, v2);
  swift_beginAccess();
  v1 = *(v25 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v35 = *(v1 + 2);
  v34 = *(v1 + 3);
  if (v35 >= v34 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v1);
  }

  *(v1 + 2) = v35 + 1;
  v36 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35;
  v30 = v3;
  v22(v36, v50, v2);
  *(v25 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v31 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v25 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v30 + 16);
    v39 = v30 + 16;
    v40 = v41;
    v42 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = *(v39 + 56);
    v44 = (v39 - 8);
    v52 = *(v25 + 24);

    do
    {
      v40(v5, v42, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v44)(v5, v2);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v25 + 24) = v49;
}

{
  v1 = v0;
  v57 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v55 = *(v0 + 32);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = Value[1];
  v54[0] = *Value;
  v54[1] = v20;
  v53 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54[2];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = *(v1 + 2);

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v54, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = *(v1 + 2);
  v35 = *(v1 + 3);
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  *(v1 + 2) = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;
}

{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v47 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v53 = *(v0 + 32);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  v52[0] = *AGGraphGetValue();
  v51 = v19 & 1;
  v20 = one-time initialization token for _current;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(*(v21 + 2));
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(*(v21 + 2), v23);
    v54 = type metadata accessor for ObservationCenter();
    v18 = *(v21 + 3);
    *&v53 = v18;
    outlined init with take of Any(&v53, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v52[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v45 = *(v1 + 2);

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v1);
    *(v24 + 24) = v46;

    v1 = v46;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v52, v1, &v51);
  *(StatusReg + 848) = v27;
  v28 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v28, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v29 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_14;
  }

  v21 = *(v3 + 32);
  v31 = v49;
  v21(v49, v12, v2);
  (*(v3 + 16))(v48, v31, v2);
  swift_beginAccess();
  v1 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = *(v1 + 2);
  v33 = *(v1 + 3);
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v1);
  }

  *(v1 + 2) = v34 + 1;
  v35 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34;
  v29 = v3;
  v21(v35, v48, v2);
  *(v24 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v30 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v24 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v29 + 16);
    v38 = v29 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v43 = (v38 - 8);
    v50 = *(v24 + 24);

    do
    {
      v39(v5, v41, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v43)(v5, v2);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v47;
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 8);
    v58 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v57 = *Value;
  v58 = v20;
  v59 = *(Value + 16);
  v53 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;
}

{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v47 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v53 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52[0] = *AGGraphGetValue();
  v51 = v19 & 1;
  v20 = one-time initialization token for _current;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(*(v21 + 2));
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(*(v21 + 2), v23);
    v54 = type metadata accessor for ObservationCenter();
    v18 = *(v21 + 3);
    *&v53 = v18;
    outlined init with take of Any(&v53, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v52[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v45 = v1[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v1);
    *(v24 + 24) = v46;

    v1 = v46;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v52, v1, &v51);
  *(StatusReg + 848) = v27;
  v28 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v28, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v29 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_14;
  }

  v21 = *(v3 + 32);
  v31 = v49;
  v21(v49, v12, v2);
  (*(v3 + 16))(v48, v31, v2);
  swift_beginAccess();
  v1 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = v1[2];
  v33 = v1[3];
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v1);
  }

  v1[2] = v34 + 1;
  v35 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34;
  v29 = v3;
  v21(v35, v48, v2);
  *(v24 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v30 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v24 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v29 + 16);
    v38 = v29 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v43 = (v38 - 8);
    v50 = *(v24 + 24);

    do
    {
      v39(v5, v41, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v43)(v5, v2);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v24 + 24) = v47;
}

{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52 = *AGGraphGetValue();
  v51 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v1);
    *(v23 + 24) = v45;

    v1 = v45;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v52, v1, &v51, type metadata accessor for _ShapeView<Capsule, ForegroundStyle>, specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v26;
  v27 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v27, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v28 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v30 = v49;
  v20(v49, v12, v2);
  (*(v3 + 16))(v48, v30, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v1);
  }

  v1[2] = v33 + 1;
  v34 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33;
  v28 = v3;
  v20(v34, v48, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v29 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v23 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v28 + 16);
    v37 = v28 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v42 = (v37 - 8);
    v50 = *(v23 + 24);

    do
    {
      v38(v5, v40, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v42)(v5, v2);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v23 + 24) = v47;
}

{
  v1 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v50 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v50 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v59 = *(v0 + 8);
    v60 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 16);
  v22 = *(Value + 24);
  v59 = *Value;
  v60 = v20;
  v61 = v21;
  v62 = v22;
  v63 = *(Value + 32);
  v55 = v23 & 1;
  outlined copy of Path.Storage(v59, v20, v21, v22, v63);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(*(v24 + 2));
  if (!v25)
  {
    v26 = swift_slowAlloc();
    pthread_setspecific(*(v24 + 2), v26);
    v58 = type metadata accessor for ObservationCenter();
    v18 = *(v24 + 3);
    *&v57 = v18;
    outlined init with take of Any(&v57, v26);

    v25 = v26;
  }

  outlined init with copy of Any(v25, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v27 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v48 = v1[2];

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 + 1, 1, v1);
    *(v27 + 24) = v49;

    v1 = v49;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v27 + 24);
  *(v27 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v30 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v59, v1, &v55);
  *(StatusReg + 848) = v30;
  v31 = v54;
  outlined init with take of ObservationTracking._AccessList?(v15, v54);
  outlined init with copy of ObservationTracking._AccessList?(v31, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v32 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v12;
    goto LABEL_14;
  }

  v24 = *(v3 + 32);
  v34 = v53;
  v24(v53, v12, v2);
  (*(v3 + 16))(v52, v34, v2);
  swift_beginAccess();
  v1 = *(v27 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v37 = v1[2];
  v36 = v1[3];
  if (v37 >= v36 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v1);
  }

  v1[2] = v37 + 1;
  v38 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37;
  v32 = v3;
  v24(v38, v52, v2);
  *(v27 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v53, v2);
  v33 = v54;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v39 = *(v27 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v32 + 16);
    v41 = v32 + 16;
    v42 = v43;
    v44 = v39 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v45 = *(v41 + 56);
    v46 = (v41 - 8);
    v54 = *(v27 + 24);

    do
    {
      v42(v5, v44, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v46)(v5, v2);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v27 + 24) = v51;

  return outlined consume of Path.Storage(v59, v60, v61, v62, v63);
}

{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v52 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v62[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v19 = Value[13];
  v62[12] = Value[12];
  v62[13] = v19;
  v62[14] = Value[14];
  v20 = Value[9];
  v62[8] = Value[8];
  v62[9] = v20;
  v21 = Value[11];
  v62[10] = Value[10];
  v62[11] = v21;
  v22 = Value[5];
  v62[4] = Value[4];
  v62[5] = v22;
  v23 = Value[7];
  v62[6] = Value[6];
  v62[7] = v23;
  v24 = Value[1];
  v62[0] = *Value;
  v62[1] = v24;
  v25 = Value[3];
  v62[2] = Value[2];
  v62[3] = v25;
  v58 = v26 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v27 = static ObservationCenter._current;
  swift_beginAccess();
  v28 = pthread_getspecific(v27[2]);
  v29 = v17;
  if (!v28)
  {
    v30 = swift_slowAlloc();
    pthread_setspecific(v27[2], v30);
    v61 = type metadata accessor for ObservationCenter();
    *&v60 = v27[3];
    outlined init with take of Any(&v60, v30);
    v29 = v17;

    v28 = v30;
  }

  outlined init with copy of Any(v28, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v31 = v59;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v50 = v1[2];

    v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50 + 1, 1, v1);
    *(v31 + 24) = v51;

    v1 = v51;
    goto LABEL_11;
  }

  v53 = CurrentAttribute;
  swift_beginAccess();
  v54 = *(v31 + 24);
  *(v31 + 24) = MEMORY[0x1E69E7CC0];
  v3[7](v14, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v3;
  v34 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(v62, v1, &v58);
  *(StatusReg + 848) = v34;
  v52 = v5;
  outlined init with take of ObservationTracking._AccessList?(v14, v29);
  v35 = v55;
  outlined init with copy of ObservationTracking._AccessList?(v29, v55, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v35, 1, v2) == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v35;
    goto LABEL_14;
  }

  v36 = v57;
  v55 = v17[4];
  (v55)(v57, v35, v2);
  v5 = v2;
  (v17[2])(v56, v36, v2);
  swift_beginAccess();
  v1 = *(v31 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v39 = v1[2];
  v38 = v1[3];
  if (v39 >= v38 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v1);
  }

  v1[2] = v39 + 1;
  (v55)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v39, v56, v5);
  *(v31 + 24) = v1;
  swift_endAccess();
  (v17[1])(v57, v5);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v31 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v43 = v17[2];
    v42 = (v17 + 2);
    v56 = *(v31 + 24);
    v57 = v43;
    v44 = v40 + ((v42[64] + 32) & ~v42[64]);
    v45 = *(v42 + 7);
    v46 = v42 - 8;

    v47 = v53;
    v48 = v52;
    do
    {
      (v57)(v48, v44, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v47, v48);
      (*v46)(v48, v5);
      v44 += v45;
      --v41;
    }

    while (v41);
  }

  *(v31 + 24) = v54;
}

{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  v52 = *AGGraphGetValue();
  v51 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v44 = v1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, v1);
    *(v23 + 24) = v45;

    v1 = v45;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v52, v1, &v51, type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>, specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:));
  *(StatusReg + 848) = v26;
  v27 = v50;
  outlined init with take of ObservationTracking._AccessList?(v15, v50);
  outlined init with copy of ObservationTracking._AccessList?(v27, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v28 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v29 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v30 = v49;
  v20(v49, v12, v2);
  (*(v3 + 16))(v48, v30, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v1);
  }

  v1[2] = v33 + 1;
  v34 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33;
  v28 = v3;
  v20(v34, v48, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v49, v2);
  v29 = v50;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v23 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v28 + 16);
    v37 = v28 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v42 = (v37 - 8);
    v50 = *(v23 + 24);

    do
    {
      v38(v5, v40, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v42)(v5, v2);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v23 + 24) = v47;
}

{
  v1 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v57[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 32);
  v21 = *(Value + 16);
  v57[0] = *Value;
  v57[1] = v21;
  v58 = v20;
  v53 = v22 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v50 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v50 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v58[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 32);
  v21 = *(Value + 40);
  v22 = *(Value + 16);
  v58[0] = *Value;
  v58[1] = v22;
  v59 = v20;
  v60 = v21;
  v54 = v23 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(*(v24 + 2));
  if (!v25)
  {
    v26 = swift_slowAlloc();
    pthread_setspecific(*(v24 + 2), v26);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v24 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v26);

    v25 = v26;
  }

  outlined init with copy of Any(v25, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v27 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v48 = v1[2];

    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 + 1, 1, v1);
    *(v27 + 24) = v49;

    v1 = v49;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v27 + 24);
  *(v27 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v30 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v58, v1, &v54);
  *(StatusReg + 848) = v30;
  v31 = v53;
  outlined init with take of ObservationTracking._AccessList?(v15, v53);
  outlined init with copy of ObservationTracking._AccessList?(v31, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v32 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v12;
    goto LABEL_14;
  }

  v24 = *(v3 + 32);
  v34 = v52;
  v24(v52, v12, v2);
  (*(v3 + 16))(v51, v34, v2);
  swift_beginAccess();
  v1 = *(v27 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v37 = v1[2];
  v36 = v1[3];
  if (v37 >= v36 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v1);
  }

  v1[2] = v37 + 1;
  v38 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37;
  v32 = v3;
  v24(v38, v51, v2);
  *(v27 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v52, v2);
  v33 = v53;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v39 = *(v27 + 24);
  v40 = *(v39 + 16);
  if (v40)
  {
    v43 = *(v32 + 16);
    v41 = v32 + 16;
    v42 = v43;
    v44 = v39 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v45 = *(v41 + 56);
    v46 = (v41 - 8);
    v53 = *(v27 + 24);

    do
    {
      v42(v5, v44, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v46)(v5, v2);
      v44 += v45;
      --v40;
    }

    while (v40);
  }

  *(v27 + 24) = v50;
}

{
  v1 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v47 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v47 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v54 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  AGGraphGetValue();
  v52 = v19 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(*(v20 + 2));
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(*(v20 + 2), v22);
    v55 = type metadata accessor for ObservationCenter();
    v18 = *(v20 + 3);
    *&v54 = v18;
    outlined init with take of Any(&v54, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v45 = v1[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v1);
    *(v23 + 24) = v46;

    v1 = v46;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  v25 = (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v25, v1, &v52);
  *(StatusReg + 848) = v27;
  v28 = v51;
  outlined init with take of ObservationTracking._AccessList?(v15, v51);
  outlined init with copy of ObservationTracking._AccessList?(v28, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v29 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_14;
  }

  v20 = *(v3 + 32);
  v31 = v50;
  v20(v50, v12, v2);
  (*(v3 + 16))(v49, v31, v2);
  swift_beginAccess();
  v1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = v1[2];
  v33 = v1[3];
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v1);
  }

  v1[2] = v34 + 1;
  v35 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34;
  v29 = v3;
  v20(v35, v49, v2);
  *(v23 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v50, v2);
  v30 = v51;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v23 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v29 + 16);
    v38 = v29 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v43 = (v38 - 8);
    v51 = *(v23 + 24);

    do
    {
      v39(v5, v41, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v43)(v5, v2);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v23 + 24) = v48;
}

{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v51 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v51 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v59 = *(v0 + 8);
    v60 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 16);
  v22 = *(Value + 24);
  v59 = *Value;
  v60 = v20;
  v61 = v21;
  v62 = v22;
  v55 = v23 & 1;
  outlined copy of Text.Storage(v59, v20, v21);
  v24 = one-time initialization token for _current;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(*(v25 + 2));
  if (!v26)
  {
    v27 = swift_slowAlloc();
    pthread_setspecific(*(v25 + 2), v27);
    v58 = type metadata accessor for ObservationCenter();
    v18 = *(v25 + 3);
    *&v57 = v18;
    outlined init with take of Any(&v57, v27);

    v26 = v27;
  }

  outlined init with copy of Any(v26, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v49 = v1[2];

    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49 + 1, 1, v1);
    *(v28 + 24) = v50;

    v1 = v50;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v59, v1, &v55);
  *(StatusReg + 848) = v31;
  v32 = v54;
  outlined init with take of ObservationTracking._AccessList?(v15, v54);
  outlined init with copy of ObservationTracking._AccessList?(v32, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v33 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v34 = v12;
    goto LABEL_14;
  }

  v25 = *(v3 + 32);
  v35 = v53;
  v25(v53, v12, v2);
  (*(v3 + 16))(v52, v35, v2);
  swift_beginAccess();
  v1 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v38 = v1[2];
  v37 = v1[3];
  if (v38 >= v37 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1, v1);
  }

  v1[2] = v38 + 1;
  v39 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v38;
  v33 = v3;
  v25(v39, v52, v2);
  *(v28 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v53, v2);
  v34 = v54;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v28 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v33 + 16);
    v42 = v33 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v54 = *(v28 + 24);

    do
    {
      v43(v5, v45, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v47)(v5, v2);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v28 + 24) = v51;

  outlined consume of Text.Storage(v59, v60, v61);
}

{
  v1 = v0;
  v59[48] = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for ObservationTracking._AccessList();
  v2 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v59[0] = *(v0 + 8);
    v59[1] = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = v19;
  memcpy(v59, Value, 0x180uLL);
  v55 = v20 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(v21[2]);
  v23 = v17;
  if (!v22)
  {
    v24 = swift_slowAlloc();
    pthread_setspecific(v21[2], v24);
    v58 = type metadata accessor for ObservationCenter();
    *&v57 = v21[3];
    outlined init with take of Any(&v57, v24);
    v23 = v17;

    v22 = v24;
  }

  outlined init with copy of Any(v22, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v25 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v25 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v49 = v4;
  v50 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v25 + 24);
  *(v25 + 24) = MEMORY[0x1E69E7CC0];
  v27 = v53;
  v2[7](v14, 1, 1, v53);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v2;
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(v59, v1, &v55);
  *(StatusReg + 848) = v29;
  outlined init with take of ObservationTracking._AccessList?(v14, v23);
  v30 = v11;
  outlined init with copy of ObservationTracking._AccessList?(v23, v11, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v11, 1, v27) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v23, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v23 = v11;
    goto LABEL_14;
  }

  v11 = v17[4];
  v31 = v54;
  (v11)(v54, v30, v27);
  (v17[2])(v52, v31, v27);
  swift_beginAccess();
  v1 = *(v25 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v34 = v1[2];
  v33 = v1[3];
  if (v34 >= v33 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v1);
  }

  v1[2] = v34 + 1;
  v35 = v53;
  (v11)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v34, v52, v53);
  *(v25 + 24) = v1;
  swift_endAccess();
  (v17[1])(v54, v35);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v23, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v25 + 24);
  v37 = *(v36 + 2);
  if (v37)
  {
    v39 = v17[2];
    v38 = (v17 + 2);
    v54 = v39;
    v40 = &v36[(v38[64] + 32) & ~v38[64]];
    v41 = *(v38 + 7);
    v42 = v38 - 8;
    v52 = v36;

    v43 = v50;
    v44 = v53;
    v45 = v49;
    do
    {
      (v54)(v45, v40, v44);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v43, v45);
      (*v42)(v45, v44);
      v40 += v41;
      --v37;
    }

    while (v37);
  }

  *(v25 + 24) = v51;
}

{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v48 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v48 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v56 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 16);
  v53 = *Value;
  v54 = v20;
  v52 = v21 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v22 = static ObservationCenter._current;
  swift_beginAccess();
  v23 = pthread_getspecific(*(v22 + 2));
  if (!v23)
  {
    v24 = swift_slowAlloc();
    pthread_setspecific(*(v22 + 2), v24);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v22 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v24);

    v23 = v24;
  }

  outlined init with copy of Any(v23, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v25 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v46 = v1[2];

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 + 1, 1, v1);
    *(v25 + 24) = v47;

    v1 = v47;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v25 + 24);
  *(v25 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v53, v1, &v52);
  *(StatusReg + 848) = v28;
  v29 = v51;
  outlined init with take of ObservationTracking._AccessList?(v15, v51);
  outlined init with copy of ObservationTracking._AccessList?(v29, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v30 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v12;
    goto LABEL_14;
  }

  v22 = *(v3 + 32);
  v32 = v50;
  v22(v50, v12, v2);
  (*(v3 + 16))(v49, v32, v2);
  swift_beginAccess();
  v1 = *(v25 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v35 = v1[2];
  v34 = v1[3];
  if (v35 >= v34 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v1);
  }

  v1[2] = v35 + 1;
  v36 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35;
  v30 = v3;
  v22(v36, v49, v2);
  *(v25 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v50, v2);
  v31 = v51;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v25 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v30 + 16);
    v39 = v30 + 16;
    v40 = v41;
    v42 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = *(v39 + 56);
    v44 = (v39 - 8);
    v51 = *(v25 + 24);

    do
    {
      v40(v5, v42, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v44)(v5, v2);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v25 + 24) = v48;
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 16);
  v21 = *(Value + 24);
  v57 = *Value;
  v58 = v20;
  v59 = v21;
  v53 = v22 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;
}

{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v58 = *(v0 + 8);
    *&v59 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v58 = *Value;
  v20 = *(Value + 24);
  v59 = *(Value + 8);
  v60 = v20;
  v54 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v58, v1, &v54);
  *(StatusReg + 848) = v29;
  v30 = v53;
  outlined init with take of ObservationTracking._AccessList?(v15, v53);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v52;
  v23(v52, v12, v2);
  (*(v3 + 16))(v51, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v51, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v52, v2);
  v32 = v53;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v53 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v50;
}

{
  v1 = v0;
  v65 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v49 - v16);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v63[0] = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = Value[1];
  v19 = Value[2];
  v21 = *Value;
  *(v64 + 10) = *(Value + 42);
  v63[1] = v20;
  v64[0] = v19;
  v63[0] = v21;
  v22 = Value[1];
  v60 = *Value;
  v61 = v22;
  v62[0] = Value[2];
  *(v62 + 10) = *(Value + 42);
  v55 = v23 & 1;
  outlined init with copy of MeshGradient(v63, &v57);
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v24 = static ObservationCenter._current;
  swift_beginAccess();
  v25 = pthread_getspecific(v24[2]);
  v26 = v17;
  if (!v25)
  {
    v27 = swift_slowAlloc();
    pthread_setspecific(v24[2], v27);
    *(&v58 + 1) = type metadata accessor for ObservationCenter();
    *&v57 = v24[3];
    outlined init with take of Any(&v57, v27);
    v26 = v17;

    v25 = v27;
  }

  outlined init with copy of Any(v25, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v28 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v50 = CurrentAttribute;
  swift_beginAccess();
  v51 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  v3[7](v14, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = v3;
  v31 = *(StatusReg + 848);
  *(StatusReg + 848) = v14;
  specialized closure #1 in DynamicBody.updateValue()(&v60, v1, &v55);
  *(StatusReg + 848) = v31;
  v49 = v5;
  outlined init with take of ObservationTracking._AccessList?(v14, v26);
  v32 = v52;
  outlined init with copy of ObservationTracking._AccessList?(v26, v52, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((v17[6])(v32, 1, v2) == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v26, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v26 = v32;
    goto LABEL_14;
  }

  v33 = v54;
  v52 = v17[4];
  (v52)(v54, v32, v2);
  v5 = v2;
  (v17[2])(v53, v33, v2);
  swift_beginAccess();
  v1 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  (v52)(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v17[9] * v36, v53, v5);
  *(v28 + 24) = v1;
  swift_endAccess();
  (v17[1])(v54, v5);
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v26, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v28 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v40 = v17[2];
    v39 = (v17 + 2);
    v53 = *(v28 + 24);
    v54 = v40;
    v41 = v37 + ((v39[64] + 32) & ~v39[64]);
    v42 = *(v39 + 7);
    v43 = v39 - 8;

    v44 = v50;
    v45 = v49;
    do
    {
      (v54)(v45, v41, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v44, v45);
      (*v43)(v45, v5);
      v41 += v42;
      --v38;
    }

    while (v38);
  }

  *(v28 + 24) = v51;

  v57 = v60;
  v58 = v61;
  v59[0] = v62[0];
  *(v59 + 10) = *(v62 + 10);
  return outlined destroy of MeshGradient(&v57);
}

{
  v1 = v0;
  v60 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v49 - v17;
  v18 = *(v0 + 24);
  if (*(v0 + 48) != *AGGraphGetValue() >> 1)
  {
    v57 = *(v0 + 32);
    *&v58 = *(v0 + 40);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 24);
  v57 = *Value;
  v58 = *(Value + 8);
  v59 = v20;
  v53 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v56 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v55 = v18;
    outlined init with take of Any(&v55, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = *(v1 + 2);

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v49 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v57, v1, &v53);
  *(StatusReg + 848) = v29;
  v30 = v52;
  outlined init with take of ObservationTracking._AccessList?(v15, v52);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v51;
  v23(v51, v12, v2);
  (*(v3 + 16))(v50, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = *(v1 + 2);
  v35 = *(v1 + 3);
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v1);
  }

  *(v1 + 2) = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v50, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v51, v2);
  v32 = v52;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v52 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v49;
}