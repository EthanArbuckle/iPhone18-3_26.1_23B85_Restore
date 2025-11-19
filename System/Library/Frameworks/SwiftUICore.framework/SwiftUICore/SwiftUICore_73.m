uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)()
{
  v66 = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v49 = v0;
  v50 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v51 = &v41[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v41[-v4];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v5 = static Signpost.bodyInvoke;
    v6 = word_1ED539040;
    v7 = HIBYTE(word_1ED539040);
    v8 = byte_1ED539042;
    v9 = static os_signpost_type_t.begin.getter();
    v61 = v5;
    v62 = v6;
    v63 = v7;
    v64 = v8;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v48 = *(&v5 + 1);
    LODWORD(v52) = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18DDAB4C0;
    v11 = AGTypeID.description.getter();
    v13 = v12;
    v14 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v15 = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 64) = v15;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v16 = specialized static Tracing.libraryName(defining:)();
    *(v10 + 96) = v14;
    *(v10 + 104) = v15;
    *(v10 + 72) = v16;
    *(v10 + 80) = v17;
    v53 = v10;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v7)
    {
      v60 = v52;
      v58 = _signpostLog;
      v59 = &dword_18D018000;
      *&v61 = v5;
      *(&v61 + 1) = v48;
      v62 = v6;
      v55 = "%{public}@.body [in %{public}@]";
      v56 = 31;
      v57 = 2;
      v54 = v53;
      v18 = v42;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v50 + 8))(v18, v49);
LABEL_34:

      break;
    }

    if (v5 == 20)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v20 = bswap32(v5) | (4 * WORD1(v5));
    v21 = v52;
    v22 = v50 + 16;
    v43 = *(v50 + 16);
    v23 = v43(v51, v42, v49);
    v24 = 0;
    LOBYTE(v55) = 1;
    v50 = v22;
    v47 = 16 * *(&v5 + 1);
    v48 = (v22 - 8);
    v46 = v53 + 32;
    v45 = v5;
    v44 = *(&v5 + 1);
