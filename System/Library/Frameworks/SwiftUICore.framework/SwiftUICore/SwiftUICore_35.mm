uint64_t specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(uint64_t a1)
{
  v43 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for OSSignpostID();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v42[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42[-v3];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v4 = static Signpost.bodyInvoke;
    v5 = word_1ED539040;
    v6 = HIBYTE(word_1ED539040);
    v7 = byte_1ED539042;
    v8 = static os_signpost_type_t.begin.getter();
    v62 = v4;
    LOBYTE(v63) = v5;
    BYTE1(v63) = v6;
    BYTE2(v63) = v7;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v53 = *(&v4 + 1);
    LODWORD(v54) = v8;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDAB4C0;
    v10 = AGTypeID.description.getter();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v15 = specialized static Tracing.libraryName(defining:)();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v16;
    v55 = v9;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v6)
    {
      v59 = v54;
      v57 = _signpostLog;
      v58 = &dword_18D018000;
      *&v62 = v4;
      *(&v62 + 1) = v53;
      LOBYTE(v63) = v5;
      v60[0] = "%{public}@.body [in %{public}@]";
      v60[1] = 31;
      v61 = 2;
      v56 = v55;
      v17 = v44;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v51 + 8))(v17, v50);
LABEL_34:

      break;
    }

    if (v4 == 20)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = bswap32(v4) | (4 * WORD1(v4));
    v20 = v54;
    v21 = v51 + 16;
    v45 = *(v51 + 16);
    v22 = v45(v52, v44, v50);
    v23 = 0;
    LOBYTE(v60[0]) = 1;
    v54 = v18;
    v48 = 16 * v18;
    v51 = v21;
    v49 = (v21 - 8);
    v47 = v55 + 32;
    v46 = v4;
LABEL_11:
    v53 = v42;
    MEMORY[0x1EEE9AC00](v22);
    v25 = &v42[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v26 = v25 + 8;
    v27 = v54;
    v28 = v25 + 8;
    do
    {
      *(v28 - 1) = 0;
      *v28 = 0;
      v28 += 16;
      --v27;
    }

    while (v27);
    v29 = v47 + 40 * v23;
    v30 = v54;
    while (1)
    {
      v31 = *(v55 + 16);
      if (v23 == v31)
      {
        LOBYTE(v60[0]) = 0;
LABEL_19:
        v34 = v46;
        if (v46 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v25[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v34 != 20 && v25[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v35 = *v49;
        v36 = v52;
        v37 = v50;
        (*v49)(v52, v50);
        v38 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v22 = v45(v36, v38, v37);
        if ((v60[0] & 1) == 0)
        {
          v39 = v50;
          v35(v52, v50);
          v35(v44, v39);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v23 >= v31)
      {
        break;
      }

      ++v23;
      outlined init with copy of AnyTrackedValue(v29, &v62);
      v32 = *(&v63 + 1);
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      *(v26 - 1) = CVarArg.kdebugValue(_:)(v19 | v20, v32);
      *v26 = v33 & 1;
      v26 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v29 += 40;
      if (!--v30)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v40 = *(v43 + 16);
  v62 = *v43;
  v63 = v40;
  v64 = *(v43 + 32);
  v65 = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v43, v60, &lazy cache variable for type metadata for UncheckedSendable<LinearGradient>, &type metadata for LinearGradient, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
  AGGraphSetOutputValue();
}

{
  v45 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v52 = v1;
  v53 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v44 - v5;
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
    v65 = v6;
    v66 = v7;
    v67 = v8;
    v68 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v6 + 1);
    LODWORD(v56) = v10;
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
    v57 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v64 = v56;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65 = v6;
      *(&v65 + 1) = v55;
      v66 = v7;
      v59 = "%{public}@.body [in %{public}@]";
      v60 = 31;
      v61 = 2;
      v58 = v57;
      v19 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v53 + 8))(v19, v52);
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
    v22 = v56;
    v23 = v53 + 16;
    v47 = *(v53 + 16);
    v24 = v47(v54, v46, v52);
    v25 = 0;
    LOBYTE(v59) = 1;
    v56 = v20;
    v53 = v23;
    v50 = 16 * v20;
    v51 = (v23 - 8);
    v49 = v57 + 32;
    v48 = v6;
LABEL_11:
    v55 = &v44;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27 + 8;
    v29 = v56;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v49 + 40 * v25;
    v32 = v56;
    while (1)
    {
      v33 = *(v57 + 16);
      if (v25 == v33)
      {
        LOBYTE(v59) = 0;
LABEL_19:
        v36 = v48;
        if (v48 == 20)
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

        v37 = v52;
        v38 = *v51;
        v39 = v54;
        (*v51)(v54, v52);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v47(v39, v40, v37);
        if ((v59 & 1) == 0)
        {
          v41 = v52;
          v38(v54, v52);
          v38(v46, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v65);
      v34 = v69;
      __swift_project_boxed_opaque_existential_1(&v65, v69);
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
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
  v42 = v45;

  AGGraphSetUpdate();
  *&v65 = v42;
  WORD4(v65) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
  AGGraphSetOutputValue();
}

{
  v45 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v52 = v1;
  v53 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v44 - v5;
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
    v62 = v6;
    LOBYTE(v63) = v7;
    BYTE1(v63) = v8;
    BYTE2(v63) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v6 + 1);
    LODWORD(v56) = v10;
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
    v57 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v61 = v56;
      v59 = _signpostLog;
      v60 = &dword_18D018000;
      *&v62 = v6;
      *(&v62 + 1) = v55;
      LOBYTE(v63) = v7;
      v66[0] = "%{public}@.body [in %{public}@]";
      v66[1] = 31;
      v67 = 2;
      v58 = v57;
      v19 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v53 + 8))(v19, v52);
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
    v22 = v56;
    v23 = v53 + 16;
    v47 = *(v53 + 16);
    v24 = v47(v54, v46, v52);
    v25 = 0;
    LOBYTE(v66[0]) = 1;
    v56 = v20;
    v50 = 16 * v20;
    v53 = v23;
    v51 = (v23 - 8);
    v49 = v57 + 32;
    v48 = v6;
LABEL_11:
    v55 = &v44;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27 + 8;
    v29 = v56;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v49 + 40 * v25;
    v32 = v56;
    while (1)
    {
      v33 = *(v57 + 16);
      if (v25 == v33)
      {
        LOBYTE(v66[0]) = 0;
LABEL_19:
        v36 = v48;
        if (v48 == 20)
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

        v37 = *v51;
        v38 = v54;
        v39 = v52;
        (*v51)(v54, v52);
        v40 = __swift_project_value_buffer(v39, static OSSignpostID.continuation);
        v24 = v47(v38, v40, v39);
        if ((v66[0] & 1) == 0)
        {
          v41 = v52;
          v37(v54, v52);
          v37(v46, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v62);
      v34 = *(&v63 + 1);
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v62);
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
  v42 = *(v45 + 16);
  v62 = *v45;
  v63 = v42;
  v64 = *(v45 + 32);
  v65 = 256;
  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v45, v66, &lazy cache variable for type metadata for UncheckedSendable<Path>, &type metadata for Path, type metadata accessor for UncheckedSendable);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<Path, ForegroundStyle>();
  AGGraphSetOutputValue();
  return outlined consume of Path.Storage(v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
}

{
  v45 = a1;
  v70 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v52 = v1;
  v53 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v44 - v5;
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
    v65 = v6;
    v66 = v7;
    v67 = v8;
    v68 = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v6 + 1);
    LODWORD(v56) = v10;
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
    v57 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v64 = v56;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65 = v6;
      *(&v65 + 1) = v55;
      v66 = v7;
      v59 = "%{public}@.body [in %{public}@]";
      v60 = 31;
      v61 = 2;
      v58 = v57;
      v19 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v53 + 8))(v19, v52);
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
    v22 = v56;
    v23 = v53 + 16;
    v47 = *(v53 + 16);
    v24 = v47(v54, v46, v52);
    v25 = 0;
    LOBYTE(v59) = 1;
    v56 = v20;
    v53 = v23;
    v50 = 16 * v20;
    v51 = (v23 - 8);
    v49 = v57 + 32;
    v48 = v6;
LABEL_11:
    v55 = &v44;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27 + 8;
    v29 = v56;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v49 + 40 * v25;
    v32 = v56;
    while (1)
    {
      v33 = *(v57 + 16);
      if (v25 == v33)
      {
        LOBYTE(v59) = 0;
LABEL_19:
        v36 = v48;
        if (v48 == 20)
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

        v37 = v52;
        v38 = *v51;
        v39 = v54;
        (*v51)(v54, v52);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v47(v39, v40, v37);
        if ((v59 & 1) == 0)
        {
          v41 = v52;
          v38(v54, v52);
          v38(v46, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v65);
      v34 = v69;
      __swift_project_boxed_opaque_existential_1(&v65, v69);
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
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
  v42 = v45;

  AGGraphSetUpdate();
  *&v65 = v42;
  WORD4(v65) = 256;
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
  AGGraphSetOutputValue();
}

{
  v77 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v8 = static Signpost.bodyInvoke;
    v9 = word_1ED539040;
    v10 = HIBYTE(word_1ED539040);
    v11 = byte_1ED539042;
    v12 = static os_signpost_type_t.begin.getter();
    v56 = v8;
    v72 = v8;
    LODWORD(v55) = v9;
    LOBYTE(v73) = v9;
    v58 = v10;
    BYTE1(v73) = v10;
    BYTE2(v73) = v11;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v50 = *(&v8 + 1);
    LODWORD(v51) = v12;
    v45 = a1;
    type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
    v46 = v7;
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
    v57 = v13;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v58)
    {
      v60 = v51;
      *&v66[0] = &dword_18D018000;
      *&v61 = _signpostLog;
      *&v72 = v56;
      *(&v72 + 1) = v50;
      LOBYTE(v73) = v55;
      *&v68 = "%{public}@.body [in %{public}@]";
      *(&v68 + 1) = 31;
      LOBYTE(v69) = 2;
      v59 = v57;
      v21 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v53 + 8))(v21, v52);
LABEL_34:

      a1 = v45;
      break;
    }

    v22 = v56;
    if (v56 == 20)
    {
      a1 = 3;
    }

    else
    {
      a1 = 4;
    }

    v23 = bswap32(v56) | (4 * WORD1(v56));
    v58 = v51;
    v24 = v53 + 16;
    v47 = *(v53 + 16);
    v25 = v47(v54, v46, v52);
    v26 = 0;
    LOBYTE(v68) = 1;
    v56 = a1;
    v53 = v24;
    v50 = 16 * a1;
    v51 = (v24 - 8);
    v48 = v22;
    v49 = v57 + 32;
LABEL_11:
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
    v7 = (v49 + 40 * v26);
    v32 = v56;
    while (1)
    {
      v33 = *(v57 + 16);
      if (v26 == v33)
      {
        LOBYTE(v68) = 0;
LABEL_19:
        v36 = v48;
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

        if (v36 != 20 && v28[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        a1 = v52;
        v37 = *v51;
        v38 = v54;
        (*v51)(v54, v52);
        v39 = __swift_project_value_buffer(a1, static OSSignpostID.continuation);
        v25 = v47(v38, v39, a1);
        if ((v68 & 1) == 0)
        {
          v40 = v52;
          v37(v54, v52);
          v37(v46, v40);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v26 >= v33)
      {
        break;
      }

      ++v26;
      outlined init with copy of AnyTrackedValue(v7, &v72);
      v34 = *(&v73 + 1);
      a1 = v74;
      __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
      *(v29 - 1) = CVarArg.kdebugValue(_:)(v23 | v58, v34);
      *v29 = v35 & 1;
      v29 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v72);
      v7 += 40;
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
  v41 = *a1;
  *v70 = *(a1 + 40);
  *&v70[9] = *(a1 + 49);
  v42 = *(a1 + 24);
  v68 = *(a1 + 8);
  v69 = v42;
  v61 = v68;
  v62 = v42;
  v63 = *v70;
  v64 = *&v70[16];
  v65 = v41;
  v66[2] = *v70;
  v66[3] = *&v70[16];
  v66[0] = v68;
  v66[1] = v42;
  v67 = v41;
  outlined init with copy of ObservationTracking._AccessList?(a1, &v72, &lazy cache variable for type metadata for UncheckedSendable<_GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>>, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>, type metadata accessor for UncheckedSendable);
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v61, &v72, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(v66, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v72 = v61;
  v73 = v62;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
  AGGraphSetOutputValue();
  *v70 = v74;
  *&v70[16] = v75;
  v71 = v76;
  v68 = v72;
  v69 = v73;
  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v68, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, type metadata accessor for ModifiedContent);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v52 = v1;
  v3 = v2;
  v71 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v10 = static Signpost.bodyInvoke;
  v11 = word_1ED539040;
  v12 = HIBYTE(word_1ED539040);
  v13 = byte_1ED539042;
  v14 = static os_signpost_type_t.begin.getter();
  v64 = v10;
  *v70 = v10;
  LODWORD(v62) = v11;
  v70[16] = v11;
  v70[17] = v12;
  v70[18] = v13;
  if (Signpost.isEnabled.getter())
  {
    v57 = *(&v10 + 1);
    LODWORD(v61) = v14;
    v50 = v3;
    v51 = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    v63 = v15;
    if (one-time initialization token for _signpostLog == -1)
    {
      v23 = v57;
      if (v12)
      {
LABEL_6:
        v68 = v61;
        v66 = _signpostLog;
        v67 = &dword_18D018000;
        *v70 = v64;
        *&v70[8] = v23;
        v70[16] = v62;
        v69[0] = "%{public}@.body [in %{public}@]";
        v69[1] = 31;
        LOBYTE(v69[2]) = 2;
        v65 = v63;
        v24 = v51;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v59 + 8))(v24, v58);
LABEL_35:

        v3 = v50;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v23 = v57;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v25 = v64;
    if (v64 == 20)
    {
      v26 = 3;
    }

    else
    {
      v26 = 4;
    }

    v27 = bswap32(v64) | (4 * WORD1(v64));
    LODWORD(v64) = v61;
    v28 = v59 + 16;
    v53 = *(v59 + 16);
    v29 = v53(v60, v51, v58);
    v30 = 0;
    LOBYTE(v69[0]) = 1;
    v62 = v26;
    v59 = v28;
    v56 = 16 * v26;
    v57 = (v28 - 8);
    v54 = v25;
    v55 = v63 + 32;
    do
    {
      v61 = &v49;
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = v32 + 8;
      v34 = v62;
      v35 = v32 + 8;
      do
      {
        *(v35 - 1) = 0;
        *v35 = 0;
        v35 += 16;
        --v34;
      }

      while (v34);
      v36 = v55 + 40 * v30;
      v37 = v62;
      while (1)
      {
        v38 = *(v63 + 16);
        if (v30 == v38)
        {
          break;
        }

        if (v30 >= v38)
        {
          __break(1u);
        }

        ++v30;
        outlined init with copy of AnyTrackedValue(v36, v70);
        v39 = *&v70[24];
        __swift_project_boxed_opaque_existential_1(v70, *&v70[24]);
        *(v33 - 1) = CVarArg.kdebugValue(_:)(v27 | v64, v39);
        *v33 = v40 & 1;
        v33 += 16;
        __swift_destroy_boxed_opaque_existential_1(v70);
        v36 += 40;
        if (!--v37)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v69[0]) = 0;
LABEL_20:
      v41 = v54;
      if (v54 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v32[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v32[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v58;
      v43 = *v57;
      v44 = v60;
      (*v57)(v60, v58);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v29 = v53(v44, v45, v42);
    }

    while ((v69[0] & 1) != 0);
    v46 = v58;
    v43(v60, v58);
    v43(v51, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  v47 = memcpy(v69, v3, 0x2A8uLL);
  GlassEntryView.body.getter(v47);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>();
  AGGraphSetOutputValue();
  memcpy(v69, v70, sizeof(v69));
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v69, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, ScheduledAnimationModifier<Int>>);
}

{
  MEMORY[0x1EEE9AC00](a1);
  v51 = v1;
  v3 = v2;
  v70 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  if (one-time initialization token for bodyInvoke != -1)
  {
    swift_once();
  }

  v10 = static Signpost.bodyInvoke;
  v11 = word_1ED539040;
  v12 = HIBYTE(word_1ED539040);
  v13 = byte_1ED539042;
  v14 = static os_signpost_type_t.begin.getter();
  v63 = v10;
  v69[0] = v10;
  LODWORD(v61) = v11;
  LOBYTE(v69[1]) = v11;
  BYTE1(v69[1]) = v12;
  BYTE2(v69[1]) = v13;
  if (Signpost.isEnabled.getter())
  {
    v56 = *(&v10 + 1);
    LODWORD(v60) = v14;
    v49 = v3;
    v50 = v9;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18DDAB4C0;
    v16 = AGTypeID.description.getter();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    v62 = v15;
    if (one-time initialization token for _signpostLog == -1)
    {
      v23 = v56;
      if (v12)
      {
LABEL_6:
        v67 = v60;
        v65 = _signpostLog;
        v66 = &dword_18D018000;
        *&v69[0] = v63;
        *(&v69[0] + 1) = v23;
        LOBYTE(v69[1]) = v61;
        v68[0] = "%{public}@.body [in %{public}@]";
        v68[1] = 31;
        LOBYTE(v68[2]) = 2;
        v64 = v62;
        v24 = v50;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v58 + 8))(v24, v57);
LABEL_35:

        v3 = v49;
        goto LABEL_36;
      }
    }

    else
    {
      swift_once();
      v23 = v56;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    v25 = v63;
    if (v63 == 20)
    {
      v26 = 3;
    }

    else
    {
      v26 = 4;
    }

    v27 = bswap32(v63) | (4 * WORD1(v63));
    LODWORD(v63) = v60;
    v28 = v58 + 16;
    v52 = *(v58 + 16);
    v29 = v52(v59, v50, v57);
    v30 = 0;
    LOBYTE(v68[0]) = 1;
    v61 = v26;
    v58 = v28;
    v55 = 16 * v26;
    v56 = (v28 - 8);
    v53 = v25;
    v54 = v62 + 32;
    do
    {
      v60 = &v48;
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = v32 + 8;
      v34 = v61;
      v35 = v32 + 8;
      do
      {
        *(v35 - 1) = 0;
        *v35 = 0;
        v35 += 16;
        --v34;
      }

      while (v34);
      v36 = v54 + 40 * v30;
      v37 = v61;
      while (1)
      {
        v38 = *(v62 + 16);
        if (v30 == v38)
        {
          break;
        }

        if (v30 >= v38)
        {
          __break(1u);
        }

        ++v30;
        outlined init with copy of AnyTrackedValue(v36, v69);
        v39 = *(&v69[1] + 1);
        __swift_project_boxed_opaque_existential_1(v69, *(&v69[1] + 1));
        *(v33 - 1) = CVarArg.kdebugValue(_:)(v27 | v63, v39);
        *v33 = v40 & 1;
        v33 += 16;
        __swift_destroy_boxed_opaque_existential_1(v69);
        v36 += 40;
        if (!--v37)
        {
          goto LABEL_20;
        }
      }

      LOBYTE(v68[0]) = 0;
LABEL_20:
      v41 = v53;
      if (v53 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v32[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v32[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v41 != 20 && v32[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v42 = v57;
      v43 = *v56;
      v44 = v59;
      (*v56)(v59, v57);
      v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
      v29 = v52(v44, v45, v42);
    }

    while ((v68[0] & 1) != 0);
    v46 = v57;
    v43(v59, v57);
    v43(v50, v46);
    goto LABEL_35;
  }

LABEL_36:
  AGGraphClearUpdate();
  memcpy(v68, v3, 0x408uLL);
  GlassItemView.body.getter(v69);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
  AGGraphSetOutputValue();
  memcpy(v68, v69, 0x819uLL);
  return outlined destroy of ObservationTracking._AccessList?(v68, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
}

{
  v45 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v52 = v1;
  v53 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v44[-v5];
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
    v65 = v6;
    LOBYTE(v66) = v7;
    BYTE1(v66) = v8;
    BYTE2(v66) = v9;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v55 = *(&v6 + 1);
    LODWORD(v56) = v10;
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
    v57 = v11;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v8)
    {
      v64 = v56;
      v62 = _signpostLog;
      v63 = &dword_18D018000;
      *&v65 = v6;
      *(&v65 + 1) = v55;
      LOBYTE(v66) = v7;
      v59 = "%{public}@.body [in %{public}@]";
      v60 = 31;
      v61 = 2;
      v58 = v57;
      v19 = v46;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v53 + 8))(v19, v52);
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
    v22 = v56;
    v23 = v53 + 16;
    v47 = *(v53 + 16);
    v24 = v47(v54, v46, v52);
    v25 = 0;
    LOBYTE(v59) = 1;
    v56 = v20;
    v50 = 16 * v20;
    v53 = v23;
    v51 = (v23 - 8);
    v49 = v57 + 32;
    v48 = v6;
LABEL_11:
    v55 = v44;
    MEMORY[0x1EEE9AC00](v24);
    v27 = &v44[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v28 = v27 + 8;
    v29 = v56;
    v30 = v27 + 8;
    do
    {
      *(v30 - 1) = 0;
      *v30 = 0;
      v30 += 16;
      --v29;
    }

    while (v29);
    v31 = v49 + 40 * v25;
    v32 = v56;
    while (1)
    {
      v33 = *(v57 + 16);
      if (v25 == v33)
      {
        LOBYTE(v59) = 0;
LABEL_19:
        v36 = v48;
        if (v48 == 20)
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

        v37 = v52;
        v38 = *v51;
        v39 = v54;
        (*v51)(v54, v52);
        v40 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v24 = v47(v39, v40, v37);
        if ((v59 & 1) == 0)
        {
          v41 = v52;
          v38(v54, v52);
          v38(v46, v41);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v25 >= v33)
      {
        break;
      }

      ++v25;
      outlined init with copy of AnyTrackedValue(v31, &v65);
      v34 = *(&v66 + 1);
      __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
      *(v28 - 1) = CVarArg.kdebugValue(_:)(v21 | v22, v34);
      *v28 = v35 & 1;
      v28 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v65);
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
  v42 = *(v45 + 16);
  v65 = *v45;
  v66 = v42;
  v67 = *(v45 + 32);
  v68 = 256;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
  return AGGraphSetOutputValue();
}

uint64_t Text.foregroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v12);
  if (swift_dynamicCast())
  {
    v16 = v24[1];
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    }

    v18 = *(a5 + 2);
    v17 = *(a5 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, a5);
    }

    v20 = 0;
  }

  else
  {
    type metadata accessor for TextForegroundStyleModifier();
    v16 = specialized TextForegroundStyleModifier.__allocating_init<A>(_:)(a1, a6);
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    }

    v18 = *(a5 + 2);
    v21 = *(a5 + 3);
    v19 = v18 + 1;
    if (v18 >= v21 >> 1)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v18 + 1, 1, a5);
    }

    v20 = -64;
  }

  *(a5 + 2) = v19;
  v22 = &a5[16 * v18];
  *(v22 + 4) = v16;
  v22[40] = v20;
  return a2;
}

uint64_t specialized static Text.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    if (a7 & 1) == 0 && (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((a7 & 1) == 0 || ((*(*a1 + 96))(a5) & 1) == 0)
  {
    return 0;
  }

LABEL_10:

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(a4, a8);
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  v9 = *(a3 + 16);
  v68 = *a3;
  v69 = v9;
  v10 = *(a3 + 48);
  v70 = *(a3 + 32);
  v71 = v10;
  v11 = *(a3 + 80);
  v72 = *(a3 + 64);
  v73[0] = v11;
  *(v73 + 12) = *(a3 + 92);
  v12 = DWORD2(v73[1]) >> 29;
  if (DWORD2(v73[1]) >> 29 == 2)
  {
    v36 = a6;
    v14 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v49 = v68;
      LOBYTE(v50) = v69 & 1;
      v15 = *(v14 + 16);
      v39 = *v14;
      v40 = v15;
      v41 = *(v14 + 32);
      LODWORD(v42) = *(v14 + 48);
      outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v39, &v61, a5, v36);
      v16 = *AGGraphGetValue();

      _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(&v39, a5, v36);
      v47[0] = v16;
      LOBYTE(v61) = v8;
      _ShapeStyle_Pack.subscript.getter(&v61, 0, &v53);

      v38 = v8;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v49, &v53, &v38);
      v65 = v57;
      v66[0] = v58;
      v66[1] = v59;
      v67 = v60;
      v61 = v53;
      v62 = v54;
      v63 = v55;
      v64 = v56;
      outlined destroy of _ShapeStyle_Pack.Style(&v61);
    }

    else
    {
      v61 = v68;
      LOBYTE(v62) = v69 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v61);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v68);
  }

  else
  {
    v13 = BYTE8(v70);
    if (v12 == 3)
    {
      if (v72)
      {
        v61 = v68;
        LOBYTE(v62) = v69;
        *(&v62 + 1) = *(&v69 + 1);
        BYTE7(v62) = (*(&v69 + 1) | ((*(&v69 + 5) | (BYTE7(v69) << 16)) << 32)) >> 48;
        *(&v62 + 5) = *(&v69 + 5);
        *(&v62 + 1) = *(&v69 + 1);
        v63 = v70;
        v64 = v71;
        LOBYTE(v65) = v72;
        *(&v65 + 1) = *(&v72 + 1);
        BYTE7(v65) = (*(&v72 + 1) | ((*(&v72 + 5) | (BYTE7(v72) << 16)) << 32)) >> 48;
        *(&v65 + 5) = *(&v72 + 5);
        *(&v65 + 1) = *(&v72 + 1);
        v66[0] = v73[0];
        *&v66[1] = *&v73[1];
        DWORD2(v66[1]) = DWORD2(v73[1]) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v61);
        return;
      }

      if (BYTE8(v68) != 2)
      {
        if (BYTE8(v68) == 255)
        {
          *(v66 + 12) = *(a3 + 92);
          v17 = *(a3 + 80);
          v65 = *(a3 + 64);
          v66[0] = v17;
          v18 = *(a3 + 16);
          v61 = *a3;
          v62 = v18;
          v19 = *(a3 + 48);
          v63 = *(a3 + 32);
          v64 = v19;
          DWORD2(v66[1]) &= 0x1FFFFFFFu;
          v20 = a4;
          v21 = a6;
          outlined init with copy of GraphicsImage(&v61, &v53);
          a6 = v21;
          a4 = v20;
        }

        goto LABEL_14;
      }

      v24 = *(v68 + 24);
      v25 = *(v68 + 32);
      v26 = *(v68 + 40);
      v27 = *(v68 + 44);
      v28 = *(v68 + 45);
      v29 = *(v68 + 48);
      *&v39 = *(v68 + 16);
      BYTE8(v39) = v24;
      *&v40 = v25;
      DWORD2(v40) = v26;
      BYTE12(v40) = v27;
      BYTE13(v40) = v28;
      *&v41 = v29;
      LOBYTE(v49) = v8;
      v30 = *(a4 + 16);
      v55 = *(a4 + 32);
      LODWORD(v56) = *(a4 + 48);
      v31 = *a4;
      v54 = v30;
      v53 = v31;
      v32 = a6;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v68, &v61);
      v33 = v39;
      outlined copy of Image.Location(v25);
      v34 = v29;
      outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v53, &v61, a5, v32);
      v35 = *AGGraphGetValue();

      _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(&v53, a5, v32);
      *&v61 = v35;
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v39, v13, &v49, &v61, a2);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v68);

      outlined consume of Image.Location(v25);
    }

    else if (v12 != 5 || DWORD2(v73[1]) != -1610612736 || v69 | ((*(&v69 + 1) | ((*(&v69 + 5) | (BYTE7(v69) << 16)) << 32)) << 8) | v72 | ((*(&v72 + 1) | ((*(&v72 + 5) | (BYTE7(v72) << 16)) << 32)) << 8) | v68 | *(&v68 + 1) | *(&v69 + 1) | v70 | *(&v70 + 1) | v71 | *(&v71 + 1) | *(&v72 + 1) | *&v73[0] | *(&v73[0] + 1) | *&v73[1])
    {
LABEL_14:
      v22 = *a4;
      v50 = *(a4 + 16);
      v49 = v22;
      v51 = *(a4 + 32);
      v52 = *(a4 + 48);
      v23 = a6;
      outlined init with copy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v49, &v61, a5, a6);
      AGGraphGetValue();

      _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(&v49, a5, v23);
      LOBYTE(v53) = v8;
      _ShapeStyle_Pack.subscript.getter(&v53, 0, &v61);

      v57 = v65;
      v58 = v66[0];
      v59 = v66[1];
      v60 = v67;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v46 = v67;
      v47[0] = v8;
      v47[1] = 0;
      v48 = 0;
      v43 = v65;
      v44 = v66[0];
      v45 = v66[1];
      v39 = v61;
      v40 = v62;
      v41 = v63;
      v42 = v64;
      outlined init with copy of _ShapeStyle_Pack.Style(&v53, &v61);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v47, &v39, a3);
      v65 = v43;
      v66[0] = v44;
      v66[1] = v45;
      v67 = v46;
      v61 = v39;
      v62 = v40;
      v63 = v41;
      v64 = v42;
      outlined destroy of _ShapeStyle_Pack.Style?(&v61, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      _ShapeStyle_RenderedShape.render(style:)(&v39);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
      outlined destroy of _ShapeStyle_Pack.Style(&v53);
    }
  }
}

