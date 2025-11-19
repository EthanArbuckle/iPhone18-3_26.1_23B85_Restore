uint64_t View.contentShape<A>(_:_:eoFill:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v21 = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ContentShapeKindModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v10 + 16))(v12, a2, a5, v15);
  v18 = *a1;
  (*(v10 + 32))(v17, v12, a5);
  v17[*(v13 + 36)] = a3;
  *&v17[*(v13 + 40)] = v18;
  View.modifier<A>(_:)(v17, v21, v13);
  return (*(v14 + 8))(v17, v13);
}

uint64_t specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v63 = v8;
  *v76 = v8;
  LODWORD(v61) = v9;
  v76[16] = v9;
  v76[17] = v10;
  v76[18] = v11;
  if (Signpost.isEnabled.getter())
  {
    v56 = *(&v8 + 1);
    LODWORD(v60) = v12;
    v50 = a1;
    v51 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v62 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v21 = v56;
      if (v10)
      {
LABEL_6:
        v65 = v60;
        *&v66 = &dword_18D018000;
        v75 = _signpostLog;
        *v76 = v63;
        *&v76[8] = v21;
        v76[16] = v61;
        *&v70 = "%{public}@.body [in %{public}@]";
        *(&v70 + 1) = 31;
        LOBYTE(v71) = 2;
        v64 = v62;
        v22 = v51;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v58 + 8))(v22, v57);