LABEL_11:
    v52 = v41;
    MEMORY[0x1EEE9AC00](v23);
    v26 = &v41[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v27 = v26 + 8;
    v28 = v19;
    v29 = v26 + 8;
    do
    {
      *(v29 - 1) = 0;
      *v29 = 0;
      v29 += 16;
      --v28;
    }

    while (v28);
    v30 = v46 + 40 * v24;
    while (1)
    {
      v31 = *(v53 + 16);
      if (v24 == v31)
      {
        LOBYTE(v55) = 0;
LABEL_19:
        v34 = v45;
        if (v45 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v26[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v26[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v34 != 20 && v26[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v35 = v49;
        v36 = *v48;
        v37 = v51;
        (*v48)(v51, v49);
        v38 = __swift_project_value_buffer(v35, static OSSignpostID.continuation);
        v23 = v43(v37, v38, v35);
        v19 = v44;
        if ((v55 & 1) == 0)
        {
          v39 = v49;
          v36(v51, v49);
          v36(v42, v39);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v24 >= v31)
      {
        break;
      }

      ++v24;
      outlined init with copy of AnyTrackedValue(v30, &v61);
      v32 = v65;
      __swift_project_boxed_opaque_existential_1(&v61, v65);
      *(v27 - 1) = CVarArg.kdebugValue(_:)(v20 | v21, v32);
      *v27 = v33 & 1;
      v27 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v61);
      v30 += 40;
      if (!--v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  LOWORD(v61) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(double a1, uint64_t a2, void (*a3)(void))
{
  v47 = a3;
  v72 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v9 = static Signpost.bodyInvoke;
  v10 = word_1ED539040;
  v11 = HIBYTE(word_1ED539040);
  v12 = byte_1ED539042;
  v13 = static os_signpost_type_t.begin.getter();
  v67 = v9;
  v68 = v10;
  v69 = v11;
  v70 = v12;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v58) = v13;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    v59 = v14;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v11)
      {
LABEL_6:
        v66 = v58;
        v64 = _signpostLog;
        v65 = &dword_18D018000;
        v67 = v9;
        v68 = v10;
        v61 = "%{public}@.body [in %{public}@]";
        v62 = 31;
        v63 = 2;
        v60 = v59;
        v22 = v48;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v55 + 8))(v22, v54);
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      if (v11)
      {
        goto LABEL_6;
      }
    }

    if (v9 == 20)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    v24 = bswap32(v9) | (4 * WORD1(v9));
    v25 = v58;
    v26 = v55 + 16;
    v49 = *(v55 + 16);
    v27 = v49(v56, v48, v54);
    v28 = 0;
    LOBYTE(v61) = 1;
    v58 = v23;
    v55 = v26;
    v52 = 16 * v23;
    v53 = (v26 - 8);
    v51 = v59 + 32;
    v50 = v9;
    do
    {
      v57 = &v46;
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = v30 + 8;
      v32 = v58;
      v33 = v30 + 8;
      do
      {
        *(v33 - 1) = 0;
        *v33 = 0;
        v33 += 16;
        --v32;
      }

      while (v32);
      v34 = v51 + 40 * v28;
      v35 = v58;
      while (1)
      {
        v36 = *(v59 + 16);
        if (v28 == v36)
        {
          break;
        }

        if (v28 >= v36)
        {
          __break(1u);
        }

        ++v28;
        outlined init with copy of AnyTrackedValue(v34, &v67);
        v37 = v71;
        __swift_project_boxed_opaque_existential_1(&v67, v71);
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v24 | v25, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v67);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v61) = 0;
LABEL_20:
      v39 = v50;
      if (v50 == 20)
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

      v40 = v54;
      v41 = *v53;
      v42 = v56;
      (*v53)(v56, v54);
      v43 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
      v27 = v49(v42, v43, v40);
    }

    while ((v61 & 1) != 0);
    v44 = v54;
    v41(v56, v54);
    v41(v48, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  AGGraphSetUpdate();
  *&v67 = a1;
  WORD4(v67) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  v47(0);
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(int a1, void *a2, void *a3)
{
  v55 = a3;
  v56 = a2;
  v54 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v64 = v3;
  v65 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53[-v7];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v76 = v8;
    v77 = v9;
    v78 = v10;
    v79 = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v63 = *(&v8 + 1);
    LODWORD(v67) = v12;
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
    v68 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v10)
    {
      v75 = v67;
      v73 = _signpostLog;
      v74 = &dword_18D018000;
      *&v76 = v8;
      *(&v76 + 1) = v63;
      v77 = v9;
      v70 = "%{public}@.body [in %{public}@]";
      v71 = 31;
      v72 = 2;
      v69 = v68;
      v21 = v57;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v65 + 8))(v21, v64);
LABEL_34:

      break;
    }

    if (v8 == 20)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    v23 = bswap32(v8) | (4 * WORD1(v8));
    v24 = v67;
    v25 = v65 + 16;
    v58 = *(v65 + 16);
    v26 = v58(v66, v57, v64);
    v27 = 0;
    LOBYTE(v70) = 1;
    v62 = 16 * v22;
    v65 = v25;
    v63 = (v25 - 8);
    v61 = v68 + 32;
    v60 = *(&v8 + 1);
    v59 = v22;
LABEL_11:
    v67 = v53;
    MEMORY[0x1EEE9AC00](v26);
    v29 = &v53[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v30 = v29 + 8;
    v31 = v22;
    v32 = v29 + 8;
    do
    {
      *(v32 - 1) = 0;
      *v32 = 0;
      v32 += 16;
      --v31;
    }

    while (v31);
    v33 = v61 + 40 * v27;
    while (1)
    {
      v34 = *(v68 + 16);
      if (v27 == v34)
      {
        LOBYTE(v70) = 0;
LABEL_19:
        v37 = v60;
        if (v60 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v22 = v59;
        if (v29[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v29[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v37 != 20 && v29[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v38 = v64;
        v39 = *v63;
        v40 = v66;
        (*v63)(v66, v64);
        v41 = __swift_project_value_buffer(v38, static OSSignpostID.continuation);
        v26 = v58(v40, v41, v38);
        if ((v70 & 1) == 0)
        {
          v42 = v64;
          v39(v66, v64);
          v39(v57, v42);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v27 >= v34)
      {
        break;
      }

      ++v27;
      outlined init with copy of AnyTrackedValue(v33, &v76);
      v35 = v80;
      __swift_project_boxed_opaque_existential_1(&v76, v80);
      *(v30 - 1) = CVarArg.kdebugValue(_:)(v23 | v24, v35);
      *v30 = v36 & 1;
      v30 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v76);
      v33 += 40;
      if (!--v22)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  AGGraphClearUpdate();
  v43 = v54 & 1;
  if (v54)
  {
    v44 = 1.0;
  }

  else
  {
    v44 = 0.0;
  }

  type metadata accessor for ColorBox<CGColorRef>();
  v45 = swift_allocObject();
  v46 = v55;
  *(v45 + 16) = v55;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, type metadata accessor for FontBox);
  v47 = swift_allocObject();
  v48 = v56;
  *(v47 + 16) = v56;
  KeyPath = swift_getKeyPath();
  v50 = v46;
  v51 = v48;
  AGGraphSetUpdate();
  *&v76 = v44;
  *(&v76 + 1) = v45;
  v77 = v43;
  v80 = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
  v81 = 0;
  v82 = KeyPath;
  v83 = v47;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
  AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v5 = v4;
  v51 = a3;
  v53 = a2;
  v52 = a1;
  v81 = *MEMORY[0x1E69E9840];
  v60 = type metadata accessor for OSSignpostID();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v50 - v9;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = static Signpost.bodyInvoke;
    v11 = word_1ED539040;
    v12 = HIBYTE(word_1ED539040);
    v13 = byte_1ED539042;
    v14 = static os_signpost_type_t.begin.getter();
    v73 = v10;
    v74 = v11;
    v75 = v12;
    v76 = v13;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v63 = *(&v10 + 1);
    LODWORD(v64) = v14;
    v50[0] = a4;
    v50[1] = v5;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v5 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v5;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v20 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v5;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;
    v65 = v15;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v12)
    {
      v72 = v64;
      v70 = _signpostLog;
      v71 = &dword_18D018000;
      *&v73 = v10;
      *(&v73 + 1) = v63;
      v74 = v11;
      v67 = "%{public}@.body [in %{public}@]";
      v68 = 31;
      v69 = 2;
      v66 = v65;
      v22 = v54;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v61 + 8))(v22, v60);
LABEL_34:

      a4 = v50[0];
      break;
    }

    if (v10 == 20)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    v24 = bswap32(v10) | (4 * WORD1(v10));
    v25 = v64;
    v26 = v61 + 16;
    v55 = *(v61 + 16);
    v27 = v55(v62, v54, v60);
    v28 = 0;
    LOBYTE(v67) = 1;
    v64 = v23;
    v58 = 16 * v23;
    v61 = v26;
    v59 = (v26 - 8);
    v57 = v65 + 32;
    v56 = *(&v10 + 1);
LABEL_11:
    v63 = v50;
    MEMORY[0x1EEE9AC00](v27);
    a4 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = a4 + 8;
    v31 = v64;
    v32 = a4 + 8;
    do
    {
      *(v32 - 1) = 0;
      *v32 = 0;
      v32 += 16;
      --v31;
    }

    while (v31);
    v33 = v57 + 40 * v28;
    v34 = v64;
    while (1)
    {
      v35 = *(v65 + 16);
      if (v28 == v35)
      {
        LOBYTE(v67) = 0;
LABEL_19:
        v38 = v56;
        if (v56 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a4[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v38 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v39 = *v59;
        v40 = v62;
        v41 = v60;
        (*v59)(v62, v60);
        v42 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
        v27 = v55(v40, v42, v41);
        if ((v67 & 1) == 0)
        {
          v43 = v60;
          v39(v62, v60);
          v39(v54, v43);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v28 >= v35)
      {
        break;
      }

      ++v28;
      outlined init with copy of AnyTrackedValue(v33, &v73);
      v36 = v77;
      v5 = v78;
      __swift_project_boxed_opaque_existential_1(&v73, v77);
      *(v30 - 1) = CVarArg.kdebugValue(_:)(v24 | v25, v36);
      *v30 = v37 & 1;
      v30 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v73);
      v33 += 40;
      if (!--v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  AGGraphClearUpdate();
  v44 = v51 & 1;
  v45 = v52;
  v46 = v53;
  outlined copy of Text.Storage(v52, v53, v51 & 1);
  v47 = one-time initialization token for topLeading;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = static Alignment.topLeading;
  LOBYTE(v67) = v44;
  AGGraphSetUpdate();
  *&v73 = v45;
  *(&v73 + 1) = v46;
  v74 = v67;
  v77 = a4;
  v78 = closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  v79 = 0;
  v80 = v48;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>);
  AGGraphSetOutputValue();
  outlined consume of Text.Storage(v73, *(&v73 + 1), v74);
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(int a1, double a2, double a3, double a4)
{
  v50 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v49[-v11];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v12 = static Signpost.bodyInvoke;
    v13 = word_1ED539040;
    v14 = HIBYTE(word_1ED539040);
    v15 = byte_1ED539042;
    v16 = static os_signpost_type_t.begin.getter();
    v70 = v12;
    v71 = v13;
    v72 = v14;
    v73 = v15;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v60 = *(&v12 + 1);
    LODWORD(v61) = v16;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18DDAB4C0;
    v18 = AGTypeID.description.getter();
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v22 = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 64) = v22;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v23 = specialized static Tracing.libraryName(defining:)();
    *(v17 + 96) = v21;
    *(v17 + 104) = v22;
    *(v17 + 72) = v23;
    *(v17 + 80) = v24;
    v62 = v17;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v14)
    {
      v69 = v61;
      v67 = _signpostLog;
      v68 = &dword_18D018000;
      *&v70 = v12;
      *(&v70 + 1) = v60;
      v71 = v13;
      v64 = "%{public}@.body [in %{public}@]";
      v65 = 31;
      v66 = 2;
      v63 = v62;
      v25 = v51;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v58 + 8))(v25, v57);
LABEL_34:

      break;
    }

    if (v12 == 20)
    {
      v26 = 3;
    }

    else
    {
      v26 = 4;
    }

    v27 = bswap32(v12) | (4 * WORD1(v12));
    v28 = v61;
    v29 = v58 + 16;
    v52 = *(v58 + 16);
    v30 = v52(v59, v51, v57);
    v31 = 0;
    LOBYTE(v64) = 1;
    v61 = v26;
    v55 = 16 * v26;
    v58 = v29;
    v56 = (v29 - 8);
    v54 = v62 + 32;
    v53 = v12;
LABEL_11:
    v60 = v49;
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v49[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v34 = v33 + 8;
    v35 = v61;
    v36 = v33 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v37 = v54 + 40 * v31;
    v38 = v61;
    while (1)
    {
      v39 = *(v62 + 16);
      if (v31 == v39)
      {
        LOBYTE(v64) = 0;
LABEL_19:
        v42 = v53;
        if (v53 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v33[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v33[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v42 != 20 && v33[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v43 = *v56;
        v44 = v59;
        v45 = v57;
        (*v56)(v59, v57);
        v46 = __swift_project_value_buffer(v45, static OSSignpostID.continuation);
        v30 = v52(v44, v46, v45);
        if ((v64 & 1) == 0)
        {
          v47 = v57;
          v43(v59, v57);
          v43(v51, v47);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v31 >= v39)
      {
        break;
      }

      ++v31;
      outlined init with copy of AnyTrackedValue(v37, &v70);
      v40 = v74;
      __swift_project_boxed_opaque_existential_1(&v70, v74);
      *(v34 - 1) = CVarArg.kdebugValue(_:)(v27 | v28, v40);
      *v34 = v41 & 1;
      v34 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v70);
      v37 += 40;
      if (!--v38)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  *&v70 = a2;
  *(&v70 + 1) = a3;
  v71 = v50 & 1;
  v74 = *&a4;
  LOWORD(v75) = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  v49 = a4;
  v51 = a2;
  v48 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v57 = type metadata accessor for OSSignpostID();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = v47 - v7;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v8 = static Signpost.bodyInvoke;
  v9 = word_1ED539040;
  v10 = HIBYTE(word_1ED539040);
  v11 = byte_1ED539042;
  v12 = static os_signpost_type_t.begin.getter();
  v69 = v8;
  LOBYTE(v70) = v9;
  BYTE1(v70) = v10;
  BYTE2(v70) = v11;
  if (Signpost.isEnabled.getter())
  {
    v60 = *(&v8 + 1);
    LODWORD(v61) = v12;
    v47[0] = a3;
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
      v21 = v60;
      if (v10)
      {
LABEL_6:
        v66 = v61;
        v64 = _signpostLog;
        v65 = &dword_18D018000;
        *&v69 = v8;
        *(&v69 + 1) = v21;
        LOBYTE(v70) = v9;
        v67[0] = "%{public}@.body [in %{public}@]";
        v67[1] = 31;
        v68 = 2;
        v63 = v62;
        v22 = v50;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v58 + 8))(v22, v57);
LABEL_35:

        a3 = v47[0];
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v21 = v60;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    if (v8 == 20)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    v24 = bswap32(v8) | (4 * WORD1(v8));
    v25 = v61;
    v26 = v58 + 16;
    v52 = *(v58 + 16);
    v27 = v52(v59, v50, v57);
    v28 = 0;
    LOBYTE(v67[0]) = 1;
    v61 = v23;
    v55 = 16 * v23;
    v58 = v26;
    v56 = (v26 - 8);
    v54 = v62 + 32;
    v53 = v8;
    do
    {
      v60 = v47;
      MEMORY[0x1EEE9AC00](v27);
      v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
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
        outlined init with copy of AnyTrackedValue(v34, &v69);
        v37 = *(&v70 + 1);
        __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
        *(v31 - 1) = CVarArg.kdebugValue(_:)(v24 | v25, v37);
        *v31 = v38 & 1;
        v31 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v69);
        v34 += 40;
        if (!--v35)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v67[0]) = 0;
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

      v40 = *v56;
      v41 = v59;
      v42 = v57;
      (*v56)(v59, v57);
      v43 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v27 = v52(v41, v43, v42);
    }

    while ((v67[0] & 1) != 0);
    v44 = v57;
    v40(v59, v57);
    v40(v50, v44);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v45 = *(v48 + 16);
  v69 = *v48;
  v70 = v45;
  v71 = *(v48 + 32);
  v72 = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v48, v67, a3, v51, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  v49(0);
  AGGraphSetOutputValue();
}

uint64_t specialized EventListenerPhase.updateValue()()
{
  v1 = v0;
  v109[6] = *MEMORY[0x1E69E9840];
  result = specialized ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v108 = 0;
  memset(v107, 0, sizeof(v107));
  type metadata accessor for [EventID : EventType]();
  v3 = *AGGraphGetValue();
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v73 = v3;

  v9 = 0;
  v75 = v0;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v12 = v9;
LABEL_17:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v73 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      outlined init with copy of AnyTrackedValue(*(v73 + 56) + 40 * v14, &v87);
      *&v93[0] = v16;
      *(&v93[0] + 1) = v17;
      outlined init with take of AnyTrackedValue(&v87, &v93[1]);
LABEL_18:
      v104 = v93[0];
      v105[0] = v93[1];
      v105[1] = v93[2];
      v106 = v94;
      v18 = *&v93[0];
      if (!*&v93[0])
      {

        outlined init with copy of Scrollable?(v107, v93, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        if (!*(&v93[1] + 1))
        {
          outlined destroy of ViewList?(v93, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
          if (!AGGraphGetOutputValue())
          {
            v94 = 0uLL;
            v95 = 0uLL;
            memset(v93, 0, sizeof(v93));
            v96 = -256;
            outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
            v60 = 0;
            v49 = 0;
            v50 = 0;
            v52 = 0;
            v53 = 0;
            v61 = 0;
            v62 = 0;
            v63 = 0;
            v58 = 0;
            v59 = 0;
            v74 = 5;
            v51 = 1;
            goto LABEL_68;
          }

          v94 = 0uLL;
          v95 = 0uLL;
          memset(v93, 0, sizeof(v93));
          v96 = -256;
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
          return outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        }

        outlined init with take of AnyTrackedValue(v93, v101);
        if ((*(v1 + 20) & 1) == 0)
        {
          AGGraphClearUpdate();
          Value = AGGraphGetValue();
          v30 = v1;
          v31 = *Value;
          v32 = *(Value + 8);
          v34 = *(Value + 16);
          v33 = *(Value + 24);
          v35 = *(Value + 32);
          v36 = *(Value + 40);
          type metadata accessor for CGPoint(0);

          v37 = AGGraphGetValue();
          v38 = *v37;
          v39 = v37[1];
          result = AGGraphSetUpdate();
          v40 = *(v30 + 24);
          if (!v40)
          {
            __break(1u);
            return result;
          }

          v41 = *(v30 + 32);
          type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_18DDA6EB0;
          *(v42 + 32) = v40;
          *(v42 + 40) = v41;
          outlined init with copy of AnyTrackedValue(v101, v42 + 48);
          v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v42);
          swift_setDeallocating();
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v42 + 32, type metadata accessor for (EventID, EventType));
          swift_deallocClassInstance();
          *&v87 = v43;
          *&v93[0] = 1;
          memset(v93 + 8, 0, 32);
          BYTE8(v93[2]) = 2;
          v109[0] = v31;
          v109[1] = v32;
          *&v109[2] = v38;
          *&v109[3] = v39;
          *&v109[4] = v35 - (v38 - v34);
          *&v109[5] = v36 - (v39 - v33);

          specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v87, v93, v109);

          outlined destroy of GlassEntryView?(v93, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace, MEMORY[0x1E69E6720]);
          v44 = v87;
          if (*(v87 + 16))
          {
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
            if (v46)
            {
              outlined init with copy of AnyTrackedValue(*(v44 + 56) + 40 * v45, v93);

              __swift_destroy_boxed_opaque_existential_1(v101);
              outlined init with take of AnyTrackedValue(v93, v101);

              v1 = v75;
              goto LABEL_50;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

LABEL_50:
        outlined init with copy of AnyTrackedValue(v101, v93);
        SpatialEvent.init(_:)(v93, &v87);
        if (v88 == 1)
        {
          v94 = 0u;
          v95 = 0u;
          memset(v93, 0, sizeof(v93));
          v96 = -256;
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
          outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          v84 = v90;
          v85 = v91;
          LOBYTE(v86) = v92;
          v81 = v87;
          v82 = v88;
          v83 = v89;
          outlined destroy of GlassEntryView?(&v81, &lazy cache variable for type metadata for SpatialEvent?, &type metadata for SpatialEvent, MEMORY[0x1E69E6720]);
          return __swift_destroy_boxed_opaque_existential_1(v101);
        }

        v81 = v87;
        v82 = v88;
        v83 = v89;
        v84 = v90;
        v85 = v91;
        v48 = v92;
        LOBYTE(v86) = v92;
        v49 = *(&v87 + 1);
        v50 = *(&v88 + 1);
        v51 = v88;
        v53 = *(&v89 + 1);
        v52 = v89;
        v54 = v90;
        v68 = v91;
        v70 = v87;
        v56 = v102;
        v55 = v103;
        __swift_project_boxed_opaque_existential_1(v101, v102);
        (*(v55 + 8))(v80, v56, v55);
        v94 = 0u;
        v95 = 0u;
        memset(v93, 0, sizeof(v93));
        v96 = -256;
        outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
        if (LOBYTE(v80[0]) >= 2u)
        {
          if (LOBYTE(v80[0]) != 2)
          {
            outlined destroy of GlassEntryView?(&v81, &lazy cache variable for type metadata for SpatialEvent?, &type metadata for SpatialEvent, MEMORY[0x1E69E6720]);
            v60 = 0;
            v49 = 0;
            v51 = 0;
            v50 = 0;
            v52 = 0;
            v53 = 0;
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(&v68 + 1) = 0;
            v71 = 768;
            v74 = 4;
LABEL_67:
            __swift_destroy_boxed_opaque_existential_1(v101);
            v58 = *(&v68 + 1);
            v59 = v71;
            goto LABEL_68;
          }

          v57 = v48 | 0x200;
        }

        else
        {
          v57 = v48 | 0x100;
        }

        v71 = v57;
        v74 = 5;
        v60 = v70;
        v62 = *(&v54 + 1);
        v61 = v54;
        v63 = v68;
        goto LABEL_67;
      }

      v19 = *(&v104 + 1);
      outlined init with take of AnyTrackedValue(v105, &v81);
      v20 = *(&v82 + 1);
      v21 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
      (*(v21 + 24))(v93, v20, v21);
      if (*&v93[0])
      {
        break;
      }

      v1 = v75;
      v28 = *(v75 + 24);
      if (v28 && v18 == v28 && *(v75 + 32) == v19)
      {

        __swift_destroy_boxed_opaque_existential_1(&v81);
        v74 = 0;
        goto LABEL_66;
      }

      __swift_destroy_boxed_opaque_existential_1(&v81);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v1 = v75;
    if ((*(v75 + 21) & 1) == 0)
    {
      v22 = *(v75 + 24);
      if (!v22 || v18 != v22 || *(v75 + 32) != v19)
      {
        v23 = *(&v82 + 1);
        v24 = v83;
        __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
        v25 = *(v24 + 8);
        v26 = v24;
        v1 = v75;
        v25(v93, v23, v26);
        if (LOBYTE(v93[0]))
        {
          if (!*(v75 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
          {

            __swift_destroy_boxed_opaque_existential_1(&v81);
            v47 = 1;
            goto LABEL_65;
          }
        }
      }
    }

    outlined init with copy of AnyTrackedValue(&v81, v109);
    outlined init with copy of AnyTrackedValue(v109, v80);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v78, v101);
      outlined init with copy of AnyTrackedValue(v101, v77);
      SpatialEvent.init(_:)(v77, &v87);
      __swift_destroy_boxed_opaque_existential_1(v101);
      __swift_destroy_boxed_opaque_existential_1(v109);
      v93[2] = v89;
      v94 = v90;
      v95 = v91;
      LOBYTE(v96) = v92;
      v93[0] = v87;
      v93[1] = v88;
      outlined destroy of SpatialEvent(v93);
      v27 = *(v1 + 24);
      if (v27)
      {
        if (*(v1 + 32) != v19 || v18 != v27)
        {
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener);
          if (*AGGraphGetValue() != 1)
          {
            goto LABEL_64;
          }
        }

        outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
      }

      else
      {
        outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        *(v1 + 24) = v18;
        *(v1 + 32) = v19;
      }

      outlined init with copy of AnyTrackedValue(&v81, v107);
    }

    else
    {
      v79 = 0;
      memset(v78, 0, sizeof(v78));
      __swift_destroy_boxed_opaque_existential_1(v109);
      outlined destroy of ViewList?(v78, &lazy cache variable for type metadata for SpatialEventType?, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
      if (!*(v1 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<SpatialEvent>, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(&v81);
        v47 = 3;
        goto LABEL_65;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v81);
  }

  while (v7);
LABEL_7:
  if (v8 <= v9 + 1)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 - 1;
  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      v7 = 0;
      *&v94 = 0;
      v9 = v11;
      memset(v93, 0, sizeof(v93));
      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_64:

  __swift_destroy_boxed_opaque_existential_1(&v81);
  v47 = 2;
LABEL_65:
  v74 = v47;
LABEL_66:
  v94 = 0u;
  v95 = 0u;
  memset(v93, 0, sizeof(v93));
  v96 = -256;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v93, type metadata accessor for GesturePhase<SpatialEvent>?);
  v60 = 0;
  v49 = 0;
  v51 = 0;
  v50 = 0;
  v52 = 0;
  v53 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 768;
LABEL_68:
  v76 = v61;
  v69 = *(v1 + 24);
  *&v93[0] = v60;
  *(&v93[0] + 1) = v49;
  *&v93[1] = v51;
  *(&v93[1] + 1) = v50;
  *&v93[2] = v52;
  *(&v93[2] + 1) = v53;
  *&v94 = v61;
  *(&v94 + 1) = v62;
  *&v95 = v63;
  *(&v95 + 1) = v58;
  v96 = v59;
  v99 = v69;
  v100 = v74;
  v64 = v63;
  v65 = v58;
  v66 = v62;
  v67 = v59;
  v72 = v59;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<SpatialEvent>.Value, &type metadata for SpatialEvent, &protocol witness table for SpatialEvent, type metadata accessor for EventListenerPhase.Value);
  *&v81 = v60;
  *(&v81 + 1) = v49;
  *&v82 = v51;
  *(&v82 + 1) = v50;
  *&v83 = v52;
  *(&v83 + 1) = v53;
  *&v84 = v76;
  *(&v84 + 1) = v66;
  *&v85 = v64;
  *(&v85 + 1) = v65;
  v86 = v67;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(&v81, &v87, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GesturePhase);
  AGGraphSetOutputValue();
  *&v87 = v60;
  *(&v87 + 1) = v49;
  *&v88 = v51;
  *(&v88 + 1) = v50;
  *&v89 = v52;
  *(&v89 + 1) = v53;
  *&v90 = v76;
  *(&v90 + 1) = v66;
  *&v91 = v64;
  *(&v91 + 1) = v65;
  v92 = v72;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v87, type metadata accessor for GesturePhase<SpatialEvent>?);
  outlined destroy of ViewList?(v107, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  *&v93[0] = v60;
  *(&v93[0] + 1) = v49;
  *&v93[1] = v51;
  *(&v93[1] + 1) = v50;
  *&v93[2] = v52;
  *(&v93[2] + 1) = v53;
  *&v94 = v76;
  *(&v94 + 1) = v66;
  *&v95 = v64;
  *(&v95 + 1) = v65;
  v96 = v72;
  v97 = v101[0];
  v98 = WORD2(v101[0]);
  v99 = v69;
  v100 = v74;
  return outlined destroy of EventListenerPhase<SpatialEvent>.Value(v93);
}

{
  v1 = v0;
  v91 = *MEMORY[0x1E69E9840];
  result = specialized ResettableGestureRule.resetIfNeeded()();
  if ((result & 1) == 0)
  {
    return result;
  }

  v90 = 0;
  memset(v89, 0, sizeof(v89));
  type metadata accessor for [EventID : EventType]();
  v3 = *AGGraphGetValue();
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v67 = v3;

  v9 = 0;
  v10 = &lazy cache variable for type metadata for TappableEventType;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v13 = v9;
LABEL_17:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(v67 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      outlined init with copy of AnyTrackedValue(*(v67 + 56) + 40 * v15, &v82);
      *&v85 = v17;
      *(&v85 + 1) = v18;
      outlined init with take of AnyTrackedValue(&v82, &v86);
LABEL_18:
      *v79 = v85;
      *&v79[16] = v86;
      *&v79[32] = v87;
      v80 = v88;
      v19 = v85;
      if (!v85)
      {

        outlined init with copy of Scrollable?(v89, v79, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        if (!*&v79[24])
        {
          outlined destroy of ViewList?(v79, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
          OutputValue = AGGraphGetOutputValue();
          outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
          if (!OutputValue)
          {
            v56 = 0;
            v58 = 0;
            v64 = 0;
            v63 = 5;
            v54 = 1;
            goto LABEL_67;
          }

          return outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        }

        outlined init with take of AnyTrackedValue(v79, &v82);
        if ((*(v1 + 20) & 1) == 0)
        {
          AGGraphClearUpdate();
          Value = AGGraphGetValue();
          v38 = *Value;
          v39 = *(Value + 8);
          v41 = *(Value + 16);
          v40 = *(Value + 24);
          v42 = *(Value + 32);
          v43 = *(Value + 40);
          type metadata accessor for CGPoint(0);

          v44 = AGGraphGetValue();
          v45 = *v44;
          v46 = v44[1];
          result = AGGraphSetUpdate();
          v47 = *(v1 + 24);
          if (!v47)
          {
            __break(1u);
            return result;
          }

          v48 = *(v1 + 32);
          type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_18DDA6EB0;
          *(v49 + 32) = v47;
          *(v49 + 40) = v48;
          outlined init with copy of AnyTrackedValue(&v82, v49 + 48);
          v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v49);
          swift_setDeallocating();
          outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v49 + 32, type metadata accessor for (EventID, EventType));
          swift_deallocClassInstance();
          v74 = v50;
          *v79 = 1;
          memset(&v79[8], 0, 32);
          v79[40] = 2;
          *&v85 = v38;
          *(&v85 + 1) = v39;
          *&v86 = v45;
          *(&v86 + 1) = v46;
          *&v87 = v42 - (v45 - v41);
          *(&v87 + 1) = v43 - (v46 - v40);

          specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v74, v79, &v85);

          outlined destroy of GlassEntryView?(v79, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace, MEMORY[0x1E69E6720]);
          v51 = v74;
          if (*(v74 + 16))
          {
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
            if (v53)
            {
              outlined init with copy of AnyTrackedValue(*(v51 + 56) + 40 * v52, v79);

              __swift_destroy_boxed_opaque_existential_1(&v82);
              outlined init with take of AnyTrackedValue(v79, &v82);

              goto LABEL_50;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

LABEL_50:
        outlined init with copy of AnyTrackedValue(&v82, v79);
        TappableEvent.init(_:)(v79, &v74);
        v54 = v76;
        if (v76 == 1)
        {
          outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
          outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
          outlined consume of PhysicalButtonEvent?(v74, v75, 1);
          return __swift_destroy_boxed_opaque_existential_1(&v82);
        }

        v57 = v74;
        v56 = v75;
        v58 = v77;
        v59 = v78;
        v60 = v83;
        v61 = v84;
        __swift_project_boxed_opaque_existential_1(&v82, v83);
        (*(v61 + 8))(v79, v60, v61);
        outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
        if (v79[0] >= 2u)
        {
          if (v79[0] != 2)
          {
            outlined consume of PhysicalButtonEvent?(v57, v56, v54);
            OutputValue = 0;
            v56 = 0;
            v54 = 0;
            v58 = 0;
            v63 = 4;
            v64 = 768;
LABEL_66:
            __swift_destroy_boxed_opaque_existential_1(&v82);
            goto LABEL_67;
          }

          OutputValue = v57;
          v62 = 512;
        }

        else
        {
          OutputValue = v57;
          v62 = 256;
        }

        v64 = v62 & 0xFFFFFFFE | v59 & 1;
        v63 = 5;
        goto LABEL_66;
      }

      v20 = v10;
      v21 = v1;
      v68 = *&v79[8];
      outlined init with take of AnyTrackedValue(&v79[16], &v85);
      v22 = *(&v86 + 1);
      v23 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      (*(v23 + 24))(&v82, v22, v23);
      if (v82)
      {
        break;
      }

      v1 = v21;
      v36 = *(v21 + 24);
      if (v36 && v19 == v36 && *(v21 + 32) == v68)
      {

        __swift_destroy_boxed_opaque_existential_1(&v85);
        v63 = 0;
        goto LABEL_65;
      }

      __swift_destroy_boxed_opaque_existential_1(&v85);
      v10 = v20;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v1 = v21;
    if ((*(v21 + 21) & 1) == 0)
    {
      v24 = *(v21 + 24);
      if (!v24 || v19 != v24 || *(v21 + 32) != v68)
      {
        v25 = *(&v86 + 1);
        v26 = v87;
        __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
        v27 = *(v26 + 8);
        v28 = v26;
        v1 = v21;
        v27(&v82, v25, v28);
        if (v82)
        {
          if (!*(v21 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
          {

            __swift_destroy_boxed_opaque_existential_1(&v85);
            v63 = 1;
            goto LABEL_65;
          }
        }
      }
    }

    outlined init with copy of AnyTrackedValue(&v85, &v82);
    outlined init with copy of AnyTrackedValue(&v82, v71);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
    v10 = v20;
    type metadata accessor for AnyTrackedValue(0, v20);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v69, &v74);
      outlined init with copy of AnyTrackedValue(&v74, v71);
      v30 = v72;
      v29 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(*(v29 + 8) + 8))(v69, v30);
      v32 = v72;
      v31 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(*(v31 + 8) + 16))(v69, v32);
      v34 = v72;
      v33 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(*(v33 + 8) + 48))(v69, v34);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      __swift_destroy_boxed_opaque_existential_1(&v82);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v35 = *(v1 + 24);
      if (v35)
      {
        if (*(v1 + 32) != v68 || v19 != v35)
        {
          type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener);
          if (*AGGraphGetValue() != 1)
          {
            goto LABEL_64;
          }
        }

        outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
      }

      else
      {
        outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
        *(v1 + 24) = v19;
        *(v1 + 32) = v68;
      }

      outlined init with copy of AnyTrackedValue(&v85, v89);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v82);
      v70 = 0;
      memset(v69, 0, sizeof(v69));
      outlined destroy of ViewList?(v69, &lazy cache variable for type metadata for TappableEventType?, v20, &protocol descriptor for TappableEventType);
      if (!*(v1 + 24) || (type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListener<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListener), (*AGGraphGetValue() & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(&v85);
        v63 = 3;
        goto LABEL_65;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v85);
  }

  while (v7);
LABEL_7:
  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v7 = 0;
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v9 = v12;
      v85 = 0u;
      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_64:

  __swift_destroy_boxed_opaque_existential_1(&v85);
  v63 = 2;
LABEL_65:
  outlined consume of GesturePhase<TappableEvent>?(0, 0, 0, 0, 65280);
  OutputValue = 0;
  v56 = 0;
  v54 = 0;
  v58 = 0;
  v64 = 768;
LABEL_67:
  v65 = *(v1 + 24);
  v66 = *(v1 + 32);
  *v79 = OutputValue;
  *&v79[8] = v56;
  *&v79[16] = v54;
  *&v79[24] = v58;
  *&v79[32] = v64;
  *&v79[40] = v65;
  v80 = v66;
  v81 = v63;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for EventListenerPhase<TappableEvent>.Value, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for EventListenerPhase.Value);
  outlined copy of GesturePhase<TappableEvent>(OutputValue, v56, v54, v58, v64, SBYTE1(v64));
  AGGraphSetOutputValue();
  outlined consume of GesturePhase<TappableEvent>?(OutputValue, v56, v54, v58, v64);
  outlined destroy of ViewList?(v89, &lazy cache variable for type metadata for EventType?, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  *v79 = OutputValue;
  *&v79[8] = v56;
  *&v79[16] = v54;
  *&v79[24] = v58;
  *&v79[32] = v64;
  *&v79[34] = v82;
  *&v79[38] = WORD2(v82);
  *&v79[40] = v65;
  v80 = v66;
  v81 = v63;
  return outlined destroy of EventListenerPhase<TappableEvent>.Value(v79);
}

id specialized GestureComponentResponder.init(modifier:inputs:)(int a1, uint64_t a2)
{
  v5 = *(*v2 + 416);
  type metadata accessor for TapComponent<TouchEvent>();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + *(*v2 + 424)) = 0;
  *(v2 + *(*v2 + 432)) = 0;
  *(v2 + *(*v2 + 440)) = 0;
  v7 = (v2 + *(*v2 + 456));
  *v7 = 0;
  v7[1] = 0;
  *(v2 + *(*v2 + 448)) = a1;
  v8 = *(a2 + 48);
  *(v2 + 120) = *(a2 + 32);
  *(v2 + 136) = v8;
  *(v2 + 152) = *(a2 + 64);
  v9 = *(a2 + 16);
  *(v2 + 88) = *a2;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = *(a2 + 80);
  *(v2 + 104) = v9;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v11 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v11;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v11;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v12 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v13 = *(v12 + 208);

    swift_beginAccess();
    *(v2 + 24) = v13;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _LazyStack_Cache.reset()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for IndexSet();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v3 + 80) = 0u;
  *(v3 + 96) = _Q1;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a1, a2, a3, type metadata accessor for _LazyStack_Cache);
  v17 = (v3 + *(v16 + 60));
  v18 = MEMORY[0x1E69E7CC0];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *v17 = v19;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v18);

  v17[1] = v20;
  v23[1] = v18;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = type metadata accessor for EstimationCache();
  return (*(v8 + 40))(v17 + *(v21 + 24), v10, v7);
}

void specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, 0, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

{
  specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, 1u, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
}

void specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, unint64_t *a11, uint64_t (*a12)(void), uint64_t a13, unsigned __int8 a14, uint64_t a15, double (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, double))
{
  v102 = a4;
  v97 = a16;
  v101 = a15;
  v100 = a14;
  v108 = a6;
  v109 = a7;
  v110 = a8;
  v22 = type metadata accessor for EstimationCache();
  MEMORY[0x1EEE9AC00](v22);
  v99 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111[0] = a3;
  *&v111[1] = a9;
  *&v111[2] = a10;
  v107 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = *a1;
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a11, a12, a13, type metadata accessor for _LazyStack_Cache);
  v27 = (a5 + *(v26 + 60));
  v28 = *(*v27 + 16);
  v30 = *(a5 + 48);
  v29 = *(a5 + 56);
  if (v30 != v29 && *(a5 + 24) != 1 && *a5 == a3 && *(a5 + 8) == a9 && *(a5 + 16) == a10)
  {
    *a2 = v30;
    v107 = v29;
    v25 = *(a5 + 64);
    v31 = v30;
    if (v30 >= a3)
    {
      *(v24 + 16) = 1;
      if (__OFSUB__(v30, a3))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      *a2 = v30 - a3;
      v31 = v30 - a3;
    }

    if (__OFSUB__(v29, v31))
    {
      goto LABEL_51;
    }

    if (v29 - v31 <= 1)
    {
      v49 = __OFADD__(v29, a3);
      v29 += a3;
      if (v49)
      {
LABEL_54:
        __break(1u);
        return;
      }

      v107 = v29;
    }
  }

  else
  {
    if (v28)
    {
      v31 = *a2;
      if (*a2 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    if (a3 + 0x4000000000000000 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v29 = 2 * a3;
    v107 = 2 * a3;
    v31 = *a2;
  }

  if (v31 < v29)
  {
LABEL_11:
    v83 = (v24 + 16);
    v91 = v28;
    v85 = v27;
    v84 = v30;
    v92 = a1;
    v32 = swift_allocObject();
    v95 = a2;
    v33 = v32;
    *(v32 + 16) = 0;
    v82 = (v32 + 16);
    v34 = a3;
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v22;
    *(v35 + 16) = MEMORY[0x1E69E7CC0];
    v38 = (v35 + 16);
    v39 = swift_allocObject();
    v93 = v39;
    *(v39 + 16) = 0;
    v94 = (v39 + 16);
    v96 = swift_allocBox();
    v41 = v40;
    *v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v36);
    v41[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v36);
    v86 = v37;
    type metadata accessor for IndexSet();
    v105 = v36;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    v98 = v24;
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v87 = v41;
    v42 = v98;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    v44 = (v43 + 16);
    v106 = v31;
    v45 = v34;
    v105 = 2 * v34;
    MEMORY[0x1EEE9AC00](v43);
    v89 = v35;
    *(&v82 - 12) = v35;
    *(&v82 - 11) = v111;
    v88 = v46;
    *(&v82 - 10) = v46;
    *(&v82 - 9) = v42;
    *(&v82 - 8) = &v108;
    *(&v82 - 7) = v33;
    v90 = v33;
    v47 = v96;
    *(&v82 - 6) = v93;
    *(&v82 - 5) = v47;
    *(&v82 - 4) = v95;
    *(&v82 - 24) = v100;
    *(&v82 - 2) = &v107;
    _LazyLayout_Subviews.apply(from:style:to:)(&v106, &v105, v101, (&v82 - 14));
    swift_beginAccess();
    if (*v44 == 1)
    {
      if (v91)
      {
        v48 = v94;
        swift_beginAccess();
        *v92 = v25 + *v48;
        goto LABEL_45;
      }

      HasDeadlinePassed = 1;
      v57 = v92;
    }

    else
    {
      v51 = v108;
      v50 = v109;
      v52 = v110;
      v53 = HIDWORD(v110);
      swift_beginAccess();
      if (*(*v38 + 16))
      {
        v102 = v50;
        v54 = v83;
        swift_beginAccess();
        if (*v54)
        {
          *v54 = 0;
          v55 = v82;
        }

        else
        {
          v55 = v82;
          swift_beginAccess();
          v101 = v38;
          v58 = v51;
          v59 = *v55;

          v104 = v52;
          v61 = v97(v60, v59, v58, v102, v52 | (v53 << 32), a10);
          v63 = v62;

          v64 = v94;
          swift_beginAccess();
          *v64 = v63 + v61 + *v64;
          v65 = v59 == 0;
          if (v59)
          {
            v66 = *&v63;
          }

          else
          {
            v66 = 0;
          }

          swift_beginAccess();
          v38 = v101;
          EstimationCache.add(length:spacing:count:)(v66, v65, 1, v61);
          swift_endAccess();
        }

        if (__OFADD__(*v95, v45))
        {
          goto LABEL_50;
        }

        *v95 += v45;
        swift_beginAccess();
        swift_beginAccess();
        swapSubviews(_:_:)(v55, v38);
        swift_endAccess();
        swift_endAccess();
      }

      HasDeadlinePassed = AGGraphHasDeadlinePassed();
      *v44 = HasDeadlinePassed;
      v57 = v92;
      if (v91)
      {
        goto LABEL_44;
      }
    }

    v67 = v87;
    swift_beginAccess();
    v68 = v45;
    v69 = v99;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v67, v99, type metadata accessor for EstimationCache);
    v70 = *v69;

    v71 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103[0] = *v71;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v70, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v103);
    *v71 = v103[0];
    v73 = v69[1];

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v103[0] = v71[1];
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v73, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v74, v103);
    v71[1] = v103[0];
    IndexSet.formUnion(_:)();
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v69, type metadata accessor for EstimationCache);
    v75 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v68)
    {
      if (v84 == 0x8000000000000000 && v68 == -1)
      {
        goto LABEL_52;
      }

      v78 = v84 / v68 * v68;
      if ((v84 / v68 * v68) >> 64 == v78 >> 63)
      {
        v79 = 0.0;
        if ((v76 & 1) == 0)
        {
          v79 = v75;
        }

        v80 = (v77 + v79) * v78;
        if ((v84 / v68 < 1) | v76 & 1)
        {
          v25 = v80;
        }

        else
        {
          v25 = v80 - v75;
        }

LABEL_44:
        v81 = v94;
        swift_beginAccess();
        *v57 = v25 + *v81;
        if ((HasDeadlinePassed & 1) == 0)
        {
LABEL_46:

          return;
        }

LABEL_45:
        AGGraphCancelUpdate();
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_5:
}

uint64_t specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, void *a17, double (*a18)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, double), void (*a19)(uint64_t *__return_ptr, _OWORD *))
{
  if ((*(a1 + 101) & 1) != 0 || *(a1 + 102) == 1)
  {
    type metadata accessor for EstimationCache();
    swift_projectBox();
    swift_beginAccess();
    if (*(*(a3 + 16) + 16))
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        result = swift_beginAccess();
        *(a6 + 16) = 0;
      }

      else
      {
        swift_beginAccess();
        v27 = *(a12 + 16);

        LOBYTE(v72) = a11 & 1;
        v29 = a18(v28, v27, a7, a8, a11 & 0xFFFFFFFF00000001, a10);
        v31 = v30;

        swift_beginAccess();
        *(a13 + 16) = v31 + v29 + *(a13 + 16);
        swift_beginAccess();
        v32 = *(a12 + 16) == 0;
        if (*(a12 + 16))
        {
          v33 = *&v31;
        }

        else
        {
          v33 = 0;
        }

        swift_beginAccess();
        EstimationCache.add(length:spacing:count:)(v33, v32, 1, v29);
        result = swift_endAccess();
      }

      if (__OFADD__(*a15, a4))
      {
        goto LABEL_55;
      }

      *a15 += a4;
      swift_beginAccess();
      swift_beginAccess();
      swapSubviews(_:_:)((a12 + 16), (a3 + 16));
      swift_endAccess();
      swift_endAccess();
    }

    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    swift_beginAccess();
    *(a5 + 16) = HasDeadlinePassed;
    swift_beginAccess();
    if (*(a6 + 16))
    {
      result = swift_beginAccess();
      *(a6 + 16) = 0;
    }

    else
    {
      if (a16)
      {
        v35 = *&a9;
      }

      else
      {
        v35 = 0;
      }

      if (a16)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = a9;
      }

      result = swift_beginAccess();
      v37 = *(a12 + 16);
      if (v37)
      {
        if (!*(v37 + 16))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          return result;
        }

        outlined init with copy of _LazyLayout_Subview(v37 + 32, &v72);
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
      }

      LazyLayoutViewCache.item(data:)((a1 + 16));

      v68 = v35;
      v69 = (a16 & 1) == 0;
      v70 = v36;
      v71 = a16 & 1;
      v38 = LayoutProxy.lengthThatFits(_:in:)(&v68, a16 & 1);
      v40 = v39;
      MEMORY[0x1EEE9AC00](v38);
      *&v41 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(a19));
      v43 = v42;
      outlined destroy of GlassEntryView?(&v72, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      v44 = *&v41;
      if (v43)
      {
        v44 = 0.0;
      }

      v45 = v40 + v44;
      result = swift_beginAccess();
      *(a13 + 16) = v45 + *(a13 + 16);
    }

    if (__OFADD__(*a15, a4))
    {
      __break(1u);
    }

    else
    {
      *a15 += a4;
      if ((a4 & 0x8000000000000000) == 0)
      {
        if (a4)
        {
          swift_beginAccess();
          do
          {
            outlined init with copy of _LazyLayout_Subview(a1, &v72);
            v46 = *(a3 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a3 + 16) = v46;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
              *(a3 + 16) = v46;
            }

            v49 = *(v46 + 2);
            v48 = *(v46 + 3);
            if (v49 >= v48 >> 1)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v46);
            }

            *(v46 + 2) = v49 + 1;
            v50 = &v46[112 * v49];
            v51 = v72;
            v52 = v74;
            *(v50 + 3) = v73;
            *(v50 + 4) = v52;
            *(v50 + 2) = v51;
            v53 = v75;
            v54 = v76;
            v55 = v78;
            *(v50 + 7) = v77;
            *(v50 + 8) = v55;
            *(v50 + 5) = v53;
            *(v50 + 6) = v54;
            *(a3 + 16) = v46;
            --a4;
          }

          while (a4);
          swift_endAccess();
        }

        swift_beginAccess();
        swift_beginAccess();
        swapSubviews(_:_:)((a12 + 16), (a3 + 16));
        swift_endAccess();
        swift_endAccess();
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  outlined init with copy of _LazyLayout_Subview(a1, &v72);
  swift_beginAccess();
  specialized Array.append(_:)(&v72);
  swift_endAccess();
  swift_beginAccess();
  if (*(*(a3 + 16) + 16) == a4)
  {
    type metadata accessor for EstimationCache();
    swift_projectBox();
    if (a4)
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        result = swift_beginAccess();
        *(a6 + 16) = 0;
      }

      else
      {
        swift_beginAccess();
        v57 = *(a12 + 16);

        LOBYTE(v68) = a11 & 1;
        v59 = a18(v58, v57, a7, a8, a11 & 0xFFFFFFFF00000001, a10);
        v61 = v60;

        swift_beginAccess();
        *(a13 + 16) = v61 + v59 + *(a13 + 16);
        swift_beginAccess();
        v62 = *(a12 + 16) == 0;
        if (*(a12 + 16))
        {
          v63 = *&v61;
        }

        else
        {
          v63 = 0;
        }

        swift_beginAccess();
        EstimationCache.add(length:spacing:count:)(v63, v62, 1, v59);
        result = swift_endAccess();
      }

      if (__OFADD__(*a15, a4))
      {
        goto LABEL_57;
      }

      *a15 += a4;
      swift_beginAccess();
      swift_beginAccess();
      swapSubviews(_:_:)((a12 + 16), (a3 + 16));
      swift_endAccess();
      swift_endAccess();
    }

    v64 = AGGraphHasDeadlinePassed();
    swift_beginAccess();
    *(a5 + 16) = v64;
  }