char *GraphicsBlendMode.init(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = qword_18DDD94C0[*result];
  *(a2 + 8) = 0;
  return result;
}

uint64_t outlined assign with copy of AnyAccessibilityValue?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AnyAccessibilityValue?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TimeDataFormattingContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t destroy for AccessibilityValueStorage(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for AccessibilityValueStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t GeometryProxy.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9];
  v11 = v3[1];
  v27 = *v3;
  v28 = v11;
  v29 = v3[2];
  v30 = *(v3 + 12);
  specialized static Update.begin()();
  GeometryProxy.placementContext.getter(&v23);
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v17 = a2;
  v18 = a1;
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _PositionAwarePlacementContext?);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in GeometryProxy.subscript.getter, v16, MEMORY[0x1E69E73E0], a2, v12, v10);
  v13 = *(a2 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, a2) == 1)
  {
    Anchor.defaultValue.getter(a1);
    if (v14(v10, 1, a2) != 1)
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    (*(v13 + 32))(a3, v10, a2);
  }

  return static Update.end()();
}

uint64_t partial apply for closure #1 in GeometryProxy.subscript.getter(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 6);
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = v3;
  return Anchor.in(_:)(&v5, v2);
}

uint64_t getEnumTagSinglePayload for GlassEffectItemInit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t Anchor.in(_:)(uint64_t a1, uint64_t a2)
{
  InputValue = AGGraphGetInputValue();
  v4 = *InputValue;
  v5 = *(InputValue + 8);
  v6 = *(InputValue + 16);
  v7 = *(InputValue + 24);
  v8 = *(InputValue + 32);
  v9 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v10 = AGGraphGetInputValue();
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = v8 - (*v10 - v6);
  v15[0] = v4;
  v15[1] = v5;
  *&v15[2] = v11;
  *&v15[3] = v12;
  *&v15[4] = v13;
  *&v15[5] = v9 - (v12 - v7);
  (*(*a2 + 96))(v15);
}

uint64_t storeEnumTagSinglePayload for _BlendModeEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _BlendModeEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t Path.strokedPath(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 32);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      result = CGRectIsNull(*(result + 16));
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = CGRectIsNull(*v2);
      if (result)
      {
LABEL_4:
        v7 = 0;
        LOBYTE(v6) = 6;
LABEL_13:
        *a2 = v7;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = v6;
        return result;
      }
    }