LABEL_35:

        a1 = v50;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v21 = v56;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v23 = v63;
    if (v63 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v63) | (4 * WORD1(v63));
    LODWORD(v63) = v60;
    v26 = v58 + 16;
    v52 = *(v58 + 16);
    v27 = v52(v59, v51, v57);
    v28 = 0;
    LOBYTE(v70) = 1;
    v61 = v24;
    v58 = v26;
    v55 = 16 * v24;
    v56 = (v26 - 8);
    v53 = v23;
    v54 = v62 + 32;
    do
    {
      v60 = &v49;
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v30 + 8;
      v32 = v61;
      v33 = v30 + 8;
      do
      {
        *(v33 - 1) = 0;
        *v33 = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
      v34 = v54 + 40 * v28;
      v35 = v61;
      while (1)
      {
        v36 = *(v62 + 16);
        if (v28 == v36)
        {
          break;
        }

        if (v28 >= v36)
        {
          __break(1u);
        }

        ++v28;
        outlined init with copy of AnyTrackedValue(v34, v76);
        v37 = *&v76[24];
        __swift_project_boxed_opaque_existential_1(v76, *&v76[24]);
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v25 | v63, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(v76);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v70) = 0;
LABEL_20:
      v39 = v53;
      if (v53 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v30[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v30[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v57;
      v41 = *v56;
      v42 = v59;
      (*v56)(v59, v57);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v27 = v52(v42, v43, v40);
    }

    while ((v70 & 1) != 0);
    v44 = v57;
    v41(v59, v57);
    v41(v51, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v45 = *(a1 + 16);
  v66 = *a1;
  v67 = v45;
  v68 = *(a1 + 32);
  v69 = *(a1 + 48);
  v46 = *(a1 + 56);
  swift_beginAccess();
  v47 = static Spacing.defaultValue;
  if (dbl_1EAB21528 < *&static Spacing.defaultValue)
  {
    v47 = *&dbl_1EAB21528;
  }

  *v76 = v47;
  *&v76[8] = v66;
  *&v76[24] = v67;
  *&v76[40] = v68;
  *&v76[56] = v69;
  v77 = v46;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(a1, &v70, &lazy cache variable for type metadata for UncheckedSendable<GlassEffectLocalModifier>, &type metadata for GlassEffectLocalModifier, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
  AGGraphSetOutputValue();
  v72 = *&v76[32];
  v73 = *&v76[48];
  v74 = v77;
  v70 = *v76;
  v71 = *&v76[16];
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v70, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
}

{
  v46 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45[-v5];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v6 = static Signpost.bodyInvoke;
    v7 = word_1ED539040;
    v8 = HIBYTE(word_1ED539040);
    v9 = byte_1ED539042;
    v10 = static os_signpost_type_t.begin.getter();
    v66 = v6;
    LOBYTE(v67) = v7;
    BYTE1(v67) = v8;
    BYTE2(v67) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v56 = *(&v6 + 1);
    LODWORD(v57) = v10;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18DDAB4C0;
    v12 = AGTypeID.description.getter();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = specialized static Tracing.libraryName(defining:)();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    v58 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v65 = v57;
      v63 = _signpostLog;
      v64 = &dword_18D018000;
      *&v66 = v6;
      *(&v66 + 1) = v56;
      LOBYTE(v67) = v7;
      v60 = "%{public}@.body [in %{public}@]";
      v61 = 31;
      v62 = 2;
      v59 = v58;
      v19 = v47;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v54 + 8))(v19, v53);
LABEL_34:

      break;
    }

    if (v6 == 20)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v21 = bswap32(v6) | (4 * WORD1(v6));
    v22 = v57;
    v23 = v54 + 16;
    v48 = *(v54 + 16);
    v24 = v48(v55, v47, v53);
    v25 = 0;
    LOBYTE(v60) = 1;
    v57 = v20;
    v51 = 16 * v20;
    v54 = v23;
    v52 = (v23 - 8);
    v50 = v58 + 32;
    v49 = v6;
LABEL_11:
    v56 = v45;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v45[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v28 = v27 + 8;
    v29 = v57;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v50 + 40 * v25;
    v32 = v57;
    while (1)
    {
      v33 = *(v58 + 16);
      if (v25 == v33)
      {
        LOBYTE(v60) = 0;
LABEL_19:
        v36 = v49;
        if (v49 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v27[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v27[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v36 != 20 && v27[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v37 = v53;
        v38 = *v52;
        v39 = v55;
        (*v52)(v55, v53);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v48(v39, v40, v37);
        if ((v60 & 1) == 0)
        {
          v41 = v53;
          v38(v55, v53);
          v38(v47, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v66);
      v34 = *(&v67 + 1);
      __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v31 += 40;
      if (!--v32)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v42 = *(v46 + 32) & 1;
  v43 = *(v46 + 16);
  v66 = *v46;
  v67 = v43;
  LOBYTE(v68) = v42;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
  return AGGraphSetOutputValue();
}

{
  v69 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v62 = v8;
  v68[0] = v8;
  LODWORD(v60) = v9;
  LOBYTE(v68[1]) = v9;
  BYTE1(v68[1]) = v10;
  BYTE2(v68[1]) = v11;
  if (Signpost.isEnabled.getter())
  {
    v55 = *(&v8 + 1);
    LODWORD(v59) = v12;
    v49 = a1;
    v50 = v7;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18DDAB4C0;
    v14 = AGTypeID.description.getter();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = specialized static Tracing.libraryName(defining:)();
    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v19;
    *(v13 + 80) = v20;
    v61 = v13;
    if (one-time initialization token for _signpostLog == -1)
    {
      v21 = v55;
      if (v10)
      {
LABEL_6:
        v66 = v59;
        v64 = _signpostLog;
        v65 = &dword_18D018000;
        *&v68[0] = v62;
        *(&v68[0] + 1) = v21;
        LOBYTE(v68[1]) = v60;
        *&v67[0] = "%{public}@.body [in %{public}@]";
        *(&v67[0] + 1) = 31;
        LOBYTE(v67[1]) = 2;
        v63 = v61;
        v22 = v50;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v57 + 8))(v22, v56);
LABEL_35:

        a1 = v49;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v21 = v55;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v23 = v62;
    if (v62 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v62) | (4 * WORD1(v62));
    LODWORD(v62) = v59;
    v26 = v57 + 16;
    v51 = *(v57 + 16);
    v27 = v51(v58, v50, v56);
    v28 = 0;
    LOBYTE(v67[0]) = 1;
    v60 = v24;
    v57 = v26;
    v54 = 16 * v24;
    v55 = (v26 - 8);
    v52 = v23;
    v53 = v61 + 32;
    do
    {
      v59 = &v48;
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v30 + 8;
      v32 = v60;
      v33 = v30 + 8;
      do
      {
        *(v33 - 1) = 0;
        *v33 = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
      v34 = v53 + 40 * v28;
      v35 = v60;
      while (1)
      {
        v36 = *(v61 + 16);
        if (v28 == v36)
        {
          break;
        }

        if (v28 >= v36)
        {
          __break(1u);
        }

        ++v28;
        outlined init with copy of AnyTrackedValue(v34, v68);
        v37 = *(&v68[1] + 1);
        __swift_project_boxed_opaque_existential_1(v68, *(&v68[1] + 1));
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v25 | v62, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(v68);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v67[0]) = 0;
LABEL_20:
      v39 = v52;
      if (v52 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v30[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v30[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v39 != 20 && v30[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v40 = v56;
      v41 = *v55;
      v42 = v58;
      (*v55)(v58, v56);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v27 = v51(v42, v43, v40);
    }

    while ((v67[0] & 1) != 0);
    v44 = v56;
    v41(v58, v56);
    v41(v50, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v45 = *(a1 + 48);
  v67[2] = *(a1 + 32);
  v67[3] = v45;
  v67[4] = *(a1 + 64);
  LOBYTE(v67[5]) = *(a1 + 80);
  v46 = *(a1 + 16);
  v67[0] = *a1;
  v67[1] = v46;
  SafeAreaPaddingModifier.body(content:)(v68);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>);
  AGGraphSetOutputValue();
  memcpy(v67, v68, sizeof(v67));
  return outlined destroy of ObservationTracking._AccessList?(v67, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
}

uint64_t initializeWithCopy for ContentTransition.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  *a1 = v4;
  *(a1 + 12) = v5;
  *(a1 + 8) = v6;
  *(a1 + 13) = v7;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  *v88 = a2[2];
  *&v88[16] = v8;
  *v89 = a2[4];
  *&v89[16] = *(a2 + 20);
  v9 = a2[1];
  v86 = *a2;
  v87 = v9;
  v10 = *&v88[4];
  if ((v88[4] & 0x22) != 0)
  {
    v57 = a4;
    v58 = a3;
    v61 = a7;
    LODWORD(v68) = v7;
    v13 = a2[1];
    v80 = *a2;
    v81 = v13;
    v82 = a2[2];
    outlined init with copy of _GraphInputs(&v86, v72);
    v14 = static Animatable.makeAnimatable(value:inputs:)(&v68, &v80, a5, *(a6 + 8));
    v79[0] = v80;
    v79[1] = v81;
    v79[2] = v82;
    outlined destroy of _GraphInputs(v79);
    v15 = v87;
    v16 = swift_beginAccess();
    v17 = *MEMORY[0x1E698D3F8];
    *&v80 = __PAIR64__(*(v15 + 16), v14);
    DWORD2(v80) = v17;
    MEMORY[0x1EEE9AC00](v16);
    v59 = a5;
    v60 = a6;
    v51 = type metadata accessor for UnaryLayoutComputer();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v80, closure #1 in Attribute.init<A>(_:)partial apply, &v49, v51, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
    v77 = v86;
    v78 = v87;
    v20 = *v88;
    v21 = *&v88[4];
    v75 = *&v88[8];
    v76 = *&v88[24];
    v63 = *&v89[4];
    v64 = v72[0];
    v22 = *&v89[12];
    v56 = *&v89[12];
    if ((v10 & 0x20) != 0)
    {
      v62 = *v88;
      outlined init with copy of _ViewInputs(&v86, &v80);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v28 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v29 = specialized CachedEnvironment.attribute<A>(id:_:)(v28);
      v30 = swift_endAccess();
      *&v80 = __PAIR64__(v29, *&v89[8]);
      *(&v80 + 1) = __PAIR64__(v17, v64);
      MEMORY[0x1EEE9AC00](v30);
      v31 = type metadata accessor for UnaryChildGeometry();
      v51 = v31;
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v80, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, &v49, v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
      v34 = v72[0];
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v35 = *v89;
      v53 = v34;
      *&v80 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v35);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v24 = Attribute.init<A>(body:value:flags:update:)();
      v20 = v62 | 0x18;
      v21 = v10 | 2;
      v22 = v56;
    }

    else
    {
      OffsetAttribute2 = *&v89[8];
      v24 = *v89;
      outlined init with copy of _ViewInputs(&v86, &v80);
      v53 = 0;
    }

    v72[0] = v77;
    v72[1] = v78;
    v62 = v20;
    *&v73[0] = __PAIR64__(v21, v20);
    v54 = v21;
    v55 = OffsetAttribute2;
    *(v73 + 8) = v75;
    *(&v73[1] + 1) = v76;
    *&v74[0] = __PAIR64__(v63, v24);
    DWORD2(v74[0]) = OffsetAttribute2;
    *(v74 + 12) = v22;
    v70[0] = v73[0];
    v70[1] = v73[1];
    v71[0] = v74[0];
    LODWORD(v71[1]) = HIDWORD(v22);
    v68 = v77;
    v69 = v78;
    v36 = outlined init with copy of _ViewInputs(v72, &v80);
    (v58)(&v65, v36, &v68);
    v82 = v70[0];
    v83 = v70[1];
    v84 = v71[0];
    v85 = v71[1];
    v80 = v68;
    v81 = v69;
    v37 = outlined destroy of _ViewInputs(&v80);
    v38 = v65;
    v39 = v66;
    v40 = v67;
    if ((v10 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v37);
      v41 = v59;
      LODWORD(v58) = v24;
      v42 = v60;
      v49 = v59;
      v50 = v60;
      v51 = v38;
      WitnessTable = __PAIR64__(v40, v39);
      MEMORY[0x1EEE9AC00](v43);
      v44 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v44);
      v49 = v41;
      v50 = v42;
      v51 = v38;
      WitnessTable = __PAIR64__(v40, v39);
      v22 = v56;
      v24 = v58;
      v45 = type metadata accessor for UnaryChildGeometry();
      MEMORY[0x1EEE9AC00](v45);
      AGGraphMutateAttribute();
    }

    v46 = v39 | ((v10 & 2) << 6);
    if ((v10 & 2) != 0)
    {
      v47 = v64;
    }

    else
    {
      v47 = v40;
    }

    v68 = v77;
    v69 = v78;
    *&v70[0] = __PAIR64__(v54, v62);
    *(v70 + 8) = v75;
    *(&v70[1] + 1) = v76;
    *&v71[0] = __PAIR64__(v63, v24);
    DWORD2(v71[0]) = v55;
    *(v71 + 12) = v22;
    result = outlined destroy of _ViewInputs(&v68);
    v48 = v61;
    *v61 = v38;
    *(v48 + 2) = v46;
    *(v48 + 3) = v47;
  }

  else
  {
    v25 = a2[3];
    v82 = a2[2];
    v83 = v25;
    v84 = a2[4];
    v85 = *(a2 + 20);
    v26 = a2[1];
    v80 = *a2;
    v81 = v26;
    return a3();
  }

  return result;
}

{
  v97 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  *v95 = a2[2];
  *&v95[16] = v8;
  *v96 = a2[4];
  *&v96[16] = *(a2 + 20);
  v9 = a2[1];
  v93 = *a2;
  v94 = v9;
  v10 = *&v95[4];
  if ((v95[4] & 0x22) != 0)
  {
    v65 = a4;
    v66 = a3;
    v68 = a7;
    LODWORD(v75) = v7;
    v13 = a2[1];
    v87 = *a2;
    v88 = v13;
    v89 = a2[2];
    outlined init with copy of _GraphInputs(&v93, v79);
    v14 = static Animatable.makeAnimatable(value:inputs:)(&v75, &v87, a5, *(a6 + 8));
    v86[0] = v87;
    v86[1] = v88;
    v86[2] = v89;
    outlined destroy of _GraphInputs(v86);
    v84 = v93;
    v85 = v94;
    v15 = *v95;
    v82 = *&v95[8];
    v83 = *&v95[24];
    v70 = *&v96[4];
    v16 = *&v96[12];
    if ((v10 & 0x20) != 0)
    {
      v69 = *v95;
      v67 = *&v96[12];
      v24 = v94;
      v25 = swift_beginAccess();
      v26 = *(v24 + 16);
      v27 = *MEMORY[0x1E698D3F8];
      v64 = v14;
      *&v79[0] = __PAIR64__(v26, v14);
      v63 = v27;
      DWORD2(v79[0]) = v27;
      MEMORY[0x1EEE9AC00](v25);
      v57 = type metadata accessor for UnaryPositionAwareLayoutComputer();
      WitnessTable = swift_getWitnessTable();
      outlined init with copy of _ViewInputs(&v93, &v87);
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v79, closure #1 in Attribute.init<A>(_:)partial apply, &v55, v57, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
      v30 = v87;
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v31 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v32 = specialized CachedEnvironment.attribute<A>(id:_:)(v31);
      v33 = swift_endAccess();
      v60 = v30;
      v34 = *&v95[28] | (*(v24 + 16) << 32);
      *&v87 = v30 | (v32 << 32);
      *(&v87 + 1) = *&v96[8] | (*v96 << 32);
      *&v88 = v34;
      *(&v88 + 1) = v63 | (*&v96[12] << 32);
      MEMORY[0x1EEE9AC00](v33);
      v35 = type metadata accessor for UnaryPositionAwareChildGeometry();
      v57 = v35;
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<ViewGeometry>);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v87, closure #1 in Attribute.init<A>(_:)partial apply, &v55, v35, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);
      v61 = 0;
      LODWORD(v32) = v79[0];
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v59 = v32;
      v18 = AGGraphCreateOffsetAttribute2();
      v15 = v69 | 0x18;
      v20 = v10 | 2;
      v16 = v67;
      v14 = v64;
    }

    else
    {
      v61 = 0;
      OffsetAttribute2 = *&v96[8];
      v18 = *v96;
      v19 = *&v95[4];
      outlined init with copy of _ViewInputs(&v93, &v87);
      v20 = v19;
      v59 = 0;
      v60 = 0;
    }

    v67 = a6;
    v79[0] = v84;
    v79[1] = v85;
    v69 = v15;
    *&v80[0] = __PAIR64__(v20, v15);
    v62 = v18;
    LODWORD(v63) = v20;
    *(v80 + 8) = v82;
    *(&v80[1] + 1) = v83;
    *&v81[0] = __PAIR64__(v70, v18);
    v64 = OffsetAttribute2;
    DWORD2(v81[0]) = OffsetAttribute2;
    *(v81 + 12) = v16;
    v77[0] = v80[0];
    v77[1] = v80[1];
    v78[0] = v81[0];
    LODWORD(v78[1]) = HIDWORD(v16);
    v75 = v84;
    v76 = v85;
    v38 = outlined init with copy of _ViewInputs(v79, &v87);
    (v66)(&v72, v38, &v75);
    v89 = v77[0];
    v90 = v77[1];
    v91 = v78[0];
    v92 = v78[1];
    v87 = v75;
    v88 = v76;
    v39 = outlined destroy of _ViewInputs(&v87);
    v40 = v72;
    v42 = v73;
    v41 = v74;
    if ((v10 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v39);
      v55 = a5;
      LODWORD(v66) = v10;
      v10 = v14;
      v43 = v16;
      v44 = a5;
      v45 = v67;
      v56 = v67;
      v57 = v40;
      WitnessTable = __PAIR64__(v41, v42);
      v46 = type metadata accessor for UnaryPositionAwareLayoutComputer();
      MEMORY[0x1EEE9AC00](v46);
      v47 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v47);
      v55 = v44;
      v56 = v45;
      v57 = v40;
      WitnessTable = __PAIR64__(v41, v42);
      v16 = v43;
      v14 = v10;
      LOBYTE(v10) = v66;
      v48 = type metadata accessor for UnaryPositionAwareChildGeometry();
      MEMORY[0x1EEE9AC00](v48);
      AGGraphMutateAttribute();
    }

    if ((v10 & 2) != 0)
    {
      v49 = v94;
      v50 = swift_beginAccess();
      *&v75 = __PAIR64__(*(v49 + 16), v14);
      DWORD2(v75) = v41;
      MEMORY[0x1EEE9AC00](v50);
      v51 = type metadata accessor for UnaryPositionAwareLayoutComputer();
      v57 = v51;
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v75, closure #1 in Attribute.init<A>(_:)partial apply, &v55, v51, MEMORY[0x1E69E73E0], v52, MEMORY[0x1E69E7410], v53);
      v41 = v71;
      v42 |= 0x80u;
    }

    v75 = v84;
    v76 = v85;
    *&v77[0] = __PAIR64__(v63, v69);
    *(v77 + 8) = v82;
    *(&v77[1] + 1) = v83;
    *&v78[0] = __PAIR64__(v70, v62);
    DWORD2(v78[0]) = v64;
    *(v78 + 12) = v16;
    result = outlined destroy of _ViewInputs(&v75);
    v54 = v68;
    *v68 = v40;
    *(v54 + 2) = v42;
    *(v54 + 3) = v41;
  }

  else
  {
    v21 = a2[3];
    v89 = a2[2];
    v90 = v21;
    v91 = a2[4];
    v92 = *(a2 + 20);
    v22 = a2[1];
    v87 = *a2;
    v88 = v22;
    return a3();
  }

  return result;
}

uint64_t partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(uint64_t a1)
{
  return partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(a1, type metadata accessor for UnaryLayoutComputer);
}

{
  return partial apply for closure #1 in static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(a1, type metadata accessor for UnaryPositionAwareLayoutComputer);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance RoundedRectangle._Inset(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV6_InsetV_Tt1B5(a1, v4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV6_InsetV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle._Inset> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t UnaryPositionAwareLayoutComputer.updateValue()(uint64_t a1, uint64_t a2, void (*a3)(char *, _DWORD *, _DWORD *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v14 + 24);
  v16 = v15(0, v9, v11);
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  result = AGGraphGetCurrentAttribute();
  v20 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    v29 = a4;
    v30 = a5;
    v22 = *(v5 + 4);
    v23 = *(v5 + 8);
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v23 = 0;
    }

    if (v24)
    {
      v25 = v20;
    }

    else
    {
      v25 = v23;
    }

    Value = AGGraphGetValue();
    (*(v10 + 16))(v13, Value, v9);
    v36[0] = v21;
    v36[1] = v21;
    v36[2] = v22;
    v35[0] = v21;
    v35[1] = v25;
    v35[2] = v20;
    v34(v13, v36, v35, v9, v31);
    WitnessTable = swift_getWitnessTable();
    v28 = v33;
    StatefulRule<>.update<A>(to:)(v18, a1, v33, WitnessTable, v30);
    return (*(v32 + 8))(v18, v28);
  }

  return result;
}

double UnaryLayoutEngine.init(layout:layoutContext:child:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 8);
  v11 = *(a3 + 8);
  v12 = type metadata accessor for UnaryLayoutEngine();
  v13 = a5 + v12[11];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 1;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 1;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 1;
  v14 = a5 + v12[12];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 1;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 168) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 1;
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0u;
  *(v14 + 240) = 0u;
  *(v14 + 256) = 0u;
  *(v14 + 272) = 0u;
  *(v14 + 288) = 0u;
  *(v14 + 304) = 1;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v15 = a5 + v12[9];
  *v15 = *a2;
  *(v15 + 8) = v10;
  v16 = a5 + v12[10];
  result = *a3;
  *v16 = *a3;
  *(v16 + 8) = v11;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance MakeSection@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty()
{
  result = lazy protocol witness table cache variable for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty;
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnyAnimatableData.Empty and conformance _AnyAnimatableData.Empty);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)@<X0>(uint64_t a1@<X8>)
{
  return specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(*(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

{
  return specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(*(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

{
  return specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(*(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t _AnyLayoutBox.makeCache(subviews:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 16);
  v12 = *(v8 + 17);
  v13 = *(v3 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v13, v4);
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v14 = *(v3 + 192);
  v15 = *(v14 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v21;
  v21[4] = AssociatedTypeWitness;
  v18 = v17;
  __swift_allocate_boxed_opaque_existential_1(v17 + 1);
  v15(&v22, v4, v14);
  result = (*(v5 + 8))(v7, v4);
  *v18 = v4;
  return result;
}

double specialized HVStack.makeCache(subviews:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  *&result = specialized HVStack.makeCache(subviews:)(a1, a2, a3, a4, a5, a6, 0, a7).n128_u64[0];
  return result;
}

{
  *&result = specialized HVStack.makeCache(subviews:)(a1, a2, a3, a4, a5, a6, 1, a7).n128_u64[0];
  return result;
}

uint64_t outlined init with copy of ViewLayoutEngine<AnyLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<AnyLayout>>);
    }
  }
}

uint64_t outlined destroy of ViewLayoutEngine<AnyLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized GeometryEffectTransform.value.getter(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9 - v5;
  v11 = v9[1] - v6;
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  type metadata accessor for CGSize(0);
  v17 = AGGraphGetValue();
  _ScaleEffect.effectValue(size:)(v47, *v17, v17[1], v13, v14, v15, v16);
  v38 = v47[3];
  v39 = v47[1];
  v41 = v47[2];
  v43 = v48;
  v46 = v47[0];
  v18 = AGGraphGetValue();
  v19 = v41;
  v20 = v43;
  v21 = v39;
  if (*v18 == 1)
  {
    v22 = *AGGraphGetValue();
    v56 = 0xBFF0000000000000;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = xmmword_18DDAA020;
    v61 = v22;
    v62 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v47, v49);
    v52[0] = 0xBFF0000000000000;
    memset(&v52[1], 0, 24);
    v53 = xmmword_18DDAA020;
    v54 = v22;
    v55 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v52, v50);
    v21 = v50[1];
    v46 = v50[0];
    v19 = v50[2];
    v38 = v50[3];
    v20 = v51;
  }

  v23 = v7 - v10;
  v24 = v8 - v11;
  if (v21.f64[0] == 0.0 && v19.f64[1] == 0.0 && v20 == 1.0)
  {
    v25.f64[0] = v19.f64[0];
    v25.f64[1] = v21.f64[1];
    v26 = vmulq_f64(v46, v25);
    if (vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0] == 0.0)
    {
LABEL_13:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_17:
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = v23;
      *(a1 + 40) = v24;
      return;
    }

    v27 = vextq_s8(v21, v19, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v46, xmmword_18DDAA020), vceqq_f64(v27, xmmword_18DDAB500))))) & 1) == 0)
    {
      v23 = v23 - *v38.i64;
      v24 = v24 - *&v38.i64[1];
      goto LABEL_17;
    }

    v44 = v27;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v28 = swift_allocObject();
    *(v28 + 32) = v23;
    *(v28 + 40) = v24;
    *(v28 + 48) = v46;
    *(v28 + 64) = v44;
    *(v28 + 80) = v38;
    v29 = 1;
    *(v28 + 96) = 1;
    *(v28 + 16) = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v30 = *(v4 + 24);
    v31 = __OFADD__(v30, 1);
    v29 = v30 + 1;
    if (!v31)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v32 = vdupq_laneq_s64(v38, 1);
  v33.f64[1] = v32.f64[1];
  v33.f64[0] = v20;
  v34 = vmulq_f64(v19, v33);
  v32.f64[1] = v20;
  v35.f64[0] = v21.f64[0];
  v35.f64[1] = v46.f64[1];
  v36 = vmulq_f64(v35, vsubq_f64(vmulq_laneq_f64(v32, v21, 1), vmulq_n_f64(v19, *v38.i64)));
  if (v36.f64[0] + vmuld_n_f64(v46.f64[0], vsubq_f64(v34, vdupq_laneq_s64(v34, 1)).f64[0]) - v36.f64[1] == 0.0)
  {
    goto LABEL_13;
  }

  v45 = v20;
  v40 = v21;
  v42 = v19;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v28 = swift_allocObject();
  *(v28 + 32) = v23;
  *(v28 + 40) = v24;
  *(v28 + 48) = v46;
  *(v28 + 64) = v40;
  *(v28 + 80) = v42;
  *(v28 + 96) = v38;
  *(v28 + 112) = v45;
  v29 = 1;
  *(v28 + 120) = 1;
  *(v28 + 16) = v4;
  if (!v4 || (v37 = *(v4 + 24), v31 = __OFADD__(v37, 1), v29 = v37 + 1, !v31))
  {
LABEL_16:
    *(v28 + 24) = v29;
    v23 = 0.0;
    v4 = v28;
    v24 = 0.0;
    goto LABEL_17;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9 - v5;
  v11 = v9[1] - v6;
  v12 = AGGraphGetValue();
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  v16 = *(v12 + 56);
  type metadata accessor for CGSize(0);
  v46 = *(v12 + 16);
  v50 = *v12;
  v17 = AGGraphGetValue();
  v18 = *v17;
  v19 = v17[1];
  v20 = v13 * *v17;
  if (*v17 <= v19)
  {
    v18 = v17[1];
  }

  v62 = v46;
  v61 = v50;
  *&v63 = v20;
  *(&v63 + 1) = v14 * v19;
  v64 = v15;
  *&v65 = v18 / v16;
  *(&v65 + 1) = 0x7FF8000000000000;
  _Rotation3DEffect.Data.transform.getter(v52);
  v41 = v52[3];
  v42 = v52[1];
  v44 = v52[2];
  v47 = v53;
  v51 = v52[0];
  v21 = AGGraphGetValue();
  v22 = v44;
  v23 = v47;
  v24 = v42;
  if (*v21 == 1)
  {
    v25 = *AGGraphGetValue();
    v61 = 0xBFF0000000000000;
    v62 = 0uLL;
    v63 = xmmword_18DDAA020;
    v64 = v25;
    v65 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v52, v54);
    v57[0] = 0xBFF0000000000000;
    memset(&v57[1], 0, 24);
    v58 = xmmword_18DDAA020;
    v59 = v25;
    v60 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v57, v55);
    v24 = v55[1];
    v51 = v55[0];
    v22 = v55[2];
    v41 = v55[3];
    v23 = v56;
  }

  v26 = v7 - v10;
  v27 = v8 - v11;
  if (v24.f64[0] == 0.0 && v22.f64[1] == 0.0 && v23 == 1.0)
  {
    v28.f64[0] = v22.f64[0];
    v28.f64[1] = v24.f64[1];
    v29 = vmulq_f64(v51, v28);
    if (vsubq_f64(v29, vdupq_laneq_s64(v29, 1)).f64[0] == 0.0)
    {
LABEL_15:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_19:
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = v26;
      *(a1 + 40) = v27;
      return;
    }

    v30 = vextq_s8(v24, v22, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v51, xmmword_18DDAA020), vceqq_f64(v30, xmmword_18DDAB500))))) & 1) == 0)
    {
      v26 = v26 - *v41.i64;
      v27 = v27 - *&v41.i64[1];
      goto LABEL_19;
    }

    v48 = v30;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v31 = swift_allocObject();
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    *(v31 + 48) = v51;
    *(v31 + 64) = v48;
    *(v31 + 80) = v41;
    v32 = 1;
    *(v31 + 96) = 1;
    *(v31 + 16) = v4;
    if (!v4)
    {
      goto LABEL_18;
    }

    v33 = *(v4 + 24);
    v34 = __OFADD__(v33, 1);
    v32 = v33 + 1;
    if (!v34)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v35 = vdupq_laneq_s64(v41, 1);
  v36.f64[1] = v35.f64[1];
  v36.f64[0] = v23;
  v37 = vmulq_f64(v22, v36);
  v35.f64[1] = v23;
  v38.f64[0] = v24.f64[0];
  v38.f64[1] = v51.f64[1];
  v39 = vmulq_f64(v38, vsubq_f64(vmulq_laneq_f64(v35, v24, 1), vmulq_n_f64(v22, *v41.i64)));
  if (v39.f64[0] + vmuld_n_f64(v51.f64[0], vsubq_f64(v37, vdupq_laneq_s64(v37, 1)).f64[0]) - v39.f64[1] == 0.0)
  {
    goto LABEL_15;
  }

  v49 = v23;
  v43 = v24;
  v45 = v22;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v31 = swift_allocObject();
  *(v31 + 32) = v26;
  *(v31 + 40) = v27;
  *(v31 + 48) = v51;
  *(v31 + 64) = v43;
  *(v31 + 80) = v45;
  *(v31 + 96) = v41;
  *(v31 + 112) = v49;
  v32 = 1;
  *(v31 + 120) = 1;
  *(v31 + 16) = v4;
  if (!v4 || (v40 = *(v4 + 24), v34 = __OFADD__(v40, 1), v32 = v40 + 1, !v34))
  {
LABEL_18:
    *(v31 + 24) = v32;
    v26 = 0.0;
    v4 = v31;
    v27 = 0.0;
    goto LABEL_19;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v38 = *(Value + 40);
  v39 = *(Value + 32);
  type metadata accessor for CGPoint(0);

  v7 = AGGraphGetValue();
  v36 = v7[1] - v6;
  v37 = *v7 - v5;
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  type metadata accessor for CGSize(0);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  CGAffineTransformMakeTranslation(&v51, v10 * *v12, v11 * v14);
  CGAffineTransformRotate(&v47, &v51, v9);
  v51 = v47;
  CGAffineTransformTranslate(&v47, &v51, -(v10 * v13), -(v11 * v14));
  a = v47.a;
  b = v47.b;
  c = v47.c;
  d = v47.d;
  tx = v47.tx;
  ty = v47.ty;
  v47.c = 0.0;
  v47.d = c;
  v47.tx = d;
  v47.ty = 0.0;
  v48 = tx;
  v49 = ty;
  v40 = ty;
  v50 = 0x3FF0000000000000;
  if (*AGGraphGetValue() == 1)
  {
    v21 = *AGGraphGetValue();
    v51.a = -1.0;
    memset(&v51.b, 0, 24);
    *&v51.tx = xmmword_18DDAA020;
    v52 = v21;
    v53 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v47, v41);
    v43[0] = 0xBFF0000000000000;
    memset(&v43[1], 0, 24);
    v44 = xmmword_18DDAA020;
    v45 = v21;
    v46 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v43, v42);
    a = *v42;
    b = *&v42[1];
    v22 = *&v42[2];
    c = *&v42[3];
    d = *&v42[4];
    v23 = *&v42[5];
    tx = *&v42[6];
    v40 = *&v42[7];
    v24 = *&v42[8];
  }

  else
  {
    v24 = 1.0;
    v22 = 0.0;
    v23 = 0.0;
  }

  v25 = v39 - v37;
  v26 = v38 - v36;
  if (v22 == 0.0 && v23 == 0.0 && v24 == 1.0)
  {
    if (a * d - b * c != 0.0)
    {
      if (a == 1.0 && b == 0.0 && c == 0.0 && d == 1.0)
      {
        v27 = v25 - tx;
        v28 = v26 - v40;
LABEL_22:
        *a1 = v4;
        *(a1 + 8) = v3;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v27;
        *(a1 + 40) = v28;
        return;
      }

      goto LABEL_19;
    }

LABEL_14:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    v28 = v38 - v36;
    v27 = v39 - v37;
    goto LABEL_22;
  }

  if (v22 * (c * v40 - d * tx) + a * (d * v24 - v23 * v40) - b * (c * v24 - v23 * tx) == 0.0)
  {
    goto LABEL_14;
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v29 = swift_allocObject();
  *(v29 + 32) = v39 - v37;
  *(v29 + 40) = v38 - v36;
  *(v29 + 48) = a;
  *(v29 + 56) = b;
  *(v29 + 64) = v22;
  *(v29 + 72) = c;
  *(v29 + 80) = d;
  *(v29 + 88) = v23;
  *(v29 + 96) = tx;
  *(v29 + 104) = v40;
  *(v29 + 112) = v24;
  v30 = 1;
  *(v29 + 120) = 1;
  *(v29 + 16) = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  v31 = *(v4 + 24);
  v32 = __OFADD__(v31, 1);
  v30 = v31 + 1;
  if (!v32)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_19:
  v33 = v25;
  v34 = v26;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
  v29 = swift_allocObject();
  *(v29 + 32) = v33;
  *(v29 + 40) = v34;
  *(v29 + 48) = a;
  *(v29 + 56) = b;
  *(v29 + 64) = c;
  *(v29 + 72) = d;
  *(v29 + 80) = tx;
  *(v29 + 88) = v40;
  v30 = 1;
  *(v29 + 96) = 1;
  *(v29 + 16) = v4;
  if (!v4 || (v35 = *(v4 + 24), v32 = __OFADD__(v35, 1), v30 = v35 + 1, !v32))
  {
LABEL_21:
    *(v29 + 24) = v30;
    v27 = 0.0;
    v4 = v29;
    v28 = 0.0;
    goto LABEL_22;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9 - v5;
  v11 = v9[1] - v6;
  v12 = AGGraphGetValue();
  v13 = v12[1];
  v61 = *v12;
  v62 = v13;
  v14 = v12[3];
  v63 = v12[2];
  v64 = v14;
  type metadata accessor for CGSize(0);
  v15 = AGGraphGetValue();
  ScalePulseEffect.effectValue(size:)(v45, *v15, v15[1]);
  v36 = v45[3];
  v37 = v45[1];
  v39 = v45[2];
  v41 = v46;
  v44 = v45[0];
  v16 = AGGraphGetValue();
  v17 = v39;
  v18 = v41;
  v19 = v37;
  if (*v16 == 1)
  {
    v20 = *AGGraphGetValue();
    v54 = 0xBFF0000000000000;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = xmmword_18DDAA020;
    v59 = v20;
    v60 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v45, v47);
    v50[0] = 0xBFF0000000000000;
    memset(&v50[1], 0, 24);
    v51 = xmmword_18DDAA020;
    v52 = v20;
    v53 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v50, v48);
    v19 = v48[1];
    v44 = v48[0];
    v17 = v48[2];
    v36 = v48[3];
    v18 = v49;
  }

  v21 = v7 - v10;
  v22 = v8 - v11;
  if (v19.f64[0] == 0.0 && v17.f64[1] == 0.0 && v18 == 1.0)
  {
    v23.f64[0] = v17.f64[0];
    v23.f64[1] = v19.f64[1];
    v24 = vmulq_f64(v44, v23);
    if (vsubq_f64(v24, vdupq_laneq_s64(v24, 1)).f64[0] == 0.0)
    {
LABEL_13:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_17:
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = v21;
      *(a1 + 40) = v22;
      return;
    }

    v25 = vextq_s8(v19, v17, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v44, xmmword_18DDAA020), vceqq_f64(v25, xmmword_18DDAB500))))) & 1) == 0)
    {
      v21 = v21 - *v36.i64;
      v22 = v22 - *&v36.i64[1];
      goto LABEL_17;
    }

    v42 = v25;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v26 = swift_allocObject();
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    *(v26 + 48) = v44;
    *(v26 + 64) = v42;
    *(v26 + 80) = v36;
    v27 = 1;
    *(v26 + 96) = 1;
    *(v26 + 16) = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v28 = *(v4 + 24);
    v29 = __OFADD__(v28, 1);
    v27 = v28 + 1;
    if (!v29)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v30 = vdupq_laneq_s64(v36, 1);
  v31.f64[1] = v30.f64[1];
  v31.f64[0] = v18;
  v32 = vmulq_f64(v17, v31);
  v30.f64[1] = v18;
  v33.f64[0] = v19.f64[0];
  v33.f64[1] = v44.f64[1];
  v34 = vmulq_f64(v33, vsubq_f64(vmulq_laneq_f64(v30, v19, 1), vmulq_n_f64(v17, *v36.i64)));
  if (v34.f64[0] + vmuld_n_f64(v44.f64[0], vsubq_f64(v32, vdupq_laneq_s64(v32, 1)).f64[0]) - v34.f64[1] == 0.0)
  {
    goto LABEL_13;
  }

  v43 = v18;
  v38 = v19;
  v40 = v17;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v26 = swift_allocObject();
  *(v26 + 32) = v21;
  *(v26 + 40) = v22;
  *(v26 + 48) = v44;
  *(v26 + 64) = v38;
  *(v26 + 80) = v40;
  *(v26 + 96) = v36;
  *(v26 + 112) = v43;
  v27 = 1;
  *(v26 + 120) = 1;
  *(v26 + 16) = v4;
  if (!v4 || (v35 = *(v4 + 24), v29 = __OFADD__(v35, 1), v27 = v35 + 1, !v29))
  {
LABEL_16:
    *(v26 + 24) = v27;
    v21 = 0.0;
    v4 = v26;
    v22 = 0.0;
    goto LABEL_17;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v56 = *(Value + 40);
  v57 = *(Value + 32);
  type metadata accessor for CGPoint(0);

  v7 = AGGraphGetValue();
  v54 = v7[1] - v6;
  v55 = *v7 - v5;
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  type metadata accessor for CGSize(0);
  v13 = AGGraphGetValue();
  v14 = *v13 * 0.5;
  v15 = v13[1] * 0.5;
  CGAffineTransformMakeTranslation(&t1, -v14, -v15);
  tx = t1.tx;
  ty = t1.ty;
  v58 = *&t1.a;
  v51 = *&t1.c;
  CGAffineTransformMakeScale(&t1, v9, v10);
  v18 = *&t1.a;
  v19 = *&t1.c;
  v20 = *&t1.tx;
  *&t1.a = v58;
  *&t1.c = v51;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v18;
  *&t2.c = v19;
  *&t2.tx = v20;
  CGAffineTransformConcat(&v64, &t1, &t2);
  v21 = v64.tx;
  v22 = v64.ty;
  v59 = *&v64.a;
  v52 = *&v64.c;
  CGAffineTransformMakeTranslation(&t1, v14, v15);
  v23 = *&t1.a;
  v24 = *&t1.c;
  v25 = *&t1.tx;
  *&t1.a = v59;
  *&t1.c = v52;
  t1.tx = v21;
  t1.ty = v22;
  *&t2.a = v23;
  *&t2.c = v24;
  *&t2.tx = v25;
  CGAffineTransformConcat(&v64, &t1, &t2);
  v26 = v64.tx;
  v27 = v64.ty;
  v60 = *&v64.a;
  v53 = *&v64.c;
  CGAffineTransformMakeTranslation(&t1, v11, v12);
  v28 = *&t1.a;
  v29 = *&t1.c;
  v30 = *&t1.tx;
  *&t1.a = v60;
  *&t1.c = v53;
  t1.tx = v26;
  t1.ty = v27;
  *&t2.a = v28;
  *&t2.c = v29;
  *&t2.tx = v30;
  CGAffineTransformConcat(&v64, &t1, &t2);
  a = v64.a;
  b = v64.b;
  c = v64.c;
  d = v64.d;
  v35 = v64.tx;
  t2.a = v64.a;
  t2.b = v64.b;
  t2.c = 0.0;
  t2.d = v64.c;
  t2.tx = v64.d;
  t2.ty = 0.0;
  v68 = v64.tx;
  v69 = v64.ty;
  v61 = v64.ty;
  v70 = 0x3FF0000000000000;
  if (*AGGraphGetValue() == 1)
  {
    v36 = *AGGraphGetValue();
    t1.a = -1.0;
    memset(&t1.b, 0, 24);
    *&t1.tx = xmmword_18DDAA020;
    v72 = v36;
    v73 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&t2, v62);
    v64.a = -1.0;
    memset(&v64.b, 0, 24);
    *&v64.tx = xmmword_18DDAA020;
    v65 = v36;
    v66 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(&v64, v63);
    a = *v63;
    b = *&v63[1];
    v37 = *&v63[2];
    c = *&v63[3];
    d = *&v63[4];
    v38 = *&v63[5];
    v35 = *&v63[6];
    v61 = *&v63[7];
    v39 = *&v63[8];
  }

  else
  {
    v39 = 1.0;
    v37 = 0.0;
    v38 = 0.0;
  }

  v40 = v57 - v55;
  v41 = v56 - v54;
  if (v37 == 0.0 && v38 == 0.0 && v39 == 1.0)
  {
    if (a * d - b * c != 0.0)
    {
      if (a == 1.0 && b == 0.0 && c == 0.0 && d == 1.0)
      {
        v42 = v40 - v35;
        v43 = v41 - v61;
LABEL_22:
        *a1 = v4;
        *(a1 + 8) = v3;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v42;
        *(a1 + 40) = v43;
        return;
      }

      goto LABEL_19;
    }

LABEL_14:
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    v43 = v56 - v54;
    v42 = v57 - v55;
    goto LABEL_22;
  }

  if (v37 * (c * v61 - d * v35) + a * (d * v39 - v38 * v61) - b * (c * v39 - v38 * v35) == 0.0)
  {
    goto LABEL_14;
  }

  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v44 = swift_allocObject();
  *(v44 + 32) = v57 - v55;
  *(v44 + 40) = v56 - v54;
  *(v44 + 48) = a;
  *(v44 + 56) = b;
  *(v44 + 64) = v37;
  *(v44 + 72) = c;
  *(v44 + 80) = d;
  *(v44 + 88) = v38;
  *(v44 + 96) = v35;
  *(v44 + 104) = v61;
  *(v44 + 112) = v39;
  v45 = 1;
  *(v44 + 120) = 1;
  *(v44 + 16) = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  v46 = *(v4 + 24);
  v47 = __OFADD__(v46, 1);
  v45 = v46 + 1;
  if (!v47)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_19:
  v48 = v40;
  v49 = v41;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
  v44 = swift_allocObject();
  *(v44 + 32) = v48;
  *(v44 + 40) = v49;
  *(v44 + 48) = a;
  *(v44 + 56) = b;
  *(v44 + 64) = c;
  *(v44 + 72) = d;
  *(v44 + 80) = v35;
  *(v44 + 88) = v61;
  v45 = 1;
  *(v44 + 96) = 1;
  *(v44 + 16) = v4;
  if (!v4 || (v50 = *(v4 + 24), v47 = __OFADD__(v50, 1), v45 = v50 + 1, !v47))
  {
LABEL_21:
    *(v44 + 24) = v45;
    v42 = 0.0;
    v4 = v44;
    v43 = 0.0;
    goto LABEL_22;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9 - v5;
  v11 = v9[1] - v6;
  v12 = AGGraphGetValue();
  v13 = v12[1];
  v60 = *v12;
  v61 = v13;
  v62 = v12[2];
  type metadata accessor for CGSize(0);
  v14 = AGGraphGetValue();
  GlassAppearanceScaleEffect.effectValue(size:)(v44, *v14, v14[1]);
  v35 = v44[3];
  v36 = v44[1];
  v38 = v44[2];
  v40 = v45;
  v43 = v44[0];
  v15 = AGGraphGetValue();
  v16 = v38;
  v17 = v40;
  v18 = v36;
  if (*v15 == 1)
  {
    v19 = *AGGraphGetValue();
    v53 = 0xBFF0000000000000;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = xmmword_18DDAA020;
    v58 = v19;
    v59 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v44, v46);
    v49[0] = 0xBFF0000000000000;
    memset(&v49[1], 0, 24);
    v50 = xmmword_18DDAA020;
    v51 = v19;
    v52 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v49, v47);
    v18 = v47[1];
    v43 = v47[0];
    v16 = v47[2];
    v35 = v47[3];
    v17 = v48;
  }

  v20 = v7 - v10;
  v21 = v8 - v11;
  if (v18.f64[0] == 0.0 && v16.f64[1] == 0.0 && v17 == 1.0)
  {
    v22.f64[0] = v16.f64[0];
    v22.f64[1] = v18.f64[1];
    v23 = vmulq_f64(v43, v22);
    if (vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0] == 0.0)
    {
LABEL_13:
      _StringGuts.grow(_:)(28);
      MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
      _print_unlocked<A, B>(_:_:)();
      specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

LABEL_17:
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = v20;
      *(a1 + 40) = v21;
      return;
    }

    v24 = vextq_s8(v18, v16, 8uLL);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v43, xmmword_18DDAA020), vceqq_f64(v24, xmmword_18DDAB500))))) & 1) == 0)
    {
      v20 = v20 - *v35.i64;
      v21 = v21 - *&v35.i64[1];
      goto LABEL_17;
    }

    v41 = v24;
    type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
    v25 = swift_allocObject();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 48) = v43;
    *(v25 + 64) = v41;
    *(v25 + 80) = v35;
    v26 = 1;
    *(v25 + 96) = 1;
    *(v25 + 16) = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v27 = *(v4 + 24);
    v28 = __OFADD__(v27, 1);
    v26 = v27 + 1;
    if (!v28)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v29 = vdupq_laneq_s64(v35, 1);
  v30.f64[1] = v29.f64[1];
  v30.f64[0] = v17;
  v31 = vmulq_f64(v16, v30);
  v29.f64[1] = v17;
  v32.f64[0] = v18.f64[0];
  v32.f64[1] = v43.f64[1];
  v33 = vmulq_f64(v32, vsubq_f64(vmulq_laneq_f64(v29, v18, 1), vmulq_n_f64(v16, *v35.i64)));
  if (v33.f64[0] + vmuld_n_f64(v43.f64[0], vsubq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0]) - v33.f64[1] == 0.0)
  {
    goto LABEL_13;
  }

  v42 = v17;
  v37 = v18;
  v39 = v16;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v25 = swift_allocObject();
  *(v25 + 32) = v20;
  *(v25 + 40) = v21;
  *(v25 + 48) = v43;
  *(v25 + 64) = v37;
  *(v25 + 80) = v39;
  *(v25 + 96) = v35;
  *(v25 + 112) = v42;
  v26 = 1;
  *(v25 + 120) = 1;
  *(v25 + 16) = v4;
  if (!v4 || (v34 = *(v4 + 24), v28 = __OFADD__(v34, 1), v26 = v34 + 1, !v28))
  {
LABEL_16:
    *(v25 + 24) = v26;
    v20 = 0.0;
    v4 = v25;
    v21 = 0.0;
    goto LABEL_17;
  }

  __break(1u);
}