LABEL_42:
  result = swift_beginAccess();
  v56 = (*(a5 + 16) & 1) != 0 || *a15 >= *a17;
  *a2 = v56;
  return result;
}

uint64_t specialized LazyStack<>.resolvedPlacerProperties(subviews:context:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a3;
  v65 = a7;
  v12 = a6 & 0xFFFFFFFF00000000;
  v57 = type metadata accessor for IndexSet();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for EstimationCache();
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StackPlacement<LazyHStackLayout>?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  v58 = a6;
  v59 = v12;
  LOBYTE(v21) = a6 & 1;
  v23 = v64;
  LOBYTE(v68[0]) = v21;
  v60 = a1;
  v61 = a4;
  v62 = a5;
  specialized LazyStack<>.placer(subviews:context:cache:)(a2, v64, a4, a5, v12 | v21, v17);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17, type metadata accessor for StackPlacement<LazyHStackLayout>?);
    type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)();
    return (*(*(v24 - 8) + 56))(v65, 1, 1, v24);
  }

  outlined init with take of StackPlacement<LazyHStackLayout>(v17, v22, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  v26 = *(v22 + 4);
  v52 = *(v22 + 56);
  v56 = *(v22 + 40);
  v27 = *(a2 + 152);
  v28 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v28 = *AGGraphGetValue();
  }

  v29 = *(v23 + 96);
  v30 = v63;
  if (v29 <= 0.0 || v27 <= 0.0)
  {
    v33 = 0;
    v34 = *(v23 + 104);
    if (v34 > 0.0 && v28 > 0.0)
    {
      v33 = vabdd_f64(v34, v28) >= 0.01;
    }

    goto LABEL_17;
  }

  v31 = vabdd_f64(v29, v27);
  v32 = *(v23 + 104);
  if (v32 <= 0.0 || v28 <= 0.0)
  {
    if (v31 < 0.01)
    {
      v33 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v33 = vabdd_f64(v32, v28) >= 0.01;
    if (v31 < 0.01)
    {
      goto LABEL_17;
    }
  }

  v33 = 1;
LABEL_17:
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v36 = (v23 + *(v35 + 60));
  v37 = *v36;
  if (*(*v36 + 16))
  {
    v38 = !v33;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    v45 = 0;
    LOBYTE(v33) = 0;
  }

  else
  {
    v51 = v22;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v36, v30, type metadata accessor for EstimationCache);
    v39 = MEMORY[0x1E69E7CC0];
    *v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v39);

    v36[1] = v40;
    *&v68[0] = v39;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v41 = v54;
    v42 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v55 + 40))(v36 + *(v53 + 24), v41, v42);
    v67 = 0;
    v68[0] = 0.0;
    v66 = v58 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v68, &v67, v26, v60, v23, v61, v62, v59 | v58 & 1, *&v56, *(&v56 + 1), &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, 0, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk738subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(v23);
    if (*(v23 + 104) > v28)
    {
      v43 = *(v23 + 104);
    }

    else
    {
      v43 = v28;
    }

    v45 = specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(v44, v37, 0.9, v43);

    if (v45)
    {
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v30, type metadata accessor for EstimationCache);
    }

    else
    {
      outlined assign with take of EstimationCache(v30, v36);
      LOBYTE(v33) = 0;
    }

    v22 = v51;
  }

  type metadata accessor for (StackPlacement<LazyHStackLayout>, PlacementProperties<LazyHStackLayout>)();
  v47 = v46;
  v48 = v65;
  v49 = v65 + *(v46 + 48);
  outlined init with take of StackPlacement<LazyHStackLayout>(v22, v65, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  *v49 = v26;
  *(v49 + 24) = v52;
  *(v49 + 8) = v56;
  *(v49 + 40) = v33;
  *(v49 + 41) = v45 & 1;
  *(v49 + 48) = v27;
  *(v49 + 56) = v28;
  return (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
}

{
  v64 = a3;
  v65 = a7;
  v12 = a6 & 0xFFFFFFFF00000000;
  v57 = type metadata accessor for IndexSet();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for EstimationCache();
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StackPlacement<LazyVStackLayout>?();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  v58 = a6;
  v59 = v12;
  LOBYTE(v21) = a6 & 1;
  v23 = v64;
  LOBYTE(v68[0]) = v21;
  v60 = a1;
  v61 = a4;
  v62 = a5;
  specialized LazyStack<>.placer(subviews:context:cache:)(a2, v64, a4, a5, v12 | v21, v17);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v17, type metadata accessor for StackPlacement<LazyVStackLayout>?);
    type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)();
    return (*(*(v24 - 8) + 56))(v65, 1, 1, v24);
  }

  outlined init with take of StackPlacement<LazyHStackLayout>(v17, v22, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  v26 = *(v22 + 4);
  v52 = *(v22 + 56);
  v56 = *(v22 + 40);
  v27 = *(a2 + 160);
  v28 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v28 = *(AGGraphGetValue() + 8);
  }

  v29 = *(v23 + 96);
  v30 = v63;
  if (v29 <= 0.0 || v27 <= 0.0)
  {
    v33 = 0;
    v34 = *(v23 + 104);
    if (v34 > 0.0 && v28 > 0.0)
    {
      v33 = vabdd_f64(v34, v28) >= 0.01;
    }

    goto LABEL_17;
  }

  v31 = vabdd_f64(v29, v27);
  v32 = *(v23 + 104);
  if (v32 <= 0.0 || v28 <= 0.0)
  {
    if (v31 < 0.01)
    {
      v33 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v33 = vabdd_f64(v32, v28) >= 0.01;
    if (v31 < 0.01)
    {
      goto LABEL_17;
    }
  }

  v33 = 1;
LABEL_17:
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v36 = (v23 + *(v35 + 60));
  v37 = *v36;
  if (*(*v36 + 16))
  {
    v38 = !v33;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    v45 = 0;
    LOBYTE(v33) = 0;
  }

  else
  {
    v51 = v22;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v36, v30, type metadata accessor for EstimationCache);
    v39 = MEMORY[0x1E69E7CC0];
    *v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v39);

    v36[1] = v40;
    *&v68[0] = v39;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    v41 = v54;
    v42 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v55 + 40))(v36 + *(v53 + 24), v41, v42);
    v67 = 0;
    v68[0] = 0.0;
    v66 = v58 & 1;
    specialized LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v68, &v67, v26, v60, v23, v61, v62, v59 | v58 & 1, *&v56, *(&v56 + 1), &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, 1u, partial apply for specialized closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e45VyxG0E0RtzrlE24resolvedPlacerProperties33_973ghijk738subviews7context5cacheAA0D9PlacementAJLLVyxG_AA0qH0AJLLVyxGtSgAA01_C15m49_SubviewsV_AA01_cr1_Q7ContextVAFztFSSyXEfu0_AA0c6L7R0V_Tg5AEyALGTf1c_n(v23);
    if (*(v23 + 104) > v28)
    {
      v43 = *(v23 + 104);
    }

    else
    {
      v43 = v28;
    }

    v45 = specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(v44, v37, 0.9, v43);

    if (v45)
    {
      outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v30, type metadata accessor for EstimationCache);
    }

    else
    {
      outlined assign with take of EstimationCache(v30, v36);
      LOBYTE(v33) = 0;
    }

    v22 = v51;
  }

  type metadata accessor for (StackPlacement<LazyVStackLayout>, PlacementProperties<LazyVStackLayout>)();
  v47 = v46;
  v48 = v65;
  v49 = v65 + *(v46 + 48);
  outlined init with take of StackPlacement<LazyHStackLayout>(v22, v65, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  *v49 = v26;
  *(v49 + 24) = v52;
  *(v49 + 8) = v56;
  *(v49 + 40) = v33;
  *(v49 + 41) = v45 & 1;
  *(v49 + 48) = v27;
  *(v49 + 56) = v28;
  return (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE31321LL8subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6HStackY0V_Tt4B5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v103 = a4;
  v107 = a1;
  v121 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v9 = *AGGraphGetValue();
  }

  v10 = *a5;
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyStack_Cache);
  v14 = *(a3 + *(v13 + 60));
  v15 = *(v14 + 16);
  v104 = *(v13 + 60);
  if (v15)
  {
    v17 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v18)
    {
      v17 = 0.0;
    }

    v19 = v16 + v17;
    v20 = *(v14 + 16) == 0;
  }

  else
  {
    v20 = 1;
    v19 = 32.0;
  }

  v106 = 2 * v10;
  if (v19 <= 0.0)
  {
    v20 = 1;
  }

  v105 = v20;
  v21 = *(a5 + 24);
  v22 = *(a5 + 32);
  LODWORD(v116) = v8;
  KeyPath = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7DE0];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  v115 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>, &type metadata for EnvironmentValues, v23, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  v120 = 0;
  v88 = lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  v24 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  if (*(a3 + 24) & 1) != 0 || v10 != *a3 || v12 != *(a3 + 8) || v11 != *(a3 + 16) || (*(a5 + 40))
  {
    goto LABEL_11;
  }

  v34 = *(a3 + 64);
  if (v24 == 1.0)
  {
    v35 = round(v34);
    v36 = *(a3 + 72);
    v37 = round(v36);
    if (v35 <= v37)
    {
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = v24 * round(v34 / v24);
  v36 = *(a3 + 72);
  v37 = v24 * round(v36 / v24);
  if (v35 > v37)
  {
    goto LABEL_53;
  }

LABEL_37:
  a5 = *(a3 + 48);
  if (v35 <= v21 && (v22 <= v37 || v21 <= v37 && (*(a3 + 40) & 1) == 0 && *(a3 + 32) == *(a3 + 56)))
  {
    return a5;
  }

  v37 = v21 - v36;
  v12 = 0.01;
  v35 = v9 + v9;
  if (v21 - v36 + 0.01 > 0.0 && v37 < v35)
  {
    return *(a3 + 56);
  }

LABEL_54:
  v40 = v21 - v34;
  if (v21 - v34 + v12 > 0.0 && v40 < v35)
  {
    return a5;
  }

  if (v40 >= 0.0)
  {
    v41 = v37;
  }

  else
  {
    v41 = v21 - v34;
    if (v37 < 0.0)
    {
      if (v40 > v37)
      {
        v41 = v21 - v34;
      }

      else
      {
        v41 = v37;
      }
    }
  }

  if (v41 >= 0.0 || v9 * 3.0 <= -v41)
  {
    if (!v105)
    {
LABEL_99:
      v116 = v106;
      v75 = _ViewList_Node.estimatedCount(style:)(&v116);
      if (v10 != 1)
      {
        if (!v10)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v75 == 0x8000000000000000 && v10 == -1)
        {
LABEL_150:
          __break(1u);
        }

        v75 /= v10;
      }

      v76 = v75 - 1;
      if (__OFSUB__(v75, 1))
      {
        goto LABEL_138;
      }

      v77 = round(v40 / v19);
      if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (v77 <= -9.22337204e18)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v77 >= 9.22337204e18)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v78 = v76 & ~(v76 >> 63);
      v79 = v78 * v10;
      if ((v78 * v10) >> 64 != (v78 * v10) >> 63)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v76 >= v77)
      {
        v76 = v77;
      }

      v80 = v76 & ~(v76 >> 63);
      v81 = v80 * v10;
      if ((v80 * v10) >> 64 != (v80 * v10) >> 63)
      {
        goto LABEL_143;
      }

      v38 = __OFADD__(a5, v81);
      v82 = a5 + v81;
      if (v38)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v83 = v34 + v19 * v80;
      if (v83 + v12 >= 0.0 && v83 + -0.01 <= v21)
      {
        v85 = v82 & ~(v82 >> 63);
        if (v79 >= v85)
        {
          return v85;
        }

        else
        {
          return v79;
        }
      }
    }