LABEL_10:
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
    closure #1 in Path.strokedPath(_:)(v7 + 24, a1);
    result = RBPathRelease();
    LOBYTE(v6) = 5;
    goto LABEL_13;
  }

  if (v6 == 5)
  {
    if (*(result + 16))
    {
      if (*(result + 16) != 1)
      {
        v8 = one-time initialization token for bufferCallbacks;

        if (v8 != -1)
        {
          swift_once();
        }

LABEL_18:
        IsEmpty = RBPathIsEmpty();
        result = outlined destroy of Path(v2);
        if (IsEmpty)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }

LABEL_8:

      goto LABEL_18;
    }

    if (*(result + 24))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (v6 == 6)
  {
    v7 = 0;
    goto LABEL_13;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in Path.strokedPath(_:)(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v3 = a2[2];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[4];
  v8[0] = v4;
  v5 = a2[3];
  v8[1] = *(v5 + 16);
  v8[2] = v5 + 32;
  MEMORY[0x193AC35E0](a1, 19, v7, v8);
  Path.append(to:)(a1);
  return MEMORY[0x193AC35E0](a1, 16, 0, 0);
}

void Path.boundingRect.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 > 2)
  {
    if (v2 == 5)
    {
      if (*(v1 + 16))
      {
        if (*(v1 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          MEMORY[0x193AC3640](v1 + 24);
        }

        goto LABEL_11;
      }

      v3 = *(v1 + 24);
      if (v3)
      {
        v4 = v3;

        CGPathGetPathBoundingBox(v4);

LABEL_11:
        outlined destroy of Path(v0);
        return;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (v2 != 6)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

int8x16_t protocol witness for Shape.path(in:) in conformance Rectangle@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, uint64_t a3@<D1>, double a4@<D2>, uint64_t a5@<D3>)
{
  IsNull = CGRectIsNull(*&a2);
  *v7.i64 = a2;
  v7.i64[1] = a3;
  *v8.i64 = a4;
  v8.i64[1] = a5;
  if (IsNull)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  if (IsNull)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = vbicq_s8(v7, v10);
  result = vbicq_s8(v8, v10);
  *a1 = v12;
  a1[1] = result;
  a1[2].i8[0] = v11;
  return result;
}

Swift::Bool __swiftcall FixedRoundedRect.contains(_:)(SwiftUI::FixedRoundedRect *a1)
{
  x = a1->rect.origin.x;
  y = a1->rect.origin.y;
  width = a1->rect.size.width;
  height = a1->rect.size.height;
  v20 = a1->cornerSize.height;
  v21 = a1->cornerSize.width;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v22 = v1[4];
  v23 = v1[5];
  v24.origin.x = *v1;
  v24.origin.y = v7;
  v24.size.width = v8;
  v24.size.height = v9;
  v25 = CGRectInset(v24, -0.001, -0.001);
  v19 = x;
  v30.origin.x = x;
  v10 = y;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v11 = CGRectContainsRect(v25, v30);
  if (v11)
  {
    if (v22 > v21 || v23 > v20)
    {
      v26.origin.x = v6;
      v26.origin.y = v7;
      v26.size.width = v8;
      v26.size.height = v9;
      v13 = fabs(CGRectGetWidth(v26)) * 0.5;
      v27.origin.x = v6;
      v27.origin.y = v7;
      v27.size.width = v8;
      v27.size.height = v9;
      v14 = fabs(CGRectGetHeight(v27)) * 0.5;
      if (v14 >= v13)
      {
        v14 = v13;
      }

      v15 = v22;
      if (v14 < v22)
      {
        v15 = v14;
      }

      if (v14 >= v23)
      {
        v14 = v23;
      }

      v16 = v15 * 0.292893219;
      v17 = v14 * 0.292893219;
      v28.origin.x = v6;
      v28.origin.y = v7;
      v28.size.width = v8;
      v28.size.height = v9;
      v29 = CGRectInset(v28, v16, v17);
      v31.size.height = height;
      v31.origin.x = v19;
      v31.origin.y = v10;
      v31.size.width = width;
      LOBYTE(v11) = CGRectContainsRect(v29, v31);
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  return v11;
}

void type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void __swiftcall Path.roundedRect()(SwiftUI::FixedRoundedRect_optional *__return_ptr retstr)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  if (v3 == 2)
  {
    v7 = *(*&v2 + 64);
    v8 = *(*&v2 + 32);
    retstr->value.rect.origin = *(*&v2 + 16);
    retstr->value.rect.size = v8;
    retstr->value.cornerSize = *(*&v2 + 48);
    retstr->value.style = v7;
  }

  else
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v3 == 1)
    {
      if (vabdd_f64(v4, v6) < 0.001)
      {
        retstr->value.rect.origin.x = v2;
        retstr->value.rect.origin.y = v5;
        retstr->value.rect.size.width = v4;
        retstr->value.rect.size.height = v6;
        retstr->value.cornerSize.width = v4 * 0.5;
        retstr->value.cornerSize.height = v4 * 0.5;
        retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
        return;
      }
    }

    else if (!*(v1 + 32))
    {
      retstr->value.rect.origin.x = v2;
      retstr->value.rect.origin.y = v5;
      retstr->value.rect.size.width = v4;
      retstr->value.rect.size.height = v6;
      retstr->value.cornerSize.width = 0.0;
      retstr->value.cornerSize.height = 0.0;
      retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
      return;
    }

    retstr->value.rect.size = 0u;
    retstr->value.cornerSize = 0u;
    retstr->value.rect.origin = 0u;
    retstr->value.style = SwiftUI_RoundedCornerStyle_unknownDefault;
  }
}

uint64_t BufferedElement.__deallocating_deinit()
{
  swift_beginAccess();
  UnsafeHeterogeneousBuffer.destroy()();
  swift_endAccess();
  AnyElement.deinit();
  return swift_deallocClassInstance();
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.deinitialize(elt:)()
{
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();

  return UnsafeMutablePointer.deinitialize(count:)();
}

void Color.ResolvedHDR.animatableData.getter(float32x4_t *a1@<X8>)
{
  v7 = *v1;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v3 = v7;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v8, v7.f32[0], v7.u32[1], v7.f32[2], v7.f32[3]);
    v3 = v8;
  }

  v4.i64[0] = 0x4300000043000000;
  v4.i64[1] = 0x4300000043000000;
  v5 = vmulq_f32(v3, v4);
  v6 = v1[1].i32[0];
  *a1 = v5;
  a1[1].i32[0] = v6;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorVACE11ResolvedHDRV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); (vminv_u16(vmovn_s32(vceqq_f32(*(v3 - 4), *(i - 4)))) & 1) != 0 && *v3 == *i; i += 5)
    {
      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(uint64_t result, uint64_t a2)
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
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for _ForegroundColorModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ForegroundColorModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t Font.leading(_:)(char *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  a3(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;

  return v5;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.LeadingModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.LeadingModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.LeadingModifier>, lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier, &type metadata for Font.LeadingModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.LeadingModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier()
{
  result = lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier;
  if (!lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier;
  if (!lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier;
  if (!lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.LeadingModifier and conformance Font.LeadingModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Font.LeadingModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.LeadingModifier>, lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier, &type metadata for Font.LeadingModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.LeadingModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

_OWORD *assignWithTake for ZStack(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for _EnvironmentKeyTransformModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

uint64_t specialized LeafDisplayList.updateValue()()
{
  v31 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *(Value + 16);
  v5 = *(Value + 21);
  v6 = swift_allocObject();
  *(v6 + 16) = *Value;
  *(v6 + 32) = v4;
  *(v6 + 36) = 1;
  *(v6 + 37) = v5;
  v7 = ++static DisplayList.Version.lastValue;
  if (v3)
  {
    if (v7)
    {
      v8 = (2 * ((33 * (v7 >> 16)) ^ v7)) | 1;
    }

    else
    {
      LOWORD(v8) = 0;
    }

    *(v0 + 11) = v8;
  }

  v9 = v6 | 0x1000000000000000;
  type metadata accessor for CGPoint(0);
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = AGGraphGetValue();
  v14 = v11 - *v13;
  v15 = v12 - v13[1];
  v16 = *(v0 + 11);
  type metadata accessor for CGSize(0);

  v17 = AGGraphGetValue();
  v18 = *v0;
  *&v21 = v14;
  *(&v21 + 1) = v15;
  v22 = *v17;
  *&v24[16] = 0;
  *(&v23 + 1) = v9;
  *v24 = v16;
  *&v24[24] = v18;
  *&v23 = v7;
  LOBYTE(v27) = *(v0 + 20);
  DisplayList.Item.canonicalize(options:)(&v27);
  v25[2] = v23;
  v26[0] = v16;
  *(v26 + 12) = *&v24[12];
  v25[0] = v21;
  v25[1] = v22;
  v29 = v23;
  v30[0] = v16;
  *(v30 + 12) = *&v24[12];
  v27 = v21;
  v28 = v22;
  outlined init with copy of DisplayList.Item(v25, &v20);
  DisplayList.init(_:)(&v27, &v20);
  AGGraphSetOutputValue();

  v29 = v23;
  v30[0] = *v24;
  *(v30 + 12) = *&v24[12];
  v27 = v21;
  v28 = v22;
  outlined destroy of DisplayList.Item(&v27);
}

{
  v28 = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = 1065353216;
  *(v3 + 28) = 0;
  *(v3 + 20) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 36) = 2143289344;
  *(v3 + 40) = v4;
  v5 = ++static DisplayList.Version.lastValue;
  if (v2)
  {
    if (v5)
    {
      v6 = (2 * ((33 * (v5 >> 16)) ^ v5)) | 1;
    }

    else
    {
      LOWORD(v6) = 0;
    }

    *(v0 + 11) = v6;
  }

  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = Value[1];
  v10 = AGGraphGetValue();
  v11 = v8 - *v10;
  v12 = v9 - v10[1];
  v13 = *(v0 + 11);
  type metadata accessor for CGSize(0);

  v14 = AGGraphGetValue();
  v15 = *v0;
  *&v18 = v11;
  *(&v18 + 1) = v12;
  v19 = *v14;
  *&v21[16] = 0;
  *(&v20 + 1) = v3;
  *v21 = v13;
  *&v21[24] = v15;
  *&v20 = v5;
  LOBYTE(v24) = *(v0 + 20);
  DisplayList.Item.canonicalize(options:)(&v24);
  v22[2] = v20;
  v23[0] = v13;
  *(v23 + 12) = *&v21[12];
  v22[0] = v18;
  v22[1] = v19;
  v26 = v20;
  v27[0] = v13;
  *(v27 + 12) = *&v21[12];
  v24 = v18;
  v25 = v19;
  outlined init with copy of DisplayList.Item(v22, &v17);
  DisplayList.init(_:)(&v24, &v17);
  AGGraphSetOutputValue();

  v26 = v20;
  v27[0] = *v21;
  *(v27 + 12) = *&v21[12];
  v24 = v18;
  v25 = v19;
  outlined destroy of DisplayList.Item(&v24);
}

id UnclippedGradientLayer.init()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, sel_init);
  v2 = objc_allocWithZone(type metadata accessor for GradientLayer());
  v3 = v1;
  v4 = [v2 init];
  [v4 setAnchorPoint_];
  [v4 setNoAnimationDelegate];
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18DDAB4D0;
  *(v5 + 32) = v4;
  type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSublayers_];

  return v3;
}

void type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    }
  }
}

uint64_t AnyDynamicFontModifier.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t AnyDynamicFontModifier.__deallocating_deinit()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

double protocol witness for FontModifier.modify(traits:) in conformance Font.WeightModifier(uint64_t a1)
{
  result = *v1;
  *(a1 + 8) = *v1;
  return result;
}

uint64_t static MutableBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v13 = *(*v12 + 88);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v11, a1 + v13, v5);
  v15 = *(*a2 + 88);
  swift_beginAccess();
  v14(v8, a2 + v15, v5);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  return v16 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityAttachment(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 288);
  if (v2 && v2 != *(a2 + 288))
  {
    return 0;
  }

  else
  {
    return specialized static AccessibilityProperties.== infix(_:_:)(a1, a2);
  }
}