{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v32 = *(Value + 40);
  v35 = *(Value + 32);
  type metadata accessor for CGPoint(0);

  v7 = AGGraphGetValue();
  v30 = v7[1] - v6;
  v31 = *v7 - v5;
  v8 = AGGraphGetValue();
  v10 = *v8;
  v9 = *(v8 + 8);
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  v14 = *(v8 + 32);
  v13 = *(v8 + 40);
  type metadata accessor for CGSize(0);
  AGGraphGetValue();
  *v45 = v10;
  *&v45[1] = v9;
  v45[2] = 0;
  *&v45[3] = v12;
  *&v45[4] = v11;
  v45[5] = 0;
  *&v45[6] = v14;
  *&v45[7] = v13;
  v38 = v13;
  v45[8] = 0x3FF0000000000000;
  if (*AGGraphGetValue() == 1)
  {
    v15 = *AGGraphGetValue();
    v45[9] = 0xBFF0000000000000;
    memset(&v45[10], 0, 24);
    v46 = xmmword_18DDAA020;
    v47 = v15;
    v48 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v45, v39);
    v41[0] = 0xBFF0000000000000;
    memset(&v41[1], 0, 24);
    v42 = xmmword_18DDAA020;
    v43 = v15;
    v44 = xmmword_18DDAB500;
    ProjectionTransform.concatenating(_:)(v41, v40);
    v10 = *v40;
    v9 = *&v40[1];
    v16 = *&v40[2];
    v12 = *&v40[3];
    v11 = *&v40[4];
    v17 = *&v40[5];
    v14 = *&v40[6];
    v38 = *&v40[7];
    v18 = *&v40[8];
  }

  else
  {
    v18 = 1.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  v19 = v35 - v31;
  v20 = v32 - v30;
  if (v16 == 0.0 && v17 == 0.0 && v18 == 1.0)
  {
    if (v10 * v11 - v9 * v12 != 0.0)
    {
      if (v10 == 1.0 && v9 == 0.0 && v12 == 0.0 && v11 == 1.0)
      {
        v21 = v19 - v14;
        v22 = v20 - v38;
LABEL_22:
        *a1 = v4;
        *(a1 + 8) = v3;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v21;
        *(a1 + 40) = v22;
        return;
      }

      goto LABEL_19;
    }

LABEL_14:
    v33 = v35 - v31;
    v36 = v20;
    _StringGuts.grow(_:)(28);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78650);
    _print_unlocked<A, B>(_:_:)();
    specialized static Log.externalWarning(_:)(0, 0xE000000000000000);

    v21 = v33;
    v22 = v36;
    goto LABEL_22;
  }

  if (v16 * (v12 * v38 - v11 * v14) + v10 * (v11 * v18 - v17 * v38) - v9 * (v12 * v18 - v17 * v14) == 0.0)
  {
    goto LABEL_14;
  }

  v34 = v14;
  v37 = v20;
  v14 = v19;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<ProjectionTransformElement>, lazy protocol witness table accessor for type ProjectionTransformElement and conformance ProjectionTransformElement, &type metadata for ProjectionTransformElement, type metadata accessor for Element);
  v23 = swift_allocObject();
  *(v23 + 32) = v14;
  *(v23 + 40) = v37;
  *(v23 + 48) = v10;
  *(v23 + 56) = v9;
  *(v23 + 64) = v16;
  *(v23 + 72) = v12;
  *(v23 + 80) = v11;
  *(v23 + 88) = v17;
  *(v23 + 96) = v34;
  *(v23 + 104) = v38;
  *(v23 + 112) = v18;
  v24 = 1;
  *(v23 + 120) = 1;
  *(v23 + 16) = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  v25 = *(v4 + 24);
  v26 = __OFADD__(v25, 1);
  v24 = v25 + 1;
  if (!v26)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_19:
  v27 = v19;
  v28 = v20;
  type metadata accessor for Slice<_ViewList_ID.ElementCollection>(0, &lazy cache variable for type metadata for Element<AffineTransformElement>, lazy protocol witness table accessor for type AffineTransformElement and conformance AffineTransformElement, &type metadata for AffineTransformElement, type metadata accessor for Element);
  v23 = swift_allocObject();
  *(v23 + 32) = v27;
  *(v23 + 40) = v28;
  *(v23 + 48) = v10;
  *(v23 + 56) = v9;
  *(v23 + 64) = v12;
  *(v23 + 72) = v11;
  *(v23 + 80) = v14;
  *(v23 + 88) = v38;
  v24 = 1;
  *(v23 + 96) = 1;
  *(v23 + 16) = v4;
  if (!v4 || (v29 = *(v4 + 24), v26 = __OFADD__(v29, 1), v24 = v29 + 1, !v26))
  {
LABEL_21:
    *(v23 + 24) = v24;
    v21 = 0.0;
    v4 = v23;
    v22 = 0.0;
    goto LABEL_22;
  }

  __break(1u);
}

char *storeEnumTagSinglePayload for ModifierTransition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t getEnumTagSinglePayload for ModifierTransition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 28 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 16) = *(v9 + 16);
    *(a2 + 24) = v11;
    result = memmove(v9, (v9 + 28), 28 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    outlined init with take of MaterialBackdropProxy.Observer(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 120 * a1;
    v9 = *(v8 + 112);
    v10 = v7 - 1;
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = *(v8 + 144);
    v11 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v11;
    v12 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v12;
    result = memmove((v8 + 32), (v8 + 152), 120 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 20 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 20), 20 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 40);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v12;
    result = memmove(v9, (v9 + 48), 48 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    result = memmove(v9, (v9 + 32), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 28);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 28) = v12;
    result = memmove(v9, (v9 + 32), 32 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t CoreViewSetMaskGeometry(uint64_t result, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = result;
  if (result)
  {
    if (result != 1)
    {
      goto LABEL_6;
    }

    result = [a2 maskView];
  }

  else
  {
    result = [a2 mask];
  }

  v6 = result;
  if (!result)
  {
    return result;
  }

LABEL_6:
  if (v11)
  {
    if (v11 != 1)
    {
      return result;
    }

    [v6 setCenter:{a3, a4}];
  }

  else
  {
    [v6 setPosition:{a3, a4}];
  }

  return [v6 setBounds:{a3, a4, a5, a6}];
}

uint64_t CoreViewMaskView(uint64_t result, void *a2)
{
  if (!result)
  {
    return [a2 mask];
  }

  if (result == 1)
  {
    return [a2 maskView];
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle>, &type metadata for Circle, &protocol witness table for Circle, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Circle>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for _ShapeView<Circle, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Circle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Circle and conformance Circle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Circle, ForegroundStyle>);
    }
  }
}

uint64_t specialized StaticBody.updateValue()(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t, char *))
{
  v8 = v3;
  v57 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v47 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(v21[2]);
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(v21[2], v23);
    v56 = type metadata accessor for ObservationCenter();
    v21 = v21[3];
    *&v55 = v21;
    outlined init with take of Any(&v55, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = v8[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v8);
    *(v24 + 24) = v46;

    v8 = v46;
    goto LABEL_9;
  }

  v48 = CurrentAttribute;
  v49 = a3;
  swift_beginAccess();
  v51 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = v53;
  (*(v9 + 56))(v20, 1, 1, v53);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(a1, a2);
  *(StatusReg + 848) = v28;
  v29 = v26;
  outlined init with copy of ObservationTracking._AccessList?(v20, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v9 + 48))(v17, 1, v26) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v20 = v17;
    goto LABEL_12;
  }

  v4 = *(v9 + 32);
  v21 = v47;
  v4(v47, v17, v29);
  (*(v9 + 16))(v52, v21, v29);
  swift_beginAccess();
  v8 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = v8[2];
  v31 = v8[3];
  if (v32 >= v31 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v8);
  }

  v8[2] = v32 + 1;
  v33 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32;
  v29 = v53;
  v4(v33, v52, v53);
  *(v24 + 24) = v8;
  swift_endAccess();
  (*(v9 + 8))(v21, v29);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v24 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v9 + 16);
    v36 = v9 + 16;
    v52 = *(v24 + 24);
    v53 = v37;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = v50;
    v40 = *(v36 + 56);
    v41 = (v36 - 8);

    v42 = v49;
    v43 = v48;
    do
    {
      (v53)(v39, v38, v29);
      v42(v43, v39);
      (*v41)(v39, v29);
      v38 += v40;
      --v35;
    }

    while (v35);
  }

  *(v24 + 24) = v51;
}

{
  v8 = v3;
  v58 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for ObservationTracking._AccessList();
  v9 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v48 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v21 = static ObservationCenter._current;
  swift_beginAccess();
  v22 = pthread_getspecific(v21[2]);
  if (!v22)
  {
    v23 = swift_slowAlloc();
    pthread_setspecific(v21[2], v23);
    v57 = type metadata accessor for ObservationCenter();
    v21 = v21[3];
    *&v56 = v21;
    outlined init with take of Any(&v56, v23);

    v22 = v23;
  }

  outlined init with copy of Any(v22, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v24 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v46 = v8[2];

    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 + 1, 1, v8);
    *(v24 + 24) = v47;

    v8 = v47;
    goto LABEL_9;
  }

  v49 = CurrentAttribute;
  v50 = a3;
  swift_beginAccess();
  v52 = *(v24 + 24);
  *(v24 + 24) = MEMORY[0x1E69E7CC0];
  v26 = v54;
  (*(v9 + 56))(v20, 1, 1, v54);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*Value, a1, a2);
  *(StatusReg + 848) = v28;
  v30 = v26;
  outlined init with copy of ObservationTracking._AccessList?(v20, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v9 + 48))(v17, 1, v26) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v20 = v17;
    goto LABEL_12;
  }

  v4 = *(v9 + 32);
  v21 = v48;
  v4(v48, v17, v30);
  (*(v9 + 16))(v53, v21, v30);
  swift_beginAccess();
  v8 = *(v24 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v24 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v33 = v8[2];
  v32 = v8[3];
  if (v33 >= v32 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v8);
  }

  v8[2] = v33 + 1;
  v34 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33;
  v30 = v54;
  v4(v34, v53, v54);
  *(v24 + 24) = v8;
  swift_endAccess();
  (*(v9 + 8))(v21, v30);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v20, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v24 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v38 = *(v9 + 16);
    v37 = v9 + 16;
    v53 = *(v24 + 24);
    v54 = v38;
    v39 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v40 = v51;
    v41 = *(v37 + 56);
    v42 = (v37 - 8);

    v43 = v50;
    v44 = v49;
    do
    {
      (v54)(v40, v39, v30);
      v43(v44, v40);
      (*v42)(v40, v30);
      v39 += v41;
      --v36;
    }

    while (v36);
  }

  *(v24 + 24) = v52;
}

BOOL IdentityLinkBox.update(property:phase:)(int *a1)
{
  v2 = *v1;
  v3 = *v1;
  if (!*v1)
  {
    v3 = static ViewIdentity.nextSeed;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v4 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v4 = 1;
    }

    static ViewIdentity.nextSeed = v4;
  }

  *a1 = v3;
  result = v3 != v2;
  *v1 = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for Image.Resolved.UpdateData(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017HyphenationFactorF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>();
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Circle>, &type metadata for Circle, &protocol witness table for Circle, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<Circle> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllowsTighteningKey>>);
    }
  }
}

uint64_t key path setter for EnvironmentValues.hyphenationDisabled : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HyphenationFactorKey>>);
    }
  }
}

uint64_t key path getter for EnvironmentValues.allowsTightening : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    result = a3(*a1);
    v7 = result;
  }

  *a4 = v7 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HyphenationFactorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (*(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
      v16 = *v14;
      v15 = v14[1];
      v7 &= v7 - 1;
      *a2 = v16;
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *initializeWithCopy for MinorProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v4 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))((v3 + *(v6 + 80) + 8) & ~*(v6 + 80), (v4 + *(v6 + 80) + 8) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, void (*a2)(void))
{
  v45 = a2;
  v70 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v44 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v7 = static Signpost.bodyInvoke;
  v8 = word_1ED539040;
  v9 = HIBYTE(word_1ED539040);
  v10 = byte_1ED539042;
  v11 = static os_signpost_type_t.begin.getter();
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v68 = v10;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v56) = v11;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18DDAB4C0;
    v13 = AGTypeID.description.getter();
    v15 = v14;
    v16 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v17 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 64) = v17;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v18 = specialized static Tracing.libraryName(defining:)();
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 72) = v18;
    *(v12 + 80) = v19;
    v57 = v12;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v9)
      {
LABEL_6:
        v64 = v56;
        v62 = _signpostLog;
        v63 = &dword_18D018000;
        v65 = v7;
        v66 = v8;
        v59 = "%{public}@.body [in %{public}@]";
        v60 = 31;
        v61 = 2;
        v58 = v57;
        v20 = v46;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v53 + 8))(v20, v52);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      if (v9)
      {
        goto LABEL_6;
      }
    }

    if (v7 == 20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v7) | (4 * WORD1(v7));
    v23 = v56;
    v24 = v53 + 16;
    v47 = *(v53 + 16);
    v25 = v47(v54, v46, v52);
    v26 = 0;
    LOBYTE(v59) = 1;
    v56 = v21;
    v53 = v24;
    v50 = 16 * v21;
    v51 = (v24 - 8);
    v49 = v57 + 32;
    v48 = v7;
    do
    {
      v55 = &v44;
      MEMORY[0x1EEE9AC00](v25);
      v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = v28 + 8;
      v30 = v56;
      v31 = v28 + 8;
      do
      {
        *(v31 - 1) = 0;
        *v31 = 0;
        v31 += 16;
        --v30;
      }

      while (v30);
      v32 = v49 + 40 * v26;
      v33 = v56;
      while (1)
      {
        v34 = *(v57 + 16);
        if (v26 == v34)
        {
          break;
        }

        if (v26 >= v34)
        {
          __break(1u);
        }

        ++v26;
        outlined init with copy of AnyTrackedValue(v32, &v65);
        v35 = v69;
        __swift_project_boxed_opaque_existential_1(&v65, v69);
        *(v29 - 1) = CVarArg.kdebugValue(_:)(v22 | v23, v35);
        *v29 = v36 & 1;
        v29 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v65);
        v32 += 40;
        if (!--v33)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v59) = 0;