LABEL_11:
    v116 = v106;
    v25 = _ViewList_Node.estimatedCount(style:)(&v116);
    if (v10 != 1)
    {
      if (!v10)
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v25 == 0x8000000000000000 && v10 == -1)
      {
        goto LABEL_128;
      }

      v25 /= v10;
    }

    v26 = *(a2 + 32);
    v27 = 0.0;
    if (v26 > 0.0)
    {
      v28 = v21 / v26;
      v27 = 1.0;
      if (v28 < 1.0)
      {
        v27 = 0.0;
        if (v28 >= 0.0)
        {
          v27 = v28;
        }
      }
    }

    if (__OFSUB__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      v29 = (v25 - 1) & ~((v25 - 1) >> 63);
      v30 = v29 * v10;
      if ((v29 * v10) >> 64 == (v29 * v10) >> 63)
      {
        v31 = v27 * v25 + 0.5;
        if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v31 > -9.22337204e18)
          {
            if (v31 < 9.22337204e18)
            {
              v32 = v31 * v10;
              if ((v31 * v10) >> 64 == v32 >> 63)
              {
                v33 = v32 & ~(v32 >> 63);
                if (v33 >= v30)
                {
                  a5 = v30;
                }

                else
                {
                  a5 = v33;
                }

                if (a5 < 1 || v105)
                {
                  return a5;
                }

                EstimationCache.average.getter();
                if (v10 == -1 && v30 == 0x8000000000000000)
                {
                  goto LABEL_130;
                }

                if (a5 < v10)
                {
                  return a5;
                }

                if (*(a2 + 208) <= 0.0)
                {
                  return a5;
                }

                v38 = __OFSUB__(a5, v10);
                a5 -= v10;
                if (!v38)
                {
                  return a5;
                }

LABEL_129:
                __break(1u);
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }

              goto LABEL_126;
            }

LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    __break(1u);
    goto LABEL_123;
  }

  if (v105)
  {
    goto LABEL_11;
  }

  v42 = *(a3 + 56);
  v43 = v42 - a5;
  if (__OFSUB__(v42, a5))
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v44 = ceil(v9 / v19);
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v43 <= v44)
  {
    v43 = v44;
  }

  v94 = v43;
  if (v40 >= 0.0)
  {
    v45 = v42;
  }

  else
  {
    v45 = a5;
  }

  if (v40 >= 0.0)
  {
    v46 = v36;
  }

  else
  {
    v46 = v34;
  }

  v47 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  v93 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v92 = v107[17];
  v48 = v107[15];
  v91 = v107[14];
  v90 = v48;
  v49 = 2;
  v89 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v50 = v49 * v94;
    if ((v49 * v94) >> 64 != (v49 * v94) >> 63)
    {
      goto LABEL_131;
    }

    v38 = __OFSUB__(v45, v50);
    v51 = v45 - v50;
    v52 = v106;
    if (v38)
    {
      goto LABEL_132;
    }

    v99 = v51;
    v53 = v51 & ~(v51 >> 63);
    v54 = swift_allocObject();
    v102 = v54;
    v55 = MEMORY[0x1E69E7CC0];
    *(v54 + 16) = MEMORY[0x1E69E7CC0];
    v101 = (v54 + 16);
    v111 = v53;
    v113 = 0;
    v114 = 1;
    v112 = 3;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    v100 = (v56 + 16);
    v110 = v45;
    v57 = v45;
    if (v47 != 1)
    {
      if (!v47)
      {
        goto LABEL_135;
      }

      v58 = v45 % v47;
      v57 = v45;
      if (v45 % v47)
      {
        v59 = v47 - v58;
        if (__OFSUB__(v47, v58))
        {
          goto LABEL_136;
        }

        v38 = __OFADD__(v45, v59);
        v57 = v45 + v59;
        if (v38)
        {
          goto LABEL_137;
        }
      }
    }

    v96 = v49;
    v38 = __OFADD__(v57, v93);
    v60 = v57 + v93;
    if (v38)
    {
      goto LABEL_133;
    }

    v110 = v60;
    v109 = v53;
    MEMORY[0x1EEE9AC00](v56);
    v87[2] = &v113;
    v87[3] = &v112;
    v87[4] = v52;
    v87[5] = &v111;
    v87[6] = &v110;
    v87[7] = v61;
    v98 = v61;
    v88 = v102;
    v62 = swift_allocObject();
    if (__OFADD__(v53, v92))
    {
      goto LABEL_134;
    }

    v63 = v62;
    v97 = v87;
    *(v62 + 16) = v53 + v92;
    v116 = v91;
    KeyPath = v90;
    v108 = v52;
    v118 = &v116;
    v119 = 1;
    MEMORY[0x1EEE9AC00](v91);
    v86[2] = v107;
    v86[3] = v63;
    v86[4] = closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply;
    v86[5] = v87;

    v64 = _ViewList_Node.applyNodes(from:style:transform:to:)(&v109, &v108, &v118, closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:)partial apply, v86);

    v65 = v100;
    swift_beginAccess();
    v66 = *v65;
    v67 = v99;
    v68 = v101;
    if (*(v66 + 16))
    {
      swift_beginAccess();
      v69 = *v68;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
      }

      v72 = v69[2];
      v71 = v69[3];
      if (v72 >= v71 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v69);
      }

      v69[2] = v72 + 1;
      v69[v72 + 4] = v66;
      *v101 = v69;
      swift_endAccess();
      *v100 = MEMORY[0x1E69E7CC0];

      LOBYTE(v64) = v95;
    }

    swift_beginAccess();
    v73 = *(v102 + 16);

    v74 = v103;
    specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v73, v45, v67 < 1, v64 & 1, 0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, v46, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

    if (*(v74 + 112) <= v21 + v12)
    {
      return *(v103 + 96);
    }

    v47 = v89;
    if (v67 >= 1)
    {
      v49 = 2 * v96;
      if (v96 <= 7)
      {
        continue;
      }
    }

    goto LABEL_99;
  }
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE23resolveIndexAndPosition33_973C9973BC16DEAF0CF3109FFDE31321LL8subviews7context5cache6placer10propertiesSi5index_12CoreGraphics7CGFloatV8positiontSgAA01_C15Layout_SubviewsV_AA01_cY17_PlacementContextVAFzAA0D9PlacementAJLLVyxGzAA19PlacementPropertiesAJLLVyxGtFAA0c6VStackY0V_Tt4B5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v103 = a4;
  v107 = a1;
  v121 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = 0.0;
  if (*(a2 + 12) != *MEMORY[0x1E698D3F8])
  {
    v9 = *(AGGraphGetValue() + 8);
  }

  v10 = *a5;
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyStack_Cache);
  v14 = *(a3 + *(v13 + 60));
  v15 = *(v14 + 16);
  v104 = *(v13 + 60);
  if (v15)
  {
    v17 = COERCE_DOUBLE(EstimationCache.average.getter());
    if (v18)
    {
      v17 = 0.0;
    }

    v19 = v16 + v17;
    v20 = *(v14 + 16) == 0;
  }

  else
  {
    v20 = 1;
    v19 = 32.0;
  }

  v106 = 2 * v10;
  if (v19 <= 0.0)
  {
    v20 = 1;
  }

  v105 = v20;
  v21 = *(a5 + 24);
  v22 = *(a5 + 32);
  LODWORD(v116) = v8;
  KeyPath = swift_getKeyPath();
  v23 = MEMORY[0x1E69E7DE0];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  v115 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, CGFloat>, &type metadata for EnvironmentValues, v23, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  v120 = 0;
  v88 = lazy protocol witness table accessor for type EnvironmentFetch<CGFloat> and conformance EnvironmentFetch<A>();
  v24 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  if (*(a3 + 24) & 1) != 0 || v10 != *a3 || v12 != *(a3 + 8) || v11 != *(a3 + 16) || (*(a5 + 40))
  {
    goto LABEL_11;
  }

  v34 = *(a3 + 64);
  if (v24 == 1.0)
  {
    v35 = round(v34);
    v36 = *(a3 + 72);
    v37 = round(v36);
    if (v35 <= v37)
    {
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = v24 * round(v34 / v24);
  v36 = *(a3 + 72);
  v37 = v24 * round(v36 / v24);
  if (v35 > v37)
  {
    goto LABEL_53;
  }

LABEL_37:
  a5 = *(a3 + 48);
  if (v35 <= v21 && (v22 <= v37 || v21 <= v37 && (*(a3 + 40) & 1) == 0 && *(a3 + 32) == *(a3 + 56)))
  {
    return a5;
  }

  v37 = v21 - v36;
  v12 = 0.01;
  v35 = v9 + v9;
  if (v21 - v36 + 0.01 > 0.0 && v37 < v35)
  {
    return *(a3 + 56);
  }

LABEL_54:
  v40 = v21 - v34;
  if (v21 - v34 + v12 > 0.0 && v40 < v35)
  {
    return a5;
  }

  if (v40 >= 0.0)
  {
    v41 = v37;
  }

  else
  {
    v41 = v21 - v34;
    if (v37 < 0.0)
    {
      if (v40 > v37)
      {
        v41 = v21 - v34;
      }

      else
      {
        v41 = v37;
      }
    }
  }

  if (v41 >= 0.0 || v9 * 3.0 <= -v41)
  {
    if (!v105)
    {
LABEL_99:
      v116 = v106;
      v75 = _ViewList_Node.estimatedCount(style:)(&v116);
      if (v10 != 1)
      {
        if (!v10)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v75 == 0x8000000000000000 && v10 == -1)
        {
LABEL_150:
          __break(1u);
        }

        v75 /= v10;
      }

      v76 = v75 - 1;
      if (__OFSUB__(v75, 1))
      {
        goto LABEL_138;
      }

      v77 = round(v40 / v19);
      if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (v77 <= -9.22337204e18)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v77 >= 9.22337204e18)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v78 = v76 & ~(v76 >> 63);
      v79 = v78 * v10;
      if ((v78 * v10) >> 64 != (v78 * v10) >> 63)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v76 >= v77)
      {
        v76 = v77;
      }

      v80 = v76 & ~(v76 >> 63);
      v81 = v80 * v10;
      if ((v80 * v10) >> 64 != (v80 * v10) >> 63)
      {
        goto LABEL_143;
      }

      v38 = __OFADD__(a5, v81);
      v82 = a5 + v81;
      if (v38)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v83 = v34 + v19 * v80;
      if (v83 + v12 >= 0.0 && v83 + -0.01 <= v21)
      {
        v85 = v82 & ~(v82 >> 63);
        if (v79 >= v85)
        {
          return v85;
        }

        else
        {
          return v79;
        }
      }
    }

LABEL_11:
    v116 = v106;
    v25 = _ViewList_Node.estimatedCount(style:)(&v116);
    if (v10 != 1)
    {
      if (!v10)
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v25 == 0x8000000000000000 && v10 == -1)
      {
        goto LABEL_128;
      }

      v25 /= v10;
    }

    v26 = *(a2 + 40);
    v27 = 0.0;
    if (v26 > 0.0)
    {
      v28 = v21 / v26;
      v27 = 1.0;
      if (v28 < 1.0)
      {
        v27 = 0.0;
        if (v28 >= 0.0)
        {
          v27 = v28;
        }
      }
    }

    if (__OFSUB__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      v29 = (v25 - 1) & ~((v25 - 1) >> 63);
      v30 = v29 * v10;
      if ((v29 * v10) >> 64 == (v29 * v10) >> 63)
      {
        v31 = v27 * v25 + 0.5;
        if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v31 > -9.22337204e18)
          {
            if (v31 < 9.22337204e18)
            {
              v32 = v31 * v10;
              if ((v31 * v10) >> 64 == v32 >> 63)
              {
                v33 = v32 & ~(v32 >> 63);
                if (v33 >= v30)
                {
                  a5 = v30;
                }

                else
                {
                  a5 = v33;
                }

                if (a5 < 1 || v105)
                {
                  return a5;
                }

                EstimationCache.average.getter();
                if (v10 == -1 && v30 == 0x8000000000000000)
                {
                  goto LABEL_130;
                }

                if (a5 < v10)
                {
                  return a5;
                }

                if (*(a2 + 200) <= 0.0)
                {
                  return a5;
                }

                v38 = __OFSUB__(a5, v10);
                a5 -= v10;
                if (!v38)
                {
                  return a5;
                }

LABEL_129:
                __break(1u);
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }

              goto LABEL_126;
            }

LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    __break(1u);
    goto LABEL_123;
  }

  if (v105)
  {
    goto LABEL_11;
  }

  v42 = *(a3 + 56);
  v43 = v42 - a5;
  if (__OFSUB__(v42, a5))
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v44 = ceil(v9 / v19);
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v43 <= v44)
  {
    v43 = v44;
  }

  v94 = v43;
  if (v40 >= 0.0)
  {
    v45 = v42;
  }

  else
  {
    v45 = a5;
  }

  if (v40 >= 0.0)
  {
    v46 = v36;
  }

  else
  {
    v46 = v34;
  }

  v47 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  v93 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v92 = v107[17];
  v48 = v107[15];
  v91 = v107[14];
  v90 = v48;
  v49 = 2;
  v89 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v50 = v49 * v94;
    if ((v49 * v94) >> 64 != (v49 * v94) >> 63)
    {
      goto LABEL_131;
    }

    v38 = __OFSUB__(v45, v50);
    v51 = v45 - v50;
    v52 = v106;
    if (v38)
    {
      goto LABEL_132;
    }

    v99 = v51;
    v53 = v51 & ~(v51 >> 63);
    v54 = swift_allocObject();
    v102 = v54;
    v55 = MEMORY[0x1E69E7CC0];
    *(v54 + 16) = MEMORY[0x1E69E7CC0];
    v101 = (v54 + 16);
    v111 = v53;
    v113 = 0;
    v114 = 1;
    v112 = 3;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    v100 = (v56 + 16);
    v110 = v45;
    v57 = v45;
    if (v47 != 1)
    {
      if (!v47)
      {
        goto LABEL_135;
      }

      v58 = v45 % v47;
      v57 = v45;
      if (v45 % v47)
      {
        v59 = v47 - v58;
        if (__OFSUB__(v47, v58))
        {
          goto LABEL_136;
        }

        v38 = __OFADD__(v45, v59);
        v57 = v45 + v59;
        if (v38)
        {
          goto LABEL_137;
        }
      }
    }

    v96 = v49;
    v38 = __OFADD__(v57, v93);
    v60 = v57 + v93;
    if (v38)
    {
      goto LABEL_133;
    }

    v110 = v60;
    v109 = v53;
    MEMORY[0x1EEE9AC00](v56);
    v87[2] = &v113;
    v87[3] = &v112;
    v87[4] = v52;
    v87[5] = &v111;
    v87[6] = &v110;
    v87[7] = v61;
    v98 = v61;
    v88 = v102;
    v62 = swift_allocObject();
    if (__OFADD__(v53, v92))
    {
      goto LABEL_134;
    }

    v63 = v62;
    v97 = v87;
    *(v62 + 16) = v53 + v92;
    v116 = v91;
    KeyPath = v90;
    v108 = v52;
    v118 = &v116;
    v119 = 1;
    MEMORY[0x1EEE9AC00](v91);
    v86[2] = v107;
    v86[3] = v63;
    v86[4] = closure #1 in LazyStack<>.collectBackwards(from:to:subviews:style:atEnd:)partial apply;
    v86[5] = v87;

    v64 = _ViewList_Node.applyNodes(from:style:transform:to:)(&v109, &v108, &v118, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), v86);

    v65 = v100;
    swift_beginAccess();
    v66 = *v65;
    v67 = v99;
    v68 = v101;
    if (*(v66 + 16))
    {
      swift_beginAccess();
      v69 = *v68;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
      }

      v72 = v69[2];
      v71 = v69[3];
      if (v72 >= v71 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v69);
      }

      v69[2] = v72 + 1;
      v69[v72 + 4] = v66;
      *v101 = v69;
      swift_endAccess();
      *v100 = MEMORY[0x1E69E7CC0];

      LOBYTE(v64) = v95;
    }

    swift_beginAccess();
    v73 = *(v102 + 16);

    v74 = v103;
    specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(v73, v45, v67 < 1, v64 & 1, 0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, v46, specialized flushBackwards #1 <A>(includeEmpty:) in StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:), specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:));

    if (*(v74 + 112) <= v21 + v12)
    {
      return *(v103 + 96);
    }

    v47 = v89;
    if (v67 >= 1)
    {
      v49 = 2 * v96;
      if (v96 <= 7)
      {
        continue;
      }
    }

    goto LABEL_99;
  }
}

uint64_t specialized LazyStack<>.placer(subviews:context:cache:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = *(a1 + 136);
  *v29 = *(a1 + 152);
  if (*(a1 + 296))
  {
    ScrollGeometry.outsetForAX(limit:)(*(a1 + 280));
  }

  v31.origin.y = *(&v28 + 1);
  v31.size.height = v29[1];
  *&v31.origin.x = v28;
  v31.size.width = v29[0];
  result = CGRectIsNull(v31);
  v13 = 0.0;
  v14 = 0.0;
  if (result)
  {
    goto LABEL_18;
  }

  v15 = *&v28 + v29[0];
  if (*&v28 + v29[0] >= *&v28)
  {
    v14 = *&v28;
  }

  else
  {
    v14 = *&v28 + v29[0];
  }

  if (*&v28 > v15)
  {
    v15 = *&v28;
  }

  if (v14 > v15)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v15;
  }

  if (v14 > v15)
  {
    v14 = 0.0;
  }

  v16 = v14 > 0.0 ? v14 : 0.0;
  if (v16 >= v13)
  {
LABEL_18:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(v14, v13);
LABEL_19:
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
    v18 = *(*(v17 - 8) + 56);

    return v18(a6, 1, 1, v17);
  }

  if (v16 > v13)
  {
    __break(1u);
    return result;
  }

  v19 = *(a1 + 40);
  if (v19 <= 0.0 || *(a1 + 32) <= 0.0)
  {
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12HStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(v16, v13);
    goto LABEL_19;
  }

  v20 = v16;
  v21 = v13;
  if ((*(a2 + 24) & 1) != 0 || *a2 != 1 || v19 != *(a2 + 8) || v19 != *(a2 + 16))
  {
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
  }

  v27 = *(a1 + 48);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  v23 = v22;
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 0u;
  *(a6 + 232) = 0u;
  *(a6 + 248) = 0u;
  v24 = (a6 + *(v22 + 104));
  v25 = MEMORY[0x1E69E7CC0];
  *v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v24[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v25);
  type metadata accessor for EstimationCache();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5 & 1;
  *(a6 + 20) = HIDWORD(a5);
  *(a6 + 32) = 1;
  *(a6 + 40) = v19;
  *(a6 + 48) = v19;
  *(a6 + 24) = 0;
  *(a6 + 56) = v20;
  *(a6 + 64) = v21;
  *(a6 + 72) = v27;
  *(a6 + 80) = 0;
  *(a6 + 88) = 1;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 1;
  v26 = MEMORY[0x1E69E7CC0];
  *(a6 + 136) = MEMORY[0x1E69E7CC0];
  *(a6 + 144) = 0;
  *(a6 + 264) = v26;
  *(a6 + 272) = xmmword_18DDAB4E0;
  *(a6 + 288) = xmmword_18DDAB4F0;
  *(a6 + 304) = xmmword_18DDAB4F0;
  *(a6 + 320) = 0;
  return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
}

{
  v28 = *(a1 + 136);
  v29 = *(a1 + 152);
  if (*(a1 + 296))
  {
    ScrollGeometry.outsetForAX(limit:)(*(a1 + 280));
  }

  *&v31.origin.x = v28;
  *&v31.size.width = v29;
  v31.origin.y = *(&v28 + 1);
  v31.size.height = *(&v29 + 1);
  result = CGRectIsNull(v31);
  v13 = 0.0;
  v14 = 0.0;
  if (result)
  {
    goto LABEL_18;
  }

  v15 = *(&v28 + 1) + *(&v29 + 1);
  if (*(&v28 + 1) + *(&v29 + 1) >= *(&v28 + 1))
  {
    v14 = *(&v28 + 1);
  }

  else
  {
    v14 = *(&v28 + 1) + *(&v29 + 1);
  }

  if (*(&v28 + 1) > v15)
  {
    v15 = *(&v28 + 1);
  }

  if (v14 > v15)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v15;
  }

  if (v14 > v15)
  {
    v14 = 0.0;
  }

  v16 = v14 > 0.0 ? v14 : 0.0;
  if (v16 >= v13)
  {
LABEL_18:
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M43_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu_SNy12CoreGraphics7CGFloatVGTf1c_n(v14, v13);
LABEL_19:
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
    v18 = *(*(v17 - 8) + 56);

    return v18(a6, 1, 1, v17);
  }

  if (v16 > v13)
  {
    __break(1u);
    return result;
  }

  v19 = *(a1 + 32);
  if (v19 <= 0.0 || *(a1 + 40) <= 0.0)
  {
    _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE3log33_973C9973BC16DEAF0CF3109FFDE31321LLyySSyXKFAA0C12VStackLayoutV_Tt0g503_s7a3UI9cd11PA2A01_cD6_e26VyxG0E0RtzrlE6placer33_973ghijk578subviews7context5cacheAA0D9PlacementAJLLVyxGSgAA01_C15M44_SubviewsV_AA01_cp1_O7ContextVAFztFSSyXEfu0_SNy12CoreGraphics7CGFloatVGTf1c_n(v16, v13);
    goto LABEL_19;
  }

  v20 = v16;
  v21 = v13;
  if ((*(a2 + 24) & 1) != 0 || *a2 != 1 || v19 != *(a2 + 8) || v19 != *(a2 + 16))
  {
    specialized _LazyStack_Cache.reset()(&lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
  }

  v27 = *(a1 + 48);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  v23 = v22;
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 0u;
  *(a6 + 232) = 0u;
  *(a6 + 248) = 0u;
  v24 = (a6 + *(v22 + 104));
  v25 = MEMORY[0x1E69E7CC0];
  *v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v24[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v25);
  type metadata accessor for EstimationCache();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5 & 1;
  *(a6 + 20) = HIDWORD(a5);
  *(a6 + 32) = 1;
  *(a6 + 40) = v19;
  *(a6 + 48) = v19;
  *(a6 + 24) = 1;
  *(a6 + 56) = v20;
  *(a6 + 64) = v21;
  *(a6 + 72) = v27;
  *(a6 + 80) = 0;
  *(a6 + 88) = 1;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 1;
  v26 = MEMORY[0x1E69E7CC0];
  *(a6 + 136) = MEMORY[0x1E69E7CC0];
  *(a6 + 144) = 0;
  *(a6 + 264) = v26;
  *(a6 + 272) = xmmword_18DDAB4E0;
  *(a6 + 288) = xmmword_18DDAB4F0;
  *(a6 + 304) = xmmword_18DDAB4F0;
  *(a6 + 320) = 0;
  return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
}