uint64_t specialized static AccessibilityProperties.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static AccessibilityProperties.CustomPropertyStorage.== infix(_:_:)(*(a1 + 280), *(a2 + 280)) & 1) == 0)
  {
    goto LABEL_20;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (!v4)
  {
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_13:
    v9 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = *(a2 + 32);
        v12 = *(a1 + 24);
        swift_bridgeObjectRetain_n();

        v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(v12, v9);
        swift_bridgeObjectRelease_n();

        v8 = 0;
        if ((v13 & 1) == 0 || v10 != v11)
        {
          return v8 & 1;
        }

        goto LABEL_23;
      }
    }

    else if (!v9)
    {

LABEL_23:
      if ((*(a1 + 56) & 1) == 0)
      {
        v8 = 0;
        if ((*(a2 + 56) & 1) != 0 || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
        {
          return v8 & 1;
        }

LABEL_29:
        outlined init with copy of AccessibilityValueStorage?(a1 + 64, __src, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
        outlined init with copy of AccessibilityValueStorage?(a2 + 64, &__src[3], &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
        if (*(&__src[1] + 1) == 1)
        {
          if (*(&__src[4] + 1) == 1)
          {
            _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
LABEL_37:
            v19 = *(a2 + 120);
            if (*(a1 + 120))
            {
              if (!*(a2 + 120))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (*(a1 + 112) != *(a2 + 112))
              {
                v19 = 1;
              }

              if (v19)
              {
                goto LABEL_20;
              }
            }

            v20 = *(a1 + 240);
            v21 = *(a1 + 208);
            v82 = *(a1 + 224);
            v83 = v20;
            v22 = *(a1 + 240);
            v84 = *(a1 + 256);
            v23 = *(a1 + 176);
            v24 = *(a1 + 144);
            v78 = *(a1 + 160);
            v79 = v23;
            v25 = *(a1 + 176);
            v26 = *(a1 + 208);
            v80 = *(a1 + 192);
            v81 = v26;
            v27 = *(a1 + 144);
            v77[0] = *(a1 + 128);
            v77[1] = v27;
            v28 = *(a2 + 240);
            v29 = *(a2 + 208);
            v91 = *(a2 + 224);
            v92 = v28;
            v30 = *(a2 + 240);
            v93 = *(a2 + 256);
            v31 = *(a2 + 176);
            v32 = *(a2 + 144);
            v87 = *(a2 + 160);
            v88 = v31;
            v33 = *(a2 + 176);
            v34 = *(a2 + 208);
            v89 = *(a2 + 192);
            v90 = v34;
            v35 = *(a2 + 144);
            v86[0] = *(a2 + 128);
            v86[1] = v35;
            v36 = *(a1 + 240);
            __src[6] = *(a1 + 224);
            __src[7] = v36;
            __src[8] = *(a1 + 256);
            v37 = *(a1 + 176);
            __src[2] = *(a1 + 160);
            __src[3] = v37;
            v38 = *(a1 + 208);
            __src[4] = *(a1 + 192);
            __src[5] = v38;
            v39 = *(a1 + 144);
            __src[0] = *(a1 + 128);
            __src[1] = v39;
            v40 = *(a2 + 256);
            *(&__src[16] + 8) = v30;
            *(&__src[17] + 8) = v40;
            *(&__src[15] + 8) = v91;
            *(&__src[11] + 8) = v87;
            *(&__src[12] + 8) = v33;
            *(&__src[13] + 8) = v89;
            *(&__src[14] + 8) = v29;
            *(&__src[9] + 8) = v86[0];
            *(&__src[10] + 8) = v32;
            v101 = v82;
            v102 = v22;
            v103 = *(a1 + 256);
            v97 = v78;
            v98 = v25;
            v99 = v80;
            v100 = v21;
            v85 = *(a1 + 272);
            v94 = *(a2 + 272);
            LOBYTE(__src[9]) = *(a1 + 272);
            BYTE8(__src[18]) = *(a2 + 272);
            v104 = *(a1 + 272);
            v95 = v77[0];
            v96 = v24;
            if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v95) == 1)
            {
              __dst[6] = *(&__src[15] + 8);
              __dst[7] = *(&__src[16] + 8);
              __dst[8] = *(&__src[17] + 8);
              LOBYTE(__dst[9]) = BYTE8(__src[18]);
              __dst[2] = *(&__src[11] + 8);
              __dst[3] = *(&__src[12] + 8);
              __dst[4] = *(&__src[13] + 8);
              __dst[5] = *(&__src[14] + 8);
              __dst[0] = *(&__src[9] + 8);
              __dst[1] = *(&__src[10] + 8);
              if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(__dst) == 1)
              {
                v72 = __src[6];
                v73 = __src[7];
                v74 = __src[8];
                v75 = __src[9];
                v68 = __src[2];
                v69 = __src[3];
                v70 = __src[4];
                v71 = __src[5];
                v66 = __src[0];
                v67 = __src[1];
                outlined init with copy of AccessibilityValueStorage?(v77, &v55, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                outlined init with copy of AccessibilityValueStorage?(v86, &v55, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(&v66, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                v8 = 1;
                return v8 & 1;
              }

              outlined init with copy of AccessibilityValueStorage?(v77, &v66, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined init with copy of AccessibilityValueStorage?(v86, &v66, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
            }

            else
            {
              v72 = __src[6];
              v73 = __src[7];
              v74 = __src[8];
              v68 = __src[2];
              v69 = __src[3];
              v70 = __src[4];
              v71 = __src[5];
              v66 = __src[0];
              v67 = __src[1];
              v61 = __src[6];
              v62 = __src[7];
              v63 = __src[8];
              v57 = __src[2];
              v58 = __src[3];
              v59 = __src[4];
              v60 = __src[5];
              v75 = __src[9];
              v64 = __src[9];
              v55 = __src[0];
              v56 = __src[1];
              __dst[6] = *(&__src[15] + 8);
              __dst[7] = *(&__src[16] + 8);
              __dst[8] = *(&__src[17] + 8);
              LOBYTE(__dst[9]) = BYTE8(__src[18]);
              __dst[2] = *(&__src[11] + 8);
              __dst[3] = *(&__src[12] + 8);
              __dst[4] = *(&__src[13] + 8);
              __dst[5] = *(&__src[14] + 8);
              __dst[0] = *(&__src[9] + 8);
              __dst[1] = *(&__src[10] + 8);
              if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(__dst) != 1)
              {
                v51 = *(&__src[15] + 8);
                v52 = *(&__src[16] + 8);
                v53 = *(&__src[17] + 8);
                v54 = BYTE8(__src[18]);
                v47 = *(&__src[11] + 8);
                v48 = *(&__src[12] + 8);
                v49 = *(&__src[13] + 8);
                v50 = *(&__src[14] + 8);
                v45 = *(&__src[9] + 8);
                v46 = *(&__src[10] + 8);
                outlined init with copy of AccessibilityValueStorage?(v77, v43, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                outlined init with copy of AccessibilityValueStorage?(v86, v43, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                outlined init with copy of AccessibilityValueStorage?(&v66, v43, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                v8 = specialized static AccessibilityTextLayoutProperties.== infix(_:_:)(&v55, &v45);
                v41[6] = v51;
                v41[7] = v52;
                v41[8] = v53;
                v42 = v54;
                v41[2] = v47;
                v41[3] = v48;
                v41[4] = v49;
                v41[5] = v50;
                v41[0] = v45;
                v41[1] = v46;
                outlined destroy of AccessibilityTextLayoutProperties(v41);
                v43[6] = v61;
                v43[7] = v62;
                v43[8] = v63;
                v44 = v64;
                v43[2] = v57;
                v43[3] = v58;
                v43[4] = v59;
                v43[5] = v60;
                v43[0] = v55;
                v43[1] = v56;
                outlined destroy of AccessibilityTextLayoutProperties(v43);
                v51 = __src[6];
                v52 = __src[7];
                v53 = __src[8];
                v54 = __src[9];
                v47 = __src[2];
                v48 = __src[3];
                v49 = __src[4];
                v50 = __src[5];
                v45 = __src[0];
                v46 = __src[1];
                _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(&v45, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
                return v8 & 1;
              }

              v51 = __src[6];
              v52 = __src[7];
              v53 = __src[8];
              v54 = __src[9];
              v47 = __src[2];
              v48 = __src[3];
              v49 = __src[4];
              v50 = __src[5];
              v45 = __src[0];
              v46 = __src[1];
              outlined init with copy of AccessibilityValueStorage?(v77, v43, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined init with copy of AccessibilityValueStorage?(v86, v43, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined init with copy of AccessibilityValueStorage?(&v66, v43, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, &type metadata for AccessibilityTextLayoutProperties, type metadata accessor for HitTestableEvent?);
              outlined destroy of AccessibilityTextLayoutProperties(&v45);
            }

            memcpy(__dst, __src, 0x129uLL);
            v15 = &lazy cache variable for type metadata for (AccessibilityTextLayoutProperties?, AccessibilityTextLayoutProperties?);
            v16 = &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?;
            v17 = __dst;
            goto LABEL_35;
          }
        }

        else
        {
          outlined init with copy of AccessibilityValueStorage?(__src, __dst, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
          if (*(&__src[4] + 1) != 1)
          {
            v95 = __src[3];
            v96 = __src[4];
            v97 = __src[5];
            v18 = specialized static AccessibilityValueStorage.== infix(_:_:)(__dst, &v95);
            outlined destroy of AccessibilityValueStorage(&v95);
            outlined destroy of AccessibilityValueStorage(__dst);
            _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(__src, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
            if (!v18)
            {
              goto LABEL_20;
            }

            goto LABEL_37;
          }

          outlined destroy of AccessibilityValueStorage(__dst);
        }

        v15 = &lazy cache variable for type metadata for (AccessibilityValueStorage?, AccessibilityValueStorage?);
        v16 = &lazy cache variable for type metadata for AccessibilityValueStorage?;
        v17 = __src;
LABEL_35:
        outlined destroy of (AccessibilityTextLayoutProperties?, AccessibilityTextLayoutProperties?)(v17, v15, v16);
        goto LABEL_20;
      }

      if (*(a2 + 56))
      {
        goto LABEL_29;
      }

LABEL_20:
      v8 = 0;
      return v8 & 1;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (*a1 == *a2 && v4 == v5)
  {
    if (v6 != v7)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v8 = 0;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v6 == v7)
  {
    goto LABEL_13;
  }

  return v8 & 1;
}

uint64_t specialized static AccessibilityProperties.CustomPropertyStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v15, v24);
      *&v25 = v16;
      outlined init with take of _ViewList_Elements(v24, &v25 + 8);
      v13 = v11;
LABEL_14:
      v28[1] = v26;
      v28[2] = v27;
      v28[0] = v25;
      if (!v27)
      {
        break;
      }

      v17 = *&v28[0];
      outlined init with take of _ViewList_Elements(v28 + 8, &v25);
      if (!*(a2 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v19 & 1) == 0) || (outlined init with copy of AnyTrackedValue(*(a2 + 56) + 40 * v18, v23), outlined init with take of _ViewList_Elements(v23, v24), v20 = *(&v26 + 1), v21 = v27, __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1)), v22 = (*(v21 + 8))(v24, v20, v21), __swift_destroy_boxed_opaque_existential_1(v24), (v22 & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_1(&v25);
        return 0;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v25);
      v10 = v13;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  else
  {
LABEL_6:
    if (v8 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v7 = 0;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        goto LABEL_14;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI25AccessibilityValueStorageVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for CodableAccessibilityValueStorage?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CalendarKey>, &type metadata for CalendarKey, &protocol witness table for CalendarKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08CalendarV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, v12);
  if (v5)
  {
    v6 = *(*v5 + 248);
    v7 = v5;
    v8 = type metadata accessor for Calendar();
    return (*(*(v8 - 8) + 16))(a2, &v7[v6], v8);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Calendar();
    v11 = __swift_project_value_buffer(v10, static CalendarKey.defaultValue);
    return (*(*(v10 - 8) + 16))(a2, v11, v10);
  }
}

uint64_t EnvironmentValues.calendar.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t, uint64_t *))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3, &v6);
  }

  a1(v3);
}

uint64_t EnvironmentValues.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v6 = *(*v5 + 248);
      v7 = v5;
      v8 = type metadata accessor for Locale();
      v9 = *(*(v8 - 8) + 16);
      v10 = v7 + v6;
      v11 = v8;
      v12 = a1;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Locale();
      v10 = __swift_project_value_buffer(v13, static LocaleKey.defaultValue);
      v9 = *(*(v13 - 8) + 16);
      v12 = a1;
      v11 = v13;
    }

    return v9(v12, v10, v11);
  }
}

id outlined copy of PlatformDrawableContent?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined copy of PlatformDrawableContent.Storage(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t protocol witness for PlatformDrawable.update(content:required:) in conformance RBDrawingLayer(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != 255)
  {
    v4 = *(a1 + 24);
    v3 = *(a1 + 32);
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v7 = *a1;
    v8 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];
    outlined copy of PlatformDrawableContent?(*a1, v6, v5, v4, v3, v2);
    outlined copy of PlatformDrawableContent?(v7, v6, v5, v4, v3, v2);

    os_unfair_lock_lock((v8 + 16));
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    v11 = *(v8 + 40);
    v12 = *(v8 + 48);
    v13 = *(v8 + 56);
    *(v8 + 24) = v7;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = v3;
    v14 = *(v8 + 64);
    *(v8 + 64) = v2;
    outlined consume of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
    os_unfair_lock_unlock((v8 + 16));
    outlined consume of PlatformDrawableContent?(v7, v6, v5, v4, v3, v2);
  }

  [v1 setNeedsDisplay];
  return 1;
}

uint64_t GraphicsContext.translateBy(x:y:)(double a1, double a2)
{
  if (a1 != 0.0 || a2 != 0.0)
  {
    GraphicsContext.copyOnWrite()();

    return RBDrawingStateTranslateCTM();
  }

  return result;
}

void *initializeWithCopy for GraphicsContext.ResolvedShading(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  v21 = *(a2 + 136);
  v22 = *(a2 + 144);
  v23 = *(a2 + 152);
  v24 = *(a2 + 160);
  v9 = *(a2 + 64);
  v10 = *a2;
  v11 = *(a2 + 8);
  outlined copy of GraphicsContext.ResolvedShading(*a2, v11, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17);
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v9;
  a1[9] = v13;
  a1[10] = v14;
  a1[11] = v15;
  a1[12] = v16;
  a1[13] = v17;
  a1[14] = v18;
  a1[15] = v19;
  a1[16] = v20;
  a1[17] = v21;
  a1[18] = v22;
  a1[19] = v23;
  a1[20] = v24;
  return a1;
}

uint64_t GraphicsContext.identifier.setter()
{
  GraphicsContext.copyOnWrite()();

  return RBDrawingStateSetIdentifier();
}

id outlined copy of GraphicsContext.ResolvedShading(id result, unsigned __int8 a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14 >> 60;
  if ((a14 >> 60) > 5)
  {
    if (v14 == 6)
    {

LABEL_15:
    }

    if (v14 != 7)
    {
      if (v14 != 8)
      {
        return result;
      }

      goto LABEL_15;
    }

    return outlined copy of GraphicsImage.Contents?(result, a2);
  }

  else
  {
    if (v14 != 3)
    {
      if (v14 == 4)
      {
        outlined copy of _ShapeStyle_Pack.Fill(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, BYTE5(a11));
        outlined copy of GraphicsBlendMode?(a13, a14);
      }

      else if (v14 != 5)
      {
        return result;
      }

      goto LABEL_15;
    }

    return result;
  }
}

uint64_t _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOg(uint64_t a1)
{
  v1 = (*(a1 + 104) >> 11) & 0x1F80 | (*(a1 + 104) >> 9) | (*(a1 + 104) >> 13) & 0xFFFFE000;
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t GraphicsContext.Storage.Shared.setColor(_:)(_DWORD *a1, double a2, double a3, double a4, double a5)
{
  v7 = *(v5 + 40);
  LODWORD(a2) = *a1;
  LODWORD(a3) = a1[1];
  LODWORD(a4) = a1[2];
  LODWORD(a5) = a1[3];
  if (*(v5 + 64) != 2)
  {
    RBColorFromLinear();
  }

  [v7 setColor_];
  LODWORD(v8) = a1[4];
  [v7 setHeadroom_];
  *(v5 + 272) = 0;
}

uint64_t AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a10;
  v16 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AccessibilityValueStorage.init<A>(_:description:), v21, MEMORY[0x1E69E73E0], &type metadata for AnyAccessibilityValue, v17, v25);
  *&v24 = 0;
  v22 = 0u;
  v23 = 0u;
  outlined assign with copy of AnyAccessibilityValue?(v25, &v22);
  if (a5)
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDA6EB0;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 48) = a4 & 1;
    *(v18 + 56) = a5;
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    outlined consume of Text?(a2, a3, a4, a5);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  _sypSgWOhTm_11(v25, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  *(&v24 + 1) = v18;
  v19 = v23;
  *a9 = v22;
  a9[1] = v19;
  a9[2] = v24;
  return (*(*(v16 - 8) + 8))(a1, v16);
}

unint64_t instantiation function for generic protocol witness table for AccessibilityProgressValue(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
  *(a1 + 8) = result;
  return result;
}

uint64_t AnyAccessibilityValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
}

uint64_t partial apply for closure #1 in AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return closure #1 in AccessibilityValueStorage.init<A>(_:description:)(a1, *(v2 + 16), a2);
}

{
  return closure #1 in AccessibilityValueStorage.init<A>(_:description:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

uint64_t initializeWithCopy for TimeDataFormattingContainer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t closure #1 in AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return AnyAccessibilityValue.init<A>(_:)(v7, a2, a3);
}

uint64_t instantiation function for generic protocol witness table for AnyAccessibilityValue.ConcreteBase<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata completion function for RawRepresentableProxy()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue and conformance AccessibilityProgressValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollStateRequestKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t instantiation function for generic protocol witness table for SpacingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<SpacingLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<SpacingLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance SpacingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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

unint64_t lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout()
{
  result = lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout;
  if (!lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout;
  if (!lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpacingLayout and conformance SpacingLayout);
  }

  return result;
}

uint64_t View.spacing(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  View.modifier<A>(_:)(&v3, a2, &type metadata for SpacingLayout);
}

uint64_t outlined init with copy of UnaryLayoutEngine<SpacingLayout>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>);
    }
  }
}

uint64_t outlined destroy of UnaryLayoutEngine<SpacingLayout>(uint64_t a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Color.Resolved.kitColor.getter(float a1, float a2, float a3, float a4)
{
  if (one-time initialization token for cache != -1)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    v7 = a1;
    swift_once();
    a1 = v7;
    a2 = v6;
    a3 = v5;
    a4 = v4;
  }

  specialized ObjectCache.subscript.getter(a1, a2, a3, a4);
}

uint64_t one-time initialization function for zero()
{
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static Spacing.Category.default;
  *(inited + 32) = static Spacing.Category.default;
  *(inited + 40) = 1;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0;
  *(inited + 88) = v1;
  *(inited + 96) = 3;
  *(inited + 104) = 0u;
  *(inited + 120) = 0u;
  *(inited + 136) = 0;
  *(inited + 144) = v1;
  *(inited + 152) = 0;
  *(inited + 160) = 0u;
  *(inited + 176) = 0u;
  *(inited + 192) = 0;
  *(inited + 200) = v1;
  *(inited + 208) = 2;
  *(inited + 248) = 0;
  *(inited + 232) = 0u;
  *(inited + 216) = 0u;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  static Spacing.zero = v2;
  return result;
}

{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static ViewDimensions.zero = static LayoutComputer.defaultValue;
  *algn_1EAB13A58 = unk_1ED53B850;
  xmmword_1EAB13A60 = 0u;
  unk_1EAB13A70 = 0u;
}

{
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  static ViewGeometry.zero = 0uLL;
  qword_1EAB13B40 = static ViewDimensions.zero;
  unk_1EAB13B48 = *algn_1EAB13A58;
  xmmword_1EAB13B50 = xmmword_1EAB13A60;
  unk_1EAB13B60 = unk_1EAB13A70;
}

{
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  static ViewSpacing.zero = static Spacing.zero;
  byte_1ED52A120 = 2;
}

double IgnoresAutomaticPaddingLayout.placement(of:in:)@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v25 = *(a1 + 1);
  v26 = a1[3];
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v29 = *(a1 + 2);
  v6 = *(a1 + 48);
  v24 = v3;
  v27 = v4;
  v28 = v5;
  v30 = v6;
  PlacementContext.proposedSize.getter(&v20);
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  if (v6)
  {
    InputValue = AGGraphGetInputValue();
    v12 = *InputValue;
    v13 = InputValue[1];
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  result = v12 * 0.5;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  __asm { FMOV            V2.2D, #0.5 }

  *(a2 + 32) = _Q2;
  *(a2 + 48) = result;
  *(a2 + 56) = v13 * 0.5;
  return result;
}

uint64_t specialized RBDrawingLayer.draw(in:size:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state;
  v5 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914RBDrawingLayer__state];

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  *(v5 + 72) = 3;
  *(v5 + 80) = 0;
  v20[0] = v6;
  v21 = v7;
  os_unfair_lock_unlock((v5 + 16));

  v8 = *&v2[v4];

  os_unfair_lock_lock((v8 + 16));
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  v12 = *(v8 + 48);
  v13 = *(v8 + 56);
  v14 = *(v8 + 64);
  outlined copy of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  os_unfair_lock_unlock((v8 + 16));

  [v2 bounds];
  PlatformDrawableContent.draw(in:size:state:)(a1, v20, v15, v16);
  outlined consume of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  v17 = *&v2[v4];

  os_unfair_lock_lock((v17 + 16));
  v18 = v21;
  *(v17 + 72) = v20[0];
  *(v17 + 80) = v18;
  os_unfair_lock_unlock((v17 + 16));
}