LABEL_20:
      v37 = v48;
      if (v48 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v28[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v28[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v28[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v37 != 20 && v28[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v38 = v52;
      v39 = *v51;
      v40 = v54;
      (*v51)(v54, v52);
      v41 = __swift_project_value_buffer(v38, static OSSignpostID.continuation);
      v25 = v47(v40, v41, v38);
    }

    while ((v59 & 1) != 0);
    v42 = v52;
    v39(v54, v52);
    v39(v46, v42);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  AGGraphSetUpdate();
  LOWORD(v65) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  v45(0);
  return AGGraphSetOutputValue();
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v1, v6, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, type metadata accessor for HitTestableEvent?);
  if (!*&v6[0])
  {
    return 0;
  }

  v5[4] = v6[4];
  v5[5] = v6[5];
  v5[6] = v6[6];
  v5[0] = v6[0];
  v5[1] = v6[1];
  v5[2] = v6[2];
  v5[3] = v6[3];
  a1(&v7, v5);
  if (v2)
  {
    result = outlined destroy of _LazyLayout_Subview(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of _LazyLayout_Subview(v5);
    return v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Subview(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

void *LazySubviewPlacements.resolvedPlacementContext(placementContext:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __src[35];
  v8 = __src[36];
  v9 = *(__src + 296);
  memcpy(__dst, __src, sizeof(__dst));
  v21 = v7;
  v22 = v8;
  v23 = v9;
  LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)(__dst, a2, __srca);
  memcpy(v24, __srca, sizeof(v24));
  v10 = v26;
  v11 = v27;
  v12 = v28;
  memcpy(__srca, v24, sizeof(__srca));
  v13 = _s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__srca);
  if (v13 == 1)
  {
    v14 = __src;
  }

  else
  {
    v14 = v24;
  }

  if (v13 == 1)
  {
    v15 = v9;
  }

  else
  {
    v7 = v10;
    v8 = v11;
    v15 = v12;
  }

  memcpy(v19, v14, 0x118uLL);
  v19[35] = v7;
  v19[36] = v8;
  LOBYTE(v19[37]) = v15;
  if ((*(v3 + 472) & 1) == 0)
  {
    v17 = *(v3 + 456);
    v16 = *(v3 + 464);
    memcpy(__dst, v24, sizeof(__dst));
    v21 = v10;
    v22 = v11;
    v23 = v12;
    if (_s7SwiftUI28_LazyLayout_PlacementContextVSgWOg(__dst) == 1)
    {
      ScrollGeometry.translate(by:limit:)(__PAIR128__(v16, v17), __PAIR128__(v8, v7));
      ScrollGeometry.translate(by:limit:)(__PAIR128__(v16, v17), __PAIR128__(v8, v7));
    }
  }

  return memcpy(a3, v19, 0x129uLL);
}

uint64_t _LazyStack_Cache.reset()(int *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MinorProperties();
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(v2, v9);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v10 = v2 + a1[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v2 + a1[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v2 + a1[11]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + a1[12]);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + a1[13]) = 0xBFF0000000000000;
  *(v2 + a1[14]) = 0xBFF0000000000000;
  v14 = (v2 + a1[15]);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v14 = v16;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v15);

  v14[1] = v17;
  v21[1] = v15;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  v18 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v18);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = type metadata accessor for EstimationCache();
  return (*(v5 + 40))(v14 + *(v19 + 24), v7, v4);
}

uint64_t StackPlacement.init(stack:axis:minor:visible:pinnedViews:queriedIndex:index:skipFirst:position:stoppingCondition:currentSubviews:lastSubviews:pendingHeader:placedSubviews:placedIndex:placedPosition:placedQuery:wasCancelled:estimations:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, uint64_t a17, char a18, uint64_t a19, uint64_t a20, _OWORD *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  v37 = *a4;
  (*(*(a27 - 8) + 32))(a9, a1, a27);
  v38 = type metadata accessor for StackPlacement();
  *(a9 + v38[9]) = a2 & 1;
  v39 = v38[10];
  v40 = type metadata accessor for MinorProperties();
  (*(*(v40 - 8) + 32))(a9 + v39, a3, v40);
  v41 = (a9 + v38[11]);
  *v41 = a10;
  v41[1] = a11;
  *(a9 + v38[12]) = v37;
  v42 = a9 + v38[13];
  *v42 = a5;
  *(v42 + 8) = a6 & 1;
  *(a9 + v38[14]) = a7;
  *(a9 + v38[15]) = a8;
  *(a9 + v38[16]) = a12;
  v43 = a9 + v38[17];
  *v43 = a17;
  *(v43 + 8) = a18 & 1;
  *(a9 + v38[18]) = a19;
  *(a9 + v38[19]) = a20;
  v44 = (a9 + v38[20]);
  v45 = a21[5];
  v44[4] = a21[4];
  v44[5] = v45;
  v44[6] = a21[6];
  v46 = a21[1];
  *v44 = *a21;
  v44[1] = v46;
  v47 = a21[3];
  v44[2] = a21[2];
  v44[3] = v47;
  *(a9 + v38[21]) = a22;
  v48 = (a9 + v38[22]);
  *v48 = a23;
  v48[1] = a24;
  v49 = (a9 + v38[23]);
  *v49 = a13;
  v49[1] = a14;
  v50 = (a9 + v38[24]);
  *v50 = a15;
  v50[1] = a16;
  *(a9 + v38[25]) = a25;
  v51 = a9 + v38[26];

  return outlined init with take of EstimationCache(a26, v51);
}

uint64_t outlined init with take of EstimationCache(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EstimationCache();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x193AC1170](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t swapSubviews(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
  }

  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v6 + 24) >> 1);

  *a2 = v8;
  return result;
}

void *initializeWithCopy for PlacementProperties(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  (*(v7 + 16))((v4 + v9 + 8) & ~v9, (v5 + v9 + 8) & ~v9, AssociatedTypeWitness);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 48) + 7;
  v11 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v13 = ((v11 + 25) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 25) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v22 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v17 = (*(a3 + 48) + 16 * v15);
    v18 = v17[1];
    v25[0] = *v17;
    v25[1] = v18;
    v26 = *(v16 + 8 * v15);

    v19 = closure #1 in LazyLayoutViewCache.collect()(v25, &v26, a4);

    if (v4)
    {
      return result;
    }

    if (v19)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v30 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v14, v29);
    v27[0] = v16;
    v27[1] = v17;
    outlined init with copy of AnyTrackedValue(v29, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    DynamicType = swift_getDynamicType();
    outlined init with copy of AnyTrackedValue(v30, v26);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v19 = swift_getDynamicType();
    v20 = v26[4];
    __swift_destroy_boxed_opaque_existential_1(v26);
    v21 = (*(v20 + 8))(v19, v20);
    outlined destroy of (key: EventID, value: EventType)(v27, type metadata accessor for (key: EventID, value: EventType));
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    if (DynamicType == v21)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v26 = result;
  v33 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v16 = v13 | (v6 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v16, v32);
    v30[0] = v18;
    v30[1] = v19;
    outlined init with copy of AnyTrackedValue(v32, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    DynamicType = swift_getDynamicType();
    swift_beginAccess();
    v21 = *(a4 + 48);
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(DynamicType), (v23 & 1) != 0))
    {
      outlined init with copy of AnyTrackedValue(*(v21 + 56) + 40 * v22, &v27);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    swift_endAccess();
    outlined destroy of (key: EventID, value: EventType)(v30, type metadata accessor for (key: EventID, value: EventType));
    v12 = *(&v28 + 1);
    outlined destroy of (key: EventID, value: EventType)(&v27, type metadata accessor for ForwardedEventDispatcher?);
    result = __swift_destroy_boxed_opaque_existential_1(v32);
    if (!v12)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v26, a2, v33, a3);
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v26, a2, v33, a3);
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

{
  v19 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    outlined init with copy of AnyHashable(*(a3 + 48) + 40 * v15, v23);
    v16 = *(*(a3 + 56) + 8 * v15);
    outlined init with copy of AnyHashable(v23, v21);
    *(&v22 + 1) = v16;
    v20[1] = v21[1];
    v20[2] = v22;
    v20[0] = v21[0];
    swift_retain_n();

    outlined destroy of AnyHashable(v20);

    result = outlined destroy of AnyHashable(v23);
    if (v16 != a4)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v19, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v21 = a2;
  v22 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v10 = *v6;
  v11 = *(*v6 + 448);
  v12 = *(*v6 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v20 - v15;
  v17 = *(v10 + 464);
  swift_beginAccess();
  (*(v14 + 16))(v16, v6 + v17, AssociatedTypeWitness);
  v24 = v12;
  v25 = a3;
  v26 = a4;
  v27 = v11;
  v28 = a1;
  v29 = v21;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:), v23, AssociatedTypeWitness, MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v18);
  $defer #1 <A><A1, B1>() in _LazyLayoutViewCache.withMutableCacheState<A, B>(type:_:)(v6, v16);
  return (*(v14 + 8))(v16, AssociatedTypeWitness);
}

uint64_t type metadata completion function for PlacementProperties()
{
  result = type metadata accessor for MinorProperties();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a1;
  v70 = a3;
  v66 = a6;
  v69 = type metadata accessor for PlacementProperties();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v58 - v9;
  v10 = type metadata accessor for EstimationCache();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MinorProperties();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v68 = (&v58 - v13);
  v14 = type metadata accessor for StackPlacement();
  v15 = type metadata accessor for Optional();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v72 = *a2;
  v22 = *(a2 + 12);
  v73 = *(a2 + 8);
  v23 = *(a2 + 128);
  v81 = *(a2 + 112);
  v82 = v23;
  v83 = *(a2 + 144);
  v24 = *(a2 + 64);
  v77 = *(a2 + 48);
  v78 = v24;
  v25 = *(a2 + 80);
  v80 = *(a2 + 96);
  v79 = v25;
  v26 = *(a2 + 16);
  v76 = *(a2 + 32);
  v75 = v26;
  v27 = *(a2 + 152);
  v28 = *(a2 + 160);
  v29 = *(a2 + 280);
  v92 = *(a2 + 264);
  v93 = v29;
  v91 = *(a2 + 248);
  v94 = *(a2 + 296);
  v87 = *(a2 + 184);
  v88 = *(a2 + 200);
  v89 = *(a2 + 216);
  v90 = *(a2 + 232);
  v86 = *(a2 + 168);
  v30 = (*(a5 + 32))(a4, a5);
  v74 = v22;
  v84 = v27;
  v85 = v28;
  LazyStack<>.placer(subviews:context:cache:)(&v72, v70, a4, a5, v17);
  if ((*(v18 + 48))(v17, 1, v14) == 1)
  {
    (*(v60 + 8))(v17, v61);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v66, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v60 = *(v18 + 32);
    v61 = v18 + 32;
    (v60)(v21, v17, v14);
    (*(v62 + 16))(v68, &v21[*(v14 + 40)], v63);
    v33 = *(v14 + 44);
    v63 = v21;
    v34 = &v21[v33];
    v35 = *v34;
    v36 = v34[1];
    if (v30)
    {
      *&v27 = v28;
    }

    v37 = 0.0;
    v38 = 0.0;
    if (v22 != *MEMORY[0x1E698D3F8])
    {
      Value = AGGraphGetValue();
      v37 = *Value;
      v38 = Value[1];
    }

    if (v30)
    {
      *&v40 = v38;
    }

    else
    {
      *&v40 = v37;
    }

    v41 = v70;
    v42 = specialized LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)(v27, 0, v40, 0, v70, a4, a5);
    v43 = type metadata accessor for _LazyStack_Cache();
    v44 = *(v43 + 60);
    v45 = v69;
    if (!*(*(v41 + v44) + 16) || (v46 = 0, v47 = 0, (v42 & 1) != 0))
    {
      LODWORD(v62) = v42;
      v48 = v59;
      outlined init with copy of EstimationCache(v41 + v44, v59, type metadata accessor for EstimationCache);
      v49 = *(v41 + *(v43 + 60));

      _LazyStack_Cache.resetEstimates()(v43);
      v71 = 0;
      v72 = 0.0;
      v50 = LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v72, &v71, v68, v67, v41, a4, a5);
      MEMORY[0x1EEE9AC00](v50);
      *(&v58 - 4) = a4;
      *(&v58 - 3) = a5;
      *(&v58 - 2) = v41;
      specialized LazyStack<>.log(_:)(partial apply for implicit closure #2 in LazyStack<>.resolvedPlacerProperties(subviews:context:cache:));
      v51 = *(v43 + 56);
      if (*(v41 + v51) > *&v40)
      {
        v52 = *(v41 + v51);
      }

      else
      {
        v52 = *&v40;
      }

      v46 = specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(v53, v49, 0.9, v52);

      if (v46)
      {
        outlined destroy of EstimationCache(v48, type metadata accessor for EstimationCache);
        v47 = v62;
      }

      else
      {
        outlined assign with take of EstimationCache(v48, v41 + v44);
        v47 = 0;
      }

      v45 = v69;
    }

    v54 = v64;
    PlacementProperties.init(minor:visible:resetEstimates:estimatesChanged:visibleLength:containerLength:)(v68, v47 & 1, v46 & 1, v64, v35, v36, *&v27, *&v40);
    v55 = swift_getTupleTypeMetadata2();
    v56 = *(v55 + 48);
    v57 = v66;
    (v60)(v66, v63, v14);
    (*(v65 + 32))(v57 + v56, v54, v45);
    return (*(*(v55 - 8) + 56))(v57, 0, 1, v55);
  }
}