uint64_t specialized sufficientlyDiffers<A, B, C>(lhs:rhs:ratio:baseline:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = a1 + 64;
  v7 = 1.0 / a3 * a4;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 64;

  v14 = 0;
LABEL_5:
  if (v10)
  {
    v15 = v14;
LABEL_10:
    v16 = 0;
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = *(*(result + 48) + ((v15 << 9) | (8 * v17)));
    v19 = 1 << *(a2 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(a2 + 64);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
LABEL_20:
      v24 = *(a2 + 48);
      v25 = (v16 << 9) | (8 * __clz(__rbit64(v21)));
      v26 = *(v24 + v25);
      v21 &= v21 - 1;
      if (v26 >= v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = *(v24 + v25);
      }

      if (v18 > v26)
      {
        v26 = v18;
      }

      if (v26 == 0.0)
      {
        v14 = v15;
        goto LABEL_5;
      }

      if (v26 <= v7)
      {
        if (v27 == v26)
        {
          v14 = v15;
          goto LABEL_5;
        }
      }

      else if (v27 / v26 > a3)
      {
        v14 = v15;
        goto LABEL_5;
      }
    }

    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v28 = 1;
        goto LABEL_33;
      }

      v21 = *(v12 + 8 * v23);
      ++v16;
      if (v21)
      {
        v16 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        v28 = 0;
LABEL_33:

        return v28;
      }

      v10 = *(v6 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE16collectBackwards33_973C9973BC16DEAF0CF3109FFDE31321LL4from2to8subviews5style5atEndSaySayAA01_C14Layout_SubviewVGGSi_SiAA01_cS9_SubviewsVAA23_ViewList_IteratorStyleVSbztFAA0c6HStackS0V_Tt4B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t a6)
{
  v28 = a5;
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v12 = (v10 + 16);
  v35 = a1;
  v33 = 0;
  v34 = 1;
  v32 = 3;
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = v11;
  v15 = (result + 16);
  v16 = a4 >> 1;
  v17 = (a4 >> 1) - 1;
  if (a4 >> 1 == 1)
  {
LABEL_6:
    v19 = __OFADD__(a2, v17);
    v21 = a2 + v17;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      v30 = a1;
      v31 = v21;
      v29[0] = a4;
      MEMORY[0x1EEE9AC00](result);
      v27[2] = &v33;
      v27[3] = &v32;
      v27[4] = a4;
      v27[5] = &v35;
      v27[6] = &v31;
      v27[7] = v14;
      v27[8] = v10;
      v22 = _LazyLayout_Subviews.apply(from:style:to:)(&v30, v29, a6, v27);
      *v28 = v22 & 1;
      swift_beginAccess();
      a6 = *(v14 + 16);
      if (!*(a6 + 16))
      {
LABEL_12:
        swift_beginAccess();
        v26 = *(v10 + 16);

        return v26;
      }

      swift_beginAccess();
      v11 = *v12;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_9:
        v23 = MEMORY[0x1E69E7CC0];
        v25 = v11[2];
        v24 = v11[3];
        if (v25 >= v24 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v11);
        }

        v11[2] = v25 + 1;
        v11[v25 + 4] = a6;
        *v12 = v11;
        swift_endAccess();
        *v15 = v23;

        goto LABEL_12;
      }
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    goto LABEL_9;
  }

  if (!v16)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = a2 % v16;
  if (!(a2 % v16))
  {
    goto LABEL_6;
  }

  v19 = __OFSUB__(v16, v18);
  v20 = v16 - v18;
  if (v19)
  {
    goto LABEL_16;
  }

  v19 = __OFADD__(a2, v20);
  a2 += v20;
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_17:
  __break(1u);
  return result;
}

void specialized StackPlacement.measureBackwards(subviews:lastIndex:lastPosition:atStart:atEnd:allowBeforeFirst:)(uint64_t a1, unint64_t a2, int a3, unsigned int a4, int a5, unint64_t *a6, uint64_t (*a7)(void), uint64_t a8, double a9, void (*a10)(void, unint64_t *, char *, void, char *, _WORD *), double (*a11)(unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, double))
{
  v144 = a8;
  v142 = a6;
  v13 = v11;
  v139 = a5;
  v19 = type metadata accessor for IndexSet();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = *(a1 + 16);
  if (v148)
  {
    v146 = a4;
    v135 = a3;
    v147 = a2;
    v13[12] = a2;
    *(v13 + 14) = a9;
    *(v13 + 104) = 1;
    v13[15] = 0;
    *(v13 + 128) = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v13[17];
    v143 = (v13 + 17);
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v24 + 16));
    }

    else
    {
      v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v24 + 24) >> 1);

      v13[17] = v25;
    }

    v13[18] = 0;
    outlined destroy of GlassEntryView?((v13 + 19), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    *(v13 + 19) = 0u;
    *(v13 + 21) = 0u;
    *(v13 + 23) = 0u;
    *(v13 + 25) = 0u;
    *(v13 + 27) = 0u;
    *(v13 + 29) = 0u;
    *(v13 + 31) = 0u;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v13[33];
    if (v26)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v27 + 16));
    }

    else
    {
      v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI25_LazyLayout_PlacedSubviewV_Tt1g5(0, *(v27 + 24) >> 1);

      v13[33] = v28;
    }

    v29 = v144;
    v30 = v142;
    *(v13 + 17) = xmmword_18DDAB4E0;
    *(v13 + 18) = xmmword_18DDAB4F0;
    *(v13 + 19) = xmmword_18DDAB4F0;
    *(v13 + 320) = 0;
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, v30, a7, v29, type metadata accessor for StackPlacement);
    v32 = (v13 + *(v31 + 104));
    v33 = MEMORY[0x1E69E7CC0];
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    *v32 = v34;
    v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v33);

    v32[1] = v35;
    v169 = v33;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = type metadata accessor for EstimationCache();
    (*(v20 + 40))(v32 + *(v36 + 24), v22, v19);
    v175[0] = 0;
    v174 = 0;
    if ((v146 & 1) == 0)
    {
      v39 = v143;
      goto LABEL_12;
    }

    v37 = v13[4];
    v38 = v147 - v37;
    v39 = v143;
    if (!__OFSUB__(v147, v37))
    {
      v147 -= v37;
      v13[12] = v38;
      v174 = 1;
LABEL_12:
      v136 = a11;
      v134 = a10;

      swift_beginAccess();
      swift_beginAccess();
      v40 = 0;
      v41 = 0;
      v42 = 0;
      LODWORD(v144) = *MEMORY[0x1E698D3F8];
      v43 = 8 * v148 + 24;
      v145 = a1;
      v142 = v13;
      while (1)
      {
        v44 = *(a1 + v43);

        *v39 = v44;
        if (v40 == 1)
        {
          v41 = 1;
          LOBYTE(v175[0]) = 1;
          if (!*(v44 + 16))
          {
            v44 = v42;
            goto LABEL_138;
          }

          if (!v42)
          {
            goto LABEL_154;
          }

          if (!*(v42 + 16))
          {
            goto LABEL_148;
          }

          outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);
          if (v172 == 1)
          {

            outlined destroy of _LazyLayout_Subview(&v169);
            goto LABEL_40;
          }

          v58 = v173;

          outlined destroy of _LazyLayout_Subview(&v169);
          if (v58 == 1)
          {
LABEL_40:
            outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);

            v59 = *(v13 + 24);
            v60 = v13[5];
            v61 = v13;
            if (*(v13 + 24))
            {
              v62 = v13[5];
            }

            else
            {
              v62 = 0;
            }

            if (v59)
            {
              v63 = 0;
            }

            else
            {
              v63 = v60;
            }

            if (!*(v44 + 16))
            {
              goto LABEL_151;
            }

            outlined init with copy of _LazyLayout_Subview(v44 + 32, v168);

            v141 = *(v61 + 1);
            v140 = *(v61 + 16);
            v64 = v170;
            v137 = v169;
            v65 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

            v138 = v64;
            if (v65 == v144)
            {
              InputValue = &static LayoutComputer.defaultValue;
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
                InputValue = &static LayoutComputer.defaultValue;
              }
            }

            else
            {
              InputValue = AGGraphGetInputValue();
            }

            v75 = *InputValue;
            v76 = one-time initialization token for lockAssertionsAreEnabled;

            if (v76 != -1)
            {
              swift_once();
            }

            a1 = v145;
            if (lockAssertionsAreEnabled)
            {
              if (one-time initialization token for _lock != -1)
              {
                swift_once();
              }

              if (!_MovableLockIsOwner(static Update._lock))
              {
                goto LABEL_156;
              }
            }

            *&v161 = v62;
            BYTE8(v161) = v59 ^ 1;
            *&v162 = v63;
            BYTE8(v162) = v59;
            v77 = (*(*v75 + 128))(&v161, v59);

            outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v168, &v161, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            if (v161)
            {
              v157 = v164;
              v158 = v165;
              v159 = v166;
              v160 = v167;
              v154 = v161;
              v155 = v162;
              v156 = v163;
              *&v78 = v141;
              v13 = v142;
              if (v140)
              {
                v79 = DWORD2(v154);
                v80 = *(LazyLayoutViewCache.item(data:)(&v155) + 44);

                v151 = v79;
                v152 = v80;
                v81 = v144;
                v153 = v144;
                LayoutProxy.spacing()();
                v150[0] = *AGGraphGetValue();
                v82 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

                v151 = v138;
                v152 = v82;
                v153 = v81;
                LayoutProxy.spacing()();
                *&v78 = COERCE_DOUBLE(Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v59, v150, &v149));
                LOBYTE(v82) = v83;

                if (v82)
                {
                  swift_beginAccess();
                  v84 = &dbl_1EAB21528;
                  if (!v59)
                  {
                    v84 = &static Spacing.defaultValue;
                  }

                  v78 = *v84;
                }
              }

              outlined destroy of _LazyLayout_Subview(&v154);
              v85 = *&v78;
            }

            else
            {
              v85 = 0.0;
              v13 = v142;
            }

            outlined destroy of GlassEntryView?(v168, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            outlined destroy of _LazyLayout_Subview(&v169);
            v39 = v143;
          }

          else
          {
            v97 = *v13;
            v98 = v13[1];
            v99 = *(v13 + 6);
            v100 = *(v13 + 5);
            v168[0] = *(v13 + 16);
            v77 = v136(v42, v44, v97, v98, v168[0] | (v100 << 32), v99);
            v85 = v101;
          }

          v102 = a9 - v77;
          if (v146)
          {
            v103 = a9 - v77;
          }

          else
          {
            v103 = a9;
          }

          v104 = v103 - v85;
          v105 = v147;
          if (v147)
          {
            v102 = v104;
          }

          if (v146)
          {
            a9 = v102;
            *(v13 + 14) = v102;
          }

          if (v85 + a9 <= *(v13 + 7) && (v139 & 1) == 0)
          {
LABEL_141:
            v13[17] = v42;
            v13[18] = v44;
            v130 = swift_isUniquelyReferenced_nonNull_native();
            v131 = v13[17];
            if (v130)
            {
              specialized Array.replaceSubrange<A>(_:with:)(0, *(v131 + 16));
            }

            else
            {
              v132 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI19_LazyLayout_SubviewV_Tt1g5(0, *(v131 + 24) >> 1);

              *v39 = v132;
            }

            return;
          }

          v106 = v13[4];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          if (v107)
          {
            goto LABEL_150;
          }

          if ((v108 & 0x8000000000000000) == 0)
          {
            v13[12] = v108;
            v105 = v108;
          }

          v147 = v105;
          v13[17] = v42;
          v13[18] = v44;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v53 = v13[17];
          if (v109)
          {
            v110 = *(v53 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110, 1, v53);
            }

            swift_arrayDestroy();
            if (v110)
            {
              v111 = &v53[112 * v110];
              v112 = *(v53 + 2) - v110;
              memmove(v53 + 32, v111 + 32, 112 * v112);
              *(v53 + 2) = v112;
            }

            v41 = 1;
          }

          else
          {
            v113 = MEMORY[0x1E69E7CC0];
            if (*(v53 + 3) >= 2uLL)
            {
              type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
              v113 = swift_allocObject();
              v114 = _swift_stdlib_malloc_size(v113);
              v113[2] = 0;
              v113[3] = 2 * ((v114 - 32) / 112);
            }

            v53 = v113;
            v41 = 1;
          }

          goto LABEL_137;
        }

        if (v40)
        {
          break;
        }

        v45 = v13;
        v46 = v39;
        v47 = a1;
        v48 = v41;
        v49 = MEMORY[0x1E69E7CC0];
        if (v42)
        {
          v50 = v42;
        }

        else
        {
          v50 = MEMORY[0x1E69E7CC0];
        }

        v45[17] = v50;
        v45[18] = v44;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v45;
        v53 = v45[17];
        if (v51)
        {
          v54 = *(v53 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 1, v53);
          }

          swift_arrayDestroy();
          if (v54)
          {
            v55 = &v53[112 * v54];
            v56 = *(v53 + 2) - v54;
            memmove(v53 + 32, v55 + 32, 112 * v56);
            *(v53 + 2) = v56;
          }
        }

        else
        {
          if (*(v53 + 3) >= 2uLL)
          {
            type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
            v49 = swift_allocObject();
            v57 = _swift_stdlib_malloc_size(v49);
            v49[2] = 0;
            v49[3] = 2 * ((v57 - 32) / 112);
          }

          v53 = v49;
        }

        v41 = v48;
        a1 = v47;
        v39 = v46;
        v13 = v52;
LABEL_137:
        *v39 = v53;