id PlatformDrawableContent.draw(in:size:state:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  v9 = *(v4 + 40);
  if (v9 == 4)
  {
    [a1 translateByX:COERCE_DOUBLE(v8 ^ 0x8000000000000000) Y:COERCE_DOUBLE(v7 ^ 0x8000000000000000)];
    State = RBDisplayListGetState();
    v11 = sel_drawInState_by_;
    v12 = v5;

    return [v12 v11];
  }

  if (v9 == 3)
  {
    [a1 translateByX:COERCE_DOUBLE(v6 ^ 0x8000000000000000) Y:COERCE_DOUBLE(v8 ^ 0x8000000000000000)];
    v11 = sel_drawDisplayList_;
    v12 = a1;
    State = v5;

    return [v12 v11];
  }

  v41 = *(v4 + 32);
  v18 = a1;
  EnvironmentValues.init()(&v43);
  v19 = v43;
  v20 = v44;
  type metadata accessor for GraphicsContext.Storage();
  v21 = swift_allocObject();
  *(v21 + 32) = xmmword_18DD85500;
  *(v21 + 48) = 1065353216;
  *(v21 + 56) = 0x7FF8000000000000;
  v42[0] = v19;
  v42[1] = v20;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v22 = v18;
  *(v21 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v22, v42);
  *(v21 + 24) = RBDisplayListGetState();
  *(v21 + 64) = 0;

  v45 = v21;
  if (v9 <= 1)
  {
    if (v9)
    {
      outlined copy of PlatformDrawableContent.Storage(v5, v6, v8, v7, v41, 1u);

      v30 = RBDrawingStateBeginCGContext();
      v31 = v30;
      v32 = *(v21 + 52);
      if (v32)
      {
        CGContextSetBlendMode(v30, v32);
      }

      v33 = *(v21 + 56);
      outlined copy of PlatformDrawableContent.Storage(v5, v6, v8, v7, v41, 1u);
      if ((~*&v33 & 0x7FF0000000000000) != 0 || (*&v33 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        _CGContextSetShapeDistance(v33);
        v40 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
        (v5)([v40 push], a3, a4);
        [v40 pop];

        _CGContextSetShapeDistance(NAN);
      }

      else
      {
        v34 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
        (v5)([v34 push], a3, a4);
        [v34 pop];
      }

      outlined consume of PlatformDrawableContent.Storage(v5, v6, v8, v7, v41, 1u);
      RBDrawingStateEndCGContext();

      outlined consume of PlatformDrawableContent.Storage(v5, v6, v8, v7, v41, 1u);
      v23 = v5;
      v24 = v6;
      v25 = v8;
      v26 = v7;
      v27 = v41;
      v28 = 1;
    }

    else
    {

      (v5)(&v45, a3, a4);
      v23 = v5;
      v24 = v6;
      v25 = v8;
      v26 = v7;
      v27 = v41;
      v28 = 0;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    if (*&v8 == 0.0 && *&v7 == 0.0)
    {

      v29 = *(a2 + 8);
      if (!v29)
      {
        goto LABEL_23;
      }
    }

    else
    {

      GraphicsContext.copyOnWrite()();
      RBDrawingStateTranslateCTM();
      v29 = *(a2 + 8);
      if (!v29)
      {
LABEL_23:
        LOBYTE(v43) = *a2;
        type metadata accessor for DisplayList.GraphicsRenderer();
        swift_allocObject();
        v29 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v43);
        *(a2 + 8) = v29;
      }
    }

    v35 = *(v29 + 64);
    *(v29 + 72) = v41;
    *(v29 + 80) = 0x7FF0000000000000;
    v43 = v5;
    LOWORD(v44) = v6;
    HIDWORD(v44) = HIDWORD(v6);
    v36 = *(v29 + 48);
    v37 = *(v29 + 56);
    outlined copy of PlatformDrawableContent.Storage(v5, v6, v8, v7, v41, 2u);

    DisplayList.GraphicsRenderer.render(list:in:)(&v43, &v45);
    swift_beginAccess();

    v38 = MEMORY[0x1E69E7CC8];
    *(v29 + 16) = MEMORY[0x1E69E7CC8];

    swift_beginAccess();
    v39 = *(v29 + 32);
    *(v29 + 32) = v38;
    *(v29 + 40) = v38;
    *(v29 + 16) = v39;
    swift_endAccess();
    *(v29 + 48) = v36;
    *(v29 + 56) = v37;
    *(v29 + 64) = v35;
    outlined consume of PlatformDrawableContent.Storage(v5, v6, v8, v7, v41, 2u);

    v23 = v5;
    v24 = v6;
    v25 = v8;
    v26 = v7;
    v27 = v41;
    v28 = 2;
LABEL_27:
    outlined consume of PlatformDrawableContent.Storage(v23, v24, v25, v26, v27, v28);
  }
}

uint64_t key path getter for EnvironmentValues.controlSize : EnvironmentValues@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.controlSize.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t EnvironmentValues.controlSize.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v3, &v8);

    v5 = v8;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>();
    BloomFilter.init(hashValue:)(v6);
    result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v3, v7);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 5;
    }
  }

  if (v5 == 5)
  {
    LOBYTE(v5) = 2;
  }

  *a1 = v5;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
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

float protocol witness for ColorProvider.resolve(in:) in conformance SystemColorType(__int128 *a1)
{
  v4 = *v1;
  v3 = *a1;
  SystemColorType.resolveHDR(in:)(&v3, &v5);
  return v5;
}

double SystemColorType.resolveHDR(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  if (v5)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v4);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*a1);
    if (v10)
    {
      v7 = v10[9];
      v9 = v10[10];
    }

    else
    {
      v9 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v7 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v13 = v6;
  v12[0] = v4;
  v12[1] = v5;
  (v9[1])(&v14, &v13, v12, v7, v9);
  result = *&v14;
  *a2 = v14;
  *(a2 + 16) = v15;
  return result;
}

uint64_t initializeWithCopy for GraphicsContext.Shading(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  outlined copy of GraphicsContext.Shading.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, *(a2 + 72));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  return a1;
}