void storeEnumTagSinglePayload for StackPlacement(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v44 = v7;
  v8 = *(v7 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(type metadata accessor for IndexSet() - 8);
  v13 = *(v7 + 64);
  v14 = *(v9 + 80);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= 0x7FFFFFFFu)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v11 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  v18 = ((v14 + 16) & ~v14) + *(v9 + 64) + 7;
  v19 = (v15 | 7) + 17;
  v20 = ((v15 + 16) & ~v15) + *(v12 + 64);
  v21 = ((v19 + ((((((((((((((((((((v18 + ((v13 + (v14 | 7) + 1) & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v15 | 7)) + v20;
  if (a3 <= v17)
  {
    v24 = 0;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v22 = a1;
    v23 = a2;
    if (v21 <= 3)
    {
      v27 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v27))
      {
        v24 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v17 < v23)
  {
    v25 = ~v17 + v23;
    if (v21 < 4)
    {
      v26 = (v25 >> (8 * v21)) + 1;
      if (v21)
      {
        v29 = v25 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v29;
            if (v24 > 1)
            {
LABEL_57:
              if (v24 == 2)
              {
                *&v22[v21] = v26;
              }

              else
              {
                *&v22[v21] = v26;
              }

              return;
            }
          }

          else
          {
            *v22 = v25;
            if (v24 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v22 = v29;
        v22[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(v22, ((v19 + ((((((((((((((((((((v18 + ((v13 + (v14 | 7) + 1) & ~(v14 | 7))) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 43) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v15 | 7)) + v20);
      *v22 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v24)
    {
      v22[v21] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&v22[v21] = 0;
      if (!v23)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v22[v21] = 0;
  }

  else if (v24)
  {
    v22[v21] = 0;
    if (!v23)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v23)
  {
    return;
  }

LABEL_37:
  if (v8 == v17)
  {
    v30 = *(v44 + 56);
    v31 = v22;
    v32 = v23;
    v33 = v8;
    v34 = v6;

LABEL_40:
    v30(v31, v32, v33, v34);
    return;
  }

  v35 = &v22[v13 + 1 + (v14 | 7)] & ~(v14 | 7);
  if (v10 == v17)
  {
    v30 = *(v9 + 56);
    v31 = (v14 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14;
    v32 = v23;
    v33 = v10;
    v34 = AssociatedTypeWitness;

    goto LABEL_40;
  }

  v36 = ((((((((v18 + v35) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) != 0)
  {
    v38 = ((v19 + ((((((((((((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v15 | 7));
    if (v16 >= v23)
    {
      v42 = *(v12 + 56);

      v42((v15 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v23);
    }

    else
    {
      if (v20 <= 3)
      {
        v39 = ~(-1 << (8 * v20));
      }

      else
      {
        v39 = -1;
      }

      if (v20)
      {
        v40 = v39 & (~v16 + v23);
        if (v20 <= 3)
        {
          v41 = v20;
        }

        else
        {
          v41 = 4;
        }

        bzero(v38, v20);
        if (v41 > 2)
        {
          if (v41 == 3)
          {
            *v38 = v40;
            v38[2] = BYTE2(v40);
          }

          else
          {
            *v38 = v40;
          }
        }

        else if (v41 == 1)
        {
          *v38 = v40;
        }

        else
        {
          *v38 = v40;
        }
      }
    }
  }

  else
  {
    if ((v23 & 0x80000000) != 0)
    {
      v37 = v23 & 0x7FFFFFFF;
    }

    else
    {
      v37 = (v23 - 1);
    }

    *v36 = v37;
  }
}

uint64_t outlined init with copy of EstimationCache(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t storeEnumTagSinglePayload for _LazyLayout_Subview(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

Swift::Int __swiftcall ForEachState.estimatedCount(style:)(SwiftUI::_ViewList_IteratorStyle style)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 88);
  v114 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](style.value);
  v118 = &v94 - v6;
  *&v132 = *(v7 + 80);
  v8 = v132;
  *(&v132 + 1) = v5;
  v9 = *(v4 + 112);
  v127 = *(v4 + 96);
  v133 = v127;
  v126 = v9;
  v134 = v9;
  v10 = type metadata accessor for ForEachState.Item();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v94 - v16;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v94 - v19;
  v110 = *style.value;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_11;
  }

  v20 = *(v4 + 160);
  swift_beginAccess();
  *&v21 = v8;
  *(&v21 + 1) = v5;
  v133 = v127;
  v132 = v21;
  *&v134 = v126;
  v22 = type metadata accessor for ForEach();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v108 = v22;
  v107 = v24;
  v106 = v23 + 48;
  v25.value = (v24)(v2 + v20, 1);
  if (LODWORD(v25.value) == 1)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return v25.value;
  }

  v26 = *(v17 + 16);
  v105 = v20;
  v27 = v2 + v20;
  v28 = v111;
  v104 = v17 + 16;
  v103 = v26;
  v26(v111, v27, v8);
  v102 = *(*(*(&v127 + 1) + 8) + 8);
  v29 = dispatch thunk of Collection.count.getter();
  v31 = *(v17 + 8);
  v30 = v17 + 8;
  v101 = v31;
  v31(v28, v8);
  if (!v29)
  {
    goto LABEL_11;
  }

  v25 = ForEachState.fetchViewsPerElement()();
  if (v25.is_nil)
  {
    v32 = *v2;
    v33 = *(v2 + *(*v2 + 184));
    v34 = *(v33 + 16);
    if (v34 >= v29 && *(v2 + *(v32 + 192)) == v110)
    {
      if (v29 - 1 < v34)
      {
        v25.value = *(v33 + 8 * (v29 - 1) + 32);
        if ((v110 & 1) == 0)
        {
          return v25.value;
        }

        v35 = (v25.value * (v110 >> 1)) >> 64;
        v25.value *= v110 >> 1;
        if (v35 == v25.value >> 63)
        {
          return v25.value;
        }

        __break(1u);
LABEL_11:
        v25.value = 0;
        return v25.value;
      }

      goto LABEL_74;
    }
  }

  else
  {
    if ((v25.value * v29) >> 64 != (v25.value * v29) >> 63)
    {
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
      __break(1u);
      goto LABEL_72;
    }

    v36 = v25.value * v29;
    v25.value *= v29;
    if ((v110 & 1) == 0)
    {
      return v25.value;
    }

    v32 = v25.value * (v110 >> 1);
    v25.value = v32;
    if ((v36 * (v110 >> 1)) >> 64 == v32 >> 63)
    {
      return v25.value;
    }

    __break(1u);
  }

  v96 = v30;
  v37 = *(v32 + 200);
  swift_beginAccess();
  v38 = *(v2 + v37);
  *&v126 = v5;
  v97 = v8;
  v109 = v10;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = __CocoaDictionary.makeIterator()();
    v122 = 0;
    v40 = 0;
    v41 = 0;
    v124 = v39 | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(v38 + 32);
    v40 = ~v42;
    v43 = *(v38 + 64);
    v122 = v38 + 64;
    v44 = -v42;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v41 = v45 & v43;
    v124 = v38;
  }

  v46 = v123;
  v47 = *v2;
  v113 = (v114 + 32);
  v119 = TupleTypeMetadata2 - 8;
  v98 = v40;
  v48 = (v40 + 64) >> 6;
  v121 = v2;
  v116 = *(v47 + 240);
  v112 = v114 + 16;
  v120 = (v13 + 32);
  v115 = (v114 + 8);
  v95 = v110 >> 1;

  v100 = 0;
  v99 = 0;
  v49 = 0;
  v50 = v125;
  v51 = v124;
  v117 = v48;
  while (1)
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      if (__CocoaDictionary.Iterator.next()())
      {
        v68 = v118;
        v69 = v126;
        _forceBridgeFromObjectiveC<A>(_:_:)();
        swift_unknownObjectRelease();
        _forceBridgeFromObjectiveC<A>(_:_:)();
        swift_unknownObjectRelease();
        v70 = *(TupleTypeMetadata2 + 48);
        v71 = v68;
        v46 = v123;
        v72 = v69;
        v50 = v125;
        (*v113)(v125, v71, v72);
        *&v50[v70] = v132;
        v67 = *(TupleTypeMetadata2 - 8);
        (*(v67 + 56))(v50, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v67 = *(TupleTypeMetadata2 - 8);
        (*(v67 + 56))(v50, 1, 1, TupleTypeMetadata2);
      }

      v55 = v49;
      *&v127 = v41;
    }

    else
    {
      v52 = v41;
      v53 = v49;
      if (!v41)
      {
        if (v48 <= v49 + 1)
        {
          v54 = v49 + 1;
        }

        else
        {
          v54 = v48;
        }

        v55 = v54 - 1;
        v56 = v49;
        while (1)
        {
          v53 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          if (v53 >= v48)
          {
            v67 = *(TupleTypeMetadata2 - 8);
            (*(v67 + 56))(v50, 1, 1, TupleTypeMetadata2);
            *&v127 = 0;
            goto LABEL_39;
          }

          v52 = *(v122 + 8 * v53);
          ++v56;
          if (v52)
          {
            goto LABEL_33;
          }
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_33:
      *&v127 = (v52 - 1) & v52;
      v57 = __clz(__rbit64(v52)) | (v53 << 6);
      v58 = v114;
      v59 = v118;
      v60 = v12;
      v61 = v126;
      (*(v114 + 16))(v118, *(v51 + 48) + *(v114 + 72) * v57, v126);
      v62 = *(*(v51 + 56) + 8 * v57);
      v63 = *(TupleTypeMetadata2 + 48);
      v64 = *(v58 + 32);
      v50 = v125;
      v65 = v59;
      v46 = v123;
      v66 = v61;
      v12 = v60;
      v64(v125, v65, v66);
      *&v50[v63] = v62;
      v67 = *(TupleTypeMetadata2 - 8);
      (*(v67 + 56))(v50, 0, 1, TupleTypeMetadata2);

      v55 = v53;
    }

LABEL_39:
    (*v120)(v46, v50, v12);
    v25.value = (*(v67 + 48))(v46, 1, TupleTypeMetadata2);
    if (LODWORD(v25.value) == 1)
    {
      break;
    }

    v73 = *&v46[*(TupleTypeMetadata2 + 48)];
    v74 = v121;
    v51 = v124;
    if (*(v73 + *(*v73 + 216)) == *(v121 + v116))
    {
      v75 = v100 + 1;
      v48 = v117;
      if (__OFADD__(v100, 1))
      {
        goto LABEL_68;
      }

      outlined init with copy of _ViewListOutputs.Views(v73 + *(*v73 + 176), &v132);
      v76 = v110;
      v100 = v75;
      if (BYTE8(v134))
      {

        if (*(v74 + 172) == 1)
        {
          goto LABEL_78;
        }

        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
        InputValue = AGGraphGetInputValue();
        outlined init with copy of AnyTrackedValue(InputValue, &v129);
        v78 = v130;
        v79 = v131;
        __swift_project_boxed_opaque_existential_1(&v129, v130);
        v128 = v110;
        v80 = (*(v79 + 24))(&v128, v78, v79);

        v81 = __OFADD__(v99, v80);
        v99 += v80;
        if (v81)
        {
          goto LABEL_69;
        }
      }

      else
      {
        outlined init with take of AnyTrackedValue(&v132, &v129);
        v82 = v131;
        v94 = v130;
        __swift_project_boxed_opaque_existential_1(&v129, v130);
        v83 = (*(v82 + 8))(v94, v82);

        if (v76)
        {
          v84 = (v83 * v95) >> 64;
          v83 *= v95;
          if (v84 != v83 >> 63)
          {
            goto LABEL_75;
          }
        }

        v81 = __OFADD__(v99, v83);
        v99 += v83;
        if (v81)
        {
          goto LABEL_70;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v129);
      v46 = v123;
      v51 = v124;
      v25.value = (*v115)(v123, v126);
      v49 = v55;
      v41 = v127;
    }

    else
    {
      (*v115)(v46, v126);

      v49 = v55;
      v41 = v127;
      v48 = v117;
    }
  }

  outlined consume of Set<EventID>.Iterator._Variant();
  v85 = v121;
  v86 = v105;
  v25.value = v107(v121 + v105, 1, v108);
  if (LODWORD(v25.value) == 1)
  {
    goto LABEL_77;
  }

  v87 = v85 + v86;
  v88 = v111;
  v89 = v97;
  v103(v111, v87, v97);
  v90 = dispatch thunk of Collection.count.getter();
  v25.value = v101(v88, v89);
  v91 = v90 - v100;
  if (__OFSUB__(v90, v100))
  {
    goto LABEL_67;
  }

  v25.value = v99;
  if (v91 < 1)
  {
    return v25.value;
  }

  if (v100 < 1)
  {
    goto LABEL_62;
  }

  v92 = ceil(v99 / v100 * v91);
  if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_71;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v92 >= 9.22337204e18)
  {
    goto LABEL_73;
  }

  v91 = v92;
  v25.value = v99 + v92;
  if (__OFADD__(v99, v92))
  {
    __break(1u);
LABEL_62:
    v81 = __OFADD__(v25.value, v91);
    v25.value += v91;
    if (!v81)
    {
      return v25.value;
    }

    __break(1u);
    goto LABEL_65;
  }

  return v25.value;
}

uint64_t specialized StackPlacement.log(_:)(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Logger?();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for lazyStack != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, static Log.lazyStack);
  outlined init with copy of EstimationCache(v10, v5, type metadata accessor for Logger?);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of EstimationCache(v5, type metadata accessor for Logger?);
  }

  v12 = (*(v7 + 32))(v9, v5, v6);
  v13 = a1(v12);
  v15 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = v13;
    v19 = v18;
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    type metadata accessor for StackPlacement();
    v21 = _typeName(_:qualified:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v15, &v26);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_18D018000, v16, v17, "%s: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AC4820](v20, -1, -1);
    MEMORY[0x193AC4820](v19, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t StackPlacement.reset(index:position:stoppingCondition:skipFirst:)(uint64_t a1, uint64_t a2, char a3, char a4, int *a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for IndexSet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + a5[14]) = a1;
  *(v7 + a5[16]) = a6;
  *(v7 + a5[15]) = a4;
  v18 = v7 + a5[17];
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  v19 = a5[18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v7 + v19);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v21 + 16));
  }

  else
  {
    v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v21 + 24) >> 1);

    *(v7 + v19) = v22;
  }

  v23 = a5[19];

  *(v7 + v23) = 0;
  v24 = (v7 + a5[20]);
  outlined destroy of _LazyLayout_Subview?(v24, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
  *v24 = 0u;
  v24[1] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  v24[4] = 0u;
  v24[5] = 0u;
  v24[6] = 0u;
  v25 = a5[21];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v7 + v25);
  if (v26)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v27 + 16));
  }

  else
  {
    v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v27 + 24) >> 1);

    *(v7 + v25) = v28;
  }

  *(v7 + a5[22]) = xmmword_18DDAB4E0;
  *(v7 + a5[23]) = xmmword_18DDAB4F0;
  *(v7 + a5[24]) = xmmword_18DDAB4F0;
  *(v7 + a5[25]) = 0;
  v29 = (v7 + a5[26]);
  v30 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v29 = v31;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v30);

  v29[1] = v32;
  v36[1] = v30;
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  v33 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v33);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = type metadata accessor for EstimationCache();
  return (*(v15 + 40))(v29 + *(v34 + 24), v17, v14);
}

uint64_t outlined destroy of _LazyLayout_PlacedSubview?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI25_LazyLayout_PlacedSubviewVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11DisplayListV4ItemV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
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
  v8 = ((v6 - 32) * 0x6666666666666667) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 5) + (v8 >> 63));
  return result;
}

uint64_t applyNode #1 (start:style:node:transform:) in _LazyLayout_Subviews.applyNodes(from:style:to:)(uint64_t a1, void (**a2)(uint64_t, __int128 *, int *), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, __int128 *, int *), uint64_t a8)
{
  v58 = *a2;
  v59 = a1;
  v13 = *a4;
  LODWORD(v60) = *(a4 + 8);
  v14 = outlined init with copy of _ViewList_Node(a3, &v76);
  if (v80 > 2u)
  {
    v57 = a8;
    v58 = a7;
    v19 = v76;
    v21 = v77;
    v20 = v78;
    LODWORD(v56) = v79;
    if (v60)
    {
      v22 = *v13;
      v23 = v13[1];
    }

    else
    {
      v60 = v78;
      *v65 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v13, &v81);
        v33 = v83;
        *v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(&v83 + 1) & ~(*(&v83 + 1) >> 63), 0, MEMORY[0x1E69E7CC0]);
        outlined destroy of _AnyAnimatableData(&v81);
        *&v65[8] = v33;
        do
        {
          outlined init with copy of AnyTrackedValue((v13 + 1), &v81);
          LOBYTE(v63) = 0;
          v34 = *&v82[8];
          v35 = *&v82[16];
          v36 = __swift_project_boxed_opaque_existential_1(&v81, *&v82[8]);
          specialized _ViewList_SublistTransform.push(_:flags:)(v36, &v63, v65, v34, v35);
          __swift_destroy_boxed_opaque_existential_1(&v81);
          v13 = *v13;
        }

        while (v13);
      }

      specialized MutableCollection<>.reverse()();
      v23 = *&v65[8];
      v22 = *v65;
      v20 = v60;
    }

    v37 = *a5;
    v38 = *(a5 + 2);
    swift_beginAccess();
    v39 = *(a6 + 16);
    LODWORD(v81) = v19;
    *(&v81 + 1) = v21;
    *v82 = v20;
    v82[8] = v56;
    *&v82[16] = v22;
    *&v82[24] = v23;
    *&v83 = v37;
    DWORD2(v83) = v38;
    *&v84[0] = v39;
    v85 = 1;
    *v65 = v19;
    *&v65[8] = v21;
    *&v65[16] = v20;
    v65[24] = v56;
    v62 = 2;

    v40 = _ViewList_Section.estimatedCount(style:)(&v62);
LABEL_30:
    LOBYTE(v76) = 0;
    v58(v59, &v81, &v76);
    outlined destroy of _LazyLayout_Subviews.Node(&v81);
    swift_beginAccess();
    *(a6 + 16) += v40;
    v27 = v76 ^ 1;
    return v27 & 1;
  }

  if (v80 == 1)
  {
    v58 = a7;
    v15 = *a5;
    v16 = *(a5 + 2);
    outlined init with copy of _ViewList_Node(a3, &v81);
    v57 = a8;
    if (v60)
    {
      v17 = *v13;
      v18 = v13[1];
    }

    else
    {
      v63 = MEMORY[0x1E69E7CC0];
      v64 = 0;
      v56 = v15;
      if (v13)
      {
        outlined init with copy of _ViewList_TemporarySublistTransform.ItemNode(v13, v65);
        v41 = v66;
        v42 = *(&v66 + 1) & ~(*(&v66 + 1) >> 63);

        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0, MEMORY[0x1E69E7CC0]);
        outlined destroy of _AnyAnimatableData(v65);
        v64 = v41;
        do
        {
          outlined init with copy of AnyTrackedValue((v13 + 1), v65);
          LOBYTE(v62) = 0;
          v43 = *&v65[24];
          v44 = *&v65[32];
          v45 = __swift_project_boxed_opaque_existential_1(v65, *&v65[24]);
          specialized _ViewList_SublistTransform.push(_:flags:)(v45, &v62, &v63, v43, v44);
          __swift_destroy_boxed_opaque_existential_1(v65);
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
      }

      specialized MutableCollection<>.reverse()();
      v17 = v63;
      v18 = v64;
      v15 = v56;
    }

    v46 = *(a5 + 32);
    v47 = *(a5 + 132);
    v48 = *(a5 + 133);
    v49 = *(a5 + 134);
    swift_beginAccess();
    v50 = *(a6 + 16);
    *v65 = v15;
    *&v65[8] = v16;
    v66 = *&v82[16];
    v67 = v83;
    v68[0] = v84[0];
    *(v68 + 14) = *(v84 + 14);
    *&v65[16] = v81;
    *&v65[32] = *v82;
    v69 = v17;
    v70 = v18;
    v71 = v46;
    v72 = v47;
    v73 = v48;
    v74 = v49;
    v75 = v50;
    outlined init with copy of _LazyLayout_Subviews(v65, &v81);
    v85 = 0;
    v62 = 2;
    v40 = _ViewList_Node.estimatedCount(style:)(&v62);
    outlined destroy of _LazyLayout_Subviews(v65);
    outlined destroy of _ViewList_Node(&v76);
    goto LABEL_30;
  }

  if (v80 == 2)
  {
    v55[1] = v55;
    MEMORY[0x1EEE9AC00](v14);
    v24 = 0;
    v52[2] = a5;
    v52[3] = a6;
    v53 = a7;
    v54 = a8;
    v56 = v25 + 32;
    v57 = v25;
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_10;
    }

LABEL_9:
    v24 = v26;
    memset(v65, 0, 44);
    while (1)
    {
      *&v82[12] = *&v65[28];
      v81 = *v65;
      *v82 = *&v65[16];
      v27 = *&v65[24] == 0;
      if (!*&v65[24] || (v28 = *&v82[24], outlined init with take of _ViewList_Elements(&v81, v65), v29 = *&v65[24], v30 = *&v65[32], __swift_project_boxed_opaque_existential_1(v65, *&v65[24]), v62 = v58, v63 = v13, LOBYTE(v64) = v60, v31 = *(v30 + 64), v61 = 0, v32 = v31(v59, &v62, v28, &v63, applyNode #1 (start:style:node:transform:) in _LazyLayout_Subviews.applyNodes(from:style:to:)partial apply, v52, v29, v30), __swift_destroy_boxed_opaque_existential_1(v65), (v32 & 1) == 0))
      {

        return v27 & 1;
      }

      if (v24 == v26)
      {
        goto LABEL_9;
      }

LABEL_10:
      if ((v24 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v24 >= *(v57 + 16))
      {
        goto LABEL_33;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v56 + 48 * v24++, v65);
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  LODWORD(v54) = 0;
  v53 = 661;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = outlined init with copy of _LazyLayout_Subviews.Node(a2, &v27);
  if (v36 != 1)
  {
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v18 = v27;
    v19 = v28;
    MEMORY[0x1EEE9AC00](v11);
    v15[2] = a5;
    v15[3] = a6;
    v15[4] = a4;
    *&v16[0] = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(a1, v16, partial apply for closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:), v15);
    outlined destroy of _LazyLayout_Subviews(&v18);
    if ((*a3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 1;
    goto LABEL_6;
  }

  v20 = v29;
  v21 = v30;
  *&v22 = v31;
  v18 = v27;
  v19 = v28;
  v16[2] = v29;
  v16[3] = v30;
  v17 = v31;
  v16[0] = v27;
  v16[1] = v28;
  v12 = type metadata accessor for StackPlacement();
  StackPlacement.placeSection(_:from:)(v16, a1, v12);
  outlined destroy of _LazyLayout_Section(&v18);
  if (*a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = type metadata accessor for StackPlacement();
  result = StackPlacement.shouldStop()(v13);
LABEL_6:
  *a3 = result;
  return result;
}

uint64_t initializeWithCopy for _LazyLayout_Subviews.Node(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 != 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 109);

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 109) = 2;
LABEL_13:

        goto LABEL_14;
      }

      *(a1 + 16) = *(a2 + 16);
      v14 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v14;
      *(a1 + 40) = *(a2 + 40);
      v13 = 3;
    }

    else
    {
      if (!v7)
      {
        v8 = *(a2 + 40);
        *(a1 + 40) = v8;
        (**(v8 - 8))(a1 + 16, a2 + 16);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 60) = *(a2 + 60);
        *(a1 + 109) = 0;
LABEL_14:
        v15 = *(a2 + 120);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 120) = v15;
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 131) = *(a2 + 131);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 144) = 0;

        return a1;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      v9 = *(a2 + 72);
      *(a1 + 72) = v9;
      v10 = v9;
      v11 = **(v9 - 8);

      v11(a1 + 48, a2 + 48, v10);
      v12 = *(a2 + 96);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = v12;
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      v13 = 1;
    }

    *(a1 + 109) = v13;

    goto LABEL_13;
  }

  *a1 = *a2;
  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 144) = 1;

  return a1;
}

BOOL closure #1 in closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for StackPlacement();
  StackPlacement.placeBody(subview:)(a1, v4);
  result = StackPlacement.shouldStop()(v4);
  *a2 = result;
  return result;
}

void StackPlacement.flushMinorGroup()(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v38 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 72);
  v16 = *(v1 + v15);
  if (!*(v16 + 16))
  {
    return;
  }

  v17 = *(a1 + 60);
  if (*(v2 + v17))
  {
    *(v2 + v17) = 0;
LABEL_11:
    v32 = *(v2 + *(a1 + 40));
    v33 = *(a1 + 56);
    v34 = *(v2 + v33);
    v35 = __OFADD__(v34, v32);
    v36 = v34 + v32;
    if (!v35)
    {
      *(v2 + v33) = v36;
      v37 = type metadata accessor for StackPlacement();
      swapSubviews(_:_:)((v2 + *(v37 + 76)), (v2 + *(v37 + 72)));
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v43 = v10;
  v44 = v12;
  v42 = v11;
  v18 = *(v2 + *(a1 + 76));
  v19 = v2 + *(a1 + 40);
  v20 = type metadata accessor for MinorProperties();
  v21 = *(v4 + 80);
  v40 = *(v20 + 40);
  v41 = v19;
  v22 = v21(v16, v18, &v40[v19], v5, v4);
  v24 = v22;
  v25 = v23;
  if (v18)
  {
    v26 = *&v23;
  }

  else
  {
    v26 = 0;
  }

  StackPlacement.addMeasurements(length:spacing:)(v26, v18 == 0, a1, v22);
  if (!AGGraphHasDeadlinePassed())
  {
    v27 = v44;
    v28 = *(a1 + 64);
    *(v2 + v28) = v25 + *(v2 + v28);
    if (StackPlacement.isVisible(length:)(a1, v24))
    {
      StackPlacement.addVisibleSubview(length:spacing:)(a1, v24, v25);
      StackPlacement.flushPendingHeader()(a1);
      (*(v42 + 16))(v14, v2, v5);
      v29 = *(v2 + v15);
      v39 = v24;
      v30 = (*(v27 + 16))(v8, &v40[v41], v43);
      v41 = v38;
      MEMORY[0x1EEE9AC00](v30);
      v38[-4] = v5;
      v38[-3] = v4;
      v38[-2] = v2;
      v40 = *(v4 + 88);
      v38[1] = v29;

      (v40)(v31, *&v39, 0, v8, partial apply for closure #2 in StackPlacement.flushMinorGroup(), &v38[-6], v5, v4);

      (*(v44 + 8))(v8, v43);
      (*(v42 + 8))(v14, v5);
    }

    *(v2 + v28) = v24 + *(v2 + v28);
    goto LABEL_11;
  }

LABEL_15:
  AGGraphCancelUpdate();
  *(v2 + *(a1 + 100)) = 1;

  $defer #1 <A>() in StackPlacement.flushMinorGroup()(v2);
}

unint64_t StackPlacement.addMeasurements(length:spacing:)(unint64_t a1, char a2, uint64_t a3, double a4)
{
  EstimationCache.add(length:spacing:count:)(a1, a2 & 1, 1, a4);
  v7 = *(v4 + *(a3 + 56));
  type metadata accessor for EstimationCache();
  if (a4 == 0.0)
  {
    return *&IndexSet.insert(_:)(v7);
  }

  result = IndexSet.contains(_:)(v7);
  if (result)
  {
    return IndexSet.remove(_:)(v7);
  }

  return result;
}

__n128 StackPlacement.emit(_:at:size:anchor:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  v16 = 0.0;
  if (v13)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *a6;
  }

  if (*(a6 + 24))
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *(a6 + 16);
  }

  v19 = v17 * a3 + a1;
  v20 = v18 * a4 + a2;
  if (*(v7 + *(a7 + 40)) == 1)
  {
    if (((*(*(a7 + 24) + 32))() & 1) == 0)
    {
      v13 = 1;
      goto LABEL_12;
    }

    v14 = 0;
    v15 = 1;
  }

  v16 = v12;
LABEL_12:
  LOBYTE(v36[0]) = v13;
  *&v29 = v16;
  BYTE8(v29) = v13;
  v30 = v14;
  v31 = v15;
  v32 = a3;
  v33 = a4;
  v34 = v19;
  v35 = v20;
  _LazyLayout_Subview.place(at:)(&v29, v36);
  v21 = *(a7 + 84);
  v22 = *(v7 + v21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[80 * v24];
  *(v25 + 2) = v36[0];
  result = v36[1];
  v27 = v36[2];
  v28 = v36[4];
  *(v25 + 5) = v36[3];
  *(v25 + 6) = v28;
  *(v25 + 3) = result;
  *(v25 + 4) = v27;
  *(v8 + v21) = v22;
  return result;
}

uint64_t _LazyLayout_Subview.place(at:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = LazyLayoutViewCache.item(data:)((v2 + 16));
  swift_beginAccess();
  result = swift_unownedRetainStrong();
  if (result)
  {
    v8 = *(result + 228);

    *(v6 + 200) = v8;
    *(v6 + 208) = 0;
    v9 = *a1;
    v10 = a1[1];
    *(v6 + 304) = *a1;
    *(v6 + 320) = v10;
    v11 = a1[2];
    v12 = a1[3];
    *(v6 + 336) = v11;
    *(v6 + 352) = v12;
    *(v6 + 368) = 0;
    v13 = *(v3 + 104);
    *a2 = v6;
    *(a2 + 8) = v9;
    *(a2 + 24) = v10;
    *(a2 + 40) = v11;
    *(a2 + 56) = v12;
    *(a2 + 72) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double StackPlacement.placedExtent.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  result = *v2;
  v4 = v2[1];
  if (*v2 < v4)
  {
    if (*v2 <= v4)
    {
      return result;
    }

    __break(1u);
  }

  return *(v1 + *(a1 + 64));
}

unsigned __int16 *assignWithTake for _LazyStack_Cache(unsigned __int16 *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = ((v7 + 16) & ~v7) + *(v5 + 64);
  v53 = ~v7;
  if (!v6)
  {
    v13 = 8 * v9;
    if (*(a1 + v9))
    {
      v14 = (*(a1 + v9) - 1) << v13;
      if (v9 > 3)
      {
        v14 = 0;
      }

      if (v9)
      {
        v15 = v9 <= 3 ? ((v7 + 16) & ~v7) + *(v5 + 64) : 4;
        if (v15 > 2)
        {
          v16 = v15 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v16 = v15 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v16 = 0;
      }

      if ((v16 | v14) != 0xFFFFFFFF)
      {
        if (!a2[v9])
        {
          goto LABEL_60;
        }

        v17 = (a2[v9] - 1) << v13;
        if (v9 > 3)
        {
          v17 = 0;
        }

        if (v9)
        {
          v18 = v9 <= 3 ? ((v7 + 16) & ~v7) + *(v5 + 64) : 4;
          if (v18 > 2)
          {
            v19 = v18 == 3 ? *a2 | (a2[2] << 16) : *a2;
          }

          else
          {
            v19 = v18 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v19 = 0;
        }

        if ((v19 | v17) == 0xFFFFFFFF)
        {
          goto LABEL_60;
        }

LABEL_52:
        if (v6)
        {
          v23 = v9;
        }

        else
        {
          v23 = v9 + 1;
        }

        memcpy(a1, a2, v23);
        goto LABEL_62;
      }
    }

    if (!a2[v9])
    {
LABEL_56:
      *a1 = *a2;
      v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v25 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v24 = *v25;
      (*(v5 + 40))((v24 + v7 + 8) & v8, (v25 + v7 + 8) & v8, AssociatedTypeWitness);
      goto LABEL_62;
    }

    v20 = (a2[v9] - 1) << v13;
    if (v9 > 3)
    {
      v20 = 0;
    }

    if (v9)
    {
      if (v9 <= 3)
      {
        v21 = ((v7 + 16) & ~v7) + *(v5 + 64);
      }

      else
      {
        v21 = 4;
      }

      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v22 = *a2 | (a2[2] << 16);
        }

        else
        {
          v22 = *a2;
        }
      }

      else if (v21 == 1)
      {
        v22 = *a2;
      }

      else
      {
        v22 = *a2;
      }
    }

    else
    {
      v22 = 0;
    }

    v12 = (v22 | v20) + 1;
LABEL_50:
    v8 = ~v7;
    if (v12)
    {
      (*(v5 + 8))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v53, AssociatedTypeWitness);
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v10 = *(v5 + 48);
  v11 = v10((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v8, v6, AssociatedTypeWitness);
  v12 = v10((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, AssociatedTypeWitness);
  if (!v11)
  {
    goto LABEL_50;
  }

  if (v12)
  {
    goto LABEL_52;
  }

LABEL_60:
  *a1 = *a2;
  v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  (*(v5 + 32))((v26 + v7 + 8) & v53, (v27 + v7 + 8) & v53, AssociatedTypeWitness);
  if (!v6)
  {
    *(a1 + v9) = 0;
  }

LABEL_62:
  if (v6)
  {
    v28 = v9;
  }

  else
  {
    v28 = v9 + 1;
  }

  v29 = a1 + v28;
  v30 = &a2[v28];
  v31 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *v31 = v33;
  v34 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  v34[1] = v35[1];
  v36 = ((v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;
  v36[1] = v37[1];
  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  v38[1] = v39[1];
  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;
  v42 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v42 = *v43;
  v44 = type metadata accessor for IndexSet();
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = *(v45 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v48 = ((v42 + v46 + 8) & v47);
  v49 = v43 + v46 + 8;
  v50 = (v49 & v47) + 15;
  *v48 = *(v49 & v47);

  v51 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  v50 &= 0xFFFFFFFFFFFFFFF8;
  *v51 = *v50;

  (*(v45 + 40))((v51 + v46 + 8) & ~v46, (v46 + 8 + v50) & ~v46, v44);
  return a1;
}

void LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(char *a1, char **a2, char a3, unsigned int a4, double a5, double a6)
{
  v8 = v6;
  v116 = *v6;
  ++*(v6 + 56);
  v11 = *a2;
  v12 = *(*a2 + 2);
  v119 = v6;
  if (v12)
  {

    swift_beginAccess();
    if (*(v11 + 2))
    {
      v13 = 0;
      v120 = 0;
      v7 = 0;
      v117 = 0;
      v14 = 1;
      v15 = 1;
      do
      {
        v16 = &v11[80 * v13];
        *v133 = *(v16 + 2);
        v17 = *(v16 + 3);
        v18 = *(v16 + 4);
        v19 = *(v16 + 6);
        *&v133[48] = *(v16 + 5);
        *&v133[64] = v19;
        *&v133[16] = v17;
        *&v133[32] = v18;
        v20 = *v133;
        if (*(*v133 + 204) == *(v8 + 56))
        {
          if (*(*v133 + 387))
          {
            outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
          }

          else
          {
            *(*v133 + 387) = 1;
            *&v138 = 0;
            *(&v138 + 1) = 0xE000000000000000;
            outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
            _StringGuts.grow(_:)(80);
            v128 = v138;
            (*(v116 + 392))();
            v22 = _typeName(_:qualified:)();
            MEMORY[0x193ABEDD0](v22);

            MEMORY[0x193ABEDD0](0x444920656874203ALL, 0xE900000000000020);
            v23 = *(v20 + 152);
            *&v124 = *(v20 + 144);
            *(&v124 + 1) = v23;

            _ViewList_ID.Canonical.init(id:)(&v124, &v138);
            v124 = v138;
            v24 = _ViewList_ID.Canonical.description.getter();
            MEMORY[0x193ABEDD0](v24);

            v8 = v119;

            MEMORY[0x193ABEDD0](0xD000000000000043, 0x800000018DD80230);
            specialized static Log.externalWarning(_:)(v128, *(&v128 + 1));
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
          }

          v25 = *(v11 + 2);
          if (v13 >= v25)
          {
            goto LABEL_113;
          }

          v26 = v25 - 1;
          v27 = &v11[80 * v13];
          v128 = *(v27 + 2);
          v28 = *(v27 + 3);
          v29 = *(v27 + 4);
          v30 = *(v27 + 6);
          v131 = *(v27 + 5);
          v132 = v30;
          v129 = v28;
          v130 = v29;
          memmove(v27 + 32, v27 + 112, 80 * (v26 - v13));
          *(v11 + 2) = v26;
          outlined destroy of _LazyLayout_PlacedSubview(v133);
          outlined destroy of _LazyLayout_PlacedSubview(&v128);
          *a2 = v11;
          if (v13 >= --v12)
          {
            goto LABEL_42;
          }
        }

        else
        {
          outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
          outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
          v21 = *(AGGraphGetValue() + 4);
          outlined destroy of _LazyLayout_PlacedSubview(v133);
          if (v21 != 1)
          {
            if (*(v20 + 224) == 1)
            {
              outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
              v31 = *(AGGraphGetValue() + 5);
              outlined destroy of _LazyLayout_PlacedSubview(v133);
              if ((*(v8 + 343) & 1) == 0)
              {
                (*(*v8 + 416))(&v128, v13, v11, a1, v31, a4);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
                }

                if (v13 >= *(v11 + 2))
                {
                  goto LABEL_115;
                }

                v32 = &v11[80 * v13];
                v33 = v128;
                v34 = v129;
                v35 = v130;
                *(v32 + 88) = v131;
                *(v32 + 72) = v35;
                *(v32 + 56) = v34;
                *(v32 + 40) = v33;
                *a2 = v11;
              }

              if (v13 >= *(v11 + 2))
              {
                goto LABEL_114;
              }

              v36 = *&v133[72];
              v37 = &v11[80 * v13];
              v38 = *(v37 + 56);
              v39 = *(v37 + 88);
              v40 = *(v37 + 40);
              v126 = *(v37 + 72);
              v127 = v39;
              v124 = v40;
              v125 = v38;
              v138 = v40;
              v139 = v38;
              v140 = v126;
              v141 = v39;
              outlined init with copy of _LazyLayout_PlacedSubview(v133, &v128);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v41 = a1;
              }

              else
              {
                v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
              }

              v43 = *(v41 + 2);
              v42 = *(v41 + 3);
              if (v43 >= v42 >> 1)
              {
                v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
              }

              *(v41 + 2) = v43 + 1;
              a1 = v41;
              v44 = &v41[80 * v43];
              *(v44 + 4) = v20;
              v45 = v138;
              v46 = v139;
              v47 = v140;
              *(v44 + 88) = v141;
              *(v44 + 72) = v47;
              *(v44 + 56) = v46;
              *(v44 + 40) = v45;
              *(v44 + 13) = v36;
              v117 = 1;
              v8 = v119;
            }

            else
            {
              v117 = 1;
            }
          }

          *(v20 + 216) = v13;
          *(v20 + 224) = 0;
          *(v20 + 196) = *(v8 + 46);
          *(v20 + 204) = *(v8 + 56);
          LOBYTE(v128) = 0;
          *(v20 + 232) = *&v133[8];
          *(v20 + 248) = *&v133[24];
          v48 = *&v133[56];
          *(v20 + 264) = *&v133[40];
          *(v20 + 280) = v48;
          *(v20 + 296) = 0;
          outlined destroy of _LazyLayout_PlacedSubview(v133);
          v49 = v120;
          if (v14)
          {
            v49 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v49 >= *&v133[72])
          {
            v49 = *&v133[72];
          }

          v120 = v49;
          v50 = 0x8000000000000000;
          if ((v15 & 1) == 0)
          {
            v50 = v7;
          }

          if (v50 <= *&v133[72])
          {
            v7 = *&v133[72];
          }

          else
          {
            v7 = v50;
          }

          ++v13;
          v15 = 0;
          v14 = 0;
          if (v13 >= v12)
          {
LABEL_42:
            v51.value = v7;
            v52.value = v120;
            goto LABEL_44;
          }
        }
      }

      while (v13 < *(v11 + 2));
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v89 = __CocoaSet.count.getter();
    if (v89)
    {
      goto LABEL_90;
    }

LABEL_117:

    if (*(v119 + 342) == 1)
    {

      v108 = v117;
    }

    else
    {
      v109 = *(v119 + 341);

      v110 = v109 | v116;
      v108 = v117;
      if ((v110 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    Array<A>.sortForDisplay()();
LABEL_121:
    if (v108)
    {
      if (swift_weakLoadStrong())
      {
        swift_weakInit();
        specialized GraphHost.continueTransaction<A>(_:)(v133);

        outlined destroy of weak AnyGestureResponder?(v133);
      }
    }

    else if ((a3 & 1) == 0 && *(*a2 + 2))
    {
      *(v119 + 343) = 0;
    }

    return;
  }

  v117 = 0;
  v51.value = 0;
  v52.value = 0;
  v15 = 1;
  v14 = 1;
LABEL_44:
  v52.is_nil = v14;
  v51.is_nil = v15 & 1;
  LazyLayoutViewCache.updatePlacedIndices(minIndex:maxIndex:containingSize:)(v52, v51, __PAIR128__(*&a6, *&a5));
  v7 = MEMORY[0x1E69E7CC0];
  v144 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v53 = v8[22];
  v54 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v53 + 64);

  swift_beginAccess();
  swift_beginAccess();
  LOBYTE(v116) = 0;
  v58 = 0;
  v59 = (v55 + 63) >> 6;
  while (v57)
  {
LABEL_54:
    v61 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v62 = *(*(v53 + 56) + ((v58 << 9) | (8 * v61)));
    if (*(v62 + 204) != *(v8 + 56))
    {
      v63 = *(v62 + 248);
      *v133 = *(v62 + 232);
      *&v133[16] = v63;
      v64 = *(v62 + 280);
      *&v133[32] = *(v62 + 264);
      *&v133[48] = v64;
      if (*(v62 + 296) & 1) != 0 || (*(v62 + 224))
      {
        v8 = v119;
      }

      else
      {
        v121 = v53;
        v114 = *(v62 + 216);

        if (*(AGGraphGetValue() + 4) == 2)
        {
          if (*(v62 + 385) == 1)
          {
            *(v62 + 385) = 0;
            v128 = *v133;
            v129 = *&v133[16];
            v130 = *&v133[32];
            v131 = *&v133[48];
            v117 = 1;
          }

          else
          {
            v81 = *(v62 + 192) == 0;
            v128 = *v133;
            v129 = *&v133[16];
            v130 = *&v133[32];
            v131 = *&v133[48];
            v117 |= v81;
          }

          v8 = v119;
          goto LABEL_83;
        }

        AGGraphClearUpdate();
        v65 = *AGGraphGetValue();
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
        BloomFilter.init(hashValue:)(v66);
        v67 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(v65, v138);
        if (!v67)
        {
          AGGraphSetUpdate();
          goto LABEL_78;
        }

        v68 = *(v67 + 72);
        v69 = AGGraphSetUpdate();
        if (v68 == 1)
        {
          *(v62 + 216) = 0;
          *(v62 + 224) = 1;
          if (((*(*v119 + 360))(v69) & 1) == 0)
          {
            goto LABEL_71;
          }

          if (one-time initialization token for v7 != -1)
          {
            swift_once();
          }

          v115 = static Semantics.v7;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C == 1)
          {
            if ((dyld_program_sdk_at_least() & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else if (static Semantics.forced < v115)
          {
            goto LABEL_71;
          }

          v70 = v119[4];
          BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
          v71 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v70, v138);
          if (v71)
          {
            v53 = v121;
            if (*(v71 + 72) == 1)
            {
LABEL_71:
              v72 = 0;
              goto LABEL_72;
            }

            v72 = 3;
          }

          else
          {
            v72 = 3;
            v53 = v121;
          }

LABEL_72:
          *(v62 + 212) = v72;
          *(v62 + 188) = *(v119 + 52);
          LOBYTE(v138) = 1;
          *(v62 + 232) = 0u;
          *(v62 + 248) = 0u;
          *(v62 + 264) = 0u;
          *(v62 + 280) = 0u;
          v8 = v119;
          *(v62 + 296) = 1;
        }

        else
        {
LABEL_78:
          AGGraphClearUpdate();
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
          Value = AGGraphGetValue();
          outlined init with copy of AnyTrackedValue(Value, &v124);
          AGGraphSetUpdate();
          v75 = *(&v125 + 1);
          v74 = v126;
          v113 = v126;
          __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
          v76 = *(v62 + 152);
          *&v138 = *(v62 + 144);
          *(&v138 + 1) = v76;
          v142 = v119[25];
          v77 = *(v74 + 72);

          v77(&v143, &v138, &v142, v75, v113);

          v78 = v143 & 1;
          (*(*v119 + 424))(&v138, v114, a1, v11, v78, a4);
          v79 = v78 & ~*(v62 + 132);
          v8 = v119;
          *(v62 + 384) = v79;
          *(v62 + 385) = 1;
          *(v62 + 228) = *(v119 + 56);

          MEMORY[0x193ABF170](v80);
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v144;
          __swift_destroy_boxed_opaque_existential_1(&v124);
          v128 = v138;
          v129 = v139;
          v130 = v140;
          v131 = v141;
          v117 = 1;
LABEL_83:
          v82 = *(v11 + 2);
          *(v62 + 216) = v82;
          *(v62 + 224) = 0;
          *(v62 + 196) = *(v8 + 46);
          v138 = v128;
          v139 = v129;
          v140 = v130;
          v141 = v131;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82 + 1, 1, v11);
          }

          v84 = *(v11 + 2);
          v83 = *(v11 + 3);
          if (v84 >= v83 >> 1)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v11);
          }

          *(v11 + 2) = v84 + 1;
          v85 = &v11[80 * v84];
          *(v85 + 4) = v62;
          v86 = v138;
          v87 = v139;
          v88 = v140;
          *(v85 + 88) = v141;
          *(v85 + 72) = v88;
          *(v85 + 56) = v87;
          *(v85 + 40) = v86;
          *(v85 + 13) = -1;
          *a2 = v11;
          LOBYTE(v116) = 1;
        }
      }
    }
  }

  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v60 >= v59)
    {
      break;
    }

    v57 = *(v54 + 8 * v60);
    ++v58;
    if (v57)
    {
      v58 = v60;
      goto LABEL_54;
    }
  }

  if (v7 >> 62)
  {
    goto LABEL_116;
  }

  v89 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v89)
  {
    goto LABEL_117;
  }

LABEL_90:
  v90 = 0;
  v122 = v7 & 0xC000000000000001;
  v91 = v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v122)
    {
      v92 = MEMORY[0x193AC03C0](v90, v7);
      v93 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v90 >= *(v91 + 16))
      {
        goto LABEL_109;
      }

      v92 = *(v7 + 8 * v90 + 32);

      v93 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_108;
      }
    }

    if (*(v92 + 224))
    {
      break;
    }

    v94 = *(v92 + 216);
    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }

    if (v94 >= *(v11 + 2))
    {
      goto LABEL_111;
    }

    v95 = v7;
    v96 = &v11[80 * v94];
    v97 = *(v96 + 40);
    v98 = *(v96 + 56);
    v99 = *(v96 + 88);
    v136 = *(v96 + 72);
    v137 = v99;
    v134 = v97;
    v135 = v98;
    v7 = v92 + 232;
    v100 = *(v92 + 248);
    *v133 = *(v92 + 232);
    *&v133[16] = v100;
    v101 = *(v92 + 280);
    *&v133[32] = *(v92 + 264);
    *&v133[48] = v101;
    if (*(v92 + 296))
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    if (v94 >= *(v11 + 2))
    {
      goto LABEL_112;
    }

    v102 = &v11[80 * v94];
    v103 = *v133;
    v104 = *&v133[16];
    v105 = *&v133[32];
    *(v102 + 88) = *&v133[48];
    *(v102 + 72) = v105;
    *(v102 + 56) = v104;
    *(v102 + 40) = v103;
    *a2 = v11;
    LOBYTE(v128) = 0;
    v106 = v135;
    *v7 = v134;
    *(v92 + 248) = v106;
    v107 = v137;
    *(v92 + 264) = v136;
    *(v92 + 280) = v107;
    *(v92 + 296) = 0;

    ++v90;
    v7 = v95;
    if (v93 == v89)
    {
      goto LABEL_117;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
}

Swift::Void __swiftcall LazyLayoutViewCache.updatePlacedIndices(minIndex:maxIndex:containingSize:)(Swift::Int_optional minIndex, Swift::Int_optional maxIndex, CGSize containingSize)
{
  if (*(v3 + 264) != containingSize.width || *(v3 + 272) != containingSize.height)
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  if (minIndex.is_nil)
  {
    value = -1;
  }

  else
  {
    value = minIndex.value;
  }

  if (maxIndex.is_nil)
  {
    v6 = -1;
  }

  else
  {
    v6 = maxIndex.value;
  }

  *(v3 + 280) = value;
  *(v3 + 288) = v6;
  if (value < 0 || v6 < 0)
  {
    goto LABEL_16;
  }

  v7 = *(v3 + 304);
  v8 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    *(v3 + 296) = (*(v3 + 296) * v7 + (v6 - value)) / v8;
    *(v3 + 304) = v8;
LABEL_16:
    *(v3 + 264) = containingSize.width;
    *(v3 + 272) = containingSize.height;
    return;
  }

  __break(1u);
}

uint64_t sub_18D29A3F0()
{

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t closure #1 in LazyLayoutViewCache.collect()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(*a2 + 224);

  if (v5 == 1)
  {
    LazyLayoutViewCache.ensureRemoved(item:)(v4);
  }

  else
  {
    v6 = *(v4 + 386);
    if (v6 == 2 || (v6 & 1) != 0)
    {
      LazyLayoutCacheItem.attach(to:)();
    }
  }

  swift_beginAccess();
  if (*(a3 + 192) >= (*(a3 + 184) - *(v4 + 196)) || *(v4 + 204) == *(a3 + 224) || *(v4 + 192) || *(v4 + 208) == *(a3 + 228) || *(v4 + 212) == 3)
  {
    v8 = 1;
  }

  else
  {
    (*(*a3 + 432))(partial apply for implicit closure #5 in closure #1 in LazyLayoutViewCache.collect(), v4);
    AGSubgraphRef.willInvalidate(isInserted:)(0);
    AGSubgraphInvalidate();
    v8 = 0;
  }

  return v8;
}

Swift::Void __swiftcall LazySubviewPlacements.updateValue()()
{
  v6 = v1;
  v292 = *MEMORY[0x1E69E9840];
  v7 = *(*&v0 + 16);
  v8 = *(v7 - 8);
  MinY = v0;
  MaxX = v8;
  (MEMORY[0x1EEE9AC00])();
  v10 = &v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v178 - v12;
  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v15 = v14;
  if (!AGGraphGetOutputValue() || !AGGraphHasDeadlinePassed())
  {
    v238 = v10;
    v16 = *(v6 + 452);
    v17 = type metadata accessor for LazyLayoutViewCache();
    AGGraphGetValue();
    swift_beginAccess();
    v18 = *AGGraphGetValue() >> 1;
    v230 = v16;
    v233 = v18;
    if (v16 != v18)
    {
      *(v6 + 452) = v233;
      LOBYTE(v290[0]) = 1;
      v19 = *(v6 + 408);
      v291[8] = *(v6 + 392);
      v291[9] = v19;
      v291[10] = *(v6 + 424);
      *(&v291[10] + 9) = *(v6 + 433);
      v20 = *(v6 + 344);
      v291[4] = *(v6 + 328);
      v291[5] = v20;
      v21 = *(v6 + 376);
      v291[6] = *(v6 + 360);
      v291[7] = v21;
      v22 = *(v6 + 280);
      v291[0] = *(v6 + 264);
      v291[1] = v22;
      v23 = *(v6 + 312);
      v291[2] = *(v6 + 296);
      v291[3] = v23;
      outlined destroy of PositionState(v291);
      *(v6 + 264) = 0;
      *(v6 + 272) = 0u;
      *(v6 + 288) = 0u;
      *(v6 + 304) = 0u;
      *(v6 + 320) = 0u;
      *(v6 + 336) = 0u;
      *(v6 + 352) = 0u;
      *(v6 + 368) = 0u;
      *(v6 + 384) = 0u;
      *(v6 + 400) = 0u;
      *(v6 + 416) = 0u;
      *(v6 + 432) = 0u;
      *(v6 + 448) = 1;
      v24 = *MEMORY[0x1E695F050];
      v25 = *(MEMORY[0x1E695F050] + 8);
      y = *(MEMORY[0x1E695F050] + 16);
      x = *(MEMORY[0x1E695F050] + 24);
      v26 = *(v6 + 96);
      v27 = *(v6 + 112);
      v28 = *(v6 + 144);
      v290[2] = *(v6 + 128);
      v290[3] = v28;
      v290[0] = v26;
      v290[1] = v27;
      v29 = *(v6 + 160);
      v30 = *(v6 + 176);
      v31 = *(v6 + 192);
      LODWORD(v290[7]) = *(v6 + 208);
      v290[5] = v30;
      v290[6] = v31;
      v290[4] = v29;
      outlined destroy of PlacementState(v290);
      v32 = MEMORY[0x1E69E7CC0];
      *(v6 + 96) = MEMORY[0x1E69E7CC0];
      *(v6 + 104) = v32;
      *(v6 + 112) = v24;
      *(v6 + 120) = v25;
      *(v6 + 128) = y;
      *(v6 + 136) = x;
      *(v6 + 144) = v24;
      *(v6 + 152) = v25;
      *(v6 + 160) = y;
      *(v6 + 168) = x;
      *(v6 + 176) = v24;
      *(v6 + 184) = v25;
      *(v6 + 192) = y;
      *(v6 + 200) = x;
      *(v6 + 208) = 0;

      *(v6 + 256) = 0;
      *(v6 + 216) = 0u;
      *(v6 + 232) = 0u;
      *(v6 + 248) = 0;
    }

    v33 = *(v6 + 36);
    v34 = *(*AGGraphGetValue() + 341);
    v232 = v15;
    if (v34 == 1)
    {
      LODWORD(v229) = *(v6 + 36);
      Value = AGGraphGetValue();
      v36 = MaxX;
      (*(*&MaxX + 16))(v13, Value, v7);
      (*(*(*&MinY + 24) + 120))(v291, v7);
      (*(*&v36 + 8))(v13, v7);
      v203 = v291[0];
    }

    else
    {
      LODWORD(v229) = v33;
      v203 = 0;
    }

    v37 = AGGraphGetValue();
    v39 = v38;
    v40 = *v37;
    v41 = *(v37 + 8);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v43 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v226 = CurrentAttribute;
      v227 = v39;
      v190 = v43;
      v189 = v13;
      v45 = *(v37 + 32);
      v44 = *(v37 + 40);
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      v225 = *(v6 + 16);
      type metadata accessor for CGPoint(0);
      v48 = MaxX;

      v49 = AGGraphGetValue();
      *&v50 = *v49;
      v240 = v50;
      *&v50 = v49[1];
      v239 = v50;
      v51 = AGGraphGetValue();
      *&v52 = *v51;
      v241 = v52;
      *&v52 = v51[1];
      v242 = v52;

      AGGraphGetValue();

      v211 = *AGGraphGetValue();

      v53 = AGGraphGetValue();
      v54 = v238;
      v186 = *(*&v48 + 16);
      v187 = *&v48 + 16;
      v186(v238, v53, v7);
      v55 = *(*(*&MinY + 24) + 120);
      v235 = *(*&MinY + 24);
      v55(&v246, v7);
      v56 = *(*&v48 + 8);
      v234 = v7;
      *&MaxX = *&v48 + 8;
      v188 = v56;
      v56(v54, v7);
      v57 = v246;
      v228 = *(v6 + 96);
      v58 = *(v6 + 112);
      v181 = (v6 + 112);
      v59 = *(v6 + 128);
      v184 = *(v6 + 120);
      v185 = v58;
      v60 = *(v6 + 144);
      v182 = *(v6 + 136);
      v183 = v59;
      v61 = *(v6 + 160);
      v197 = *(v6 + 152);
      v198 = v60;
      v62 = *(v6 + 176);
      v195 = *(v6 + 168);
      v196 = v61;
      v63 = *(v6 + 192);
      v193 = *(v6 + 184);
      v194 = v62;
      v191 = *(v6 + 200);
      v192 = v63;
      v64 = *(v6 + 304);
      v201 = *(v6 + 312);
      v202 = v64;
      v65 = *(v6 + 320);
      v199 = *(v6 + 328);
      v200 = v65;
      v66 = *(v6 + 400);
      v179 = *(v6 + 408);
      v180 = v66;
      v231 = v17;
      AGGraphGetValue();

      v67 = *AGGraphGetValue();

      v243 = 1;
      v68 = *&v239 - v46;
      v69 = v45 - (*&v240 - v47);
      memset(v291, 0, 112);
      v70 = v44 - v68;
      LOBYTE(v291[7]) = 1;
      v238 = v40;
      *&v290[0] = v40;
      v71 = v211;
      *(&v290[0] + 1) = v41;
      *&v290[1] = v240;
      *(&v290[1] + 1) = v239;
      *&v290[2] = v69;
      *(&v290[2] + 1) = v44 - v68;
      specialized ViewTransform.forEach(inverted:_:)(0, v290, v291);
      v72 = *&v291[1];
      if (v291[7])
      {
        v72 = *&v241;
      }

      v222 = v72;
      if (v291[7])
      {
        v73 = *&v242;
      }

      else
      {
        v73 = *(&v291[1] + 1);
      }

      v221 = v73;
      v74 = 0.0;
      if (v291[7])
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v291[2];
      }

      if (v291[7])
      {
        v76 = 0.0;
      }

      else
      {
        v76 = *(&v291[2] + 1);
      }

      v218 = v76;
      v219 = v75;
      if (v291[7])
      {
        v77 = 0.0;
      }

      else
      {
        v77 = *&v291[3];
      }

      if (v291[7])
      {
        v78 = 0.0;
      }

      else
      {
        v78 = *(&v291[3] + 1);
      }

      v216 = v78;
      v217 = v77;
      if (v291[7])
      {
        v79 = *&v241;
      }

      else
      {
        v79 = *&v291[6];
      }

      if (v291[7])
      {
        v80 = *&v242;
      }

      else
      {
        v80 = *(&v291[6] + 1);
      }

      v223 = v80;
      v224 = v79;
      if (v291[7])
      {
        v81 = 0.0;
      }

      else
      {
        v81 = *(&v291[5] + 1);
      }

      if (v291[7])
      {
        v82 = 0.0;
      }

      else
      {
        v82 = *&v291[5];
      }

      if (v291[7])
      {
        v83 = *&v241;
      }

      else
      {
        v83 = *&v291[4];
      }

      if (v291[7])
      {
        v84 = *&v242;
      }

      else
      {
        v84 = *(&v291[4] + 1);
      }

      if (v291[7])
      {
        v85 = 0.0;
      }

      else
      {
        v85 = *v291;
      }

      if (v291[7])
      {
        v86 = 0.0;
      }

      else
      {
        v86 = *(v291 + 1);
      }

      v213 = v84;
      v214 = v83;
      v212 = v86;
      if (v71 == 1)
      {
        v87 = v85;
        v88 = v86;
        v89 = *&v241 - CGRectGetMaxX(*(&v83 - 2));
        v215 = v82 + v89 - v85;
        v220 = v81 + v86 - v86;
        v85 = v89;
      }

      else
      {
        v215 = v82;
        v220 = v81;
      }

      memset(v291, 0, 112);
      LOBYTE(v291[7]) = 1;
      *&v290[0] = v238;
      *(&v290[0] + 1) = v41;
      *&v290[1] = v240;
      *(&v290[1] + 1) = v239;
      *&v290[2] = v69;
      *(&v290[2] + 1) = v70;
      specialized ViewTransform.forEach(inverted:_:)(0, v290, v291);
      v90 = *&v291[1];
      if (v291[7])
      {
        v90 = *&v241;
      }

      v208 = v90;
      if (v291[7])
      {
        v91 = *&v242;
      }

      else
      {
        v91 = *(&v291[1] + 1);
      }

      if (v291[7])
      {
        v92 = 0.0;
      }

      else
      {
        v92 = *&v291[2];
      }

      if (v291[7])
      {
        v93 = 0.0;
      }

      else
      {
        v93 = *(&v291[2] + 1);
      }

      v206 = v93;
      v207 = v92;
      if (v291[7])
      {
        v94 = 0.0;
      }

      else
      {
        v94 = *&v291[3];
      }

      if (v291[7])
      {
        v95 = 0.0;
      }

      else
      {
        v95 = *(&v291[3] + 1);
      }

      v204 = v95;
      v205 = v94;
      if (v291[7])
      {
        v96 = *&v241;
      }

      else
      {
        v96 = *&v291[6];
      }

      if (v291[7])
      {
        v97 = *&v242;
      }

      else
      {
        v97 = *(&v291[6] + 1);
      }

      v209 = v97;
      v210 = v96;
      if (v291[7])
      {
        v98 = 0.0;
      }

      else
      {
        v98 = *(&v291[5] + 1);
      }

      if (v291[7])
      {
        v99 = 0.0;
      }

      else
      {
        v99 = *&v291[5];
      }

      if (v291[7])
      {
        v100 = *&v241;
      }

      else
      {
        v100 = *&v291[4];
      }

      if (v291[7])
      {
        v101 = *&v242;
      }

      else
      {
        v101 = *(&v291[4] + 1);
      }

      if (v291[7])
      {
        v102 = 0.0;
      }

      else
      {
        v102 = *v291;
      }

      if ((v291[7] & 1) == 0)
      {
        v74 = *(v291 + 1);
      }

      if (v71)
      {
        v294.origin.x = v102;
        v294.origin.y = v74;
        v294.size.width = v100;
        v294.size.height = v101;
        v103 = *&v241 - CGRectGetMaxX(v294);
        v99 = v99 + v103 - v102;
        v98 = v98 + v74 - v74;
        v102 = v103;
      }

      v104 = v229;
      v229 = v41;

      LODWORD(v291[0]) = v226;
      *(v291 + 4) = __PAIR64__(v225, v226);
      HIDWORD(v291[0]) = v104;
      *&v105 = v240;
      *(&v105 + 1) = v239;
      v106 = v241;
      *&v107 = v241;
      *(&v107 + 1) = v242;
      v291[1] = v105;
      v291[2] = v107;
      LODWORD(v291[3]) = v57;
      *(&v291[3] + 1) = v85;
      *&v291[4] = v212;
      *(&v291[4] + 1) = v222;
      *&v291[5] = v221;
      *(&v291[5] + 1) = v219;
      *&v291[6] = v218;
      *(&v291[6] + 1) = v217;
      *&v291[7] = v216;
      *(&v291[7] + 1) = v214;
      *&v291[8] = v213;
      *(&v291[8] + 1) = v215;
      *&v291[9] = v220;
      *(&v291[9] + 1) = v224;
      *&v291[10] = v223;
      *(&v291[10] + 1) = v102;
      *&v291[11] = v74;
      *(&v291[11] + 1) = v208;
      *&v291[12] = v91;
      *(&v291[12] + 1) = v207;
      *&v291[13] = v206;
      *(&v291[13] + 1) = v205;
      *&v291[14] = v204;
      *(&v291[14] + 1) = v100;
      *&v291[15] = v101;
      *(&v291[15] + 1) = v99;
      *&v291[16] = v98;
      *(&v291[16] + 1) = v210;
      *&v291[17] = v209;
      *(&v291[17] + 8) = __PAIR128__(v242, v241);
      BYTE8(v291[18]) = v67;
      v245 = *(&v291[15] + 8);
      v250 = *(&v291[6] + 8);
      v251 = *(&v291[7] + 8);
      v252 = *(&v291[8] + 8);
      v253 = *(&v291[9] + 8);
      v247 = *(&v291[3] + 8);
      v248 = *(&v291[4] + 8);
      v249 = *(&v291[5] + 8);
      v290[4] = *(&v291[7] + 8);
      v290[5] = *(&v291[8] + 8);
      v290[6] = *(&v291[9] + 8);
      v290[0] = *(&v291[3] + 8);
      v290[1] = *(&v291[4] + 8);
      v290[2] = *(&v291[5] + 8);
      v290[3] = *(&v291[6] + 8);
      if (v67)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v242, v241));
        v106 = v241;
      }

      v108 = v290[5];
      v109 = v290[6];
      v244 = *&v290[5];
      v290[4] = *(&v291[7] + 8);
      v290[5] = *(&v291[8] + 8);
      v290[6] = *(&v291[9] + 8);
      v290[0] = *(&v291[3] + 8);
      v290[1] = *(&v291[4] + 8);
      v290[2] = *(&v291[5] + 8);
      v290[3] = *(&v291[6] + 8);
      if (v67)
      {
        ScrollGeometry.outsetForAX(limit:)(__PAIR128__(v242, v106));
        v106 = v241;
      }

      v110 = 0;
      v111 = 0;
      v112 = v242;
      v295 = CGRectIntersection(*&v290[5], *(&v106 - 2));
      x = v295.origin.x;
      y = v295.origin.y;
      width = v295.size.width;
      height = v295.size.height;
      OutputValue = AGGraphGetOutputValue();
      if (v230 != v233 || !OutputValue)
      {
        v114 = *(&v291[16] + 8);
        *(v6 + 272) = *(&v291[15] + 8);
        *(v6 + 288) = v114;
        *(v6 + 304) = v108;
        v115 = *(&v291[9] + 8);
        *(v6 + 336) = *(&v291[8] + 8);
        *(v6 + 352) = v115;
        v201 = v108.y;
        v202 = v108.x;
        v199 = v109.height;
        v200 = v109.width;
        *(v6 + 320) = v109;
      }

      if (v227)
      {
        *(v6 + 456) = 0;
        *(v6 + 464) = 0;
        *(v6 + 472) = 1;
      }

      v310.origin.x = 0.0;
      v310.origin.y = 0.0;
      v310.size.width = 0.0;
      v310.size.height = 0.0;
      v296.origin = v108;
      v296.size = v109;
      LOBYTE(v37) = CGRectEqualToRect(v296, v310);
      if (one-time initialization token for v7 == -1)
      {
LABEL_105:
        v116 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          v117 = dyld_program_sdk_at_least();
          v118 = v234;
          v119 = v228;
          if ((v117 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v118 = v234;
          v119 = v228;
          if (static Semantics.forced < v116)
          {
LABEL_109:
            v297.origin.y = v193;
            v297.origin.x = v194;
            v297.size.height = v191;
            v297.size.width = v192;
            if (CGRectIsNull(v297))
            {
              goto LABEL_115;
            }

LABEL_114:
            *&v290[0] = *(v6 + 8);
            if ((AGGraphAnyInputsChanged() & 1) == 0)
            {
              v311.origin.x = 0.0;
              v311.origin.y = 0.0;
              v300.origin.y = v201;
              v300.origin.x = v202;
              v300.size.height = v199;
              v300.size.width = v200;
              v311.size.height = v179;
              v311.size.width = v180;
              v301 = CGRectIntersection(v300, v311);
              v161 = v301.origin.x;
              v162 = v301.origin.y;
              v163 = v301.size.width;
              v164 = v301.size.height;
              LOBYTE(v279) = 2;
              v301.origin.x = x;
              v301.origin.y = y;
              v301.size.width = width;
              v301.size.height = height;
              if (CGRectIsEmpty(v301))
              {
                if (v37)
                {
                  v121 = 0;
                  goto LABEL_124;
                }

                v120 = 1;
LABEL_116:
                v122 = AGGraphGetValue();
                v123 = MEMORY[0x1E69E7CC0];
                ++*(*v122 + 228);
                *&v254[0] = v123;
                v124 = *(MEMORY[0x1E695F050] + 16);
                *(v254 + 8) = *MEMORY[0x1E695F050];
                *(&v254[1] + 8) = v124;
                BYTE8(v254[2]) = 0;
                v255 = 0uLL;
                v256 = 0;
                if (v120)
                {
                  v125 = v181;
                  v181[4] = 0u;
                  v125[5] = 0u;
                  v125[2] = 0u;
                  v125[3] = 0u;
                  *v125 = 0u;
                  v125[1] = 0u;
                  *(*AGGraphGetValue() + 312) = 0;
                }

                else
                {
                  memcpy(v290, v291, 0x129uLL);
                  LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(v290, v254, &v245, &v244, *&MinY);
                }

                v126 = *(v6 + 96);
                AGGraphGetValue();
                v127 = AGGraphGetCurrentAttribute();
                if (v127 == v190)
                {
                  __break(1u);
                }

                v128 = v127;
                v129 = v256;
                v130 = v245.size.width;
                v131 = v245.size.height;

                LazyLayoutViewCache.commitPlacedSubviews(from:to:wasCancelled:context:containingSize:)(v126, v254, v129, v128, v130, v131);

                if (v120)
                {
                  v290[2] = v254[2];
                  v290[3] = v255;
                  LOBYTE(v290[4]) = v256;
                  v290[0] = v254[0];
                  v290[1] = v254[1];
                  outlined destroy of _LazyLayout_Placements(v290);
                  v132 = v234;
                  v133 = v235;
                }

                else
                {
                  *&v240 = DWORD1(v291[0]);
                  v134 = DWORD2(v291[0]);
                  KeyPath = swift_getKeyPath();
                  LODWORD(v279) = v134;
                  *(&v279 + 1) = KeyPath;
                  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentFetch<LazySubviewMinorSizingConfiguration>, &type metadata for LazySubviewMinorSizingConfiguration, type metadata accessor for EnvironmentFetch);
                  Hasher.init(_seed:)();
                  Hasher._combine(_:)(v134);
                  *&v269[0] = KeyPath;
                  type metadata accessor for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LazySubviewMinorSizingConfiguration>, &type metadata for EnvironmentValues, &type metadata for LazySubviewMinorSizingConfiguration, MEMORY[0x1E69E77A8]);

                  dispatch thunk of Hashable.hash(into:)();
                  Hasher._finalize()();
                  lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>);
                  lazy protocol witness table accessor for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<LazySubviewMinorSizingConfiguration> and conformance EnvironmentFetch<A>);
                  LOBYTE(v290[0]) = 0;
                  v136 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
                  v137 = *(v136 + 8);
                  v138 = *v136;

                  v132 = v234;
                  v139 = v235;
                  (*(v235 + 32))(v290, v234, v235);
                  LOWORD(v279) = v290[0];
                  SizingState.prepare(minorSizing:properties:viewSize:)(v138, v137, &v279, *&v241, *&v242);

                  v281 = v254[2];
                  v282 = v255;
                  LOBYTE(v283) = v256;
                  v279 = v254[0];
                  v280 = v254[1];
                  LODWORD(v269[0]) = v203;
                  v133 = v139;
                  PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(&v279, v269, x, y, width, height);
                  v290[2] = v281;
                  v290[3] = v282;
                  LOBYTE(v290[4]) = v283;
                  v290[0] = v279;
                  v290[1] = v280;
                  outlined destroy of _LazyLayout_Placements(v290);
                }

                v140 = *(v6 + 408);
                v141 = *(v6 + 376);
                v276 = *(v6 + 392);
                v277 = v140;
                v142 = *(v6 + 408);
                v278[0] = *(v6 + 424);
                *(v278 + 9) = *(v6 + 433);
                v143 = *(v6 + 344);
                v144 = *(v6 + 312);
                v272 = *(v6 + 328);
                v273 = v143;
                v145 = *(v6 + 344);
                v146 = *(v6 + 376);
                v274 = *(v6 + 360);
                v275 = v146;
                v147 = *(v6 + 280);
                v269[0] = *(v6 + 264);
                v269[1] = v147;
                v148 = *(v6 + 312);
                v150 = *(v6 + 264);
                v149 = *(v6 + 280);
                v270 = *(v6 + 296);
                v271 = v148;
                v265 = v276;
                v266 = v142;
                v267[0] = *(v6 + 424);
                *(v267 + 9) = *(v6 + 433);
                v261 = v272;
                v262 = v145;
                v263 = v274;
                v264 = v141;
                v257 = v150;
                v258 = v149;
                v259 = v270;
                v260 = v144;
                v151 = *(v6 + 96);
                memcpy(v290, v291, 0x129uLL);
                outlined init with copy of PositionState(v269, &v279);
                v152 = AGGraphGetValue();
                v153 = v189;
                v186(v189, v152, v132);
                PositionState.mainID<A>(subviews:context:layout:)(v151, v290, v132, v133, v268);
                v188(v153, v132);
                v287 = v265;
                v288 = v266;
                v289[0] = v267[0];
                *(v289 + 9) = *(v267 + 9);
                v283 = v261;
                v284 = v262;
                v285 = v263;
                v286 = v264;
                v279 = v257;
                v280 = v258;
                v281 = v259;
                v282 = v260;
                outlined destroy of PositionState(&v279);
                v154 = v268[0];
                v155 = v268[1];

                *(v6 + 416) = v154;
                *(v6 + 424) = v155;
                v119 = *(v6 + 96);
                v156 = *(v6 + 112);
                v241 = *(v6 + 128);
                v242 = v156;
                v157 = *AGGraphGetValue();
                v158 = v242;
                *(v157 + 248) = v241;
                *(v157 + 232) = v158;
                v121 = 1;
                v118 = v132;
                goto LABEL_124;
              }

              if ((specialized getter of needsToPlace #1 in LazySubviewPlacements.updateValue()(&v279, v6, v118, v235, x, y, width, height, v161, v162, v163, v164) & 1) == 0)
              {
                v302.origin.x = x;
                v302.origin.y = y;
                v302.size.width = width;
                v302.size.height = height;
                *&v242 = CGRectGetMinX(v302);
                v166 = v184;
                v165 = v185;
                v303.origin.x = v185;
                v303.origin.y = v184;
                v168 = v182;
                v167 = v183;
                v303.size.width = v183;
                v303.size.height = v182;
                *&v241 = CGRectGetMinX(v303);
                v304.origin.x = v165;
                v304.origin.y = v166;
                v304.size.width = v167;
                v304.size.height = v168;
                *&v240 = CGRectGetMaxX(v304);
                v305.origin.x = x;
                v305.origin.y = y;
                v305.size.width = width;
                v305.size.height = height;
                MaxX = CGRectGetMaxX(v305);
                v306.origin.x = x;
                v306.origin.y = y;
                v306.size.width = width;
                v306.size.height = height;
                *&v239 = CGRectGetMinY(v306);
                v307.origin.x = v165;
                v307.origin.y = v166;
                v307.size.width = v167;
                v307.size.height = v168;
                MinY = CGRectGetMinY(v307);
                v308.origin.x = v165;
                v308.origin.y = v166;
                v308.size.width = v167;
                v308.size.height = v168;
                MaxY = CGRectGetMaxY(v308);
                v309.origin.x = x;
                v309.origin.y = y;
                v309.size.width = width;
                v309.size.height = height;
                v170 = CGRectGetMaxY(v309);
                v171 = *(v6 + 96);
                v172 = *(**AGGraphGetValue() + 360);

                v174 = v172(v173);

                if (v174)
                {
                  v175 = height / 3.0;
                  if (*&v240 - MaxX < width / 3.0)
                  {
                    v176 = (2 * (*&v242 - *&v241 < width / 3.0)) | 8;
                  }

                  else
                  {
                    v176 = 2 * (*&v242 - *&v241 < width / 3.0);
                  }

                  if (*&v239 - MinY < v175)
                  {
                    ++v176;
                  }

                  if (MaxY - v170 < v175)
                  {
                    v177 = v176 | 4;
                  }

                  else
                  {
                    v177 = v176;
                  }

                  v119 = *(v6 + 96);
                  v121 = 0;
                  *(*AGGraphGetValue() + 312) = v177;
                  v118 = v234;
                }

                else
                {
                  v121 = 0;
                  v118 = v234;
                  v119 = v171;
                }

LABEL_124:
                *&v279 = v119;

                if (*(*AGGraphGetValue() + 341) == 1 && ((*(v235 + 32))(v290, v118, v235), v159 = LOBYTE(v290[0]), LOBYTE(v290[0])) && v203)
                {
                  v160 = LOBYTE(v290[0]) & (v203 << 30 >> 31);
                  v290[4] = v251;
                  v290[5] = v252;
                  v290[6] = v253;
                  v290[0] = v247;
                  v290[1] = v248;
                  v290[2] = v249;
                  v290[3] = v250;
                  Array<A>.pinSectionHeadersAndFooters(in:headerAxes:footerAxes:)(v290, (v203 << 31 >> 31) & v159, v160);
                  AGGraphGetValue();

                  LazyLayoutViewCache.updatePrefetchPhases()();
                }

                else
                {
                  AGGraphGetValue();

                  LazyLayoutViewCache.updatePrefetchPhases()();

                  if ((v121 & 1) == 0 && AGGraphGetOutputValue())
                  {
                    goto LABEL_131;
                  }
                }

                *&v290[0] = v279;
                AGGraphSetOutputValue();
LABEL_131:

                $defer #1 <A>() in LazySubviewPlacements.updateValue()(v6, &v245, &v244, v291);

                return;
              }
            }

LABEL_115:
            v120 = 0;
            v121 = 0;
            if (v37)
            {
              goto LABEL_124;
            }

            goto LABEL_116;
          }
        }

        v298.origin.y = v197;
        v298.origin.x = v198;
        v298.size.height = v195;
        v298.size.width = v196;
        if (CGRectIsNull(v298))
        {
          goto LABEL_115;
        }

        v299.origin.y = v184;
        v299.origin.x = v185;
        v299.size.height = v182;
        v299.size.width = v183;
        if (CGRectIsNull(v299))
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }
    }

    swift_once();
    goto LABEL_105;
  }

  AGGraphCancelUpdate();
}

void *LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[1];
  v47 = *a1;
  v48 = v6;
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = a1[16];
  v44 = a1[15];
  v45 = v9;
  v46[0] = a1[17];
  *(v46 + 9) = *(a1 + 281);
  v10 = a1[12];
  v40 = a1[11];
  v41 = v10;
  v11 = a1[14];
  v42 = a1[13];
  v43 = v11;
  v12 = a1[8];
  v36 = a1[7];
  v37 = v12;
  v13 = a1[10];
  v38 = a1[9];
  v39 = v13;
  v14 = a1[4];
  v32 = a1[3];
  v33 = v14;
  v15 = a1[6];
  v34 = a1[5];
  v35 = v15;
  v16 = *(v3 + 48);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v16, *&__src[0]);
  if (!v17)
  {
    goto LABEL_4;
  }

  if (*(v17 + 76) == 255)
  {
    goto LABEL_4;
  }

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v16) == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_4;
  }

  _sSay7SwiftUI25_LazyLayout_PlacedSubviewVGMaTm_0(0, &lazy cache variable for type metadata for ScrollTargetRole.Role?, &type metadata for ScrollTargetRole.Role, MEMORY[0x1E69E6720]);
  v19 = *AGGraphGetValue();
  if ((v19 & 0xFE) == 2 || (v19 & 1) != 0 || v7 == 0.0 || v8 == 0.0)
  {
    goto LABEL_4;
  }

  v20 = *(v3 + 96);
  if (!*(v20 + 16))
  {
    type metadata accessor for LazyLayoutViewCache();
    AGGraphGetValue();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, __src);

    v25 = *(&__src[1] + 1);
    v26 = *&__src[2];
    __swift_project_boxed_opaque_existential_1(__src, *(&__src[1] + 1));
    v27 = (*(v26 + 40))(v25, v26);
    if (v27)
    {
      v28 = v27;
      if ((*(*v27 + 88))(v27))
      {
        (*(*v28 + 96))(&v29, 0);

        v23 = v29;
        v22 = v30;
        __swift_destroy_boxed_opaque_existential_1(__src);
        goto LABEL_11;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_4:
    _s7SwiftUI28_LazyLayout_PlacementContextVSgWOi0_(__src);
    return memcpy(a3, __src, 0x129uLL);
  }

  v21 = *(v20 + 32);
  v23 = *(v21 + 144);
  v22 = *(v21 + 152);

LABEL_11:
  __src[0] = v47;
  __src[1] = v48;
  *&__src[2] = v7;
  *(&__src[2] + 1) = v8;
  *(&__src[17] + 9) = *(v46 + 9);
  __src[15] = v44;
  __src[16] = v45;
  __src[17] = v46[0];
  __src[11] = v40;
  __src[12] = v41;
  __src[13] = v42;
  __src[14] = v43;
  __src[7] = v36;
  __src[8] = v37;
  __src[9] = v38;
  __src[10] = v39;
  __src[3] = v32;
  __src[4] = v33;
  __src[5] = v34;
  __src[6] = v35;
  v29 = v23;
  v30 = v22;
  LazySubviewPlacements.makeIDPlacementContextIfNeeded(_:matchingID:)(__src, &v29, a2, a3);
}

uint64_t closure #1 in LazySubviewPlacements.placeSubviews(placementContext:in:nearestVisibleRect:containingVisibleRect:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *(type metadata accessor for LazySubviewPlacements() + 16);
  Value = AGGraphGetValue();
  (*(*(v13 - 8) + 16))(v12, Value, v13);
  type metadata accessor for LazyLayoutViewCache();
  AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v16 = result;

    LazyLayoutViewCache.subviews(context:)(v16, v19);

    memcpy(v18, a3, 0x129uLL);
    (*(a6 + 64))(v19, v18, a1, v17, a5, a6);
    outlined destroy of _LazyLayout_Subviews(v19);
    return (*(v10 + 8))(v12, a5);
  }

  return result;
}

uint64_t type metadata completion function for StackPlacement()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MinorProperties();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for EstimationCache();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

char *initializeWithCopy for EstimationCache(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(double *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_11:
    v17 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v18 = *(*(a1 + 48) + v17);
    v19 = *(*(a1 + 56) + v17);
    v37[0] = v18;
    v37[1] = v19;
    a2(v36, v37);
    v20 = v36[0];
    v21 = v36[1];
    v22 = *a5;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v36[0]);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_23;
    }

    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        v32 = v23;
        specialized _NativeDictionary.copy()();
        v23 = v32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, a4 & 1);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_26;
      }
    }

    v31 = *a5;
    if (v29)
    {
      v13 = (v31[7] + 8 * v23);
      v15 = *v13 + *&v21;
      if (__OFADD__(*v13, *&v21))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v31[(v23 >> 6) + 8] |= 1 << v23;
      *(v31[6] + 8 * v23) = v20;
      *(v31[7] + 8 * v23) = v21;
      v14 = v31[2];
      v13 = v31 + 2;
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }
    }

    v10 &= v10 - 1;
    *v13 = v15;
    a4 = 1;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
    }

    v10 = *(v7 + 8 * v16);
    ++v12;
    if (v10)
    {
      v12 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  return sub_18D3ACF34(a1, a2, a3, a4, a5);
}

void type metadata accessor for Logger?()
{
  if (!lazy cache variable for type metadata for Logger?)
  {
    type metadata accessor for Logger();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Logger?);
    }
  }
}

uint64_t outlined destroy of EstimationCache(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [_LazyLayout_Subview](255, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE022LazySubviewMinorSizingV033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LazySubviewMinorSizingKey>, &type metadata for EnvironmentValues.LazySubviewMinorSizingKey, &protocol witness table for EnvironmentValues.LazySubviewMinorSizingKey, type metadata accessor for EnvironmentPropertyKey);
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

void PlacementState.update(placements:visibleRect:pinnedSubviews:sizingState:)(uint64_t *a1, int *a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v7 = v6;
  r2.origin.x = a3;
  v10 = *a1;
  v118 = *(a1 + 2);
  v119 = *(a1 + 1);
  v116 = *(a1 + 4);
  v117 = *(a1 + 3);
  v135 = *(a1 + 64);
  v128 = *a2;

  *v6 = v10;
  v11 = *(*&v10 + 16);
  v12 = (v6 + 1);
  v13 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v13 + 3) >> 1)
  {
    if (*(v13 + 2) <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = *(v13 + 2);
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 0, v13);
  }

  *v12 = v13;
  v16 = *(*&v10 + 16);
  x = r2.origin.x;
  if (v16 - *(v13 + 2) < 0)
  {
    specialized RangeReplaceableCollection<>.removeLast(_:)(*(v13 + 2) - v16);
    x = r2.origin.x;
    v16 = *(*&v10 + 16);
  }

  v19 = *MEMORY[0x1E695F050];
  v18 = *(MEMORY[0x1E695F050] + 8);
  v20 = *(MEMORY[0x1E695F050] + 16);
  v21 = *(MEMORY[0x1E695F050] + 24);
  if (v16)
  {
    v115 = v7;
    v22 = 0;
    v23 = (*&v10 + 32);
    v114 = (v7 + 1);
    v24 = *v12;
    v132 = v16 - 1;
    v142 = *MEMORY[0x1E698D3F8];
    v122 = *(MEMORY[0x1E695F050] + 8);
    v123 = *MEMORY[0x1E695F050];
    v25 = *MEMORY[0x1E695F050];
    v26 = v122;
    v120 = *(MEMORY[0x1E695F050] + 24);
    v121 = *(MEMORY[0x1E695F050] + 16);
    v27 = v121;
    v28 = v120;
    v127 = x;
    v125 = a5;
    y = a4;
    height = a6;
    v143 = a6;
    v130 = a5;
    while (1)
    {
      v146 = *v23;
      v29 = v23[1];
      v30 = v23[2];
      v31 = v23[4];
      v149 = v23[3];
      v150 = v31;
      v147 = v29;
      v148 = v30;
      v32 = v146;
      v138 = v27;
      v140 = v28;
      v136 = v25;
      if (*(v146 + 44) == v142)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v146, &r2.origin.y);
        Value = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          Value = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v146, &r2.origin.y);
        Value = AGGraphGetValue();
      }

      v34 = *Value;
      v35 = *(&v146 + 1);
      v36 = v147;
      v37 = *(&v147 + 1);
      v38 = v148;
      v39 = *(&v148 + 1);
      v41 = v149;
      v40 = *&v150;
      v42 = one-time initialization token for lockAssertionsAreEnabled;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
LABEL_103:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }
      }

      r2.origin.y = v35;
      LOBYTE(r2.size.width) = v36;
      r2.size.height = v37;
      v145 = v38;
      v44 = (*(*v34 + 120))(&r2.origin.y);
      v46 = v45;

      if (*(v32 + 44) == v142)
      {
        v47 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v47 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v47 = AGGraphGetValue();
      }

      v48 = *v47;
      if (v43)
      {
        v49 = one-time initialization token for _lock;

        if (v49 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_103;
        }
      }

      else
      {
      }

      v50 = *(&v41 + 1) - v39 * v44;
      v51 = v40 - *&v41 * v46;
      r2.origin.y = v35;
      LOBYTE(r2.size.width) = v36;
      r2.size.height = v37;
      v145 = v38;
      v52 = (*(*v48 + 120))(&r2.origin.y);
      v54 = v53;

      SizingState.update(subviewFrame:)(v50, v51, v52, v54);
      v55 = *(v24 + 2);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      if (v22 >= v55)
      {
        v57 = v143;
        v27 = v138;
        v58 = v140;
        if ((v56 & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55 + 1, 1, v24);
        }

        v59 = *(v24 + 2);
        v60 = *(v24 + 3);
        if (v59 >= v60 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v59 + 1, 1, v24);
        }

        *(v24 + 2) = v59 + 1;
      }

      else
      {
        v57 = v143;
        v27 = v138;
        v58 = v140;
        if (v56)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          if ((v22 & 0x8000000000000000) != 0)
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }
        }

        v59 = v22;
        if (v22 >= *(v24 + 2))
        {
          goto LABEL_102;
        }
      }

      v61 = &v24[32 * v59];
      v61[4] = v50;
      v61[5] = v51;
      v61[6] = v52;
      v61[7] = v54;
      v62 = v135;
      if (v52 == 0.0)
      {
        v62 = 1;
      }

      if ((v62 & 1) != 0 || v54 == 0.0)
      {
LABEL_53:
        v63 = v136;
        goto LABEL_92;
      }

      if (*(v32 + 173))
      {
        if (*(v32 + 174))
        {
          if ((v128 & 3) == 0)
          {
            goto LABEL_54;
          }
        }

        else if ((v128 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if ((*(v32 + 174) & ((v128 & 2) >> 1) & 1) == 0)
      {
        goto LABEL_54;
      }

      v151.origin.x = v50;
      v151.origin.y = v51;
      v151.size.width = v52;
      v151.size.height = v54;
      v178.origin.x = r2.origin.x;
      v178.size.width = v130;
      v178.origin.y = a4;
      v178.size.height = v57;
      v152 = CGRectIntersection(v151, v178);
      if (CGRectIsEmpty(v152))
      {
        goto LABEL_53;
      }

LABEL_54:
      v153.origin.x = v136;
      v153.origin.y = v26;
      v153.size.width = v27;
      v153.size.height = v58;
      IsNull = CGRectIsNull(v153);
      v65 = v50;
      v133 = v52;
      v134 = v51;
      v129 = v54;
      if (!IsNull)
      {
        v154.origin.x = v136;
        v154.origin.y = v26;
        v154.size.width = v27;
        v154.size.height = v58;
        v179.origin.x = v50;
        v179.origin.y = v51;
        v179.size.width = v52;
        v179.size.height = v54;
        *&v65 = CGRectUnion(v154, v179);
        v133 = v67;
        v134 = v66;
        v129 = v68;
      }

      v137 = v65;
      v155.origin.x = r2.origin.x;
      v155.origin.y = a4;
      v155.size.width = v130;
      v155.size.height = v143;
      MaxY = CGRectGetMaxY(v155);
      v156.origin.x = v50;
      v156.origin.y = v51;
      v156.size.width = v52;
      v156.size.height = v54;
      v139 = 0.0;
      v141 = 0.0;
      if (MaxY <= CGRectGetMaxY(v156))
      {
        v157.origin.x = r2.origin.x;
        v157.origin.y = a4;
        v157.size.width = v130;
        v157.size.height = v143;
        v70 = CGRectGetMaxY(v157);
        v158.origin.x = v50;
        v158.origin.y = v51;
        v158.size.width = v52;
        v158.size.height = v54;
        v141 = v70 - CGRectGetMinY(v158);
      }

      v159.origin.x = r2.origin.x;
      v159.origin.y = a4;
      v159.size.width = v130;
      v159.size.height = v143;
      MaxX = CGRectGetMaxX(v159);
      v160.origin.x = v50;
      v160.origin.y = v51;
      v160.size.width = v52;
      v160.size.height = v54;
      if (MaxX <= CGRectGetMaxX(v160))
      {
        v161.origin.x = r2.origin.x;
        v161.origin.y = a4;
        v161.size.width = v130;
        v161.size.height = v143;
        v72 = CGRectGetMaxX(v161);
        v162.origin.x = v50;
        v162.origin.y = v51;
        v162.size.width = v52;
        v162.size.height = v54;
        v139 = v72 - CGRectGetMinX(v162);
      }

      v163.origin.x = r2.origin.x;
      v163.origin.y = a4;
      v163.size.width = v130;
      v163.size.height = v143;
      MinY = CGRectGetMinY(v163);
      v164.origin.x = v50;
      v164.origin.y = v51;
      v164.size.width = v52;
      v164.size.height = v54;
      v74 = 0.0;
      if (CGRectGetMinY(v164) <= MinY)
      {
        v165.origin.x = v50;
        v165.origin.y = v51;
        v165.size.width = v52;
        v165.size.height = v54;
        v75 = CGRectGetMaxY(v165);
        v166.size.height = v143;
        v166.origin.x = r2.origin.x;
        v166.origin.y = a4;
        v166.size.width = v130;
        v74 = v75 - CGRectGetMinY(v166);
      }

      v167.size.height = v143;
      v167.origin.x = r2.origin.x;
      v167.origin.y = a4;
      v167.size.width = v130;
      MinX = CGRectGetMinX(v167);
      v168.origin.x = v50;
      v168.origin.y = v51;
      v168.size.width = v52;
      v168.size.height = v54;
      if (CGRectGetMinX(v168) <= MinX)
      {
        v169.origin.x = v50;
        v169.origin.y = v51;
        v169.size.width = v52;
        v169.size.height = v54;
        v81 = CGRectGetMaxX(v169);
        v170.size.height = v143;
        v170.origin.x = r2.origin.x;
        v170.origin.y = a4;
        v170.size.width = v130;
        v77 = v81 - CGRectGetMinX(v170);
        v78 = v74;
        if (v74 != 0.0)
        {
          v82 = r2.origin.x;
          v80 = v139;
          v83 = v141;
LABEL_73:
          v85 = v130;
          v84 = a4;
          v86 = a4;
          v87 = v130;
          v88 = v143;
          v89 = v143;
          v90 = v82;
          v91 = CGRectIsNull(*&v82);
          v92 = v90;
          if (!v91)
          {
            v171.size.height = v143;
            v171.origin.x = r2.origin.x;
            v171.size.width = v130;
            v171.origin.y = a4;
            v172 = CGRectStandardize(v171);
            v93 = v77 == v80 ? v80 : v77;
            v94 = v93 + v172.origin.x;
            v95 = v78;
            v96 = v78 + v172.origin.y;
            v97 = v172.size.width - (v80 + v77);
            v98 = v172.size.height - (v83 + v95);
            v173.origin.x = v94;
            v173.origin.y = v96;
            v173.size.width = v97;
            v173.size.height = v98;
            Width = CGRectGetWidth(v173);
            v84 = v122;
            v92 = v123;
            v88 = v120;
            v85 = v121;
            if (Width >= 0.0)
            {
              v174.origin.x = v94;
              v174.origin.y = v96;
              v174.size.width = v97;
              v174.size.height = v98;
              v100 = CGRectGetHeight(v174) < 0.0;
              if (v100)
              {
                v92 = v123;
              }

              else
              {
                v92 = v94;
              }

              if (v100)
              {
                v84 = v122;
              }

              else
              {
                v84 = v96;
              }

              if (v100)
              {
                v85 = v121;
              }

              else
              {
                v85 = v97;
              }

              if (v100)
              {
                v88 = v120;
              }

              else
              {
                v88 = v98;
              }
            }
          }

          v175.origin.y = y;
          v175.origin.x = v127;
          v175.size.height = height;
          v175.size.width = v125;
          v101 = v84;
          v102 = v85;
          v103 = v88;
          v176 = CGRectIntersection(v175, *&v92);
          y = v176.origin.y;
          v127 = v176.origin.x;
          height = v176.size.height;
          v125 = v176.size.width;
          v63 = v137;
          v27 = v133;
          v26 = v134;
          goto LABEL_91;
        }

        v27 = v133;
        v26 = v134;
        v80 = v139;
        v83 = v141;
        if (v77 != 0.0)
        {
          v82 = r2.origin.x;
          goto LABEL_73;
        }
      }

      else
      {
        v77 = 0.0;
        v78 = v74;
        v79 = v74 == 0.0;
        v27 = v133;
        v26 = v134;
        v80 = v139;
        if (!v79)
        {
          v82 = r2.origin.x;
          v83 = v141;
          goto LABEL_73;
        }

        v83 = v141;
      }

      v82 = r2.origin.x;
      if (v83 != 0.0 || v80 != 0.0)
      {
        goto LABEL_73;
      }

      v63 = v137;
LABEL_91:
      v58 = v129;
LABEL_92:
      outlined destroy of _LazyLayout_PlacedSubview(&v146);
      if (v132 == v22)
      {
        v104 = v58;
        v105 = v63;
        v7 = v115;
        *v114 = v24;
        v18 = v122;
        v19 = v123;
        v21 = v120;
        v20 = v121;
        goto LABEL_98;
      }

      v23 += 5;
      ++v22;
      v25 = v63;
      v28 = v58;
    }
  }

  v105 = *MEMORY[0x1E695F050];
  v26 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v104 = *(MEMORY[0x1E695F050] + 24);
  v127 = x;
  v125 = a5;
  y = a4;
  height = a6;
LABEL_98:
  v106 = v19;
  v107 = v19;
  v108 = v18;
  v109 = v20;
  v110 = v21;
  v111 = v18;
  v112 = v20;
  v113 = v21;
  if ((v135 & 1) == 0)
  {
    v177.origin.y = y;
    v177.origin.x = v127;
    v177.size.height = height;
    v177.size.width = v125;
    v106 = v105;
    v180.origin.x = v105;
    v180.origin.y = v26;
    v180.size.width = v27;
    v110 = v104;
    v180.size.height = v104;
    *(&v18 - 1) = CGRectIntersection(v177, v180);
    v108 = v26;
    v109 = v27;
    v111 = v118;
    v19 = v119;
    v113 = v116;
    v112 = v117;
  }

  *(v7 + 6) = v107;
  *(v7 + 7) = v18;
  *(v7 + 8) = v20;
  *(v7 + 9) = v21;
  *(v7 + 2) = v106;
  *(v7 + 3) = v108;
  *(v7 + 4) = v109;
  *(v7 + 5) = v110;
  *(v7 + 10) = v19;
  *(v7 + 11) = v111;
  *(v7 + 12) = v112;
  *(v7 + 13) = v113;
}