LABEL_138:
        if (__OFADD__(v40, 1))
        {
          __break(1u);
LABEL_146:

          swift_beginAccess();
          LOBYTE(v175[0]) = 1;
          swift_beginAccess();
          v174 = 1;
          v134(v135 & 1, v13, &v174, v139 & 1, v175 + 1, v175);
          return;
        }

        ++v40;
        v43 -= 8;
        v42 = v44;
        if (v148 == v40)
        {
          goto LABEL_146;
        }
      }

      v174 = 1;
      if (!*(v44 + 16))
      {
        v146 = 1;
        v44 = v42;
        goto LABEL_138;
      }

      if (!v42)
      {
        goto LABEL_155;
      }

      if (!*(v42 + 16))
      {
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);
      if (v172 == 1)
      {

        outlined destroy of _LazyLayout_Subview(&v169);
      }

      else
      {
        v67 = v173;

        outlined destroy of _LazyLayout_Subview(&v169);
        if (v67 != 1)
        {
          v115 = *v13;
          v116 = v13[1];
          v117 = *(v13 + 6);
          v118 = *(v13 + 5);
          v168[0] = *(v13 + 16);
          v88 = v136(v42, v44, v115, v116, v168[0] | (v118 << 32), v117);
          v96 = v119;

          v39 = v143;
LABEL_119:
          v120 = v147;
          if (v147)
          {
            a9 = a9 - v88 - v96;
          }

          else
          {
            a9 = a9 - v88;
          }

          *(v13 + 14) = a9;
          if (v96 + a9 <= *(v13 + 7) && (v139 & 1) == 0)
          {
            goto LABEL_141;
          }

          v121 = v13[4];
          v107 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v107)
          {
            goto LABEL_149;
          }

          if ((v41 & (v122 >= 0)) == 1)
          {
            v13[12] = v122;
            v120 = v122;
          }

          v123 = v41;
          v147 = v120;
          v13[17] = v42;
          v13[18] = v44;
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v53 = v13[17];
          if (v124)
          {
            v125 = *(v53 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125, 1, v53);
            }

            swift_arrayDestroy();
            if (v125)
            {
              v126 = &v53[112 * v125];
              v127 = *(v53 + 2) - v125;
              memmove(v53 + 32, v126 + 32, 112 * v127);
              *(v53 + 2) = v127;
            }

            v146 = 1;
          }

          else
          {
            v128 = MEMORY[0x1E69E7CC0];
            if (*(v53 + 3) >= 2uLL)
            {
              type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_Subview>, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6F90]);
              v128 = swift_allocObject();
              v129 = _swift_stdlib_malloc_size(v128);
              v128[2] = 0;
              v128[3] = 2 * ((v129 - 32) / 112);
            }

            v146 = 1;
            v53 = v128;
          }

          v41 = v123;
          a1 = v145;
          goto LABEL_137;
        }
      }

      v146 = v41;
      outlined init with copy of _LazyLayout_Subview(v42 + 32, &v169);

      v68 = v13;
      v69 = *(v13 + 24);
      if (v69)
      {
        v70 = v68[5];
      }

      else
      {
        v70 = 0;
      }

      if (v69)
      {
        v71 = 0;
      }

      else
      {
        v71 = v68[5];
      }

      if (!*(v44 + 16))
      {
        goto LABEL_152;
      }

      outlined init with copy of _LazyLayout_Subview(v44 + 32, v168);

      v141 = *(v68 + 1);
      v140 = *(v68 + 16);
      v72 = v170;
      v137 = v169;
      v73 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

      v138 = v72;
      if (v73 == v144)
      {
        v74 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v74 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v74 = AGGraphGetInputValue();
      }

      v86 = *v74;
      v87 = one-time initialization token for lockAssertionsAreEnabled;

      if (v87 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_156;
        }
      }

      *&v161 = v70;
      BYTE8(v161) = v69 ^ 1;
      *&v162 = v71;
      BYTE8(v162) = v69;
      v88 = (*(*v86 + 128))(&v161, v69);

      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v168, &v161, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      if (v161)
      {
        v157 = v164;
        v158 = v165;
        v159 = v166;
        v160 = v167;
        v154 = v161;
        v155 = v162;
        v156 = v163;
        v39 = v143;
        v41 = v146;
        if (v140)
        {
          v89 = DWORD2(v154);
          v90 = *(LazyLayoutViewCache.item(data:)(&v155) + 44);

          v151 = v89;
          v152 = v90;
          v91 = v144;
          v153 = v144;
          LayoutProxy.spacing()();
          v150[0] = *AGGraphGetValue();
          v92 = *(LazyLayoutViewCache.item(data:)(v171) + 44);

          v151 = v138;
          v152 = v92;
          v153 = v91;
          LayoutProxy.spacing()();
          v93 = Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v69, v150, &v149);
          LOBYTE(v92) = v94;

          if (v92)
          {
            swift_beginAccess();
            v95 = &dbl_1EAB21528;
            if (!v69)
            {
              v95 = &static Spacing.defaultValue;
            }

            v141 = *v95;
          }

          else
          {
            v141 = *&v93;
          }

          v41 = v146;
        }

        outlined destroy of _LazyLayout_Subview(&v154);
        v96 = v141;
      }

      else
      {
        v96 = 0.0;
        v39 = v143;
        v41 = v146;
      }

      outlined destroy of GlassEntryView?(v168, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      outlined destroy of _LazyLayout_Subview(&v169);
      v13 = v142;
      goto LABEL_119;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t specialized Sequence.min(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {

    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

  v4 = *(a1 + 80);
  v102 = *(a1 + 64);
  v103 = v4;
  v104 = *(a1 + 96);
  v5 = *(a1 + 48);
  v100 = *(a1 + 32);
  v101 = v5;

  outlined init with copy of _LazyLayout_PlacedSubview(&v100, &v95);
  v97 = v102;
  v98 = v103;
  v99 = v104;
  v95 = v100;
  v96 = v101;
  v6 = v3 - 1;
  if (v3 == 1)
  {
LABEL_3:

    v8 = v98;
    a3[2] = v97;
    a3[3] = v8;
    a3[4] = v99;
    v9 = v96;
    *a3 = v95;
    a3[1] = v9;
    return result;
  }

  v105 = *MEMORY[0x1E698D3F8];
  v11 = (a1 + 112);
  while (1)
  {
    v12 = v11[1];
    v90 = *v11;
    v91 = v12;
    v13 = v11[3];
    v92 = v11[2];
    v93 = v13;
    v94 = v11[4];
    v14 = v90;
    if ((*(v90 + 173) & 1) != 0 || *(v90 + 174) == 1)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v90, &v86);
LABEL_11:
      v15 = INFINITY;
      goto LABEL_12;
    }

    if (*(v90 + 44) == v105)
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v90, &v86);
      Value = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        Value = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      outlined init with copy of _LazyLayout_PlacedSubview(&v90, &v86);
      Value = AGGraphGetValue();
    }

    v19 = *Value;
    v20 = *(&v90 + 1);
    v21 = v91;
    v22 = *(&v91 + 1);
    v23 = v92;
    v24 = *(&v92 + 1);
    v26 = v93;
    v25 = *&v94;
    v27 = one-time initialization token for lockAssertionsAreEnabled;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = lockAssertionsAreEnabled;
    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    v86 = v20;
    v87 = v21;
    v88 = v22;
    v89 = v23;
    v29 = (*(*v19 + 120))(&v86);
    v31 = v30;

    if (*(v14 + 44) == v105)
    {
      v32 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v32 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v32 = AGGraphGetValue();
    }

    v47 = *v32;
    if (v28)
    {
      v48 = one-time initialization token for _lock;

      if (v48 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    else
    {
    }

    v86 = v20;
    v87 = v21;
    v88 = v22;
    v89 = v23;
    v49 = (*(*v47 + 120))(&v86);
    v51 = v50;

    swift_beginAccess();
    v106.origin.x = *(&v26 + 1) - v24 * v29;
    v106.origin.y = v25 - *&v26 * v31;
    v106.size.width = v49;
    v106.size.height = v51;
    v107 = CGRectIntersection(v106, *(a2 + 16));
    if (!CGRectIsEmpty(v107))
    {
      goto LABEL_11;
    }

    if (*(v14 + 44) == v105)
    {
      v52 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v52 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v52 = AGGraphGetValue();
    }

    v66 = *v52;
    if (v28)
    {
      v67 = one-time initialization token for _lock;

      if (v67 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    else
    {
    }

    v86 = v20;
    v87 = v21;
    v88 = v22;
    v89 = v23;
    v68 = (*(*v66 + 120))(&v86);
    v70 = v69;

    if (*(v14 + 44) == v105)
    {
      v71 = &static LayoutComputer.defaultValue;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v71 = &static LayoutComputer.defaultValue;
      }
    }

    else
    {
      v71 = AGGraphGetValue();
    }

    v78 = *v71;
    if (v28)
    {
      v79 = one-time initialization token for _lock;

      if (v79 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    else
    {
    }

    v86 = v20;
    v87 = v21;
    v88 = v22;
    v89 = v23;
    (*(*v78 + 120))(&v86);

    v15 = sqrt((*(&v26 + 1) - v24 * v68) * (*(&v26 + 1) - v24 * v68) + (v25 - *&v26 * v70) * (v25 - *&v26 * v70));
LABEL_12:
    v16 = v95;
    if ((*(v95 + 173) & 1) != 0 || *(v95 + 174) == 1)
    {
      if (v15 != INFINITY)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*(v95 + 44) == v105)
      {
        v18 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v18 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v18 = AGGraphGetValue();
      }

      v33 = *v18;
      v34 = *(&v95 + 1);
      v35 = v96;
      v36 = *(&v96 + 1);
      v37 = v97;
      v38 = *(&v97 + 1);
      v40 = *&v98;
      v39 = *&v99;
      v84 = *(&v98 + 1);
      v41 = one-time initialization token for lockAssertionsAreEnabled;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      v86 = v34;
      v87 = v35;
      v88 = v36;
      v89 = v37;
      v43 = (*(*v33 + 120))(&v86);
      v45 = v44;

      if (*(v16 + 44) == v105)
      {
        v46 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v46 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v46 = AGGraphGetValue();
      }

      v53 = *v46;
      if (v42)
      {
        v54 = one-time initialization token for _lock;

        if (v54 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      else
      {
      }

      v55 = v38;
      v56 = v40;
      v57 = v40 * v45;
      v58 = v84 - v38 * v43;
      v59 = v39;
      v60 = v39 - v57;
      v86 = v34;
      v87 = v35;
      v88 = v36;
      v89 = v37;
      v61 = (*(*v53 + 120))(&v86);
      v63 = v62;

      swift_beginAccess();
      v108.origin.x = v58;
      v108.origin.y = v60;
      v108.size.width = v61;
      v108.size.height = v63;
      v109 = CGRectIntersection(v108, *(a2 + 16));
      if (CGRectIsEmpty(v109))
      {
        if (*(v16 + 44) == v105)
        {
          v64 = &static LayoutComputer.defaultValue;
          v65 = v59;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v64 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v64 = AGGraphGetValue();
          v65 = v59;
        }

        v72 = *v64;
        if (v42)
        {
          v73 = one-time initialization token for _lock;

          if (v73 != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        else
        {
        }

        v86 = v34;
        v87 = v35;
        v88 = v36;
        v89 = v37;
        v74 = (*(*v72 + 120))(&v86);
        v76 = v75;

        if (*(v16 + 44) == v105)
        {
          v77 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v77 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v77 = AGGraphGetValue();
        }

        v80 = *v77;
        if (v42)
        {
          v81 = one-time initialization token for _lock;

          if (v81 != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        else
        {
        }

        v86 = v34;
        v87 = v35;
        v88 = v36;
        v89 = v37;
        (*(*v80 + 120))(&v86);

        if (v15 < sqrt((v84 - v55 * v74) * (v84 - v55 * v74) + (v65 - v56 * v76) * (v65 - v56 * v76)))
        {
LABEL_15:
          outlined destroy of _LazyLayout_PlacedSubview(&v95);
          v97 = v92;
          v98 = v93;
          v99 = v94;
          v95 = v90;
          v96 = v91;
          goto LABEL_7;
        }
      }

      else if (v15 != INFINITY)
      {
        goto LABEL_15;
      }
    }

    outlined destroy of _LazyLayout_PlacedSubview(&v90);
LABEL_7:
    v11 += 5;
    if (!--v6)
    {
      goto LABEL_3;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Sequence.min(by:)@<X0>(uint64_t a1@<X0>, void (*a2)(float64x2_t *__return_ptr, uint64_t, __int128 *)@<X1>, uint64_t a3@<X8>)
{
  v41 = 0;
  v42 = 0;
  v40 = a1;
  specialized EnumeratedSequence.Iterator.next()(&v34);
  if (*(&v34 + 1))
  {
    v23 = a3;
    v47 = v3;
    *&v33[32] = v36;
    *&v33[48] = v37;
    *&v33[64] = v38;
    *&v33[80] = v39;
    *v33 = v34;
    *&v33[16] = v35;
    v6 = v40;
    v7 = v41;
    v8 = v42;
    v9 = *(v40 + 16);

    if (v7 == v9)
    {
LABEL_3:

      v11 = *&v33[48];
      *(v23 + 32) = *&v33[32];
      *(v23 + 48) = v11;
      *(v23 + 64) = *&v33[64];
      *(v23 + 80) = *&v33[80];
      v12 = *&v33[16];
      *v23 = *v33;
      *(v23 + 16) = v12;
    }

    else
    {
      v16 = (v6 + 80 * v7 + 32);
      while (v7 < v9)
      {
        v31[0] = *v16;
        v17 = v16[1];
        v18 = v16[2];
        v19 = v16[4];
        v31[3] = v16[3];
        v31[4] = v19;
        v31[1] = v17;
        v31[2] = v18;
        v20 = v16[3];
        v28 = v16[2];
        v29 = v20;
        v30 = v16[4];
        v21 = v16[1];
        v26 = *v16;
        v27 = v21;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_15;
        }

        *v32 = v8;
        *&v32[24] = v27;
        *&v32[40] = v28;
        *&v32[56] = v29;
        *&v32[72] = v30;
        *&v32[8] = v26;
        outlined init with copy of _LazyLayout_PlacedSubview(v31, v25);
        a2(v43, v8, &v26);
        if (v44 & 1) != 0 || (v24 = v43[0], v28 = *&v33[40], v29 = *&v33[56], v30 = *&v33[72], v26 = *&v33[8], v27 = *&v33[24], a2(v45, *v33, &v26), (v46) || (v22 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v24, v24), vmulq_f64(v45[0], v45[0]))), (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v22, 1), v22)).u8[0] & 1) == 0))
        {
          result = outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v32);
        }

        else
        {
          result = outlined destroy of (offset: Int, element: _LazyLayout_PlacedSubview)(v33);
          *&v33[32] = *&v32[32];
          *&v33[48] = *&v32[48];
          *&v33[64] = *&v32[64];
          *&v33[80] = *&v32[80];
          *v33 = *v32;
          *&v33[16] = *&v32[16];
        }

        ++v7;
        v9 = *(v6 + 16);
        v16 += 5;
        ++v8;
        if (v7 == v9)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  else
  {
    v13 = v34;

    *&v33[32] = v36;
    *&v33[48] = v37;
    *&v33[64] = v38;
    *&v33[80] = v39;
    *v33 = v34;
    *&v33[16] = v35;
    result = outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v33, type metadata accessor for (offset: Int, element: _LazyLayout_PlacedSubview)?);
    *a3 = v13;
    *(a3 + 8) = 0;
    v14 = v38;
    *(a3 + 48) = v37;
    *(a3 + 64) = v14;
    *(a3 + 80) = v39;
    v15 = v36;
    *(a3 + 16) = v35;
    *(a3 + 32) = v15;
  }

  return result;
}

uint64_t specialized closure #1 in StackPlacement.place(subviews:from:position:stopping:style:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(__int128 *, void *), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v13 = outlined init with copy of _LazyLayout_Subviews.Node(a2, &v27);
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
    MEMORY[0x1EEE9AC00](v13);
    v16[2] = a4;
    v17 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(a1, &v17, a6, v16);
    v14 = outlined destroy of _LazyLayout_Subviews(&v18);
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
  a5(&v18, a1);
  v14 = outlined destroy of _LazyLayout_Section(&v18);
  if (*a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = a7(v14);
LABEL_6:
  *a3 = result & 1;
  return result;
}

uint64_t specialized StackPlacement.placeSection(_:from:)(__int128 *a1, uint64_t *a2)
{
  outlined destroy of GlassEntryView?(v2 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  specialized StackPlacement.flushMinorGroup()();
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v6 = a1[3];
  v28 = a1[2];
  v29 = v6;
  v30 = *(a1 + 8);
  v31 = 0;
  v7 = a1[1];
  v26 = *a1;
  v27 = v7;
  v8 = _LazyLayout_Section.header.getter(v25);
  MEMORY[0x1EEE9AC00](v8);
  v21 = v2;
  v22 = a2;
  v24 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v31, &v24, partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:), v20);
  outlined destroy of _LazyLayout_Subviews(v25);
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  v30 = *(a1 + 8);
  v10 = a1[1];
  v26 = *a1;
  v27 = v10;
  _LazyLayout_Section.content.getter(v25);
  MEMORY[0x1EEE9AC00](v11);
  v21 = v2;
  v24 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(a2, &v24, partial apply for specialized closure #2 in StackPlacement.placeSection(_:from:), v20);
  result = outlined destroy of _LazyLayout_Subviews(v25);
  v12 = *a2;
  if (*a2)
  {
    v13 = *(v2 + 32) & 0x7FFFFFFFFFFFFFFFLL;
    if (v13 != 1)
    {
      if (v13)
      {
        v14 = v12 % v13;
        v15 = __OFSUB__(v12, v14);
        v16 = v12 - v14;
        if (!v15)
        {
          *a2 = v16;
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

LABEL_8:
  specialized StackPlacement.flushMinorGroup()();
  result = specialized StackPlacement.shouldStop()();
  if ((result & 1) == 0 || *(v2 + 56) < *(v2 + 112) && (*(v2 + 72) & 2) != 0)
  {
    v24 = 0;
    v17 = a1[3];
    v28 = a1[2];
    v29 = v17;
    v30 = *(a1 + 8);
    v18 = a1[1];
    v26 = *a1;
    v27 = v18;
    _LazyLayout_Section.footer.getter(v25);
    MEMORY[0x1EEE9AC00](v19);
    v21 = v2;
    v22 = a2;
    v23 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v24, &v23, partial apply for specialized closure #3 in StackPlacement.placeSection(_:from:), v20);
    return outlined destroy of _LazyLayout_Subviews(v25);
  }

  return result;
}

{
  outlined destroy of GlassEntryView?(v2 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  specialized StackPlacement.flushMinorGroup()();
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v6 = a1[3];
  v28 = a1[2];
  v29 = v6;
  v30 = *(a1 + 8);
  v31 = 0;
  v7 = a1[1];
  v26 = *a1;
  v27 = v7;
  v8 = _LazyLayout_Section.header.getter(v25);
  MEMORY[0x1EEE9AC00](v8);
  v21 = v2;
  v22 = a2;
  v24 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v31, &v24, partial apply for specialized closure #1 in StackPlacement.placeSection(_:from:), v20);
  outlined destroy of _LazyLayout_Subviews(v25);
  result = specialized StackPlacement.shouldStop()();
  if (result)
  {
    return result;
  }

  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  v30 = *(a1 + 8);
  v10 = a1[1];
  v26 = *a1;
  v27 = v10;
  _LazyLayout_Section.content.getter(v25);
  MEMORY[0x1EEE9AC00](v11);
  v21 = v2;
  v24 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(a2, &v24, partial apply for specialized closure #2 in StackPlacement.placeSection(_:from:), v20);
  result = outlined destroy of _LazyLayout_Subviews(v25);
  v12 = *a2;
  if (*a2)
  {
    v13 = *(v2 + 32) & 0x7FFFFFFFFFFFFFFFLL;
    if (v13 != 1)
    {
      if (v13)
      {
        v14 = v12 % v13;
        v15 = __OFSUB__(v12, v14);
        v16 = v12 - v14;
        if (!v15)
        {
          *a2 = v16;
          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

LABEL_8:
  specialized StackPlacement.flushMinorGroup()();
  result = specialized StackPlacement.shouldStop()();
  if ((result & 1) == 0 || *(v2 + 56) < *(v2 + 112) && (*(v2 + 72) & 2) != 0)
  {
    v24 = 0;
    v17 = a1[3];
    v28 = a1[2];
    v29 = v17;
    v30 = *(a1 + 8);
    v18 = a1[1];
    v26 = *a1;
    v27 = v18;
    _LazyLayout_Section.footer.getter(v25);
    MEMORY[0x1EEE9AC00](v19);
    v21 = v2;
    v22 = a2;
    v23 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v24, &v23, partial apply for specialized closure #3 in StackPlacement.placeSection(_:from:), v20);
    return outlined destroy of _LazyLayout_Subviews(v25);
  }

  return result;
}

uint64_t specialized StackPlacement.placeBody(subview:)(uint64_t a1, uint64_t (*a2)(void))
{
  outlined init with copy of _LazyLayout_Subview(a1, v15);
  v4 = *(v2 + 136);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v8;
  v9 = (v4 + 112 * v7);
  v10 = v15[0];
  v11 = v15[2];
  v9[3] = v15[1];
  v9[4] = v11;
  v9[2] = v10;
  v12 = v15[3];
  v13 = v15[4];
  v14 = v15[6];
  v9[7] = v15[5];
  v9[8] = v14;
  v9[5] = v12;
  v9[6] = v13;
  *(v2 + 136) = v4;
  if (v8 == *(v2 + 32))
  {
    return a2();
  }

  return result;
}

BOOL specialized StackPlacement.shouldStop()()
{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v2, static Log.lazyLayoutPrefetch);
    outlined init with copy of ObservationTracking._AccessList?(v6, v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    }

    else
    {
      v9 = v0;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v16 = v8;
        v13 = v12;
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75AD0, &v17);
        _os_log_impl(&dword_18D018000, v10, v11, "%{public}s: Stopping placement because deadline passed", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x193AC4820](v14, -1, -1);
        v15 = v13;
        v8 = v16;
        MEMORY[0x193AC4820](v15, -1, -1);
      }

      v0 = v9;
      (*(v8 + 8))(v4, v7);
    }

    result = 1;
    *(v0 + 320) = 1;
  }

  else if (*(v0 + 128))
  {
    return *(v0 + 64) <= *(v0 + 112);
  }

  else
  {
    return *(v0 + 120) < *(v0 + 96);
  }

  return result;
}

{
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  if (AGGraphHasDeadlinePassed())
  {
    AGGraphCancelUpdate();
    if (one-time initialization token for lazyLayoutPrefetch != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v2, static Log.lazyLayoutPrefetch);
    outlined init with copy of ObservationTracking._AccessList?(v6, v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      outlined destroy of ObservationTracking._AccessList?(v4, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    }

    else
    {
      v9 = v0;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v16 = v8;
        v13 = v12;
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x800000018DD75980, &v17);
        _os_log_impl(&dword_18D018000, v10, v11, "%{public}s: Stopping placement because deadline passed", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x193AC4820](v14, -1, -1);
        v15 = v13;
        v8 = v16;
        MEMORY[0x193AC4820](v15, -1, -1);
      }

      v0 = v9;
      (*(v8 + 8))(v4, v7);
    }

    result = 1;
    *(v0 + 320) = 1;
  }

  else if (*(v0 + 128))
  {
    return *(v0 + 64) <= *(v0 + 112);
  }

  else
  {
    return *(v0 + 120) < *(v0 + 96);
  }

  return result;
}

uint64_t specialized StackPlacement.flushMinorGroup()()
{
  v3 = (v0 + 136);
  result = *(v0 + 136);
  if (!*(result + 16))
  {
    return result;
  }

  v4 = v0;
  if (*(v0 + 104))
  {
    *(v0 + 104) = 0;
    goto LABEL_28;
  }

  v5 = *(v0 + 144);
  v1 = v4 + 144;
  v6 = *(v4 + 48);
  LOBYTE(v41[0]) = *(v4 + 16);
  specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(result, v5, v6);
  v9 = v8;
  v10 = v7;
  v11 = v5 == 0;
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *&v7;
  }

  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
  EstimationCache.add(length:spacing:count:)(v12, v11, 1, v9);
  v13 = *(v4 + 96);
  type metadata accessor for EstimationCache();
  if (v9 == 0.0)
  {
    IndexSet.insert(_:)(v13);
  }

  else if (IndexSet.contains(_:)(v13))
  {
    IndexSet.remove(_:)(v13);
  }

  if (AGGraphHasDeadlinePassed())
  {
    goto LABEL_34;
  }

  v14 = v10 + *(v4 + 112);
  *(v4 + 112) = v14;
  if (specialized StackPlacement.isVisible(length:)(v9))
  {
    v15 = v4;
    specialized StackPlacement.addVisibleSubview(length:spacing:)(v9, v10);
    specialized StackPlacement.flushPendingHeader()();
    if (*(*(v4 + 136) + 16))
    {
      v16 = *(v4 + 48);
      v17 = *v4;

      AlignmentKey.fraction.getter(v17);
      v14 = *(v4 + 112);
      v19 = 0.0;
      if (*(v4 + 24))
      {
        v20 = v14 + 0.0;
      }

      else
      {
        v20 = 0.0;
      }

      if (!*(v4 + 24))
      {
        v19 = v14 + 0.0;
      }

      v21 = v9 * 0.5 + v19;
      v22 = *(v4 + 32) == 1;
      if (*(v4 + 32) == 1)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v9;
      }

      LOBYTE(v41[0]) = *(v4 + 32) == 1;
      *&v34 = v23;
      BYTE8(v34) = v22;
      v35 = v16;
      v36 = 0;
      v37 = 0x3FE0000000000000;
      v38 = v18;
      v39 = v21;
      v40 = v16 * v18 + v20;
      _LazyLayout_Subview.place(at:)(&v34, v41);
      v15 = *(v4 + 264);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
LABEL_24:
    v1 = *(v15 + 2);
    v24 = *(v15 + 3);
    if (v1 >= v24 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v1 + 1, 1, v15);
    }

    *(v15 + 2) = v1 + 1;
    v25 = &v15[80 * v1];
    *(v25 + 2) = v41[0];
    v26 = v41[1];
    v27 = v41[2];
    v28 = v41[4];
    *(v25 + 5) = v41[3];
    *(v25 + 6) = v28;
    *(v25 + 3) = v26;
    *(v25 + 4) = v27;

    *(v4 + 264) = v15;
  }

  *(v4 + 112) = v9 + v14;
LABEL_28:
  v29 = *(v4 + 32);
  v30 = *(v4 + 96);
  v31 = __OFADD__(v30, v29);
  v32 = v30 + v29;
  if (v31)
  {
    __break(1u);
LABEL_34:
    AGGraphCancelUpdate();
    *(v4 + 320) = 1;
    v33 = v1;
    goto LABEL_30;
  }

  *(v4 + 96) = v32;
  v33 = (v4 + 144);
LABEL_30:

  return swapSubviews(_:_:)(v33, v3);
}

{
  v3 = (v0 + 136);
  result = *(v0 + 136);
  if (!*(result + 16))
  {
    return result;
  }

  v4 = v0;
  if (*(v0 + 104))
  {
    *(v0 + 104) = 0;
    goto LABEL_28;
  }

  v5 = *(v0 + 144);
  v1 = v4 + 144;
  v6 = *(v4 + 48);
  LOBYTE(v41[0]) = *(v4 + 16);
  specialized LazyHVStack<>.lengthAndSpacing(subviews:predecessors:minorGeometry:)(result, v5, v6);
  v9 = v8;
  v10 = v7;
  v11 = v5 == 0;
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *&v7;
  }

  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
  EstimationCache.add(length:spacing:count:)(v12, v11, 1, v9);
  v13 = *(v4 + 96);
  type metadata accessor for EstimationCache();
  if (v9 == 0.0)
  {
    IndexSet.insert(_:)(v13);
  }

  else if (IndexSet.contains(_:)(v13))
  {
    IndexSet.remove(_:)(v13);
  }

  if (AGGraphHasDeadlinePassed())
  {
    goto LABEL_34;
  }

  v14 = v10 + *(v4 + 112);
  *(v4 + 112) = v14;
  if (specialized StackPlacement.isVisible(length:)(v9))
  {
    v15 = v4;
    specialized StackPlacement.addVisibleSubview(length:spacing:)(v9, v10);
    specialized StackPlacement.flushPendingHeader()();
    if (*(*(v4 + 136) + 16))
    {
      v16 = *(v4 + 48);
      v17 = *v4;

      AlignmentKey.fraction.getter(v17);
      v14 = *(v4 + 112);
      v19 = 0.0;
      if (*(v4 + 24))
      {
        v20 = v14 + 0.0;
      }

      else
      {
        v20 = 0.0;
      }

      if (!*(v4 + 24))
      {
        v19 = v14 + 0.0;
      }

      v21 = v16 * v18 + v19;
      v22 = *(v4 + 32) == 1;
      LOBYTE(v41[0]) = 0;
      *&v34 = v16;
      if (v22)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v9;
      }

      BYTE8(v34) = 0;
      v35 = v23;
      v36 = v22;
      v37 = v18;
      v38 = 0x3FE0000000000000;
      v39 = v21;
      v40 = v9 * 0.5 + v20;
      _LazyLayout_Subview.place(at:)(&v34, v41);
      v15 = *(v4 + 264);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
LABEL_24:
    v1 = *(v15 + 2);
    v24 = *(v15 + 3);
    if (v1 >= v24 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v1 + 1, 1, v15);
    }

    *(v15 + 2) = v1 + 1;
    v25 = &v15[80 * v1];
    *(v25 + 2) = v41[0];
    v26 = v41[1];
    v27 = v41[2];
    v28 = v41[4];
    *(v25 + 5) = v41[3];
    *(v25 + 6) = v28;
    *(v25 + 3) = v26;
    *(v25 + 4) = v27;

    *(v4 + 264) = v15;
  }

  *(v4 + 112) = v9 + v14;
LABEL_28:
  v29 = *(v4 + 32);
  v30 = *(v4 + 96);
  v31 = __OFADD__(v30, v29);
  v32 = v30 + v29;
  if (v31)
  {
    __break(1u);
LABEL_34:
    AGGraphCancelUpdate();
    *(v4 + 320) = 1;
    v33 = v1;
    goto LABEL_30;
  }

  *(v4 + 96) = v32;
  v33 = (v4 + 144);
LABEL_30:

  return swapSubviews(_:_:)(v33, v3);
}

void specialized StackPlacement.addVisibleSubview(length:spacing:)(double a1, double a2)
{
  v3 = *(v2 + 96);
  v4 = *(v2 + 280);
  if (v3 >= *(v2 + 272))
  {
    v5 = *(v2 + 272);
  }

  else
  {
    v5 = *(v2 + 96);
  }

  v6 = *(v2 + 32);
  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  v9 = v7;
  if (v8 - 1 > v4)
  {
    v4 = v8 - 1;
  }

  v10 = *(v2 + 112);
  v11 = v10 - a2;
  v12 = *(v2 + 296);
  if (v11 >= *(v2 + 288))
  {
    v11 = *(v2 + 288);
  }

  *(v2 + 272) = v5;
  *(v2 + 280) = v4;
  v13 = v10 + a1;
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  *(v2 + 288) = v11;
  *(v2 + 296) = v14;
  if ((*(v2 + 88) & 1) == 0)
  {
    if (v9)
    {
      __break(1u);
    }

    else if (v8 >= v3)
    {
      v15 = *(v2 + 80);
      if (v15 >= v3 && v15 < v8)
      {
        v16 = *(v2 + 304);
        if (v10 < v16)
        {
          v16 = v10;
        }

        if (*(v2 + 312) > v13)
        {
          v13 = *(v2 + 312);
        }

        *(v2 + 304) = v16;
        *(v2 + 312) = v13;
      }

      return;
    }

    __break(1u);
  }
}

uint64_t *specialized StackPlacement.placeHeaderOrFooter(start:subview:kind:)(uint64_t *result, uint64_t a2, unsigned __int8 a3)
{
  v7 = v3;
  v9 = a3;
  v10 = *result;
  if (!*result)
  {
    v4 = &v70;
    if (v3[104])
    {
      v3[104] = 0;
      if (a3 == 1)
      {
        outlined destroy of GlassEntryView?((v3 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        outlined init with copy of _LazyLayout_Subview(a2, (v3 + 152));
      }

      goto LABEL_68;
    }

    v16 = v3[24];
    if (v16)
    {
      v17 = *(v3 + 5);
    }

    else
    {
      v17 = 0;
    }

    if (v3[24])
    {
      v18 = 0.0;
    }

    else
    {
      v18 = *(v3 + 5);
    }

    v19 = *(v3 + 18);
    v59 = v17;
    if (v19)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_86;
      }

      outlined init with copy of _LazyLayout_Subview(v19 + 32, &v70);
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
    }

    v20 = *(a2 + 8);
    v21 = *(LazyLayoutViewCache.item(data:)((a2 + 16)) + 44);

    v22 = *MEMORY[0x1E698D3F8];
    v67 = v20;
    v68 = v21;
    v69 = v22;
    *&v60 = v59;
    BYTE8(v60) = v16 ^ 1;
    v61 = v18;
    v62 = v16;
    v23 = LayoutProxy.lengthThatFits(_:in:)(&v60, v16);
    v5 = v24;
    MEMORY[0x1EEE9AC00](v23);
    v25 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v27 = v26;
    outlined destroy of GlassEntryView?(&v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    if (v27)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v25;
    }

    v29 = v19 == 0;
    if (v19)
    {
      v30 = *&v28;
    }

    else
    {
      v30 = 0;
    }

    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for StackPlacement);
    EstimationCache.add(length:spacing:count:)(v30, v29, 1, v5);
    v31 = *(v7 + 12);
    type metadata accessor for EstimationCache();
    if (v5 == 0.0)
    {
      IndexSet.insert(_:)(v31);
    }

    else if (IndexSet.contains(_:)(v31))
    {
      IndexSet.remove(_:)(v31);
    }

    v6 = v28 + *(v7 + 14);
    *(v7 + 14) = v6;
    v3 = v7;
    if (specialized StackPlacement.isVisible(length:)(v5))
    {
      specialized StackPlacement.addVisibleSubview(length:spacing:)(v5, v28);
      specialized StackPlacement.flushPendingHeader()();
      v6 = *(v7 + 14);
      if (v7[24])
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *(v7 + 14);
      }

      if (v7[24])
      {
        v33 = *(v7 + 14);
      }

      else
      {
        v33 = 0.0;
      }

      if (v7[24])
      {
        v34 = *(v7 + 5);
      }

      else
      {
        v34 = v5;
      }

      if (v7[24])
      {
        v35 = v5;
      }

      else
      {
        v35 = *(v7 + 5);
      }

      v36 = 0.5;
      if ((v9 - 1) > 1)
      {
LABEL_60:
        v37 = *(v7 + 4) == 1;
        if (*(v7 + 4) == 1)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = v34;
        }

        LOBYTE(v70) = *(v7 + 4) == 1;
        *&v60 = v38;
        BYTE8(v60) = v37;
        v61 = v35;
        v62 = 0;
        v63 = 0x3FE0000000000000;
        v64 = v36;
        v65 = v32 + v34 * 0.5;
        v66 = v33 + v36 * v35;
        _LazyLayout_Subview.place(at:)(&v60, &v70);
        v3 = *(v7 + 33);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_64;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if ((v7[72] & 2) == 0 || v9 != 2)
      {
        if (v9 == 1)
        {
          v3 = &lazy cache variable for type metadata for _LazyLayout_Subview?;
          v57 = MEMORY[0x1E69E6720];
          outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v7 + 152), &v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
          v58 = v70;
          outlined destroy of GlassEntryView?(&v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v57);
          if (!v58)
          {
            outlined destroy of GlassEntryView?((v7 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            outlined init with copy of _LazyLayout_Subview(a2, (v7 + 152));
          }
        }

        goto LABEL_67;
      }

      if (*(v7 + 35) < *(v7 + 34))
      {
        goto LABEL_67;
      }

      specialized StackPlacement.flushPendingHeader()();
      v6 = *(v7 + 14);
      if (v7[24])
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *(v7 + 14);
      }

      if (v7[24])
      {
        v33 = *(v7 + 14);
      }

      else
      {
        v33 = 0.0;
      }

      if (v7[24])
      {
        v34 = *(v7 + 5);
      }

      else
      {
        v34 = v5;
      }

      if (v7[24])
      {
        v35 = v5;
      }

      else
      {
        v35 = *(v7 + 5);
      }
    }

    AlignmentKey.fraction.getter(*v7);
    goto LABEL_60;
  }

  v11 = *(v3 + 4);
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    do
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
LABEL_64:
      v40 = *(v3 + 2);
      v39 = *(v3 + 3);
      if (v40 >= v39 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v3);
      }

      *(v3 + 2) = v40 + 1;
      v41 = &v3[80 * v40];
      *(v41 + 2) = v70;
      v42 = v71;
      v43 = v72;
      v44 = v4[4];
      *(v41 + 5) = v4[3];
      *(v41 + 6) = v44;
      *(v41 + 3) = v42;
      *(v41 + 4) = v43;
      *(v7 + 33) = v3;
LABEL_67:
      *(v7 + 14) = v5 + v6;
LABEL_68:
      v45 = *(v7 + 4);
      v46 = *(v7 + 12);
      v12 = __OFADD__(v46, v45);
      v47 = v46 + v45;
      if (v12)
      {
        goto LABEL_84;
      }

      *(v7 + 12) = v47;
    }

    while (v45 < 0);
    if (v45)
    {
      v48 = *(v7 + 17);
      do
      {
        outlined init with copy of _LazyLayout_Subview(a2, &v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        }

        v50 = *(v48 + 2);
        v49 = *(v48 + 3);
        if (v50 >= v49 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
        }

        *(v48 + 2) = v50 + 1;
        v51 = &v48[112 * v50];
        v52 = v70;
        v53 = v72;
        *(v51 + 3) = v71;
        *(v51 + 4) = v53;
        *(v51 + 2) = v52;
        v54 = v4[3];
        v55 = v4[4];
        v56 = v4[6];
        *(v51 + 7) = v4[5];
        *(v51 + 8) = v56;
        *(v51 + 5) = v54;
        *(v51 + 6) = v55;
        --v45;
      }

      while (v45);
      *(v7 + 17) = v48;
    }

    return swapSubviews(_:_:)(v7 + 18, v7 + 17);
  }

  else
  {
    *result = v13;
    if (a3 == 1)
    {
      v14 = MEMORY[0x1E69E6720];
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v3 + 152), &v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      v15 = v70;
      result = outlined destroy of GlassEntryView?(&v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v14);
      if (!v15)
      {
        outlined destroy of GlassEntryView?((v3 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        return outlined init with copy of _LazyLayout_Subview(a2, (v3 + 152));
      }
    }
  }

  return result;
}

{
  v7 = v3;
  v9 = a3;
  v10 = *result;
  if (!*result)
  {
    v4 = &v70;
    if (v3[104])
    {
      v3[104] = 0;
      if (a3 == 1)
      {
        outlined destroy of GlassEntryView?((v3 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        outlined init with copy of _LazyLayout_Subview(a2, (v3 + 152));
      }

      goto LABEL_68;
    }

    v16 = v3[24];
    if (v16)
    {
      v17 = *(v3 + 5);
    }

    else
    {
      v17 = 0;
    }

    if (v3[24])
    {
      v18 = 0.0;
    }

    else
    {
      v18 = *(v3 + 5);
    }

    v19 = *(v3 + 18);
    v59 = v17;
    if (v19)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_86;
      }

      outlined init with copy of _LazyLayout_Subview(v19 + 32, &v70);
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
    }

    v20 = *(a2 + 8);
    v21 = *(LazyLayoutViewCache.item(data:)((a2 + 16)) + 44);

    v22 = *MEMORY[0x1E698D3F8];
    v67 = v20;
    v68 = v21;
    v69 = v22;
    *&v60 = v59;
    BYTE8(v60) = v16 ^ 1;
    v61 = v18;
    v62 = v16;
    v23 = LayoutProxy.lengthThatFits(_:in:)(&v60, v16);
    v5 = v24;
    MEMORY[0x1EEE9AC00](v23);
    v25 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v27 = v26;
    outlined destroy of GlassEntryView?(&v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
    if (v27)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v25;
    }

    v29 = v19 == 0;
    if (v19)
    {
      v30 = *&v28;
    }

    else
    {
      v30 = 0;
    }

    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for StackPlacement<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for StackPlacement);
    EstimationCache.add(length:spacing:count:)(v30, v29, 1, v5);
    v31 = *(v7 + 12);
    type metadata accessor for EstimationCache();
    if (v5 == 0.0)
    {
      IndexSet.insert(_:)(v31);
    }

    else if (IndexSet.contains(_:)(v31))
    {
      IndexSet.remove(_:)(v31);
    }

    v6 = v28 + *(v7 + 14);
    *(v7 + 14) = v6;
    v3 = v7;
    if (specialized StackPlacement.isVisible(length:)(v5))
    {
      specialized StackPlacement.addVisibleSubview(length:spacing:)(v5, v28);
      specialized StackPlacement.flushPendingHeader()();
      v6 = *(v7 + 14);
      if (v7[24])
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *(v7 + 14);
      }

      if (v7[24])
      {
        v33 = *(v7 + 14);
      }

      else
      {
        v33 = 0.0;
      }

      if (v7[24])
      {
        v34 = *(v7 + 5);
      }

      else
      {
        v34 = v5;
      }

      if (v7[24])
      {
        v35 = v5;
      }

      else
      {
        v35 = *(v7 + 5);
      }

      v36 = 0.5;
      if ((v9 - 1) > 1)
      {
LABEL_60:
        v37 = *(v7 + 4) == 1;
        LOBYTE(v70) = 0;
        *&v60 = v34;
        BYTE8(v60) = 0;
        if (v37)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = v35;
        }

        v61 = v38;
        v62 = v37;
        v63 = v36;
        v64 = 0x3FE0000000000000;
        v65 = v32 + v36 * v34;
        v66 = v33 + v35 * 0.5;
        _LazyLayout_Subview.place(at:)(&v60, &v70);
        v3 = *(v7 + 33);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_64;
        }

        goto LABEL_87;
      }
    }

    else
    {
      if ((v7[72] & 2) == 0 || v9 != 2)
      {
        if (v9 == 1)
        {
          v3 = &lazy cache variable for type metadata for _LazyLayout_Subview?;
          v57 = MEMORY[0x1E69E6720];
          outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v7 + 152), &v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
          v58 = v70;
          outlined destroy of GlassEntryView?(&v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v57);
          if (!v58)
          {
            outlined destroy of GlassEntryView?((v7 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
            outlined init with copy of _LazyLayout_Subview(a2, (v7 + 152));
          }
        }

        goto LABEL_67;
      }

      if (*(v7 + 35) < *(v7 + 34))
      {
        goto LABEL_67;
      }

      specialized StackPlacement.flushPendingHeader()();
      v6 = *(v7 + 14);
      if (v7[24])
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *(v7 + 14);
      }

      if (v7[24])
      {
        v33 = *(v7 + 14);
      }

      else
      {
        v33 = 0.0;
      }

      if (v7[24])
      {
        v34 = *(v7 + 5);
      }

      else
      {
        v34 = v5;
      }

      if (v7[24])
      {
        v35 = v5;
      }

      else
      {
        v35 = *(v7 + 5);
      }
    }

    AlignmentKey.fraction.getter(*v7);
    goto LABEL_60;
  }

  v11 = *(v3 + 4);
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    do
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
LABEL_64:
      v40 = *(v3 + 2);
      v39 = *(v3 + 3);
      if (v40 >= v39 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v3);
      }

      *(v3 + 2) = v40 + 1;
      v41 = &v3[80 * v40];
      *(v41 + 2) = v70;
      v42 = v71;
      v43 = v72;
      v44 = v4[4];
      *(v41 + 5) = v4[3];
      *(v41 + 6) = v44;
      *(v41 + 3) = v42;
      *(v41 + 4) = v43;
      *(v7 + 33) = v3;