uint64_t GraphicsContext.draw(_:with:style:)(uint64_t result, uint64_t *a2, uint64_t *a3, double *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[5];
  v9 = *(a2 + 72);
  v10 = *a3;
  v11 = a3[1];
  v13 = a3[2];
  v12 = a3[3];
  v14 = a3[4];
  v15 = *(a3 + 40);
  if (v9 > 7)
  {
    if (v9 == 8)
    {
      if (*(v4 + 16))
      {
        v43 = result;
        v44 = a4;
        v45 = *(v4 + 48);
        v46 = *(v4 + 80);
        v99 = *(v4 + 64);
        *v100 = v46;
        *&v100[9] = *(v4 + 89);
        v47 = *(v4 + 48);
        v97 = *(v4 + 32);
        v98 = v45;
        v48 = *(v4 + 80);
        v95 = *(v4 + 64);
        *v96 = v48;
        *&v96[9] = *(v4 + 89);
        v93 = *(v4 + 32);
        v94 = v47;
        *&v122 = v10;
        *(&v122 + 1) = v11;
        *&v123 = v13;
        *(&v123 + 1) = v12;
        *&v124 = v14;
        BYTE8(v124) = v15;
        outlined init with copy of GraphicsContext.Shading(&v97, &v107);
        GraphicsContext.draw(_:with:style:)(v43, &v93, &v122, v44);
        v109 = v95;
        *v110 = *v96;
        *&v110[9] = *&v96[9];
        v107 = v93;
        v108 = v94;
        return outlined destroy of GraphicsContext.Shading(&v107);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (v9 == 9)
    {
      v49 = *(v4 + 144);
      v113 = *(v4 + 128);
      v114 = v49;
      v115 = *(v4 + 160);
      v116 = *(v4 + 176);
      v50 = *(v4 + 80);
      *v110 = *(v4 + 64);
      *&v110[16] = v50;
      v51 = *(v4 + 112);
      v111 = *(v4 + 96);
      v112 = v51;
      v52 = *(v4 + 32);
      v107 = *(v4 + 16);
      v108 = v52;
      v109 = *(v4 + 48);
      v53 = *(v4 + 144);
      v103 = *(v4 + 128);
      v104 = v53;
      v105 = *(v4 + 160);
      v106 = *(v4 + 176);
      v54 = *(v4 + 80);
      *v100 = *(v4 + 64);
      *&v100[16] = v54;
      v55 = *(v4 + 112);
      v101 = *(v4 + 96);
      v102 = v55;
      v56 = *(v4 + 32);
      v97 = *(v4 + 16);
      v98 = v56;
      v99 = *(v4 + 48);
      *&v122 = v10;
      *(&v122 + 1) = v11;
      *&v123 = v13;
      *(&v123 + 1) = v12;
      *&v124 = v14;
      BYTE8(v124) = v15;
      v57 = result;
      v58 = a4;
      outlined init with copy of GraphicsContext.ResolvedShading(&v107, &v93);
      GraphicsContext.draw(_:with:style:)(v57, &v97, &v122, v58);
      return outlined destroy of GraphicsContext.ResolvedShading(&v107);
    }

    if (v9 == 10 && !(v5 | v4 | v7 | v6 | a2[4] | v8 | a2[6] | a2[7] | a2[8]))
    {
      v87 = *(a3 + 40);
      v16 = a3[1];
      v17 = a3[2];
      v18 = a3[3];
      v19 = *a3;
      v20 = a3[4];
      v90 = result;
      v21 = *(a4 + 2);
      v22 = *(a4 + 4);
      v84 = a4;
      v23 = v22;
      v24 = *(a4 + 5);
      if (v22 == 1)
      {
        v23 = *(v21 + 48);
        v24 = *(v21 + 56);
      }

      *&v107 = v23;
      *(&v107 + 1) = v24;
      outlined copy of EnvironmentValues?(v22);
      GraphicsContext.Storage.Shared.resolvedForeground(in:)(&v107, &v97);
      outlined consume of EnvironmentValues?(v107);
      *&v93 = v19;
      *(&v93 + 1) = v16;
      *&v94 = v17;
      *(&v94 + 1) = v18;
      *&v95 = v20;
      BYTE8(v95) = v87;
      GraphicsContext.draw(_:with:style:)(v90, &v97, &v93, v84);
      v114 = v104;
      v115 = v105;
      v116 = v106;
      *&v110[16] = *&v100[16];
      v111 = v101;
      v112 = v102;
      v113 = v103;
      v107 = v97;
      v108 = v98;
      v109 = v99;
      *v110 = *v100;
      return outlined destroy of GraphicsContext.ResolvedShading(&v107);
    }

    goto LABEL_15;
  }

  if (*(a2 + 72))
  {
    if (v9 != 4)
    {
LABEL_15:
      v81 = a2[8];
      v83 = a2[7];
      v86 = a2[6];
      v89 = a2[4];
      v92 = result;
      v35 = *(a4 + 2);
      v36 = a4;
      v37 = v35[4];
      if (a3[5])
      {
        *&v97 = *a3;
        *(&v97 + 1) = v11;
        *&v98 = v13;
        *(&v98 + 1) = v12;
        *&v99 = v14;
        v38 = v37;
        RBShape.setStrokedPath(_:style:)(v92, &v97, v39, v40, v41, v42);
      }

      else
      {
        v67 = a4[7];
        v68 = *a3;
        v69 = v37;
        RBShape.setPath(_:style:shapeDistance:)(v92, v68 & 1, v67);
      }

      *&v107 = v4;
      *(&v107 + 1) = v5;
      *&v108 = v7;
      *(&v108 + 1) = v6;
      *&v109 = v89;
      *(&v109 + 1) = v8;
      *v110 = v86;
      *&v110[8] = v83;
      *&v110[16] = v81;
      v70 = *(v36 + 4);
      v71 = v70;
      v72 = *(v36 + 5);
      v110[24] = v9;
      if (v70 == 1)
      {
        v71 = v35[6];
        v72 = v35[7];
      }

      *&v93 = v71;
      *(&v93 + 1) = v72;
      outlined copy of EnvironmentValues?(v70);
      GraphicsContext.Storage.Shared.setShading(_:in:)(&v107, &v93);

      return RBDrawingStateDrawShape();
    }

    v88 = *(a3 + 40);
    v25 = a3[1];
    v80 = a3[2];
    v82 = a3[3];
    v26 = *a3;
    v85 = a3[4];
    v91 = result;
    v27 = *(a4 + 4);
    v28 = v27;
    v29 = *(a4 + 5);
    if (v27 == 1)
    {
      v30 = *(a4 + 2);
      v28 = *(v30 + 48);
      v29 = *(v30 + 56);
      v31 = a4;

      a4 = v31;
    }

    v32 = a4;
    memset(v129, 0, sizeof(v129));
    v130 = 1;
    v96[59] = 0;
    v93 = 0uLL;
    *&v94 = 1;
    BYTE8(v94) = 1;
    *&v95 = 0;
    BYTE8(v95) = 5;
    *v96 = v28;
    *&v96[8] = v29;
    memset(&v96[16], 0, 40);
    v96[56] = 1;
    *&v96[57] = 256;
    v33 = *(*v4 + 80);
    outlined copy of EnvironmentValues?(v27);
    v33(&v93);
    if (BYTE8(v95) == 1)
    {
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    v128 = v34;
    LOBYTE(v107) = 0;
    _ShapeStyle_Pack.subscript.getter(&v107, 0, &v97);

    *&v117 = v26;
    *(&v117 + 1) = v25;
    v118 = v80;
    v119 = v82;
    v120 = v85;
    v121 = v88;
    _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(v91, &v117, v32, v129);
    *&v110[16] = *&v100[16];
    v111 = v101;
    v112 = v102;
    *&v113 = v103;
    v107 = v97;
    v108 = v98;
    v109 = v99;
    *v110 = *v100;
    outlined destroy of _ShapeStyle_Pack.Style(&v107);
    v126 = *&v96[16];
    v127[0] = *&v96[32];
    *(v127 + 12) = *&v96[44];
    v122 = v93;
    v123 = v94;
    v124 = v95;
    v125 = *v96;
    return outlined destroy of _ShapeStyle_Shape(&v122);
  }

  else
  {
    v59 = result;
    *&v97 = *a2;
    *(&v97 + 1) = v5;
    LODWORD(v98) = v7;
    v60 = *(a4 + 2);
    v61 = *(v60 + 32);
    if (v15)
    {
      *&v107 = v10;
      *(&v107 + 1) = v11;
      *&v108 = v13;
      *(&v108 + 1) = v12;
      *&v109 = v14;
      v62 = v61;
      RBShape.setStrokedPath(_:style:)(v59, &v107, v63, v64, v65, v66);
    }

    else
    {
      v73 = a4[7];
      v74 = v10;
      v75 = v61;
      RBShape.setPath(_:style:shapeDistance:)(v59, v74 & 1, v73);
    }

    RBDrawingStateInit();
    RBDrawingStateClipShape();
    RBDrawingStateBeginLayer();
    if ((v5 & 0x7FFFFFFF00000000) != 0)
    {
      [*(v60 + 32) setInfinite];
      GraphicsContext.Storage.Shared.setColor(_:)(&v97, v76, v77, v78, v79);
      RBDrawingStateDrawShape();
    }

    RBDrawingStateDrawLayer();

    return RBDrawingStateDestroy();
  }
}

uint64_t GraphicsContext.fill(_:with:style:)(uint64_t a1, uint64_t *a2, __int16 a3, double *a4)
{
  v5 = a3 & 0x101;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  return GraphicsContext.draw(_:with:style:)(a1, a2, &v5, a4);
}

void *outlined copy of GraphicsContext.Shading.Storage(void *result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  if (a10 > 5u)
  {
    if (a10 > 7u)
    {
      if (a10 != 8)
      {
        if (a10 != 9)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (a10 != 6)
      {
        if (a10 != 7)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

LABEL_21:
  }

  if (a10 <= 3u)
  {
    if (a10 != 1)
    {
      if (a10 != 3)
      {
        return result;
      }

      v10 = result;

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (a10 == 4)
  {
LABEL_17:
  }

  if (a10 == 5)
  {
    v11 = a2 & 1;

    return outlined copy of EitherGradient(result, v11);
  }

  return result;
}

uint64_t RasterizationOptions.colorSpace.getter()
{
  v1 = *v0;
  if (v1 == -1)
  {
    v2 = v0[2];
    v3 = ((v2 << 25) >> 31) & 9;
    if ((v2 & 0x40) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = 1;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = 10;
    }

    else
    {
      v5 = 2;
    }

    if (*(v0 + 4) == 1)
    {
      v5 = v4;
    }

    if (!*(v0 + 4))
    {
      return MEMORY[0x1EEE32298](v3);
    }

    v1 = v5;
  }

  return MEMORY[0x1EEE32298](v1);
}

void *outlined consume of GraphicsContext.Shading.Storage(void *result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  if (a10 > 5u)
  {
    if (a10 > 7u)
    {
      if (a10 == 8)
      {
LABEL_22:
      }

      if (a10 != 9)
      {
        return result;
      }
    }

    else
    {
      if (a10 == 6)
      {

LABEL_21:

        goto LABEL_22;
      }

      if (a10 != 7)
      {
        return result;
      }
    }

    goto LABEL_17;
  }

  if (a10 <= 3u)
  {
    if (a10 != 1)
    {
      if (a10 != 3)
      {
        return result;
      }

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (a10 == 4)
  {
LABEL_17:
  }

  if (a10 == 5)
  {
    v10 = a2 & 1;

    return outlined consume of EitherGradient(result, v10);
  }

  return result;
}

void type metadata accessor for EnvironmentFetch<LayoutDirection>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for EnvironmentFetch();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unsigned __int8 *Spacing.reset(_:)(unsigned __int8 *result)
{
  v2 = *result;
  if (*result)
  {
    v3 = v1;
    v54 = *v1 + 64;
    v4 = 1 << *(*v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(*v1 + 64);
    v53 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = &unk_1ED534000;
    v10 = off_1ED533000;
    v11 = &unk_1ED534000;
    v12 = off_1ED533000;
    v56 = v2;
    v55 = v7;
LABEL_6:
    if (v6)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v53)
      {

        v30 = 0;
        while (2)
        {
          v32 = outlined read-only object #1 of Spacing.reset(_:)[v30 + 32];
          v33 = v32;
          if ((v32 - 9) >= 0xEFu)
          {
            if (v32 < 0)
            {
              LOBYTE(v34) = 0;
            }

            else
            {
              v34 = 1 << v32;
            }

            if ((v34 & ~v56) != 0)
            {
              goto LABEL_60;
            }
          }

          if (outlined read-only object #1 of Spacing.reset(_:)[v30 + 32] > 1u)
          {
            if (v32 == 2)
            {
              v35 = &static Spacing.Category.edgeAboveText;
              if (one-time initialization token for edgeAboveText != -1)
              {
                swift_once();
                v35 = &static Spacing.Category.edgeAboveText;
              }
            }

            else
            {
              v35 = &static Spacing.Category.edgeLeftText;
              if (one-time initialization token for edgeLeftText != -1)
              {
                swift_once();
                v35 = &static Spacing.Category.edgeLeftText;
              }
            }
          }

          else if (outlined read-only object #1 of Spacing.reset(_:)[v30 + 32])
          {
            v35 = &static Spacing.Category.edgeRightText;
            if (one-time initialization token for edgeRightText != -1)
            {
              swift_once();
              v35 = &static Spacing.Category.edgeRightText;
            }
          }

          else
          {
            v35 = &static Spacing.Category.edgeBelowText;
            if (one-time initialization token for edgeBelowText != -1)
            {
              swift_once();
              v35 = &static Spacing.Category.edgeBelowText;
            }
          }

          v36 = *v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = *v3;
          v59 = *v3;
          *v3 = 0x8000000000000000;
          v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v33);
          v41 = *(v38 + 16);
          v42 = (v40 & 1) == 0;
          v43 = __OFADD__(v41, v42);
          v44 = v41 + v42;
          if (v43)
          {
            goto LABEL_89;
          }

          v45 = v40;
          if (*(v38 + 24) >= v44)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_81;
            }

            v52 = v39;
            specialized _NativeDictionary.copy()();
            v39 = v52;
            v47 = v59;
            if (v45)
            {
              goto LABEL_58;
            }

LABEL_82:
            v47[(v39 >> 6) + 8] |= 1 << v39;
            v48 = v47[6] + 16 * v39;
            *v48 = v36;
            *(v48 + 8) = v33;
            v49 = v47[7] + 40 * v39;
            *(v49 + 32) = 0;
            *v49 = 0u;
            *(v49 + 16) = 0u;
            v50 = v47[2];
            v43 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v43)
            {
              goto LABEL_90;
            }

            v47[2] = v51;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
            v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v33);
            if ((v45 & 1) != (v46 & 1))
            {
              goto LABEL_91;
            }

LABEL_81:
            v47 = v59;
            if ((v45 & 1) == 0)
            {
              goto LABEL_82;
            }

LABEL_58:
            v31 = v47[7] + 40 * v39;
            *(v31 + 32) = 0;
            *v31 = 0u;
            *(v31 + 16) = 0u;
          }

          *v3 = v47;
LABEL_60:
          if (++v30 == 4)
          {
            return result;
          }

          continue;
        }
      }

      v6 = *(v54 + 8 * v15);
      ++v8;
      if (v6)
      {
        v8 = v15;
LABEL_11:
        v16 = 0;
        v17 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v18 = *(v55 + 48) + ((v8 << 10) | (16 * v17));
        v19 = *v18;
        v20 = *(v18 + 8);
        while (2)
        {
          v22 = outlined read-only object #0 of Spacing.reset(_:)[v16 + 32];
          if ((v22 - 9) < 0xEFu)
          {
            goto LABEL_22;
          }

          if ((v22 & 0x80) == 0)
          {
            if (v22 <= 7)
            {
              v23 = 1 << v22;
              goto LABEL_21;
            }

            goto LABEL_22;
          }

          if (v22 <= 0xF8)
          {
            goto LABEL_22;
          }

          LOBYTE(v23) = 0;
LABEL_21:
          if ((v23 & ~v2) == 0)
          {
LABEL_22:
            if (v22 == v20)
            {
              if (v20 > 1)
              {
                if (v20 == 2)
                {
                  if (one-time initialization token for edgeAboveText != -1)
                  {
                    swift_once();
                    v12 = off_1ED533000;
                    v11 = &unk_1ED534000;
                    v10 = off_1ED533000;
                    v9 = &unk_1ED534000;
                  }

                  v21 = v11[233];
                  goto LABEL_15;
                }

                if (v20 == 3)
                {
                  if (one-time initialization token for edgeLeftText == -1)
                  {
                    v21 = v12[170];
                  }

                  else
                  {
                    swift_once();
                    v12 = off_1ED533000;
                    v11 = &unk_1ED534000;
                    v10 = off_1ED533000;
                    v9 = &unk_1ED534000;
                    v21 = static Spacing.Category.edgeLeftText;
                  }

                  goto LABEL_15;
                }
              }

              else
              {
                if (v20)
                {
                  if (one-time initialization token for edgeRightText == -1)
                  {
                    v21 = v10[167];
                  }

                  else
                  {
                    swift_once();
                    v12 = off_1ED533000;
                    v11 = &unk_1ED534000;
                    v10 = off_1ED533000;
                    v9 = &unk_1ED534000;
                    v21 = static Spacing.Category.edgeRightText;
                  }
                }

                else if (one-time initialization token for edgeBelowText == -1)
                {
                  v21 = v9[230];
                }

                else
                {
                  swift_once();
                  v12 = off_1ED533000;
                  v11 = &unk_1ED534000;
                  v10 = off_1ED533000;
                  v9 = &unk_1ED534000;
                  v21 = static Spacing.Category.edgeBelowText;
                }

LABEL_15:
                if (v19 == v21)
                {
                  v61 = 0;
                  memset(v60, 0, sizeof(v60));
                  v25 = swift_isUniquelyReferenced_nonNull_native();
                  v57 = *v3;
                  *v3 = 0x8000000000000000;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v19, v20, v25);

                  v12 = off_1ED533000;
                  v11 = &unk_1ED534000;
                  v10 = off_1ED533000;
                  v9 = &unk_1ED534000;
                  *v3 = v57;
                  if ((v22 - 9) < 0xEFu)
                  {
                    goto LABEL_6;
                  }

                  if ((v22 & 0x80) != 0)
                  {
                    if (v22 <= 0xF8)
                    {
                      goto LABEL_6;
                    }

                    LOBYTE(v26) = 0;
                  }

                  else
                  {
                    if (v22 > 7)
                    {
                      goto LABEL_6;
                    }

                    v26 = 1 << v22;
                  }

                  if ((v26 & v56) != 0)
                  {
                    v56 &= ~v26;
                  }

                  goto LABEL_6;
                }
              }
            }
          }

          if (++v16 == 4)
          {
            if ((v20 - 9) >= 0xEFu)
            {
              if ((v20 & 0x80) != 0)
              {
                if (v20 > 0xF8)
                {
                  LOBYTE(v24) = 0;
                  goto LABEL_42;
                }
              }

              else if (v20 <= 7)
              {
                v24 = 1 << v20;
LABEL_42:
                if ((v24 & ~v2) != 0)
                {
                  goto LABEL_6;
                }
              }
            }

            v13 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
            v12 = off_1ED533000;
            v11 = &unk_1ED534000;
            v10 = off_1ED533000;
            v9 = &unk_1ED534000;
            if (v14)
            {
              v27 = v13;
              v28 = swift_isUniquelyReferenced_nonNull_native();
              v29 = *v3;
              v58 = *v3;
              *v3 = 0x8000000000000000;
              if (!v28)
              {
                specialized _NativeDictionary.copy()();
                v29 = v58;
              }

              specialized _NativeDictionary._delete(at:)(v27, v29);

              *v3 = v29;
              v9 = &unk_1ED534000;
              v10 = off_1ED533000;
              v11 = &unk_1ED534000;
              v12 = off_1ED533000;
            }

            goto LABEL_6;
          }

          continue;
        }
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = 16 * v6;
      v12 = *(a2 + 48) + 16 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v13);
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + v11);
        if (16 * v3 != v11 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 40 * v3;
        v21 = (v19 + 40 * v6);
        if (40 * v3 < (40 * v6) || v20 >= v21 + 40 || v3 != v6)
        {
          v9 = *v21;
          v10 = v21[1];
          *(v20 + 32) = *(v21 + 4);
          *v20 = v9;
          *(v20 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 20 * v3;
        v17 = (v15 + 20 * v6);
        if (20 * v3 < (20 * v6) || v16 >= v17 + 20 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 4);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v4;
    do
    {
      v11 = v2;
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = v7;
      v14 = *v12;
      v15 = v12[1];
      v16 = v12[2];
      v17 = v12[3];
      v18 = v8;
      Hasher.init(_seed:)();
      v19 = v14;
      v7 = v13;
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v8 = v18;
      v20 = result & v13;
      if (v3 >= v18)
      {
        if (v20 < v18)
        {
          v4 = v30;
          v2 = v11;
        }

        else
        {
          v4 = v30;
          v2 = v11;
          if (v3 >= v20)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v11;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 16 * v3);
          v23 = (v21 + 16 * v6);
          if (v3 != v6 || v22 >= v23 + 1)
          {
            *v22 = *v23;
          }

          v24 = *(v2 + 56);
          v25 = v24 + 40 * v3;
          v26 = (v24 + 40 * v6);
          if (v3 != v6 || v25 >= v26 + 40)
          {
            v9 = *v26;
            v10 = v26[1];
            *(v25 + 32) = *(v26 + 4);
            *v25 = v9;
            *(v25 + 16) = v10;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v13;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v12);
      MEMORY[0x193AC11A0](v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * v3;
        v20 = (v18 + 40 * v6);
        if (v3 != v6 || v19 >= v20 + 40)
        {
          v9 = *v20;
          v10 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v9;
          *(v19 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = v8;
      v10 = 32 * v6;
      v11 = v2;
      v12 = *(v2 + 48) + 32 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      Hasher.init(_seed:)();
      if (v14 == 1)
      {
        Hasher._combine(_:)(0);
        if (v16)
        {
          goto LABEL_7;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        MEMORY[0x193AC11E0](v17);
        if (v16)
        {
LABEL_7:
          Hasher._combine(_:)(0);
          goto LABEL_16;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x193AC11E0](v18);
LABEL_16:
      result = Hasher._finalize()();
      v19 = result & v7;
      v8 = v9;
      v2 = v11;
      if (v3 >= v9)
      {
        v4 = v30;
        if (v19 < v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v30;
        if (v19 >= v9)
        {
          goto LABEL_21;
        }
      }

      if (v3 >= v19)
      {
LABEL_21:
        v20 = *(v11 + 48);
        v21 = (v20 + 32 * v3);
        v22 = (v20 + v10);
        if (32 * v3 != v10 || v21 >= v22 + 2)
        {
          v23 = v22[1];
          *v21 = *v22;
          v21[1] = v23;
        }

        v24 = *(v11 + 56);
        v25 = (v24 + 8 * v3);
        v26 = (v24 + 8 * v6);
        if (v3 != v6 || v25 >= v26 + 1)
        {
          *v25 = *v26;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      MEMORY[0x193AC11A0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      MEMORY[0x193AC11A0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v17 >= v18 + 1))
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

SwiftUI::Spacing __swiftcall ViewLayoutEngine.spacing()()
{
  v3 = v1;
  v4 = v0[16];
  v5 = *(v2 + v4);
  if (v5 || (v6 = (v2 + v0[10]), v7 = *v6, v8 = *(v6 + 1), v9 = *(v2 + v0[11]), v10 = v0, , v12 = v7, v13 = v8, v14 = 0, v15 = v9, (*(*(v10 + 3) + 48))(&v16, &v12, v2 + v10[9], *(v10 + 2)), , v5 = v16, result.minima._rawValue = , (*(v2 + v4) = v5) != 0))
  {
    *v3 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t _s7SwiftUI7HVStackPAAE7spacing8subviews5cacheAA11ViewSpacingVAA14LayoutSubviewsV_AA06_StackI5CacheVztFAA07_HStackI0V_Tt0t2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  result = StackLayout.UnmanagedImplementation.spacing()(a1, &v7);
  v6 = *(a1 + 97);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a1 + 104) = v4;
  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, NamedImage.VectorKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, NamedImage.BitmapKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t storeEnumTagSinglePayload for _StackLayoutCache(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

uint64_t sub_18D20988C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t keypath_set_3Tm()
{

  specialized EnvironmentValues.foregroundColor.setter(v0);
}

uint64_t specialized EnvironmentValues.foregroundColor.setter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    v4 = one-time initialization token for foreground;

    if (v4 != -1)
    {
      swift_once();
    }

    if (static Color.foreground == v3 || ((*(*v3 + 88))() & 1) != 0)
    {

      v3 = 0;
    }
  }

  v5 = *v2;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v5, *v2);
  }
}

unint64_t instantiation function for generic protocol witness table for Color.ForegroundColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider()
{
  result = lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider;
  if (!lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider;
  if (!lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider;
  if (!lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider);
  }

  return result;
}

uint64_t one-time initialization function for foreground()
{
  type metadata accessor for ColorBox<Color.AccentColorProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.ForegroundColorProvider>, lazy protocol witness table accessor for type Color.ForegroundColorProvider and conformance Color.ForegroundColorProvider);
  result = swift_allocObject();
  static Color.foreground = result;
  return result;
}

uint64_t static Font.ModifierProvider.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (((*(**a1 + 112))(*a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Font.ModifierProvider();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Font.system(_:design:weight:)(char *a1, char *a2, uint64_t a3, char a4)
{
  v6 = *a1;
  v7 = *a2;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>, lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, type metadata accessor for FontBox);
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 17) = v7;
  *(result + 24) = a3;
  *(result + 32) = a4 & 1;
  return result;
}

uint64_t _FlexFrameLayout.spacing(in:child:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *a2;
  v16 = *(a2 + 1);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_10:
      if (v16 == *MEMORY[0x1E698D3F8])
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        InputValue = &static LayoutComputer.defaultValue;
      }

      else
      {
        InputValue = AGGraphGetInputValue();
      }

      v8 = *InputValue;
      v9 = one-time initialization token for lockAssertionsAreEnabled;

      if (v9 != -1)
      {
        swift_once();
      }

      if (!lockAssertionsAreEnabled)
      {
        goto LABEL_21;
      }

      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock))
      {
LABEL_21:
        (*(*v8 + 112))();
      }

      goto LABEL_34;
    }
  }

  else if (static Semantics.forced < v6)
  {
    goto LABEL_10;
  }

  v17 = v5;
  v18 = v16;
  if (LayoutProxy.requiresSpacingProjection.getter())
  {
    goto LABEL_10;
  }

  if (v16 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v11 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v11 = AGGraphGetInputValue();
  }

  v12 = *v11;
  v13 = one-time initialization token for lockAssertionsAreEnabled;

  if (v13 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_33:
    (*(*v12 + 112))(&v19);

    KeyPath = swift_getKeyPath();
    v20 = v4;
    v21 = KeyPath;
    type metadata accessor for EnvironmentFetch<LayoutDirection>();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    LOBYTE(v17) = 0;
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    v15 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    LOBYTE(v17) = v15;
    AbsoluteEdge.Set.init(_:layoutDirection:)(&v17, &v20);
    result = Spacing.reset(_:)(&v20);
    *a3 = v19;
    return result;
  }

LABEL_34:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI22AnyDynamicFontModifierCyAA0E0V06WeightF0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata completion function for Font.ModifierDefinition()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Font.ModifierProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_DWORD *ChildTransaction.value.getter()
{
  v0 = *AGGraphGetValue();
  v6 = v0;

  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v1);
  if (v2 && (v2[9] & 1) != 0)
  {
    return v0;
  }

  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*AGGraphGetValue() != v3)
  {
    return v0;
  }

  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Animation?, &type metadata for Animation, MEMORY[0x1E69E6720]);
  v4 = *AGGraphGetValue();
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v6, v4);

  result = AGGraphGetValue();
  if (*result == v3)
  {
    return v6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ValueTransactionSeed.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  Value = AGGraphGetValue();
  (*(v9 + 16))(v15, Value, v4);
  v17 = *(v3 + 40);
  (*(v6 + 16))(v8, v2 + v17, v5);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    v18 = *(v6 + 8);
    v18(v8, v5);
    v23 = -1;
    AGGraphSetOutputValue();
    v18((v2 + v17), v5);
    (*(v9 + 32))(v2 + v17, v15, v4);
  }

  else
  {
    v21 = v6;
    v20 = *(v9 + 32);
    v20(v12, v8, v4);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v19 = *(v9 + 8);
      v19(v12, v4);
      v19(v15, v4);
      return;
    }

    AGGraphClearUpdate();
    closure #1 in ValueTransactionSeed.updateValue()(v2, &v23);
    AGGraphSetUpdate();
    v22 = v23;
    AGGraphSetOutputValue();
    (*(v9 + 8))(v12, v4);
    (*(v21 + 8))(v2 + v17, v5);
    v20((v2 + v17), v15, v4);
  }

  (*(v9 + 56))(v2 + v17, 0, 1, v4);
}

void onNextMainRunLoop(do:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainRunLoop];
  type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18DDA6EB0;
  v6 = *MEMORY[0x1E695DA28];
  *(v5 + 32) = *MEMORY[0x1E695DA28];
  type metadata accessor for NSRunLoopMode(0);
  v7 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = _sIg_Ieg_TRTA_0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_31;
  v10 = _Block_copy(v11);

  [v4 performInModes:isa block:v10];
  _Block_release(v10);
}

uint64_t sub_18D20AACC()
{

  return swift_deallocObject();
}

void *assignWithCopy for Binding(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;

  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((v6 + *(v7 + 80) + 8) & ~*(v7 + 80), (*(v7 + 80) + 8 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithCopy for CountViews(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _BlendModeEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *__swift_memcpy15_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t EnvironmentValues.contentTransition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v10);

    v4 = v10;
    v5 = v11 | (v12 << 32);
    v6 = v13;
    v7 = v14;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v8)
    {
      v4 = v8[9];
      v5 = *(v8 + 20) | (*(v8 + 84) << 32);
      v6 = *(v8 + 85);
      v7 = *(v8 + 86);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static ContentTransition.State.defaultValue;
      v5 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v6 = BYTE13(static ContentTransition.State.defaultValue);
      v7 = BYTE14(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v4, v5, v6);
  }

  outlined copy of ContentTransition.Storage(v4, v5, v6);
  outlined consume of ContentTransition.Storage(v4, v5, v6);

  *a1 = v4;
  *(a1 + 12) = BYTE4(v5);
  *(a1 + 8) = v5;
  *(a1 + 13) = v6;
  *(a1 + 14) = v7;
  return result;
}

uint64_t assignWithTake for Text.ResolvedProperties.Transition(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 6);
  v6 = *(a2 + 2);
  v7 = *a1;
  v8 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  v9 = *(a1 + 13);
  *(a1 + 12) = v5;
  outlined consume of ContentTransition.Storage(v7, v8, v9);
  *(a1 + 14) = *(a2 + 14);
  return a1;
}

uint64_t EnvironmentValues.contentTransition.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  v5 = *(a1 + 13);
  v19 = *(a1 + 14);
  v7 = *v1;
  v6 = v1[1];
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v7, &v20);

    v8 = v20;
    v9 = v21 | (v22 << 32);
    v10 = v23;
    v17 = v24;
    v11 = v25;
    v18 = v26;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v7);
    if (v12)
    {
      v8 = v12[9];
      v9 = *(v12 + 20) | (*(v12 + 84) << 32);
      v10 = *(v12 + 85);
      v17 = *(v12 + 87);
      v11 = v12[11];
      v13 = *(v12 + 24);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = static ContentTransition.State.defaultValue;
      v9 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v10 = BYTE13(static ContentTransition.State.defaultValue);
      v17 = HIBYTE(static ContentTransition.State.defaultValue);
      v11 = off_1ED536620;
      v13 = dword_1ED536628;
    }

    v18 = v13;
    outlined copy of ContentTransition.Storage(v8, v9, v10);
  }

  outlined consume of ContentTransition.Storage(v8, v9, v10);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v3, v4, v5);
  v14 = 0x1000000000000;
  if (!v19)
  {
    v14 = 0;
  }

  v15 = v14 | v4 & 0xFFFFFFFFFFLL | (v5 << 40) | (v17 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v2, v3, v15, v11, v18);

  outlined consume of ContentTransition.Storage(v3, v4, v5);

  if (v6)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v7, *v2);
  }

  outlined consume of ContentTransition.Storage(v3, v4, v5);
}

uint64_t key path setter for EnvironmentValues.contentTransition : EnvironmentValues(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 8);
  v3 = *(a1 + 14);
  v4 = *(a1 + 13);
  v6 = *a1;
  v8 = v1;
  v7 = v2;
  v9 = v4;
  v10 = v3;
  outlined copy of ContentTransition.Storage(v6, v2 | (v1 << 32), v4);
  return EnvironmentValues.contentTransition.setter(&v6);
}

uint64_t initializeBufferWithCopyOfBuffer for Text.ResolvedProperties.Transition(uint64_t a1, uint64_t a2)
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
  return a1;
}

double _FixedSizeLayout.placement(of:in:)@<D0>(int *a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v29 = *(a1 + 1);
  v30 = a1[3];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v33 = *(a1 + 2);
  v8 = *(a1 + 48);
  v28 = v5;
  v31 = v6;
  v32 = v7;
  v34 = v8;
  PlacementContext.proposedSize.getter(&v24);
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  if (v8)
  {
    InputValue = AGGraphGetInputValue();
    v14 = *InputValue;
    v15 = InputValue[1];
  }

  else
  {
    v14 = v6;
    v15 = v7;
  }

  if ((a2 & 0x100) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  result = v14 * 0.5;
  *a3 = v17;
  *(a3 + 8) = (a2 | v10) & 1;
  *(a3 + 16) = v16;
  *(a3 + 24) = (v12 | ((a2 & 0x100) >> 8)) & 1;
  __asm { FMOV            V2.2D, #0.5 }

  *(a3 + 32) = _Q2;
  *(a3 + 48) = result;
  *(a3 + 56) = v15 * 0.5;
  return result;
}

double protocol witness for UnaryLayout.placement(of:in:) in conformance _FixedSizeLayout@<D0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return _FixedSizeLayout.placement(of:in:)(a1, v3 | *v2, a2);
}

uint64_t _FixedSizeLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a3 + 2);
  v15 = *a3;
  v16 = v8;
  if (a4)
  {
    v4 = 0;
  }

  v9 = a4 | v5;
  if ((a4 & 0x100) != 0)
  {
    v6 = 0;
  }

  v11 = v4;
  v12 = v9 & 1;
  v13 = v6;
  v14 = v7 & 1 | HIBYTE(a4) & 1;
  return LayoutProxy.size(in:)(&v11);
}

uint64_t protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance _FixedSizeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (v3[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return _FixedSizeLayout.sizeThatFits(in:context:child:)(a1, a2, a3, v4 | *v3);
}

uint64_t protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _FixedSizeLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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

unint64_t lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout()
{
  result = lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout;
  if (!lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout;
  if (!lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FixedSizeLayout and conformance _FixedSizeLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _FixedSizeLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_FixedSizeLayout> and conformance UnaryLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryChildGeometry<_FixedSizeLayout> and conformance UnaryChildGeometry<A>);
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>);
    }
  }
}

void one-time initialization function for privateSystemAssetManager()
{
  v0 = [objc_opt_self() private];
  if (v0)
  {
    v1 = v0;
    v2 = v0;
    v3 = private_nofill_to_fill.getter();
    v4 = private_name_aliases.getter();
    v5 = private_symbol_order.getter();
    v6 = objc_allocWithZone(MEMORY[0x1E6999368]);
    v7 = specialized @nonobjc CUICatalog.init(name:from:error:)(0x737465737341, 0xE600000000000000, v1);

    static Image.Location.privateSystemAssetManager = v7;
    off_1ED52C9C8 = v3;
    off_1ED52C9D0 = v4;
    unk_1ED52C9D8 = v5;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter()
{
  result = lazy protocol witness table cache variable for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter;
  if (!lazy protocol witness table cache variable for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter);
  }

  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm@<X0>(const void *a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a2(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 524) = v11;
    *(v8 + 528) = v10;
  }

  else
  {
    a3(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x1F9uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

uint64_t static Animatable.makeAnimatable(value:inputs:)(unsigned int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  v8 = v4;
  (*(a4 + 48))(&v8, v7);
  return v8;
}

uint64_t outlined copy of EnvironmentValues?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v10 = a3 >> 40;
  v11 = a3 & 0x1000000000000;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*a1);
  if (!v12)
  {
    v20 = HIWORD(v11);
    goto LABEL_5;
  }

  v13 = v12[9];
  v14 = *(v12 + 42);
  v15 = *(v12 + 20);
  v16 = *(v12 + 86);
  v17 = *(v12 + 87);
  v18 = v12[11];
  v19 = *(v12 + 24);
  v33 = a2;
  v35 = BYTE4(a3);
  v34 = a3;
  v36 = v10;
  v20 = HIWORD(v11);
  v37 = v20;
  v38 = HIBYTE(a3);
  v39 = a4;
  v40 = a5;
  v26 = v13;
  v27 = v15;
  v28 = v14;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  result = specialized static ContentTransition.State.== infix(_:_:)(&v33, &v26);
  if ((result & 1) == 0)
  {
LABEL_5:
    v25 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>();
    v22 = swift_allocObject();
    *(v22 + 72) = a2;
    *(v22 + 84) = BYTE4(a3);
    *(v22 + 80) = a3;
    *(v22 + 85) = v10;
    *(v22 + 86) = v20;
    *(v22 + 87) = HIBYTE(a3);
    *(v22 + 88) = a4;
    *(v22 + 96) = a5;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    v24 = v23;

    outlined copy of ContentTransition.Storage(a2, a3, v10);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v24, 0, v25);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

uint64_t TextSizeCache.update(environment:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;

  v4 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v3);

  if (v4)
  {

    PropertyList.Tracker.reset()();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v1[4];
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
    }

    else
    {
      v2[4] = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13TextSizeCache33_3E59416AD37DE6953C726BD1E5230CEALLC5EntryV_Tt1g5(0, *(v6 + 24) >> 1);
    }

    swift_endAccess();
    v12 = v2[5];
    swift_beginAccess();

    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + 16);
    if (v13)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
    }

    else
    {
      *(v12 + 16) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11SuffixCache33_3E59416AD37DE6953C726BD1E5230CEALLC5EntryV_Tt1g5(0, *(v14 + 24) >> 1);
    }

    swift_endAccess();
    goto LABEL_20;
  }

  result = swift_beginAccess();
  v8 = *(v1[4] + 16);
  if (!v8)
  {
LABEL_19:

    SuffixCache.removeUnused()();

    SuffixCache.resetUsedState()();
LABEL_20:

    v2[2] = v3;

    return v4 & 1;
  }

  v9 = 120 * v8 + 24;
  while (1)
  {
    v10 = v2[4];
    if (v8 > *(v10 + 16))
    {
      break;
    }

    v11 = v8 - 1;
    if (*(v10 + v9))
    {
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v10;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        v10 = result;
      }

      if (v8 > *(v10 + 16))
      {
        goto LABEL_22;
      }

      *(v10 + v9) = 0;
      v2[4] = v10;
      result = swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      specialized Array.remove(at:)(v8 - 1, v15);
      swift_endAccess();
      v17[5] = v15[5];
      v17[6] = v15[6];
      v17[0] = v15[0];
      v17[1] = v15[1];
      v17[2] = v15[2];
      v18 = v16;
      v17[3] = v15[3];
      v17[4] = v15[4];
      result = outlined destroy of TextSizeCache.Entry(v17);
    }

    v9 -= 120;
    --v8;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t protocol witness for DynamicPropertyBox.update(property:phase:) in conformance Text.Measurements.Box(void *a1)
{

  *a1 = *(v1 + 8);

  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  v7[0] = v5;
  v7[1] = v4;

  LOBYTE(v5) = TextSizeCache.update(environment:)(v7);

  return v5 & 1;
}

unint64_t SuffixCache.removeUnused()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  result = *(v1 + 16);
  if (!result)
  {
LABEL_5:
    v5 = *(v1 + 16);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = 0;
  while (*(v1 + v3 + 128) == 1)
  {
    ++v4;
    v3 += 104;
    if (result == v4)
    {
      goto LABEL_5;
    }
  }

  if (__OFADD__(v4, 1))
  {
    goto LABEL_30;
  }

  if (v4 + 1 != result)
  {
    v6 = v4 + 1;
    while (v6 < result)
    {
      v7 = v1 + v3;
      if (*(v1 + v3 + 232))
      {
        if (v6 != v4)
        {
          if (v4 >= result)
          {
            goto LABEL_26;
          }

          v8 = 104 * v4;
          v9 = v1 + 32 + 104 * v4;
          v10 = *v9;
          v11 = *(v9 + 32);
          v48 = *(v9 + 16);
          v49 = v11;
          v47 = v10;
          v12 = *(v9 + 48);
          v13 = *(v9 + 64);
          v14 = *(v9 + 80);
          v53 = *(v9 + 96);
          v51 = v13;
          v52 = v14;
          v50 = v12;
          v15 = *(v7 + 200);
          v16 = *(v7 + 216);
          v17 = *(v7 + 184);
          v60 = *(v7 + 232);
          v58 = v15;
          v59 = v16;
          v57 = v17;
          v18 = *(v7 + 136);
          v19 = *(v7 + 168);
          v55 = *(v7 + 152);
          v56 = v19;
          v54 = v18;
          outlined init with copy of SuffixCache.Entry(&v47, v45);
          outlined init with copy of SuffixCache.Entry(&v54, v45);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 16) = v1;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
            v1 = result;
            *(v0 + 16) = result;
          }

          if (v4 >= *(v1 + 16))
          {
            goto LABEL_27;
          }

          v20 = v1 + v8;
          v21 = *(v1 + v8 + 32);
          v22 = *(v1 + v8 + 64);
          v43[1] = *(v1 + v8 + 48);
          v43[2] = v22;
          v43[0] = v21;
          v23 = *(v1 + v8 + 80);
          v24 = *(v1 + v8 + 96);
          v25 = *(v1 + v8 + 112);
          v44 = *(v1 + v8 + 128);
          v43[4] = v24;
          v43[5] = v25;
          v43[3] = v23;
          v27 = v58;
          v26 = v59;
          v28 = v57;
          *(v20 + 128) = v60;
          *(v20 + 96) = v27;
          *(v20 + 112) = v26;
          *(v20 + 80) = v28;
          v29 = v54;
          v30 = v56;
          *(v20 + 48) = v55;
          *(v20 + 64) = v30;
          *(v20 + 32) = v29;
          result = outlined destroy of SuffixCache.Entry(v43);
          *(v0 + 16) = v1;
          if (v6 >= *(v1 + 16))
          {
            goto LABEL_28;
          }

          v31 = v1 + v3;
          v32 = *(v1 + v3 + 136);
          v33 = *(v1 + v3 + 168);
          v45[1] = *(v1 + v3 + 152);
          v45[2] = v33;
          v45[0] = v32;
          v34 = *(v1 + v3 + 184);
          v35 = *(v1 + v3 + 200);
          v36 = *(v1 + v3 + 216);
          v46 = *(v1 + v3 + 232);
          v45[4] = v35;
          v45[5] = v36;
          v45[3] = v34;
          v38 = v51;
          v37 = v52;
          v39 = v53;
          *(v31 + 184) = v50;
          *(v31 + 232) = v39;
          *(v31 + 216) = v37;
          *(v31 + 200) = v38;
          v40 = v47;
          v41 = v48;
          *(v31 + 168) = v49;
          *(v31 + 152) = v41;
          *(v31 + 136) = v40;
          result = outlined destroy of SuffixCache.Entry(v45);
          *(v0 + 16) = v1;
        }

        ++v4;
      }

      v42 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      result = *(v1 + 16);
      ++v6;
      v3 += 104;
      if (v42 == result)
      {
        result = v42;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_22:
  v5 = result;
  result = v4;
  if (v5 >= v4)
  {
LABEL_23:
    specialized Array.replaceSubrange<A>(_:with:)(result, v5);
    return swift_endAccess();
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t SuffixCache.resetUsedState()()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 2);
  if (v3)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_15:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v5 = *(v2 + 2);
    v6 = v3 - 1;
    if (v5 < v3 - 1)
    {
      v6 = *(v2 + 2);
    }

    if (v6 >= 2)
    {
      v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v2 + 232;
      v9 = v7;
      do
      {
        *(v8 - 104) = 0;
        *v8 = 0;
        v8 += 208;
        v9 -= 2;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    v10 = 104 * v7 + 128;
    do
    {
      if (v7 >= v5)
      {
        __break(1u);
        goto LABEL_15;
      }

      ++v7;
      v2[v10] = 0;
      v10 += 104;
    }

    while (v3 != v7);
    *(v0 + 16) = v2;
    return swift_endAccess();
  }

  return result;
}

void type metadata accessor for Attribute<EnvironmentValues>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for CanvasDisplayList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t destroy for CanvasDisplayList()
{
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TapGestureModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t View.fontWeight(_:)(uint64_t a1, char a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.fontWeight(_:), v7, a3);
}

unint64_t lazy protocol witness table accessor for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>()
{
  result = lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>;
  if (!lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _EndedGesture<TapGesture>, &type metadata for TapGesture, &protocol witness table for TapGesture, type metadata accessor for _EndedGesture);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>);
  }

  return result;
}