LABEL_67:
      *(v7 + 14) = v5 + v6;
LABEL_68:
      v45 = *(v7 + 4);
      v46 = *(v7 + 12);
      v12 = __OFADD__(v46, v45);
      v47 = v46 + v45;
      if (v12)
      {
        goto LABEL_84;
      }

      *(v7 + 12) = v47;
    }

    while (v45 < 0);
    if (v45)
    {
      v48 = *(v7 + 17);
      do
      {
        outlined init with copy of _LazyLayout_Subview(a2, &v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        }

        v50 = *(v48 + 2);
        v49 = *(v48 + 3);
        if (v50 >= v49 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
        }

        *(v48 + 2) = v50 + 1;
        v51 = &v48[112 * v50];
        v52 = v70;
        v53 = v72;
        *(v51 + 3) = v71;
        *(v51 + 4) = v53;
        *(v51 + 2) = v52;
        v54 = v4[3];
        v55 = v4[4];
        v56 = v4[6];
        *(v51 + 7) = v4[5];
        *(v51 + 8) = v56;
        *(v51 + 5) = v54;
        *(v51 + 6) = v55;
        --v45;
      }

      while (v45);
      *(v7 + 17) = v48;
    }

    return swapSubviews(_:_:)(v7 + 18, v7 + 17);
  }

  else
  {
    *result = v13;
    if (a3 == 1)
    {
      v14 = MEMORY[0x1E69E6720];
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>((v3 + 152), &v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
      v15 = v70;
      result = outlined destroy of GlassEntryView?(&v70, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, v14);
      if (!v15)
      {
        outlined destroy of GlassEntryView?((v3 + 152), &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
        return outlined init with copy of _LazyLayout_Subview(a2, (v3 + 152));
      }
    }
  }

  return result;
}

uint64_t specialized StackPlacement.isVisible(length:)(double a1)
{
  if (*(v1 + 128) == 1)
  {
    v2 = *(v1 + 112);
    v3 = *(v1 + 56);
    if (v3 <= v2)
    {
      v3 = *(v1 + 112);
    }

    v4 = v2 + a1;
    if (v4 >= *(v1 + 64))
    {
      v4 = *(v1 + 64);
    }

    v5 = a1 == 0.0;
    if (v3 != v4)
    {
      v5 = 0;
    }

    return v3 < v4 || v5;
  }

  else
  {
    v7 = *(v1 + 96);
    v8 = *(v1 + 32) + v7;
    if (v8 < v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v1 + 120);
      return v9 >= v7 && v9 < v8;
    }
  }

  return result;
}

uint64_t specialized StackPlacement.flushPendingHeader()()
{
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v0 + 152, &v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  if (!v35)
  {
    return outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  }

  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v42 = v35;
  v43[0] = v36;
  v43[1] = v37;
  v43[2] = v38;
  if ((*(v0 + 72) & 1) == 0 || (*(v0 + 128) & 1) == 0)
  {
    return outlined destroy of _LazyLayout_Subview(&v42);
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 40);
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 24))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v0 + 40);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v5 = DWORD2(v42);
  v6 = v0;
  v7 = *(LazyLayoutViewCache.item(data:)(v43) + 44);

  v8 = *MEMORY[0x1E698D3F8];
  v32 = v5;
  v33 = v7;
  v34 = v8;
  *&v25 = v3;
  BYTE8(v25) = v1 ^ 1;
  v26 = v4;
  v27 = v1;
  v9 = LayoutProxy.lengthThatFits(_:in:)(&v25, v1);
  if (v1)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (v1)
  {
    v2 = v10;
    v12 = 0.0;
  }

  else
  {
    v12 = -v10;
  }

  if (v1)
  {
    v13 = -v10;
  }

  else
  {
    v13 = 0.0;
  }

  MEMORY[0x1EEE9AC00](v9);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
  outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  AlignmentKey.fraction.getter(*v6);
  v15 = *(v6 + 32) == 1;
  if (*(v6 + 32) == 1)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v11;
  }

  LOBYTE(v35) = *(v6 + 32) == 1;
  *&v25 = v16;
  BYTE8(v25) = v15;
  v26 = v2;
  v27 = 0;
  v28 = 0x3FE0000000000000;
  v29 = v14;
  v30 = v12 + v11 * 0.5;
  v31 = v13 + v14 * v2;
  _LazyLayout_Subview.place(at:)(&v25, &v35);
  v17 = *(v6 + 264);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[80 * v19];
  *(v20 + 2) = v35;
  v21 = v36;
  v22 = v37;
  v23 = v39;
  *(v20 + 5) = v38;
  *(v20 + 6) = v23;
  *(v20 + 3) = v21;
  *(v20 + 4) = v22;
  *(v6 + 264) = v17;
  outlined destroy of _LazyLayout_Subview(&v42);
  result = outlined destroy of GlassEntryView?(v6 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  return result;
}

{
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v0 + 152, &v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  if (!v35)
  {
    return outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  }

  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v42 = v35;
  v43[0] = v36;
  v43[1] = v37;
  v43[2] = v38;
  if ((*(v0 + 72) & 1) == 0 || (*(v0 + 128) & 1) == 0)
  {
    return outlined destroy of _LazyLayout_Subview(&v42);
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (*(v0 + 24))
  {
    v3 = *(v0 + 40);
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 24))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v0 + 40);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v5 = DWORD2(v42);
  v6 = v0;
  v7 = *(LazyLayoutViewCache.item(data:)(v43) + 44);

  v8 = *MEMORY[0x1E698D3F8];
  v32 = v5;
  v33 = v7;
  v34 = v8;
  *&v25 = v3;
  BYTE8(v25) = v1 ^ 1;
  v26 = v4;
  v27 = v1;
  v9 = LayoutProxy.lengthThatFits(_:in:)(&v25, v1);
  if (v1)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (v1)
  {
    v2 = v10;
    v12 = 0.0;
  }

  else
  {
    v12 = -v10;
  }

  if (v1)
  {
    v13 = -v10;
  }

  else
  {
    v13 = 0.0;
  }

  MEMORY[0x1EEE9AC00](v9);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
  outlined destroy of GlassEntryView?(&v35, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  AlignmentKey.fraction.getter(*v6);
  v15 = *(v6 + 32) == 1;
  LOBYTE(v35) = 0;
  *&v25 = v11;
  if (v15)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v2;
  }

  BYTE8(v25) = 0;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v29 = 0x3FE0000000000000;
  v30 = v12 + v14 * v11;
  v31 = v13 + v2 * 0.5;
  _LazyLayout_Subview.place(at:)(&v25, &v35);
  v17 = *(v6 + 264);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[80 * v19];
  *(v20 + 2) = v35;
  v21 = v36;
  v22 = v37;
  v23 = v39;
  *(v20 + 5) = v38;
  *(v20 + 6) = v23;
  *(v20 + 3) = v21;
  *(v20 + 4) = v22;
  *(v6 + 264) = v17;
  outlined destroy of _LazyLayout_Subview(&v42);
  result = outlined destroy of GlassEntryView?(v6 + 152, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720]);
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  return result;
}