uint64_t specialized implicit closure #1 in static GestureViewModifier.makeView(modifier:inputs:body:)()
{
  type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>();
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>);
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>();
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask> and conformance Map<A, B>, type metadata accessor for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>);

  v0 = Attribute.init<A>(body:value:flags:update:)();

  return v0;
}

uint64_t sub_18D20D9E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 72))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_18D20DA3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id _s7SwiftUI19GestureViewModifierPAAE04makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVAiA01_K0V_ANtctFZAA03AddcE0VyAA06_EndedC0VyAA03TapC0VGAA07DefaultC8CombinerVG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, void *a4@<X8>)
{
  v5 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  *&v30[32] = *(a2 + 32);
  *&v30[48] = v7;
  *&v30[64] = *(a2 + 64);
  *&v30[80] = *(a2 + 80);
  v8 = *(a2 + 16);
  *v30 = *a2;
  *&v30[16] = v8;
  a3(v21, a1, v30);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v21[0]);
  v10 = v9;
  if ((v9 & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    v10 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v11, 0);
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v30[88] = *(a2 + 80);
    v13 = *(a2 + 48);
    *&v30[72] = *(a2 + 64);
    v14 = *(a2 + 32);
    *&v30[56] = v13;
    *&v30[40] = v14;
    v15 = *a2;
    *&v30[24] = *(a2 + 16);
    *&v30[8] = v15;
    *v30 = v10;
    *&v30[4] = v5;
    v31 = result;
    v27 = *&v30[64];
    v28 = *&v30[80];
    v29 = result;
    v23 = *v30;
    v24 = *&v30[16];
    v25 = *&v30[32];
    v26 = *&v30[48];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(a2, &v22);
    _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>();
    lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>> and conformance GestureFilter<A>, type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>);
    v16 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(v30, type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>);
    LOBYTE(v23) = 0;
    PreferencesOutputs.subscript.setter(v16, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
LABEL_6:
    v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(*a2);
    MEMORY[0x1EEE9AC00](v17);
    v18 = *(a2 + 48);
    *&v30[32] = *(a2 + 32);
    *&v30[48] = v18;
    *&v30[64] = *(a2 + 64);
    *&v30[80] = *(a2 + 80);
    v19 = *(a2 + 16);
    *v30 = *a2;
    *&v30[16] = v19;
    result = (*(v20 + 8))(partial apply for specialized implicit closure #1 in static GestureViewModifier.makeView(modifier:inputs:body:));
    *a4 = v21[0];
    a4[1] = v21[1];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static TapGestureModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, void *a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[1];
  v32 = *a2;
  v33 = v7;
  v8 = a2[3];
  v34 = a2[2];
  v35 = v8;
  v36 = a2[4];
  v37 = *(a2 + 20);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA38TapGestureUsesGesturesFrameworkFeatureV_Tt2g5(v32))
  {
    if (one-time initialization token for gestureConstantsProvider != -1)
    {
      swift_once();
    }

    v9 = static CachedEnvironment.ID.gestureConstantsProvider;
    swift_beginAccess();
    v10 = specialized CachedEnvironment.attribute<A>(id:_:)(v9);
    swift_endAccess();
    *&v26 = __PAIR64__(v10, v6);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>(0, &lazy cache variable for type metadata for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>, type metadata accessor for GestureComponentAttachmentModifier);
    lazy protocol witness table accessor for type TapGestureModifier.GesturesFrameworkChild and conformance TapGestureModifier.GesturesFrameworkChild();
    v11 = Attribute.init<A>(body:value:flags:update:)();
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v22 = v34;
    v23 = v35;
    v24 = v36;
    v20 = v32;
    v21 = v33;
    v13 = v34;
    v25 = v37;
    LODWORD(v22) = 0;
    v31 = v37;
    v29 = v35;
    v30 = v36;
    v26 = v32;
    v27 = v33;
    v28 = v22;
    outlined init with copy of _ViewInputs(&v32, v18);
    outlined init with copy of _ViewInputs(&v26, v18);
    _s7SwiftUI34GestureComponentAttachmentModifierV9_makeView8modifier6inputs4bodyAA01_H7OutputsVAA11_GraphValueVyACyxGG_AA01_H6InputsVAiA01_M0V_AOtctFZ8Gestures03TapD0VyAR10TouchEventVG_Tt3B5(v11, &v26, a3, a4);
    outlined destroy of _ViewInputs(&v26);
    LODWORD(v22) = v13;
    if (ShouldRecordTree)
    {
LABEL_11:
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v20);
      AGSubgraphEndTreeElement();
    }
  }

  else
  {
    LODWORD(v26) = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>();
    lazy protocol witness table accessor for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = AGSubgraphShouldRecordTree();
    if (v15)
    {
      AGSubgraphBeginTreeElement();
    }

    v22 = v34;
    v23 = v35;
    v24 = v36;
    v20 = v32;
    v21 = v33;
    v16 = v34;
    v25 = v37;
    LODWORD(v22) = 0;
    v31 = v37;
    v29 = v35;
    v30 = v36;
    v26 = v32;
    v27 = v33;
    v28 = v22;
    outlined init with copy of _ViewInputs(&v32, v18);
    outlined init with copy of _ViewInputs(&v26, v18);
    _s7SwiftUI19GestureViewModifierPAAE04makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVAiA01_K0V_ANtctFZAA03AddcE0VyAA06_EndedC0VyAA03TapC0VGAA07DefaultC8CombinerVG_Tt3B5(v14, &v26, a3, a4);
    outlined destroy of _ViewInputs(&v26);
    LODWORD(v22) = v16;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v24;
  v19 = v25;
  v18[0] = v20;
  v18[1] = v21;
  return outlined destroy of _ViewInputs(v18);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA38TapGestureUsesGesturesFrameworkFeatureV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for TapGestureUsesGesturesFrameworkFeature);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA38TapGestureUsesGesturesFrameworkFeatureV_Tt0B5(a1, v4);
  if (v2)
  {
    return *(v2 + 72);
  }

  else
  {
    return _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA031TapGestureUsesGesturesFrameworkC0V_Ttg5() & 1;
  }
}

void type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>()
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _EndedGesture<TapGesture>, &type metadata for TapGesture, &protocol witness table for TapGesture, type metadata accessor for _EndedGesture);
    lazy protocol witness table accessor for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v0 = type metadata accessor for AddGestureModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>()
{
  if (!lazy cache variable for type metadata for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>)
  {
    type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>();
    lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>);
    v0 = type metadata accessor for GestureFilter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>()
{
  if (!lazy cache variable for type metadata for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>)
  {
    type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>();
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>);
    }
  }
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA031TapGestureUsesGesturesFrameworkC0V_Ttg5()
{
  swift_beginAccess();
  v0 = static TapGestureUsesGesturesFrameworkFeature.cachedValue;
  if (static TapGestureUsesGesturesFrameworkFeature.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v8);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
      v0 = [v5 BOOLForKey_];

      static TapGestureUsesGesturesFrameworkFeature.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      outlined destroy of Any?(v8);
      v0 = 0;
      static TapGestureUsesGesturesFrameworkFeature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA38TapGestureUsesGesturesFrameworkFeatureV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA38TapGestureUsesGesturesFrameworkFeatureV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for TapGestureUsesGesturesFrameworkFeature)
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

unint64_t lazy protocol witness table accessor for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild()
{
  result = lazy protocol witness table cache variable for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild;
  if (!lazy protocol witness table cache variable for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild);
  }

  return result;
}

uint64_t EnvironmentValues.defaultFont.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (v2[1])
  {

    v5 = a1(v3);

    return v5;
  }

  else
  {
    result = a2(v3);
    if (result)
    {
    }
  }

  return result;
}

uint64_t outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

void type metadata accessor for _ShapeView<Rectangle, LinearGradient>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, LinearGradient>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Rectangle, LinearGradient>);
    }
  }
}

uint64_t AccessibilityProperties.init<A>(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v17 - v8;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  *(a3 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v18);
  v10 = v18[7];
  *(a3 + 224) = v18[6];
  *(a3 + 240) = v10;
  *(a3 + 256) = v18[8];
  *(a3 + 272) = v19;
  v11 = v18[3];
  *(a3 + 160) = v18[2];
  *(a3 + 176) = v11;
  v12 = v18[5];
  *(a3 + 192) = v18[4];
  *(a3 + 208) = v12;
  v13 = v18[1];
  *(a3 + 128) = v18[0];
  *(a3 + 144) = v13;
  v14 = type metadata accessor for AnyAccessibilityPropertiesEntry();
  *(a3 + 280) = MEMORY[0x193ABE660](1, MEMORY[0x1E69E5FE0], v14, MEMORY[0x1E69E5FE8]);
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  v17[3] = type metadata accessor for AccessibilityPropertiesEntry();
  v17[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, AssociatedTypeWitness);
  specialized Dictionary.subscript.setter(v17, a2);
  return (*(v7 + 8))(a1, AssociatedTypeWitness);
}

void type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>);
    }
  }
}

uint64_t specialized static View.makeView(view:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x72477261656E694CLL, 0xEE00746E65696461);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for LinearGradient, type metadata accessor for LinearGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA14LinearGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD78EF0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for RoundedRectangle, type metadata accessor for RoundedRectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA16RoundedRectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x656C63726943, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Circle, type metadata accessor for Circle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA6CircleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](1752457552, 0xE400000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Path, type metadata accessor for Path.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Path, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA4PathV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x6C676E6174636552, 0xE900000000000065);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Rectangle, type metadata accessor for Rectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD78DF0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Rectangle.AsymmetricalInset, type metadata accessor for Rectangle.AsymmetricalInset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>();
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleVAAE17AsymmetricalInsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78D90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for _GlassContainerStorageView, type metadata accessor for _GlassContainerStorageView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_n5GroupV0VTt2B5Tm(v13, &v39, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_n, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000003BLL, 0x800000018DD78E10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for CombinedContentShape, type metadata accessor for CombinedContentShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>();
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA015CombinedContentC033_6E67AD6866B38627EB183D41FF0BA80ALLV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000036, 0x800000018DD78F50);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for GlassEffectView, type metadata accessor for GlassEffectView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, GlassMaterialEffect>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, &type metadata for GlassMaterialEffect, type metadata accessor for ModifiedContent);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA011GlassEffectP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO5EntryVGA4_8StableIDVACyACyAA6ZStackVyAA0r14EntryContainerE0AXLLVGAA013_TraitWritingF0VyAA01_P5TraitVyAY3KeyVGGGA14_yAA18TransitionTraitKeyVGGGG_AA0r8MaterialS033_62A32D59B8A902A88963544196023CF7LLVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v38);
  v8 = v38;
  v9 = v39;
  v10 = DWORD1(v39);
  v11 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v11;
  v36 = *(a2 + 64);
  v37 = *(a2 + 80);
  v12 = *(a2 + 16);
  v32 = *a2;
  v33 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v38);
    _StringGuts.grow(_:)(70);
    v38 = v26;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000034, 0x800000018DD79080);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v38);
    LOBYTE(v38) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v38);
    if ((BYTE8(v39) & 1) == 0)
    {
      LOBYTE(v38) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v38 + 1), v39, &type metadata for GlassItemView, type metadata accessor for GlassItemView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_1(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>);
      outlined init with copy of _ViewInputs(&v26, &v38);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v26, &v38);
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v14 = v28;
    LODWORD(v22) = 0;
    v43 = v31;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v40 = v22;
    outlined init with copy of _ViewInputs(&v26, v18);
    outlined init with copy of _ViewInputs(&v38, v18);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVGAA013_TraitWritingF0VyAA0Z8TraitKeyVGG_A_yAA12_LayoutTraitVyAA0O11EntryLayoutARLLV3KeyVGGTt2B5(&v38, a3);
    outlined destroy of _ViewInputs(&v38);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v26);
    v16[2] = v34;
    v16[3] = v35;
    v16[4] = v36;
    v17 = v37;
    v16[0] = v32;
    v16[1] = v33;
    outlined destroy of _ViewInputs(v16);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Rectangle._Inset, type metadata accessor for Rectangle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x77656956746F6F52, 0xE800000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for _TestApp.RootView, type metadata accessor for _TestApp.RootView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA03AnyD0V_Tt3B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x6570616853796E41, 0xE800000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for AnyShape, type metadata accessor for AnyShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA03AnyC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x657370696C6C45, 0xE700000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Ellipse, type metadata accessor for Ellipse.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7EllipseV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Ellipse._Inset, type metadata accessor for Ellipse._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7EllipseV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x656C7573706143, 0xE700000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Capsule, type metadata accessor for Capsule.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7CapsuleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Capsule._Inset, type metadata accessor for Capsule._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7CapsuleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Circle._Inset, type metadata accessor for Circle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA6CircleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD78E50);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for PartialContainerRelativeShape, type metadata accessor for PartialContainerRelativeShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA024PartialContainerRelativeC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DDB6B10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for DefaultGlassEffectShape, type metadata accessor for DefaultGlassEffectShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA018DefaultGlassEffectC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78ED0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for UnevenRoundedRectangle, type metadata accessor for UnevenRoundedRectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA22UnevenRoundedRectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for UnevenRoundedRectangle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA22UnevenRoundedRectangleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E70);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ImplicitContainerShape, type metadata accessor for ImplicitContainerShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ImplicitContainerC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ContainerRelativeShape, type metadata accessor for ContainerRelativeShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ContainerRelativeC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ContainerRelativeShape._Inset, type metadata accessor for ContainerRelativeShape._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ContainerRelativeC0V6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v38);
  v8 = v38;
  v9 = v39;
  v10 = DWORD1(v39);
  v11 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v11;
  v36 = *(a2 + 64);
  v37 = *(a2 + 80);
  v12 = *(a2 + 16);
  v32 = *a2;
  v33 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v38);
    _StringGuts.grow(_:)(70);
    v38 = v26;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78F10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v38);
    LOBYTE(v38) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v38);
    if ((BYTE8(v39) & 1) == 0)
    {
      LOBYTE(v38) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v38 + 1), v39, &type metadata for _IntelligenceSupport.AnimatingSummarySymbol, type metadata accessor for _IntelligenceSupport.AnimatingSummarySymbol.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>();
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v14 = v28;
    LODWORD(v22) = 0;
    v43 = v31;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v40 = v22;
    outlined init with copy of _ViewInputs(&v26, v18);
    outlined init with copy of _ViewInputs(&v38, v18);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_l11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5(&v38, a3);
    outlined destroy of _ViewInputs(&v38);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
      AGSubgraphEndTreeElement();
    }

    v16[2] = v34;
    v16[3] = v35;
    v16[4] = v36;
    v17 = v37;
    v16[0] = v32;
    v16[1] = v33;
    outlined destroy of _ViewInputs(v16);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  return result;
}

{
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v38);
  v8 = v38;
  v9 = v39;
  v10 = DWORD1(v39);
  v11 = *(a2 + 48);
  v34 = *(a2 + 32);
  v35 = v11;
  v36 = *(a2 + 64);
  v37 = *(a2 + 80);
  v12 = *(a2 + 16);
  v32 = *a2;
  v33 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v38);
    _StringGuts.grow(_:)(70);
    v38 = v26;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x6E6974616D696E41, 0xED00007478655467);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v38);
    LOBYTE(v38) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v38);
    if ((BYTE8(v39) & 1) == 0)
    {
      LOBYTE(v38) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v38 + 1), v39, &type metadata for _IntelligenceSupport.AnimatingText, type metadata accessor for _IntelligenceSupport.AnimatingText.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>();
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v14 = v28;
    LODWORD(v22) = 0;
    v43 = v31;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v40 = v22;
    outlined init with copy of _ViewInputs(&v26, v18);
    outlined init with copy of _ViewInputs(&v38, v18);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_l11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5(&v38, a3);
    outlined destroy of _ViewInputs(&v38);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
      AGSubgraphEndTreeElement();
    }

    v16[2] = v34;
    v16[3] = v35;
    v16[4] = v36;
    v17 = v37;
    v16[0] = v32;
    v16[1] = v33;
    outlined destroy of _ViewInputs(v16);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000013, 0x800000018DD78EB0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ConcentricRectangle, type metadata accessor for ConcentricRectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA19ConcentricRectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD78F30);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for EllipticalGradient, type metadata accessor for EllipticalGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA18EllipticalGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x7465736E495FLL, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for RoundedRectangle._Inset, type metadata accessor for RoundedRectangle._Inset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA16RoundedRectangleV6_InsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x4772616C75676E41, 0xEF746E6569646172);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for AngularGradient, type metadata accessor for AngularGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Rectangle, AngularGradient>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA15AngularGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x72476C6169646152, 0xEE00746E65696461);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for RadialGradient, type metadata accessor for RadialGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Rectangle, RadialGradient>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA14RadialGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v11;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  v12 = *(a2 + 16);
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x646172476873654DLL, 0xEC000000746E6569);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for MeshGradient, type metadata accessor for MeshGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout();
    type metadata accessor for _ShapeView<Rectangle, MeshGradient>();
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA12MeshGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}