uint64_t specialized ShapeStyleResolver.updateValue()(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = v2;
  v70 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D3F8];
  if (*v2 == *MEMORY[0x1E698D3F8])
  {
    v6 = 0;
    v7 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v44 = *(Value + 24);
    v45 = *(Value + 8);
    v6 = v9 & 1;
  }

  if (v2[1] == v5)
  {
    v10 = 0;
    v48 = 0;
    v46 = 1;
    v47 = 0;
  }

  else
  {
    v11 = AGGraphGetValue();
    v10 = v12;
    v46 = *(v11 + 8);
    v47 = *v11;
    v48 = *(v11 + 10);
    v13 = *v11;
  }

  v14 = v4[2];
  v16 = *AGGraphGetValue();
  v50 = MEMORY[0x1E69E7CC0];
  if ((v6 | v10))
  {
    v17 = 1;
    v51 = 1;
  }

  else
  {
    v18 = v15;
    OutputValue = AGGraphGetOutputValue();
    v51 = OutputValue == 0;
    if (OutputValue)
    {
      if ((v18 & 1) == 0)
      {
        v20 = (v4 + 4);
        v21 = *(v4 + 6);

        if (v21)
        {
LABEL_17:
          v41 = a2;
          v42 = v20;
          v43 = v14;
          v40 = 0;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v22 = swift_retain_n();
      v17 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v22);

      v51 = v17 & 1;
    }

    else
    {

      v17 = 1;
    }
  }

  v20 = (v4 + 4);
  v21 = *(v4 + 6);
  if (!v21)
  {
    if (v17)
    {
      v21 = 0;
      goto LABEL_23;
    }

LABEL_20:
    if (v4[14] == *AGGraphGetValue() >> 1)
    {
    }

    *(v4 + 6) = 0;

    *(v4 + 4) = 0;
    *(v4 + 40) = 0;
    v21 = 0;
    v4[14] = *AGGraphGetValue() >> 1;
    v51 = 1;
    goto LABEL_23;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v41 = a2;
  v42 = v20;
  v43 = v14;
  PropertyList.Tracker.reset()();
  v40 = 1;
LABEL_24:
  if (v48)
  {
    v23 = v46;
  }

  else
  {
    v23 = v46 != 0;
  }

  v24 = *(v4 + 8);
  if (v16)
  {
    v25 = *(v16 + 64);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v24 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v26 + 16));
  *(v26 + 24) = v25;
  os_unfair_lock_unlock((v26 + 16));

  v27 = *(v4 + 6);
  v69[27] = 0;
  v64 = 0uLL;
  *&v65 = v23;
  BYTE8(v65) = 1;
  *&v66 = 0;
  BYTE8(v66) = 5;
  *&v67 = v16;
  *(&v67 + 1) = v24;
  v68 = 0u;
  memset(v69, 0, 24);
  v69[24] = 1;
  *&v69[25] = v27;
  if (v23)
  {
    if (v7)
    {
      v52 = v7;
      v53 = v45;
      v54 = v44;

      v41(&v64);

      v28 = v48;
      if (v48)
      {
        goto LABEL_43;
      }
    }

    else
    {
      specialized ForegroundStyle._apply(to:)(&v64);
      v28 = v48;
      if (v48)
      {
        goto LABEL_43;
      }
    }

    v55[0] = 0;
    v56 = v67;
    v29 = BYTE8(v66);
    if (BYTE8(v66) == 1)
    {
      v30 = v66;

      outlined copy of _ShapeStyle_Shape.Result(v30, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
      v31 = 0;
      v29 = 5;
    }

    else
    {

      v31 = v66;

      v30 = MEMORY[0x1E69E7CC0];
    }

    *&v63[0] = v30;
    _ShapeStyle_Pack.createOpacities(count:name:environment:)(v46, v55, &v56);

    v32 = *&v63[0];

    outlined consume of _ShapeStyle_Shape.Result(v31, v29);
    *&v66 = v32;
    BYTE8(v66) = 1;
  }

  else
  {
    v28 = v48;
    if (v40)
    {
      if (v21)
      {
        specialized AnimatorState.removeListeners()();
      }

      *(v4 + 6) = 0;

      *(v4 + 4) = 0;
      *(v4 + 40) = 0;
      v4[14] = *AGGraphGetValue() >> 1;
    }
  }

LABEL_43:
  if ((v28 & 2) != 0)
  {
    v64 = xmmword_18DD85500;
    *&v65 = 1;
    BYTE8(v65) = 1;
    v69[25] = 0;
    BackgroundStyle._apply(to:)(&v64);
  }

  if ((v28 & 4) != 0)
  {
    v56 = v67;
    v34 = v47;

    ResolvedMulticolorStyle.init(in:bundle:)(&v56, v47, v63);
    v56 = v63[0];
    v57 = v63[1];
    v61[5] = 6;
    *&v61[8] = 1065353216;
    *&v61[16] = 0;
    v61[24] = -1;
    v62 = MEMORY[0x1E69E7CC0];
    v49 = 2;
    v35 = BYTE8(v66);
    if (BYTE8(v66) == 1)
    {
      v36 = v66;
      outlined init with copy of ResolvedMulticolorStyle(v63, v55);
      outlined copy of _ShapeStyle_Shape.Result(v36, 1u);
      outlined consume of _ShapeStyle_Shape.Result(v36, 1u);
      v37 = 0;
      v35 = 5;
    }

    else
    {
      outlined init with copy of ResolvedMulticolorStyle(v63, v55);
      v36 = MEMORY[0x1E69E7CC0];
      v37 = v66;
    }

    *v55 = v36;
    _ShapeStyle_Pack.subscript.setter(&v56, &v49, 0);
    outlined destroy of ResolvedMulticolorStyle(v63);
    v38 = *v55;

    outlined consume of _ShapeStyle_Shape.Result(v37, v35);
    *&v66 = v38;
    BYTE8(v66) = 1;

    goto LABEL_52;
  }

  if (BYTE8(v66) == 1)
  {
LABEL_52:
    v33 = v66;

    goto LABEL_53;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v50 = v33;
  if ((*(v4 + 14) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v50, 0, v43, v42);
  }

  if (v51 == 1)
  {
    *&v56 = v50;
    AGGraphSetOutputValue();
  }

  else
  {
  }

  v59 = v67;
  v60 = v68;
  *v61 = *v69;
  *&v61[12] = *&v69[12];
  v56 = v64;
  v57 = v65;
  v58 = v66;
  outlined destroy of _ShapeStyle_Shape(&v56);
}

uint64_t specialized StaticBody.updateValue()(void *a1, void (*a2)(double, double), void (*a3)(uint64_t, _BYTE *))
{
  v55 = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v51 - 1);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45[-v11];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45[-v17];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v19 = static ObservationCenter._current;
  swift_beginAccess();
  v20 = pthread_getspecific(v19[2]);
  if (!v20)
  {
    v21 = swift_slowAlloc();
    pthread_setspecific(v19[2], v21);
    v54 = type metadata accessor for ObservationCenter();
    *&v53 = v19[3];
    outlined init with take of Any(&v53, v21);

    v20 = v21;
  }

  outlined init with copy of Any(v20, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v22 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v22 + 24) = a1;
    goto LABEL_9;
  }

  v46 = CurrentAttribute;
  v47 = a3;
  swift_beginAccess();
  v49 = *(v22 + 24);
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  v24 = a2;
  v25 = v51;
  (*(v6 + 56))(v18, 1, 1, v51);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  Value = AGGraphGetValue();
  v24(*Value, Value[1]);
  *(StatusReg + 848) = v27;
  v29 = v25;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v6 + 48))(v15, 1, v25) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v18 = v15;
    goto LABEL_12;
  }

  a2 = *(v6 + 32);
  (a2)(v12, v15, v29);
  (*(v6 + 16))(v50, v12, v29);
  a1 = *(v22 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = a1[2];
  v31 = a1[3];
  if (v32 >= v31 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, a1);
  }

  a1[2] = v32 + 1;
  v33 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32;
  v29 = v51;
  (a2)(v33, v50, v51);
  *(v22 + 24) = a1;
  (*(v6 + 8))(v12, v29);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v22 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v6 + 16);
    v36 = v6 + 16;
    v50 = *(v22 + 24);
    v51 = v37;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = v48;
    v40 = *(v36 + 56);
    v41 = (v36 - 8);

    v42 = v47;
    v43 = v46;
    do
    {
      (v51)(v39, v38, v29);
      v42(v43, v39);
      (*v41)(v39, v29);
      v38 += v40;
      --v35;
    }

    while (v35);
  }

  *(v22 + 24) = v49;
}

uint64_t specialized StaticBody.updateValue()(void *a1, void (*a2)(void), void (*a3)(uint64_t, _BYTE *))
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for ObservationTracking._AccessList();
  v6 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47[-v17];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v19 = static ObservationCenter._current;
  swift_beginAccess();
  v20 = pthread_getspecific(v19[2]);
  if (!v20)
  {
    v21 = swift_slowAlloc();
    pthread_setspecific(v19[2], v21);
    v56 = type metadata accessor for ObservationCenter();
    *&v55 = v19[3];
    outlined init with take of Any(&v55, v21);

    v20 = v21;
  }

  outlined init with copy of Any(v20, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v22 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = a1[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, a1);
    *(v22 + 24) = v46;

    a1 = v46;
    goto LABEL_9;
  }

  v48 = CurrentAttribute;
  v49 = a3;
  swift_beginAccess();
  v51 = *(v22 + 24);
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  v24 = a2;
  v25 = v53;
  (*(v6 + 56))(v18, 1, 1, v53);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v18;
  Value = AGGraphGetValue();
  v24(*Value);
  *(StatusReg + 848) = v27;
  v29 = v25;
  outlined init with copy of ObservationTracking._AccessList?(v18, v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v6 + 48))(v15, 1, v25) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v18 = v15;
    goto LABEL_12;
  }

  a2 = *(v6 + 32);
  (a2)(v12, v15, v29);
  (*(v6 + 16))(v52, v12, v29);
  swift_beginAccess();
  a1 = *(v22 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = a1[2];
  v31 = a1[3];
  if (v32 >= v31 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, a1);
  }

  a1[2] = v32 + 1;
  v33 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32;
  v29 = v53;
  (a2)(v33, v52, v53);
  *(v22 + 24) = a1;
  swift_endAccess();
  (*(v6 + 8))(v12, v29);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v18, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v22 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v6 + 16);
    v36 = v6 + 16;
    v52 = *(v22 + 24);
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

  *(v22 + 24) = v51;
}

uint64_t specialized StaticBody.updateValue()(void *a1, unint64_t *a2, void (*a3)(void), void (*a4)(char *, char *))
{
  v50 = a2;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ObservationTracking._AccessList();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v46 - v13;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v20 = static ObservationCenter._current;
  swift_beginAccess();
  v21 = pthread_getspecific(v20[2]);
  if (!v21)
  {
    v22 = swift_slowAlloc();
    pthread_setspecific(v20[2], v22);
    *&v57 = type metadata accessor for ObservationCenter();
    v55 = v20[3];
    outlined init with take of Any(&v55, v22);

    v21 = v22;
  }

  outlined init with copy of Any(v21, &v55);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v23 = v54;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v44 = a1[2];

    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 + 1, 1, a1);
    *(v23 + 24) = v45;

    a1 = v45;
    goto LABEL_9;
  }

  v47 = v9;
  v9 = CurrentAttribute;
  v48 = a4;
  swift_beginAccess();
  v49 = *(v23 + 24);
  *(v23 + 24) = MEMORY[0x1E69E7CC0];
  (*(v7 + 56))(v19, 1, 1, v6);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = v6;
  v27 = *(StatusReg + 848);
  *(StatusReg + 848) = v19;
  Value = AGGraphGetValue();
  v55 = *Value;
  v29 = *(Value + 24);
  v56 = *(Value + 8);
  v57 = v29;

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v55, a1, v50, v51);

  *(StatusReg + 848) = v27;
  v6 = v26;
  outlined init with copy of ObservationTracking._AccessList?(v19, v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v7 + 48))(v16, 1, v26) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v19, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v19 = v16;
    goto LABEL_12;
  }

  a4 = *(v7 + 32);
  v30 = v53;
  (a4)(v53, v16, v6);
  (*(v7 + 16))(v52, v30, v6);
  swift_beginAccess();
  a1 = *(v23 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 24) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v33 = a1[2];
  v32 = a1[3];
  if (v33 >= v32 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, a1);
  }

  a1[2] = v33 + 1;
  (a4)(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v33, v52, v6);
  *(v23 + 24) = a1;
  swift_endAccess();
  (*(v7 + 8))(v53, v6);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v19, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v23 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v37 = *(v7 + 16);
    v36 = v7 + 16;
    v52 = *(v23 + 24);
    v53 = v37;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = *(v36 + 56);
    v40 = (v36 - 8);

    v41 = v48;
    v42 = v47;
    do
    {
      (v53)(v42, v38, v6);
      v41(v9, v42);
      (*v40)(v42, v6);
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  *(v23 + 24) = v49;
}

uint64_t specialized DynamicBody.updateValue()(void (*a1)(char *, char *, char *), void (*a2)(void), void (*a3)(void), void (*a4)(char *, char *))
{
  v60 = a2;
  v61 = a3;
  v7 = v4;
  v69 = *MEMORY[0x1E69E9840];
  v64 = type metadata accessor for ObservationTracking._AccessList();
  v8 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v55 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v55 - v22;
  if (*(v4 + 24) != *AGGraphGetValue() >> 1)
  {
    v67 = *(v4 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v4 + 24) = *AGGraphGetValue() >> 1;
  }

  v23 = a1;
  AGGraphGetValue();
  v65 = v24 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(v25[2]);
  v27 = v64;
  if (!v26)
  {
    v28 = swift_slowAlloc();
    pthread_setspecific(v25[2], v28);
    v68 = type metadata accessor for ObservationCenter();
    *&v67 = v25[3];
    outlined init with take of Any(&v67, v28);
    v27 = v64;

    v26 = v28;
  }

  outlined init with copy of Any(v26, &v67);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v29 = v66;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v53 = *(v7 + 2);

    v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53 + 1, 1, v7);
    *(v29 + 24) = v54;

    v7 = v54;
    goto LABEL_11;
  }

  v57 = v10;
  v58 = a4;
  v10 = CurrentAttribute;
  swift_beginAccess();
  v59 = *(v29 + 24);
  *(v29 + 24) = MEMORY[0x1E69E7CC0];
  v31 = (*(v8 + 56))(v20, 1, 1, v27);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v33 = v8;
  v34 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  specialized closure #1 in DynamicBody.updateValue()(v31, v7, &v65, v60, v23, v61);
  *(StatusReg + 848) = v34;
  v35 = v63;
  outlined init with take of ObservationTracking._AccessList?(v20, v63);
  outlined init with copy of ObservationTracking._AccessList?(v35, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v8 = v33;
  if ((*(v33 + 48))(v17, 1, v27) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v36 = v17;
    goto LABEL_14;
  }

  v23 = *(v33 + 32);
  v37 = v62;
  v23(v62, v17, v27);
  v38 = v27;
  v27 = v56;
  (*(v33 + 16))(v56, v37, v38);
  swift_beginAccess();
  v7 = *(v29 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v29 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v41 = *(v7 + 2);
  v40 = *(v7 + 3);
  if (v41 >= v40 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v7);
  }

  *(v7 + 2) = v41 + 1;
  v42 = v27;
  v27 = v64;
  v23(&v7[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v41], v42, v64);
  *(v29 + 24) = v7;
  swift_endAccess();
  (*(v8 + 8))(v62, v27);
  v36 = v63;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v36, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v43 = *(v29 + 24);
  v44 = *(v43 + 16);
  if (v44)
  {
    v46 = *(v8 + 16);
    v45 = v8 + 16;
    v63 = *(v29 + 24);
    v64 = v46;
    v47 = v43 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v48 = *(v45 + 56);
    v49 = (v45 - 8);

    v51 = v57;
    v50 = v58;
    do
    {
      (v64)(v51, v47, v27);
      v50(v10, v51);
      (*v49)(v51, v27);
      v47 += v48;
      --v44;
    }

    while (v44);
  }

  *(v29 + 24) = v59;
}

uint64_t specialized DynamicBody.updateValue()(void (*a1)(char *, char *, char *), void (*a2)(void), double *a3, void (*a4)(char *, char *))
{
  v58 = a2;
  v59 = a3;
  v7 = v4;
  v67 = *MEMORY[0x1E69E9840];
  v62 = type metadata accessor for ObservationTracking._AccessList();
  v8 = *(v62 - 1);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v54 - v14;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v54 - v22;
  if (*(v4 + 24) != *AGGraphGetValue() >> 1)
  {
    v65 = *(v4 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v4 + 24) = *AGGraphGetValue() >> 1;
  }

  v23 = a1;
  v64[0] = *AGGraphGetValue();
  v63 = v24 & 1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(v25[2]);
  v27 = v62;
  if (!v26)
  {
    v28 = swift_slowAlloc();
    pthread_setspecific(v25[2], v28);
    v66 = type metadata accessor for ObservationCenter();
    *&v65 = v25[3];
    outlined init with take of Any(&v65, v28);
    v27 = v62;

    v26 = v28;
  }

  outlined init with copy of Any(v26, &v65);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v29 = v64[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v52 = *(v7 + 2);

    v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52 + 1, 1, v7);
    *(*&v29 + 24) = v53;

    v7 = v53;
    goto LABEL_11;
  }

  v55 = v10;
  v10 = CurrentAttribute;
  v56 = a4;
  swift_beginAccess();
  v57 = *(*&v29 + 24);
  *(*&v29 + 24) = MEMORY[0x1E69E7CC0];
  (*(v8 + 56))(v20, 1, 1, v27);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = v8;
  v33 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  specialized closure #1 in DynamicBody.updateValue()(v64, v7, &v63, v58, v23, v59);
  *(StatusReg + 848) = v33;
  v34 = v61;
  outlined init with take of ObservationTracking._AccessList?(v20, v61);
  outlined init with copy of ObservationTracking._AccessList?(v34, v17, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v8 = v32;
  if ((*(v32 + 48))(v17, 1, v27) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v35 = v17;
    goto LABEL_14;
  }

  v23 = *(v32 + 32);
  v36 = v60;
  v23(v60, v17, v27);
  v37 = v27;
  v27 = v54;
  (*(v32 + 16))(v54, v36, v37);
  swift_beginAccess();
  v7 = *(*&v29 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(*&v29 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v40 = *(v7 + 2);
  v39 = *(v7 + 3);
  if (v40 >= v39 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v7);
  }

  *(v7 + 2) = v40 + 1;
  v41 = v27;
  v27 = v62;
  v23(&v7[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v40], v41, v62);
  *(*&v29 + 24) = v7;
  swift_endAccess();
  (*(v8 + 8))(v60, v27);
  v35 = v61;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v42 = *(*&v29 + 24);
  v43 = *(v42 + 16);
  if (v43)
  {
    v45 = *(v8 + 16);
    v44 = v8 + 16;
    v61 = *(*&v29 + 24);
    v62 = v45;
    v46 = v42 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
    v47 = *(v44 + 56);
    v48 = (v44 - 8);

    v49 = v56;
    v50 = v55;
    do
    {
      (v62)(v50, v46, v27);
      v49(v10, v50);
      (*v48)(v50, v27);
      v46 += v47;
      --v43;
    }

    while (v43);
  }

  *(*&v29 + 24) = v57;
}

void specialized DynamicBody.updateValue()()
{
  v1 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v52 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v52 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v62 = *(v0 + 8);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v20 = *(Value + 8);
  v21 = *(Value + 16);
  v58[0] = *Value;
  v59 = v20;
  v60 = v21;
  v57 = v22 & 1;
  v23 = one-time initialization token for _current;
  v24 = v20;
  v25 = v21;
  if (v23 != -1)
  {
    swift_once();
  }

  v26 = static ObservationCenter._current;
  swift_beginAccess();
  v27 = pthread_getspecific(*(v26 + 2));
  if (!v27)
  {
    v28 = swift_slowAlloc();
    pthread_setspecific(*(v26 + 2), v28);
    v63 = type metadata accessor for ObservationCenter();
    v18 = *(v26 + 3);
    *&v62 = v18;
    outlined init with take of Any(&v62, v28);

    v27 = v28;
  }

  outlined init with copy of Any(v27, &v62);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v29 = v61;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v50 = v1[2];

    v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50 + 1, 1, v1);
    *(v29 + 24) = v51;

    v1 = v51;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v29 + 24);
  *(v29 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v32 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(v58, v1, &v57);
  *(StatusReg + 848) = v32;
  v33 = v56;
  outlined init with take of ObservationTracking._AccessList?(v15, v56);
  outlined init with copy of ObservationTracking._AccessList?(v33, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v34 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v35 = v12;
    goto LABEL_14;
  }

  v26 = *(v3 + 32);
  v36 = v55;
  v26(v55, v12, v2);
  (*(v3 + 16))(v54, v36, v2);
  swift_beginAccess();
  v1 = *(v29 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v29 + 24) = v1;
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
  v40 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39;
  v34 = v3;
  v26(v40, v54, v2);
  *(v29 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v55, v2);
  v35 = v56;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v35, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v41 = *(v29 + 24);
  v42 = *(v41 + 16);
  if (v42)
  {
    v45 = *(v34 + 16);
    v43 = v34 + 16;
    v44 = v45;
    v46 = v41 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v47 = *(v43 + 56);
    v48 = (v43 - 8);
    v56 = *(v29 + 24);

    do
    {
      v44(v5, v46, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v48)(v5, v2);
      v46 += v47;
      --v42;
    }

    while (v42);
  }

  *(v29 + 24) = v53;

  v49 = v59;
}

void specialized closure #1 in DynamicBody.updateValue()(double *a1, uint64_t a2, char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v28 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v28) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(), !AGGraphGetOutputValue()))
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
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
  OutputValue = AGGraphGetOutputValue();
  v12 = AGGraphCurrentAttributeWasModified();
  if (one-time initialization token for enabledCategories != -1)
  {
    v23 = v12;
    swift_once();
    v12 = v23;
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
      goto LABEL_38;
    }

    if (v10 < 129)
    {
LABEL_12:
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v26 - v14;
      v16 = 0;
      v17 = 0;
      v18 = 0;
LABEL_13:
      v19 = -v18;
      while ((v10 + v19) | v17)
      {
        if (!v8)
        {
          goto LABEL_39;
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
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v29 = v15;
            v30 = v16;
            v31 = OutputValue != 0;
            v32 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v27 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v27;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v26) = OutputValue != 0;
  v25 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v25, v10, v8, v9 | (v10 << 32), HIDWORD(v26), v27, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v25, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v25, -1, -1);
  if (*a3)
  {
LABEL_29:
    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*a1, a1[1], a1[2], a1[3]);
  }
}

{
  v35 = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  v30 = *AGGraphGetValue();
  if ((_DynamicPropertyBuffer.update(container:phase:)(a1, &v30) & 1) != 0 || (*a3 & 1) != 0 || (type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>), !AGGraphGetOutputValue()))
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
  type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>);
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
      goto LABEL_38;
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
          goto LABEL_39;
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
        if (*(static CustomEventTrace.enabledCategories + 100) == 1)
        {
          if (static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 16708;
            v31 = v15;
            v32 = v16;
            v33 = OutputValue != 0;
            v34 = v13;
            type metadata accessor for (UnsafeMutableBufferPointer<Int>, hasValue: Bool, bodyChanged: Bool)();
            AGGraphAddTraceEvent();
          }
        }

LABEL_28:
        if ((*a3 & 1) == 0)
        {
          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }
  }

  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v12 = v29;
  if (isStackAllocationSafe)
  {
    goto LABEL_12;
  }

  HIDWORD(v28) = OutputValue != 0;
  v27 = swift_slowAlloc();
  closure #1 in static CustomEventTrace.dynamicBodyUpdate(buffer:hasValue:bodyChanged:)(v27, v10, v8, v9 | (v10 << 32), HIDWORD(v28), v29, 7);
  if (v3)
  {

    MEMORY[0x193AC4820](v27, -1, -1);
    __break(1u);
    return;
  }

  MEMORY[0x193AC4820](v27, -1, -1);
  if (*a3)
  {
LABEL_29:
    v23 = *a1;

    specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24, v23);
  }
}