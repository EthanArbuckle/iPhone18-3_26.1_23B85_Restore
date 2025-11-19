uint64_t closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
  v3[19] = v9;
  v10 = *(v9 - 8);
  v3[20] = v10;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Suggestion.constructed(), 0, 0);
}

{
  v71 = v3;
  v4 = *(v3 + 88);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v54 = *(v3 + 88);
    }

    else
    {
      v54 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    a1 = MEMORY[0x23EE70C40](v54);
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_42:
    v55 = *(v3 + 200);
    v56 = *(v3 + 152);
    v57 = **(v3 + 80);
    TaskGroup.makeAsyncIterator()();
    *(v3 + 208) = MEMORY[0x277D84F90];
    v58 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
    v59 = *(MEMORY[0x277D856D0] + 4);
    v60 = swift_task_alloc();
    *(v3 + 216) = v60;
    *v60 = v3;
    v60[1] = closure #1 in Suggestion.constructed();
    v61 = *(v3 + 200);
    a2 = *(v3 + 184);
    a1 = *(v3 + 144);
    a3 = v58;

    return MEMORY[0x282200308](a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v69 = v4 & 0xC000000000000001;
    v63 = (v3 + 16);
    v64 = *(v3 + 88) + 32;
    v65 = v5;
    v68 = v3;
    while (1)
    {
      if (v69)
      {
        v7 = MEMORY[0x23EE70B80](v6, *(v3 + 88));
      }

      else
      {
        v7 = *(v64 + 8 * v6);
      }

      v8 = v7;
      v9 = specialized static Suggestion.contentImpl(for:)();
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = v9;
      if (!*(v9 + 16))
      {
        break;
      }

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.bridge);
      v12 = v8;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v70 = v16;
        *v15 = 136315138;
        v17 = Asset.transferRepresentation.getter();
        if (v17)
        {
          v18 = v17;
          v66 = v16;
          v19 = [v17 description];

          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v16 = v66;
        }

        else
        {
          v22 = 0xE300000000000000;
          v20 = 7104878;
        }

        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v70);

        *(v15 + 4) = v36;
        _os_log_impl(&dword_238A75000, v13, v14, "Got asset with internal asset type: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x23EE71510](v16, -1, -1);
        MEMORY[0x23EE71510](v15, -1, -1);
      }

      v37 = *(v3 + 96);
      v38 = *(v3 + 104);
      v39 = type metadata accessor for TaskPriority();
      v40 = *(v39 - 8);
      (*(v40 + 56))(v38, 1, 1, v39);
      v41 = swift_allocObject();
      v41[2] = 0;
      v42 = v41 + 2;
      v41[3] = 0;
      v41[4] = v10;
      v41[5] = v12;
      outlined init with copy of URL?(v38, v37, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v37) = (*(v40 + 48))(v37, 1, v39);
      v67 = v12;
      v43 = *(v3 + 96);
      if (v37 == 1)
      {
        outlined destroy of URL?(*(v3 + 96), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v40 + 8))(v43, v39);
      }

      v3 = v68;
      if (*v42)
      {
        v44 = v41[3];
        v45 = *v42;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v46 = dispatch thunk of Actor.unownedExecutor.getter();
        v48 = v47;
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v49 = **(v68 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in Suggestion.constructed();
      *(v50 + 24) = v41;

      if (v48 | v46)
      {
        v51 = v63;
        *v63 = 0;
        v63[1] = 0;
        *(v68 + 32) = v46;
        *(v68 + 40) = v48;
      }

      else
      {
        v51 = 0;
      }

      v5 = v65;
      v52 = *(v68 + 152);
      v53 = *(v68 + 104);
      *(v68 + 48) = 1;
      *(v68 + 56) = v51;
      *(v68 + 64) = v49;
      swift_task_create();

      outlined destroy of URL?(v53, &_sScPSgMd, &_sScPSgMR);
LABEL_7:
      if (v5 == ++v6)
      {
        goto LABEL_42;
      }
    }

LABEL_19:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.bridge);
    v24 = v8;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70 = v28;
      *v27 = 136315138;
      v29 = Asset.transferRepresentation.getter();
      if (v29)
      {
        v30 = v29;
        v31 = [v29 description];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 7104878;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v70);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_238A75000, v25, v26, "Error: Not implemented internal asset type: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EE71510](v28, -1, -1);
      MEMORY[0x23EE71510](v27, -1, -1);

      v5 = v65;
    }

    else
    {
    }

    v3 = v68;
    goto LABEL_7;
  }

  __break(1u);
  return MEMORY[0x282200308](a1, a2, a3);
}

uint64_t closure #1 in Suggestion.constructed()()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v8 = v2 + 23;
    v6 = v2[23];
    v7 = v8[1];

    (*(v7 + 8))(v5, v6);

    v9 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v9 = closure #1 in Suggestion.constructed();
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[26];
    v4 = v0[21];
    v3 = v0[22];
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[13];
    v32 = v0[12];
    v8 = v0[9];
    (*(v0[24] + 8))(v0[25], v0[23]);
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR);
    *v8 = v2;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[14];
    v14 = v0[15];
    outlined init with take of UUID?(v1, v11, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    outlined init with copy of URL?(v11, v12, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v15 = v0[21];
      outlined destroy of URL?(v0[22], &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      outlined destroy of URL?(v15, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v16 = v0[26];
    }

    else
    {
      v17 = v0[26];
      v19 = v0[16];
      v18 = v0[17];
      outlined init with take of JournalingSuggestion(v0[21], v18, type metadata accessor for JournalingSuggestion.ItemContent);
      outlined init with copy of JournalingSuggestion(v18, v19, type metadata accessor for JournalingSuggestion.ItemContent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v0[26];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v0[26]);
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v16);
      }

      v23 = v0[22];
      v24 = v0[16];
      v25 = v0[15];
      outlined destroy of JournalingSuggestion(v0[17], type metadata accessor for JournalingSuggestion.ItemContent);
      outlined destroy of URL?(v23, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v16[2] = v22 + 1;
      outlined init with take of JournalingSuggestion(v24, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for JournalingSuggestion.ItemContent);
    }

    v0[26] = v16;
    v26 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
    v27 = *(MEMORY[0x277D856D0] + 4);
    v28 = swift_task_alloc();
    v0[27] = v28;
    *v28 = v0;
    v28[1] = closure #1 in Suggestion.constructed();
    v29 = v0[25];
    v30 = v0[23];
    v31 = v0[18];

    return MEMORY[0x282200308](v31, v30, v26);
  }
}

uint64_t closure #1 in closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  v6 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Suggestion.constructed(), 0, 0);
}

uint64_t closure #1 in closure #1 in Suggestion.constructed()()
{
  v48 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  UUID.init()();
  v4 = MEMORY[0x277D84F90];
  *(v1 + *(v2 + 20)) = MEMORY[0x277D84F90];
  *(v1 + *(v2 + 24)) = v4;
  v5 = *(v3 + 16);
  v0[19] = v5;
  if (v5)
  {
    v6 = v0[14];
    v0[20] = 0;
    v0[21] = v4;
    v7 = *(v6 + 32);
    v0[22] = v7;
    v8 = *(v6 + 40);
    v0[23] = v8;
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in Suggestion.constructed();
    v10 = v0[18];
    v11 = v0[15];

    return JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:)(v7, v11, v7, v8);
  }

  else
  {
    if (*(v4 + 16))
    {
      v13 = v0[18];
      JournalingSuggestion.ItemContent.appendAssetContent(_:)(MEMORY[0x277D84F90]);

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.bridge);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[18];
        v18 = v0[16];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v47 = v20;
        *v19 = 136315138;
        swift_beginAccess();
        v21 = *(v17 + *(v18 + 20));

        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pXpMd, &_s21JournalingSuggestions0A15SuggestionAsset_pXpMR);
        v23 = MEMORY[0x23EE70840](v21, v22);
        v25 = v24;

        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v47);

        *(v19 + 4) = v26;
        _os_log_impl(&dword_238A75000, v15, v16, "Got asset representations: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x23EE71510](v20, -1, -1);
        MEMORY[0x23EE71510](v19, -1, -1);
      }

      v28 = v0[17];
      v27 = v0[18];
      v29 = v0[16];
      v30 = v0[13];
      swift_beginAccess();
      outlined init with copy of JournalingSuggestion(v27, v30, type metadata accessor for JournalingSuggestion.ItemContent);
      (*(v28 + 56))(v30, 0, 1, v29);
    }

    else
    {

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v31 = v0[15];
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.bridge);
      v33 = v31;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = v0[15];
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v47 = v38;
        *v37 = 136315138;
        v39 = Asset.representations.getter();
        if (v39)
        {
          v40 = v39;
          v41 = type metadata accessor for AssetViewModel();
          v42 = MEMORY[0x23EE70840](v40, v41);
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v47);

        *(v37 + 4) = v45;
        _os_log_impl(&dword_238A75000, v34, v35, "Error: Couldn't load any representation for asset of type: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x23EE71510](v38, -1, -1);
        MEMORY[0x23EE71510](v37, -1, -1);
      }

      (*(v0[17] + 56))(v0[13], 1, 1, v0[16]);
    }

    outlined destroy of JournalingSuggestion(v0[18], type metadata accessor for JournalingSuggestion.ItemContent);

    v46 = v0[1];

    return v46();
  }
}

{
  v54 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v52 = *(v0 + 32);
    v2 = *(v0 + 48);
    v3 = *(v0 + 168);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 168);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, *(v0 + 168));
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
    }

    v8 = *(v0 + 176);
    v5[2] = v7 + 1;
    v9 = &v5[6 * v7];
    v9[4] = v1;
    *(v9 + 5) = v52;
    v9[7] = v2;
    *(v9 + 4) = v8;
  }

  else
  {
    v5 = *(v0 + 168);
  }

  v10 = *(v0 + 160) + 1;
  if (v10 == *(v0 + 152))
  {
    if (v5[2])
    {
      v11 = *(v0 + 144);
      JournalingSuggestion.ItemContent.appendAssetContent(_:)(v5);

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.bridge);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 144);
        v16 = *(v0 + 128);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v53 = v18;
        *v17 = 136315138;
        swift_beginAccess();
        v19 = *(v15 + *(v16 + 20));

        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pXpMd, &_s21JournalingSuggestions0A15SuggestionAsset_pXpMR);
        v21 = MEMORY[0x23EE70840](v19, v20);
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v53);

        *(v17 + 4) = v24;
        _os_log_impl(&dword_238A75000, v13, v14, "Got asset representations: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x23EE71510](v18, -1, -1);
        MEMORY[0x23EE71510](v17, -1, -1);
      }

      v26 = *(v0 + 136);
      v25 = *(v0 + 144);
      v27 = *(v0 + 128);
      v28 = *(v0 + 104);
      swift_beginAccess();
      outlined init with copy of JournalingSuggestion(v25, v28, type metadata accessor for JournalingSuggestion.ItemContent);
      (*(v26 + 56))(v28, 0, 1, v27);
    }

    else
    {

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 120);
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.bridge);
      v38 = v36;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 120);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v53 = v43;
        *v42 = 136315138;
        v44 = Asset.representations.getter();
        if (v44)
        {
          v45 = v44;
          v46 = type metadata accessor for AssetViewModel();
          v47 = MEMORY[0x23EE70840](v45, v46);
          v49 = v48;
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v53);

        *(v42 + 4) = v50;
        _os_log_impl(&dword_238A75000, v39, v40, "Error: Couldn't load any representation for asset of type: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x23EE71510](v43, -1, -1);
        MEMORY[0x23EE71510](v42, -1, -1);
      }

      (*(*(v0 + 136) + 56))(*(v0 + 104), 1, 1, *(v0 + 128));
    }

    outlined destroy of JournalingSuggestion(*(v0 + 144), type metadata accessor for JournalingSuggestion.ItemContent);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    *(v0 + 160) = v10;
    *(v0 + 168) = v5;
    v29 = *(v0 + 112) + 16 * v10;
    v30 = *(v29 + 32);
    *(v0 + 176) = v30;
    v31 = *(v29 + 40);
    *(v0 + 184) = v31;
    v32 = swift_task_alloc();
    *(v0 + 192) = v32;
    *v32 = v0;
    v32[1] = closure #1 in closure #1 in Suggestion.constructed();
    v33 = *(v0 + 144);
    v34 = *(v0 + 120);

    return JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:)(v30, v34, v30, v31);
  }
}

uint64_t closure #1 in closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[24];
  v9 = *v4;
  v6[25] = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in Suggestion.constructed(), 0, 0);
}

uint64_t SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = v11;
  (*(v3 + 32))(&v14[v13], v5, v2);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:), v14);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:), v8, v7);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = type metadata accessor for UUID();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, v5, v6);
    (*(v7 + 56))(v4, 0, 1, v6);
    (*((*MEMORY[0x277D85000] & *Strong) + 0x198))(v4);
  }

  v8 = *(v0 + 64);
  **(v0 + 40) = Strong == 0;

  v9 = *(v0 + 8);

  return v9();
}

Swift::Void __swiftcall SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(NSNumber to)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.bridge);
  v9 = to.super.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_238A75000, v10, v11, "Did receive notification schedule change to state: %@", v12, 0xCu);
    outlined destroy of URL?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE71510](v13, -1, -1);
    MEMORY[0x23EE71510](v12, -1, -1);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v9;
  v17 = v2;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v16;
  v19[5] = v17;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:), v19);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:), v7, v6);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)()
{
  v17 = v0;
  v1 = v0[4];
  v2 = v0[2];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  LOBYTE(v2) = static NSObject.== infix(_:_:)();

  if (v2)
  {
    v4 = v0[3];
    v16 = 0;
    (*((*MEMORY[0x277D85000] & *v4) + 0x138))(&v16);
  }

  else
  {
    v5 = v0[2];
    v6 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    LOBYTE(v5) = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v7 = v0[3];
      v15 = 1;
      (*((*MEMORY[0x277D85000] & *v7) + 0x138))(&v15);
    }

    else
    {
      v8 = v0[2];
      v9 = NSNumber.init(integerLiteral:)(2).super.super.isa;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        v11 = v0[3];
        v14 = 2;
        (*((*MEMORY[0x277D85000] & *v11) + 0x138))(&v14);
      }
    }
  }

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall SuggestionSheetUIManager.willReceiveUserSelection()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.willReceiveUserSelection(), v8);
}

uint64_t closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.willReceiveUserSelection(), v6, v5);
}

uint64_t closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()()
{
  v2 = v0[2];
  v1 = v0[3];

  (*((*MEMORY[0x277D85000] & *v2) + 0x1F8))(1);
  v3 = v0[1];

  return v3();
}

void SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v52 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Suggestion.assets.getter();
  if (!v16)
  {
    return;
  }

  v17 = v16;
  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v11;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v16 >= 0)
  {
    v16 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v18 = MEMORY[0x23EE70C40](v16);
  v58 = v11;
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_4:
  *&v60 = type metadata accessor for CommonLogger();
  v57 = v18;
  if (v18 >= 1)
  {
    v52 = v7;
    v53 = a1;
    v54 = v2;
    v20 = 0;
    v59 = v17 & 0xC000000000000001;
    v21 = (v12 + 8);
    *&v19 = 138412290;
    v56 = v19;
    v22 = v57;
    do
    {
      if (v59)
      {
        v28 = MEMORY[0x23EE70B80](v20, v17);
      }

      else
      {
        v28 = *(v17 + 8 * v20 + 32);
      }

      v29 = v28;
      static CommonLogger.services.getter();
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = v56;
        *(v23 + 4) = v30;
        *v24 = v30;
        v25 = v30;
        _os_log_impl(&dword_238A75000, v31, v32, "[didReceiveAssets] Asset: %@", v23, 0xCu);
        outlined destroy of URL?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v26 = v24;
        v22 = v57;
        MEMORY[0x23EE71510](v26, -1, -1);
        v27 = v23;
        v11 = v58;
        MEMORY[0x23EE71510](v27, -1, -1);
      }

      else
      {
        v25 = v31;
        v31 = v30;
      }

      ++v20;

      (*v21)(v15, v11);
    }

    while (v22 != v20);

    a1 = v53;
    v2 = v54;
    v7 = v52;
LABEL_18:
    v33 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    [*&v2[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock] lock];
    v34 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens;
    swift_beginAccess();
    v35 = *&v2[v34];

    v37 = v55;
    specialized Collection.first.getter(v36, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMR, v55);

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetMR);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
    {
      v45 = v37 + *(v38 + 48);
      v46 = *(v45 + 24);
      v60 = *v45;

      v47 = type metadata accessor for UUID();
      (*(*(v47 - 8) + 8))(v37, v47);
      MEMORY[0x23EE70910]([*&v2[v33] unlock]);
      v48 = type metadata accessor for TaskPriority();
      (*(*(v48 - 8) + 56))(v7, 0, 1, v48);
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      *(v49 + 32) = v2;
      *(v49 + 40) = a1;
      *(v49 + 48) = v60;
      v50 = v2;
      v51 = a1;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v49);

      return;
    }

    outlined destroy of URL?(v37, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLV5valuetSgMR);
    [*&v2[v33] unlock];
    [*&v2[v33] lock];
    v39 = &v2[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState];
    if ((v2[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8] & 1) != 0 || (v40 = *v39, v41 = SuggestionSheetViewState.rawValue.getter(), v41 != SuggestionSheetViewState.rawValue.getter()))
    {
      *v39 = 0;
      v39[8] = 0;
    }

    [*&v2[v33] unlock];
    SuggestionSheetUIManager.servicePickerViewState()();
    if (one-time initialization token for bridge == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_23:
  __swift_project_value_buffer(v58, static Logger.bridge);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_238A75000, v42, v43, "Ignoring selection, sheet already dismissed", v44, 2u);
    MEMORY[0x23EE71510](v44, -1, -1);
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x23EE70AD0](v3, v5, v6, v7);
    outlined consume of Set<UIScene>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v13 = v12;
  outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
  return v13;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = -1 << *(a1 + 32);
  v11 = _HashTable.startBucket.getter();
  if (v11 == 1 << *(a1 + 32))
  {
    v12 = *(v24 + 56);

    return v12(a4, 1, 1, v6);
  }

  else
  {
    v14 = specialized Dictionary.subscript.getter(v9, v11, *(a1 + 36), 0, a1);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 32))(a4, v9, v21);
    v22 = (a4 + *(v6 + 48));
    *v22 = v14;
    v22[1] = v16;
    v22[2] = v18;
    v22[3] = v20;
    return (*(v24 + 56))(a4, 0, 1, v6);
  }
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), 0, 0);
}

uint64_t closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{
  type metadata accessor for PresenterServerConnection();
  v9 = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
  v10 = *(v0 + 48);
  v1 = *(v0 + 32);
  *(v0 + 64) = static PresenterServerConnection.$currentConnection.getter();
  v2 = *(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection);
  *(v0 + 72) = v2;
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v10;
  v4 = *(MEMORY[0x277D85A70] + 4);
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:);
  v7 = *(v0 + 24);

  return MEMORY[0x282200908](v7, v0 + 16, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v3, 0, 0, 0xD00000000000003DLL, 0x8000000238ADF6D0);
}

void closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];

    v8 = *(v4 + 8);

    v8();
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v5[6] = v8;
  v9 = type metadata accessor for JournalingSuggestion(0);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v5[9] = *(v10 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[12] = v11;
  *v11 = v5;
  v11[1] = closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:);

  return Suggestion.constructed()(v8);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[6];
  if ((*(v1 + 48))(v2, 1, v0[7]) == 1)
  {
    v3 = v0[2];
    outlined destroy of URL?(v2, &_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR);
    v4 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    [*(v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
    v5 = (v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState);
    if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v6 = *v5, v7 = SuggestionSheetViewState.rawValue.getter(), v7 != SuggestionSheetViewState.rawValue.getter()))
    {
      *v5 = 0;
      *(v5 + 8) = 0;
    }

    v8 = v0[2];
    [*(v3 + v4) unlock];
    SuggestionSheetUIManager.servicePickerViewState()();
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.bridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_238A75000, v10, v11, "Failed to construct JournalingSuggestion", v12, 2u);
      MEMORY[0x23EE71510](v12, -1, -1);
    }
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[4];
    v15 = v0[5];
    v31 = v0[9];
    v17 = v0[2];
    v32 = v0[3];
    outlined init with take of JournalingSuggestion(v2, v13, type metadata accessor for JournalingSuggestion);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    outlined init with copy of JournalingSuggestion(v13, v14, type metadata accessor for JournalingSuggestion);
    type metadata accessor for MainActor();
    v19 = v17;

    v20 = static MainActor.shared.getter();
    v21 = (*(v1 + 80) + 40) & ~*(v1 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v20;
    v22[3] = v23;
    v22[4] = v19;
    outlined init with take of JournalingSuggestion(v14, v22 + v21, type metadata accessor for JournalingSuggestion);
    v24 = (v22 + ((v31 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v24 = v32;
    v24[1] = v16;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v22);

    outlined destroy of JournalingSuggestion(v13, type metadata accessor for JournalingSuggestion);
  }

  v26 = v0[10];
  v25 = v0[11];
  v28 = v0[5];
  v27 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(type metadata accessor for JournalingSuggestion(0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v10;
  v7[9] = v9;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v10, v9);
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x1F8))(0);
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.bridge);
  outlined init with copy of JournalingSuggestion(v2, v1, type metadata accessor for JournalingSuggestion);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(*v7 + 16);
    outlined destroy of JournalingSuggestion(v7, type metadata accessor for JournalingSuggestion);
    *(v8 + 4) = v9;
    _os_log_impl(&dword_238A75000, v4, v5, "Calling picker .onCompletion with %ld assets", v8, 0xCu);
    MEMORY[0x23EE71510](v8, -1, -1);
  }

  else
  {
    outlined destroy of JournalingSuggestion(*(v0 + 48), type metadata accessor for JournalingSuggestion);
  }

  v10 = *(v0 + 32);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:);
  v13 = *(v0 + 40);
  v14 = *(v0 + 24);

  return v16(v14);
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:), v4, v3);
}

{
  v1 = v0[7];
  v2 = v0[2];

  v3 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
  [*(v2 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
  v4 = (v2 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState);
  if ((*(v2 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v5 = *v4, v6 = SuggestionSheetViewState.rawValue.getter(), v6 != SuggestionSheetViewState.rawValue.getter()))
  {
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  v7 = v0[6];
  v8 = v0[2];
  [*(v2 + v3) unlock];
  SuggestionSheetUIManager.servicePickerViewState()();

  v9 = v0[1];

  return v9();
}

Swift::Void __swiftcall SuggestionSheetUIManager.didTransition(to:)(NSNumber to)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.bridge);
  v9 = to.super.super.isa;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_238A75000, v10, v11, "Picker didTransitionTo %@", v12, 0xCu);
    outlined destroy of URL?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE71510](v13, -1, -1);
    MEMORY[0x23EE71510](v12, -1, -1);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v9;
  v17 = v2;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in SuggestionSheetUIManager.didTransition(to:), v19);
}

uint64_t closure #1 in SuggestionSheetUIManager.didTransition(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetUIManager.didTransition(to:), v7, v6);
}

uint64_t closure #1 in SuggestionSheetUIManager.didTransition(to:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  [v2 integerValue];
  v4 = SuggestionSheetViewState.init(rawValue:)();
  v5 = v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState;
  *v5 = v4;
  *(v5 + 8) = v6 & 1;
  v7 = [v2 integerValue];
  if (v7 == SuggestionSheetViewState.rawValue.getter())
  {
    v8 = v0[5];
    (*((*MEMORY[0x277D85000] & *v8) + 0x1F8))(0);
    *v5 = 0;
    *(v5 + 8) = 1;
    v9 = v8 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState;
    *v9 = 0;
    v9[8] = 1;
    v10 = v8 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
    *v10 = 0;
    v10[8] = 1;
    v11 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens;
    swift_beginAccess();
    v12 = *(v8 + v11);
    v13 = -1;
    v14 = -1 << *(v12 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v12 + 64);
    v16 = (63 - v14) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v15; result = )
    {
      v19 = i;
LABEL_10:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (*(v12 + 56) + ((v19 << 11) | (32 * v20)));
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];

      v23(v25);
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        goto LABEL_13;
      }

      v15 = *(v12 + 64 + 8 * v19);
      ++i;
      if (v15)
      {
        i = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v26 = v0[1];

    return v26();
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v56 = v14;
    v57 = v10;
    v48 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v49 = (v11 + 16);
    v50 = v11;
    v53 = (v11 + 32);
    v25 = result + 64;
    v51 = v15;
    while (v23)
    {
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v32 = v29 | (v19 << 6);
      v33 = *(v15 + 48);
      v55 = *(v11 + 72);
      v34 = v33 + v55 * v32;
      if (v52)
      {
        (*v53)(v56, v34, v57);
        v35 = (*(v15 + 56) + 32 * v32);
        v36 = v35[1];
        v54 = *v35;
        v58 = v36;
      }

      else
      {
        (*v49)(v56, v34, v57);
        v37 = (*(v15 + 56) + 32 * v32);
        v38 = *v37;
        v58 = v37[1];
        v54 = v38;
      }

      v39 = *(v18 + 40);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v40 = -1 << *(v18 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v11 = v50;
        v15 = v51;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v25 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v11 = v50;
      v15 = v51;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v53)(*(v18 + 48) + v55 * v26, v56, v57);
      v27 = (*(v18 + 56) + 32 * v26);
      v28 = v58;
      *v27 = v54;
      v27[1] = v28;
      ++*(v18 + 16);
    }

    v30 = v19;
    while (1)
    {
      v19 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v31 = v20[v19];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v23 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v7 = v48;
      goto LABEL_36;
    }

    v47 = 1 << *(v15 + 32);
    v7 = v48;
    if (v47 >= 64)
    {
      bzero(v20, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v47;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v42 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v41(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v11);
          if (a1 != v11 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7, uint64_t *a8)
{
  v38 = a7;
  v39 = a8;
  v9 = v8;
  v41 = a2;
  v42 = a4;
  v40 = a1;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v21 = *(v18 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v19;
  v25 = *(v18 + 24);
  if (v25 < v23 || (a6 & 1) == 0)
  {
    if (v25 >= v23 && (a6 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v38, v39);
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a6 & 1, v38, v39);
    v26 = *v9;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v24 & 1) == (v28 & 1))
    {
      v20 = v27;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v29 = v42;
  v30 = a3;
  v31 = *v9;
  if (v24)
  {
    v32 = (v31[7] + 32 * v20);
    v33 = v32[1];
    v34 = v32[3];
    v35 = v41;
    *v32 = v40;
    v32[1] = v35;
    v32[2] = v30;
    v32[3] = v29;
  }

  else
  {
    (*(v14 + 16))(v17, a5, v13);
    return specialized _NativeDictionary._insert(at:key:value:)(v20, v17, v40, v41, v30, v29, v31);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v43 = type metadata accessor for UUID();
  v45 = *(v43 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v37 = v5;
    v38 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v38, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v47 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        v26 = v42;
        v27 = v43;
        (*(v45 + 16))(v42, *(v8 + 48) + v25, v43);
        v28 = 32 * v23;
        v29 = *(v8 + 56) + 32 * v23;
        v30 = *v29;
        v31 = *(v29 + 24);
        v32 = v44;
        v33 = *(v44 + 48);
        v34 = *(v24 + 32);
        v46 = *(v29 + 8);
        v34(v33 + v25, v26, v27);
        v35 = *(v32 + 56) + v28;
        *v35 = v30;
        v8 = v41;
        *(v35 + 8) = v46;
        *(v35 + 24) = v31;

        v18 = v47;
      }

      while (v47);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v37;
        v10 = v44;
        goto LABEL_21;
      }

      v22 = *(v38 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = (*(a5 + 56) + 32 * a2);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];

    return v11;
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE70B00](a1, a2, v7);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unsigned __int8 *specialized static SuggestionSheetUIManager.getClientPlatformVersion()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x8000000238ADF730), (v4 & 1) == 0))
  {

    goto LABEL_8;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v48);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.bridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238A75000, v11, v12, "Client info missing PlatformVersion", v13, 2u);
      MEMORY[0x23EE71510](v13, -1, -1);
    }

    return 0;
  }

  v48 = v46;
  v49 = v47;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();

  v7 = v5[2];
  if (v7)
  {
    v9 = v5[4];
    v8 = v5[5];
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v14 = HIBYTE(v8) & 0xF;
  v15 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v16 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_78;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v48 = v9;
      v49 = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v9 == 43)
      {
        if (v14)
        {
          if (--v14)
          {
            v18 = 0;
            v28 = &v48 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v14)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_97:
        __break(1u);
        return result;
      }

      if (v9 != 45)
      {
        if (v14)
        {
          v18 = 0;
          v33 = &v48;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v14)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v14)
      {
        if (--v14)
        {
          v18 = 0;
          v22 = &v48 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v14)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v17 = *result;
      if (v17 == 43)
      {
        if (v15 >= 1)
        {
          v14 = v15 - 1;
          if (v15 != 1)
          {
            v18 = 0;
            if (result)
            {
              v25 = result + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  goto LABEL_75;
                }

                v27 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_75;
                }

                v18 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  goto LABEL_75;
                }

                ++v25;
                if (!--v14)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_96;
      }

      if (v17 != 45)
      {
        if (v15)
        {
          v18 = 0;
          if (result)
          {
            while (1)
            {
              v31 = *result - 48;
              if (v31 > 9)
              {
                goto LABEL_75;
              }

              v32 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_75;
              }

              v18 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_75;
              }

              ++result;
              if (!--v15)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        v18 = 0;
        LOBYTE(v14) = 1;
        goto LABEL_76;
      }

      if (v15 >= 1)
      {
        v14 = v15 - 1;
        if (v15 != 1)
        {
          v18 = 0;
          if (result)
          {
            v19 = result + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_75;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_75;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                goto LABEL_75;
              }

              ++v19;
              if (!--v14)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v14) = 0;
LABEL_76:
          v36 = v14;
          goto LABEL_77;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v18 = specialized _parseInteger<A, B>(ascii:radix:)(v9, v8, 10);
  v36 = v45;
LABEL_77:

  if (v36)
  {
LABEL_78:

    return 0;
  }

  if (v7 < 2)
  {

    v37 = 0;
    v38 = 0xE000000000000000;
LABEL_83:
    v39 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v37, v38);
    if (v40)
    {
      return 0;
    }

    v5 = v39;
    if (one-time initialization token for bridge == -1)
    {
      goto LABEL_85;
    }

    goto LABEL_93;
  }

  if (v5[2] >= 2uLL)
  {
    v37 = v5[6];
    v38 = v5[7];

    goto LABEL_83;
  }

  __break(1u);
LABEL_93:
  swift_once();
LABEL_85:
  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.bridge);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134218240;
    *(v44 + 4) = v18;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v5;
    _os_log_impl(&dword_238A75000, v42, v43, "Client PlatformVersion: %ld.%ld", v44, 0x16u);
    MEMORY[0x23EE71510](v44, -1, -1);
  }

  return v18;
}

uint64_t sub_238A98814()
{
  MEMORY[0x23EE715A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238A9886C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v11(v0 + v8, v1);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12 + 8);

  v15 = *(v0 + v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v3 | v7 | 7);
}

void partial apply for closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = (v0 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);

  closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)(v8, v0 + v2, v0 + v5, v10, v11, v12, v13);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(a1, v4, v5, v7, v6);
}

uint64_t outlined consume of SuggestionSheetUIManager.TrackingHandlers?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for SuggestionSheetUIManager()
{
  result = type metadata singleton initialization cache for SuggestionSheetUIManager;
  if (!type metadata singleton initialization cache for SuggestionSheetUIManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static Suggestion.contentImpl(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for MediaCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v13 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    inited = swift_initStackObject();
    v28 = xmmword_238AD9810;
    *(inited + 16) = xmmword_238AD9810;
    *(inited + 32) = MEMORY[0x277CE1088];
    *(inited + 40) = &protocol witness table for Image;
    *(inited + 48) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
    *(inited + 56) = &protocol witness table for UIImage;
    type metadata accessor for TransferContactViewModel();
    if (swift_dynamicCastClass())
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_238AD9800;
      v16 = type metadata accessor for JournalingSuggestion.Contact(0);
      v17 = &protocol witness table for JournalingSuggestion.Contact;
      goto LABEL_4;
    }

    type metadata accessor for TransferWorkoutViewModel();
    if (swift_dynamicCastClass())
    {
      if (dispatch thunk of TransferWorkoutViewModel.isSingleWorkout.getter())
      {
        v15 = swift_allocObject();
        *(v15 + 16) = v28;
        *(v15 + 32) = type metadata accessor for JournalingSuggestion.Workout(0);
        *(v15 + 40) = &protocol witness table for JournalingSuggestion.Workout;
        *(v15 + 48) = type metadata accessor for JournalingSuggestion.Workout.Details(0);
        *(v15 + 56) = &protocol witness table for JournalingSuggestion.Workout.Details;
        goto LABEL_5;
      }

      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_238AD9800;
      v16 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
      v17 = &protocol witness table for JournalingSuggestion.WorkoutGroup;
LABEL_4:
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
LABEL_5:
      v29 = v15;
      specialized Array.append<A>(contentsOf:)(inited);

      return v29;
    }

    type metadata accessor for TransferMapViewModel();
    if (swift_dynamicCastClass())
    {
      swift_setDeallocating();
      v18 = dispatch thunk of TransferMapViewModel.isSingleMap.getter();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_238AD9800;
      if ((v18 & 1) == 0)
      {
        *(v19 + 32) = &type metadata for JournalingSuggestion.LocationGroup;
        *(v19 + 40) = &protocol witness table for JournalingSuggestion.LocationGroup;
        v20 = v19;
        goto LABEL_19;
      }

      v20 = v19;
      v21 = type metadata accessor for JournalingSuggestion.Location(0);
      v22 = &protocol witness table for JournalingSuggestion.Location;
LABEL_14:
      *(v20 + 32) = v21;
      *(v20 + 40) = v22;
LABEL_19:

      return v20;
    }

    type metadata accessor for TransferStateOfMindViewModel();
    if (swift_dynamicCastClass())
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_238AD9800;
      v16 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
      v17 = &protocol witness table for JournalingSuggestion.StateOfMind;
      goto LABEL_4;
    }

    type metadata accessor for TransferMediaFirstPartyViewModel();
    if (swift_dynamicCastClass())
    {
      dispatch thunk of TransferMediaFirstPartyViewModel.mediaCategory.getter();
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        (*(v5 + 32))(v11, v3, v4);
        (*(v5 + 16))(v9, v11, v4);
        v23 = (*(v5 + 88))(v9, v4);
        if (v23 == *MEMORY[0x277D2A158] || v23 == *MEMORY[0x277D2A168])
        {
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_238AD9800;
          v25 = type metadata accessor for JournalingSuggestion.Song(0);
          v26 = &protocol witness table for JournalingSuggestion.Song;
        }

        else
        {
          if (v23 != *MEMORY[0x277D2A160])
          {
            swift_setDeallocating();

            v27 = *(v5 + 8);
            v27(v11, v4);
            v27(v9, v4);
            return 0;
          }

          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_238AD9800;
          v25 = type metadata accessor for JournalingSuggestion.Podcast(0);
          v26 = &protocol witness table for JournalingSuggestion.Podcast;
        }

        *(v24 + 32) = v25;
        *(v24 + 40) = v26;
        v29 = v24;
        specialized Array.append<A>(contentsOf:)(inited);

        (*(v5 + 8))(v11, v4);
        return v29;
      }

      swift_setDeallocating();

      outlined destroy of URL?(v3, &_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
    }

    else
    {
      type metadata accessor for TransferMediaThirdPartyViewModel();
      if (swift_dynamicCastClass())
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_238AD9800;
        v16 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
        v17 = &protocol witness table for JournalingSuggestion.GenericMedia;
        goto LABEL_4;
      }

      type metadata accessor for TransferPhotoViewModel();
      if (swift_dynamicCastClass())
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_238AD9800;
        v16 = type metadata accessor for JournalingSuggestion.Photo(0);
        v17 = &protocol witness table for JournalingSuggestion.Photo;
        goto LABEL_4;
      }

      type metadata accessor for TransferLivePhotoViewModel();
      if (swift_dynamicCastClass())
      {
        swift_setDeallocating();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_238AD9800;
        v21 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
        v22 = &protocol witness table for JournalingSuggestion.LivePhoto;
        goto LABEL_14;
      }

      type metadata accessor for TransferVideoViewModel();
      if (swift_dynamicCastClass())
      {
        swift_setDeallocating();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_238AD9800;
        v21 = type metadata accessor for JournalingSuggestion.Video(0);
        v22 = &protocol witness table for JournalingSuggestion.Video;
        goto LABEL_14;
      }

      type metadata accessor for TransferMotionActivityViewModel();
      if (swift_dynamicCastClass())
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_238AD9800;
        v16 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
        v17 = &protocol witness table for JournalingSuggestion.MotionActivity;
        goto LABEL_4;
      }

      type metadata accessor for TransferReflectionViewModel();
      if (swift_dynamicCastClass())
      {
        swift_setDeallocating();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_238AD9800;
        *(v20 + 32) = &type metadata for JournalingSuggestion.Reflection;
        *(v20 + 40) = &protocol witness table for JournalingSuggestion.Reflection;
        goto LABEL_19;
      }

      type metadata accessor for TransferPosterViewModel();
      if (swift_dynamicCastClass())
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_238AD9800;
        v16 = type metadata accessor for JournalingSuggestion.EventPoster(0);
        v17 = &protocol witness table for JournalingSuggestion.EventPoster;
        goto LABEL_4;
      }

      swift_setDeallocating();
    }

    return 0;
  }

  return result;
}

uint64_t sub_238A99400()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()(a1, v4, v5, v6);
}

uint64_t sub_238A9973C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in SuggestionSheetUIManager.didTransition(to:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetUIManager.didTransition(to:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type PlatformVersion and conformance PlatformVersion()
{
  result = lazy protocol witness table cache variable for type PlatformVersion and conformance PlatformVersion;
  if (!lazy protocol witness table cache variable for type PlatformVersion and conformance PlatformVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformVersion and conformance PlatformVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason()
{
  result = lazy protocol witness table cache variable for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason;
  if (!lazy protocol witness table cache variable for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetUIManager.DismissReason and conformance SuggestionSheetUIManager.DismissReason);
  }

  return result;
}

uint64_t sub_238A99A7C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_238A99AD8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v4 = *a1;
  return v3(v2);
}

void type metadata completion function for SuggestionSheetUIManager()
{
  type metadata accessor for JournalConfiguration?(319, &lazy cache variable for type metadata for JournalConfiguration?, type metadata accessor for JournalConfiguration);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    type metadata accessor for JournalConfiguration?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(319, &lazy cache variable for type metadata for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>, &_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMR);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(319, &lazy cache variable for type metadata for Published<JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate?>, &_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMR);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(319, &lazy cache variable for type metadata for Published<UUID?>, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            type metadata accessor for Published<Bool>();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for JournalConfiguration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for Published<JournalingSuggestionsConfiguration.NotificationSchedule?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SuggestionSheetUIManager.DismissReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SuggestionSheetUIManager.DismissReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroy_59Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined consume of Set<UIScene>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(a1, v4, v5, v7, v6);
}

uint64_t sub_238A9AFA4()
{
  v1 = type metadata accessor for JournalingSuggestion(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = v1[6];
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[7];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!v14(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v15 = v1[8];
  if (!v14(v5 + v15, 1, v12))
  {
    (*(v13 + 8))(v5 + v15, v12);
  }

  v16 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v5 + v1[9]);

  (*(v13 + 8))(v5 + v1[11], v12);
  v18 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for JournalingSuggestion(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t partial apply for closure #1 in Suggestion.constructed()(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in Suggestion.constructed()(a1, a2, v7);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of JournalingSuggestion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238A9B624()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in Suggestion.constructed()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in Suggestion.constructed()(a1, v4, v5, v7, v6);
}

uint64_t sub_238A9B72C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV11ItemContentVSg_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v5);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_238A9B91C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(a1, v4, v5, v6, v7, v8);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(a1, v4, v5, v6);
}

uint64_t objectdestroy_172Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t objectdestroy_42Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance Image()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    v3 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v3)
    {
      v4 = v3;
      v5 = Image.uiImage.getter();

      if (v5)
      {
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        v1 = closure #1 in static Image.getAssetLoader(for:)partial apply;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v1 = 0;
  }

  v6 = 0;
LABEL_8:
  v7 = *(v0 + 8);

  return v7(v1, v6);
}

uint64_t (*static Image.getAssetLoader(for:)())(void (*a1)(void *, void), uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    v2 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v2)
    {
      v3 = v2;
      v4 = Image.uiImage.getter();

      if (v4)
      {
        *(swift_allocObject() + 16) = v4;
        return partial apply for closure #1 in static Image.getAssetLoader(for:);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in static Image.getAssetLoader(for:)(void (*a1)(void *, void), uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = Image.init(uiImage:)();
  v7[3] = MEMORY[0x277CE1088];
  v7[4] = &protocol witness table for Image;
  v7[0] = v5;

  a1(v7, 0);

  return outlined destroy of JournalingSuggestionAsset?(v7);
}

uint64_t sub_238A9C09C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3, void *a4)
{
  v46 = a4;
  v47 = a2;
  v48 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for JournalingSuggestion.Song(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v20 = 1;
  v44 = v17;
  v42 = v19;
  v19(v16 + v17, 1, 1, v18);
  v21 = *(v12 + 32);
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v43 = v21;
  v23(v16 + v21, 1, 1, v22);
  v24 = (v16 + *(v12 + 36));
  *v24 = 0;
  v24[1] = 0;
  v25 = [a3 title];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *v16 = v26;
  v16[1] = v28;
  v29 = [a3 artistName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v16[2] = v30;
  v16[3] = v32;
  v33 = [a3 albumTitle];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v16[4] = v34;
  v16[5] = v36;
  v37 = [a3 imageURL];
  if (v37)
  {
    v38 = v37;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  v42(v11, v20, 1, v18);
  outlined assign with take of URL?(v11, v16 + v44, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v39 = v45;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v46, *MEMORY[0x277D29F68], v45);
  outlined assign with take of URL?(v39, v16 + v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v49[3] = v12;
  v49[4] = &protocol witness table for JournalingSuggestion.Song;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  outlined init with copy of JournalingSuggestion.Song(v16, boxed_opaque_existential_1);
  v48(v49, 0);
  outlined destroy of JournalingSuggestionAsset?(v49);
  return outlined destroy of JournalingSuggestion.Song(v16);
}

uint64_t (*specialized static JournalingSuggestion.Song.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A098];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = [a1 content];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_13:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.bridge);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315394;
      v28 = type metadata accessor for JournalingSuggestion.Song(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV4SongVmMd, &_s21JournalingSuggestions0A10SuggestionV4SongVmMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      [v17 content];
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_238A75000, v18, v19, "%s.getAssetLoader, Unexpected content: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v21, -1, -1);
      MEMORY[0x23EE71510](v20, -1, -1);
    }

    return 0;
  }

  v12 = v11;
  if ([v11 mediaType] == 1 || objc_msgSend(v12, sel_mediaType) == 4)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    v14 = a1;
    return partial apply for closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:inside:);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_238A9C774()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with copy of JournalingSuggestion.Song(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Song(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Song(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Song(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.StateOfMind()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferStateOfMindViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = dispatch thunk of TransferStateOfMindViewModel.stateOfMind.getter();
      if (v5)
      {
        v6 = v5;
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *(v7 + 24) = v4;
        v1 = closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:)partial apply;
        goto LABEL_7;
      }
    }

    v1 = 0;
  }

  v7 = 0;
LABEL_7:
  v8 = *(v0 + 8);

  return v8(v1, v7);
}

uint64_t (*static JournalingSuggestion.StateOfMind.getAssetLoader(for:)())(void (*a1)(uint64_t *, void), uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferStateOfMindViewModel();
    v2 = swift_dynamicCastClass();
    if (v2 && (v3 = v2, (v4 = dispatch thunk of TransferStateOfMindViewModel.stateOfMind.getter()) != 0))
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v3;
      return partial apply for closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3)
{
  v54 = a2;
  v55 = a1;
  v4 = type metadata accessor for UUID();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v49 = &v46 - v15;
  v16 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 20);
  v52 = v8;
  v53 = v9;
  v50 = *(v9 + 56);
  v51 = v21;
  v50(&v20[v21], 1, 1, v8);
  *v20 = a3;
  v22 = *(v16 + 24);
  *&v20[v22] = 0;
  v23 = *(v16 + 28);
  *&v20[v23] = 0;
  v24 = a3;
  v25 = dispatch thunk of TransferStateOfMindViewModel.lightBackgroundColors.getter();
  if (v25)
  {
    v26 = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v25);

    *&v20[v22] = v26;
  }

  v27 = dispatch thunk of TransferStateOfMindViewModel.darkBackgroundColors.getter();
  if (v27)
  {
    v28 = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v27);

    *&v20[v23] = v28;
  }

  v29 = dispatch thunk of AssetViewModel.baseImage.getter();
  if (v29)
  {
    v30 = v29;
    v31 = v12;
    v32 = Image.uiImage.getter();

    if (v32)
    {
      v33 = [objc_opt_self() defaultManager];
      v34 = [v33 temporaryDirectory];
      v46 = v32;
      v35 = v34;

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v47 + 8))(v7, v48);
      v36 = v49;
      URL.appendingPathComponent(_:)();
      v37 = v46;

      v38 = v52;
      v48 = *(v53 + 8);
      v48(v31, v52);
      v39 = UIImageHEICRepresentation(v37);
      if (v39 || (v39 = UIImagePNGRepresentation(v37)) != 0)
      {
        v40 = v39;
        v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        URL.appendingPathExtension(_:)();
        v48(v36, v38);
        (*(v53 + 32))(v36, v31, v38);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v41, v43);
        v37 = v46;
      }

      v50(v36, 0, 1, v38);
      outlined assign with take of URL?(v36, &v20[v51]);
    }
  }

  v56[3] = v16;
  v56[4] = &protocol witness table for JournalingSuggestion.StateOfMind;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  outlined init with copy of JournalingSuggestion.StateOfMind(v20, boxed_opaque_existential_1);
  v55(v56, 0);
  outlined destroy of JournalingSuggestionAsset?(v56);
  return outlined destroy of JournalingSuggestion.StateOfMind(v20);
}

uint64_t sub_238A9CECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static JournalingSuggestion.Photo.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.Photo.getAssetLoader(for:)(a1);
}

uint64_t closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v59 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for JournalingSuggestion.Photo(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 16))(v17, a3, v18);
  v19 = v14[5];
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  *&v60 = v19;
  v21(&v17[v19], 1, 1, v20);
  v57 = a4;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v22 = type metadata accessor for DateInterval();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    outlined destroy of URL?(v9, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v24 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v23 + 8))(v9, v22);
    v24 = 0;
  }

  v21(v13, v24, 1, v20);
  outlined assign with take of Date?(v13, &v17[v60]);
  v25 = dispatch thunk of TransferPhotoFamilyViewModel.landscapeCropRect.getter();
  v26 = 0uLL;
  v60 = 0u;
  v27 = 0uLL;
  if (v25)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v54 = v28;
    v55 = v29;
    v53 = v30;
    v56 = v31;

    *&v27 = v53;
    *&v26 = v54;
    *(&v26 + 1) = v55;
    *(&v27 + 1) = v56;
  }

  v32 = &v17[v14[6]];
  *v32 = v26;
  *(v32 + 1) = v27;
  v32[32] = v25 == 0;
  v33 = dispatch thunk of TransferPhotoFamilyViewModel.squareCropRect.getter();
  v34 = 0uLL;
  if (v33)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v60 = v35;
    v54 = v37;
    v55 = v36;
    v56 = v38;

    *&v34 = v54;
    *&v39 = v60;
    *(&v39 + 1) = v55;
    v60 = v39;
    *(&v34 + 1) = v56;
  }

  v40 = &v17[v14[7]];
  *v40 = v60;
  *(v40 + 1) = v34;
  v40[32] = v33 == 0;
  v41 = dispatch thunk of TransferPhotoFamilyViewModel.portraitCropRect.getter();
  if (v41)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v55 = v42;
    v56 = v43;
    v54 = v44;
    v60 = v45;

    *&v47 = v54;
    *&v46 = v55;
    *(&v46 + 1) = v56;
    *(&v47 + 1) = v60;
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
  }

  v48 = &v17[v14[8]];
  v49 = &v17[v14[9]];
  *v48 = v46;
  *(v48 + 1) = v47;
  v48[32] = v41 == 0;
  *v49 = dispatch thunk of TransferPhotoFamilyViewModel.photoIdentifier.getter();
  v49[1] = v50;
  v61[3] = v14;
  v61[4] = &protocol witness table for JournalingSuggestion.Photo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  outlined init with copy of JournalingSuggestion.Photo(v17, boxed_opaque_existential_1);
  v59(v61, 0);
  outlined destroy of URL?(v61, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Photo(v17);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Photo(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.Photo.getAssetLoader(for:)(a1);
}

uint64_t specialized static JournalingSuggestion.Photo.getAssetLoader(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Photo.getAssetLoader(for:), 0, 0);
}

uint64_t specialized static JournalingSuggestion.Photo.getAssetLoader(for:)()
{
  v1 = v0[2];
  v2 = Asset.transferRepresentation.getter();
  v0[9] = v2;
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferPhotoViewModel();
    v4 = swift_dynamicCastClass();
    v0[10] = v4;
    if (v4)
    {
      v5 = dispatch thunk of TransferPhotoViewModel.urlBasedImage.getter();
      v0[11] = v5;
      if (v5)
      {
        v6 = *(MEMORY[0x277D2A178] + 4);
        v17 = (*MEMORY[0x277D2A178] + MEMORY[0x277D2A178]);
        v7 = swift_task_alloc();
        v0[12] = v7;
        *v7 = v0;
        v7[1] = specialized static JournalingSuggestion.Photo.getAssetLoader(for:);
        v8 = v0[3];

        return v17(v8);
      }

      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[3];

      (*(v11 + 56))(v12, 1, 1, v10);
      outlined destroy of URL?(v0[3], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }
  }

  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[3];

  v16 = v0[1];

  return v16(0, 0);
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Photo.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of URL?(*(v0 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v2 + 32);
    v10(v7, v3, v1);
    v10(v8, v7, v1);
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v5 = swift_allocObject();
    v10(v5 + v11, v8, v1);
    *(v5 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    v4 = partial apply for closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:);
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 24);

  v15 = *(v0 + 8);

  return v15(v4, v5);
}

uint64_t sub_238A9DA3C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:)(a1, a2, v2 + v6, v7);
}

uint64_t outlined init with copy of JournalingSuggestion.Photo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Photo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Photo(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Photo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Song()
{
  v1 = specialized static JournalingSuggestion.Song.getAssetLoader(for:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v58 = a2;
  v50 = a4;
  v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v48 - v10;
  v11 = type metadata accessor for MediaCategory();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for JournalingSuggestion.Song(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = 0;
  v20[1] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = *(v18 + 28);
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v53 = v22;
  v54 = v21;
  v52 = v24;
  (v24)(v20 + v21, 1, 1);
  v25 = *(v16 + 32);
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v51 = v25;
  v48 = v27 + 56;
  v49 = v28;
  v28(v20 + v25, 1, 1, v26);
  (*(v12 + 104))(v15, *MEMORY[0x277D2A168], v11);
  lazy protocol witness table accessor for type MediaCategory and conformance MediaCategory();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v12 + 8))(v15, v11);
  v29 = v60[0];
  v30 = v60[5];
  v31 = dispatch thunk of AssetViewModel.baseTitle.getter();
  if (v29 == v30)
  {
    v33 = v20 + 5;
    v20[4] = v31;
  }

  else
  {
    *v20 = v31;
    v33 = v20 + 1;
  }

  *v33 = v32;
  v20[2] = dispatch thunk of TransferMediaFirstPartyViewModel.subtitle.getter();
  v20[3] = v34;
  v35 = v55;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v36 = v35;
  v37 = type metadata accessor for DateInterval();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 48))(v36, 1, v37);
  v40 = v56;
  if (v39 == 1)
  {
    outlined destroy of URL?(v36, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v41 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v38 + 8))(v36, v37);
    v41 = 0;
  }

  v49(v40, v41, 1, v26);
  v42 = (v20 + *(v16 + 36));
  outlined assign with take of Date?(v40, v20 + v51);
  v43 = v54;
  outlined destroy of URL?(v20 + v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v44 = v53;
  (*(v23 + 16))(v20 + v43, v57, v53);
  v52(v20 + v43, 0, 1, v44);
  *v42 = dispatch thunk of TransferMediaFirstPartyViewModel.trackIdentifier.getter();
  v42[1] = v45;
  v60[3] = v16;
  v60[4] = &protocol witness table for JournalingSuggestion.Song;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  outlined init with copy of JournalingSuggestion.Song(v20, boxed_opaque_existential_1);
  v59(v60, 0);
  outlined destroy of URL?(v60, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Song(v20);
}

uint64_t (*specialized static JournalingSuggestion.Song.getAssetLoader(for:)())(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v0 = type metadata accessor for UUID();
  v61 = *(v0 - 8);
  v1 = *(v61 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = v49 - v6;
  v7 = type metadata accessor for URL();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v59 = v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v49 - v13;
  v15 = type metadata accessor for MediaCategory();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v49 - v18;
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v21 = result;
    type metadata accessor for TransferMediaFirstPartyViewModel();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {

      return 0;
    }

    v57 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v7;
    v23 = v22;
    v24 = v21;
    dispatch thunk of TransferMediaFirstPartyViewModel.mediaCategory.getter();
    v25 = v64;
    if ((*(v64 + 48))(v14, 1, v15) == 1)
    {

      outlined destroy of URL?(v14, &_s9MomentsUI13MediaCategoryOSgMd, &_s9MomentsUI13MediaCategoryOSgMR);
      return 0;
    }

    v55 = *(v25 + 32);
    v56 = v25 + 32;
    v55(v19, v14, v15);
    v26 = v24;
    v54 = v23;
    v27 = dispatch thunk of AssetViewModel.baseImage.getter();

    if (!v27 || (v28 = Image.uiImage.getter(), v27, !v28))
    {

      (*(v64 + 8))(v19, v15);
      return 0;
    }

    v29 = [objc_opt_self() defaultManager];
    v30 = [v29 temporaryDirectory];
    v53 = v28;
    v31 = v30;

    v32 = v57;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init()();
    UUID.uuidString.getter();
    (*(v61 + 8))(v3, v0);
    v33 = v62;
    URL.appendingPathComponent(_:)();

    v34 = v63;
    v35 = *(v63 + 8);
    v51 = v63 + 8;
    v35(v32, v58);
    v36 = v53;
    v37 = UIImageHEICRepresentation(v53);
    if (v37 || (v37 = UIImagePNGRepresentation(v36)) != 0)
    {
      v49[1] = v26;
      v50 = v35;
      v38 = v37;
      v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v39;

      URL.appendingPathExtension(_:)();
      v40 = v58;
      v50(v33, v58);
      (*(v34 + 32))(v33, v32, v40);
      Data.write(to:options:)();
      outlined consume of Data._Representation(v61, v52);
      v32 = v57;
    }

    v41 = v58;
    (*(v34 + 56))(v33, 0, 1, v58);
    v42 = *(v34 + 32);
    v43 = v59;
    v42(v59, v33, v41);
    v55(v60, v19, v15);
    v42(v32, v43, v41);
    v44 = v34 + 32;
    v45 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v46 = (v16 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (*(v44 + 48) + v46 + 8) & ~*(v44 + 48);
    v48 = swift_allocObject();
    v55((v48 + v45), v60, v15);
    *(v48 + v46) = v54;
    v42((v48 + v47), v32, v41);
    return partial apply for closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:);
  }

  return result;
}

uint64_t sub_238A9E890()
{
  v1 = type metadata accessor for MediaCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for MediaCategory() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return closure #1 in static JournalingSuggestion.Song.getAssetLoader(for:)(a1, a2, v2 + v6, v9, v10);
}

unint64_t lazy protocol witness table accessor for type MediaCategory and conformance MediaCategory()
{
  result = lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory;
  if (!lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory)
  {
    type metadata accessor for MediaCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaCategory and conformance MediaCategory);
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of URL?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

double static JournalingSuggestion.Workout.Details.toCountPerMinute(_:)(void *a1)
{
  v2 = [objc_opt_self() _countPerMinuteUnit];
  [a1 doubleValueForUnit_];
  v4 = v3;

  return v4;
}

uint64_t closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, void *a4)
{
  v75 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v73 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v65 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v69 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v68 = v65 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v65 - v24;
  MEMORY[0x28223BE20](v23);
  v76 = v65 - v26;
  v27 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v28 = *(*(v27 - 1) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v29 + 32);
  v33 = type metadata accessor for DateInterval();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v70 = v32;
  v66 = v35;
  v67 = v33;
  v65[1] = v34 + 56;
  (v35)(v31 + v32, 1, 1);
  v31[1] = 0;
  v72 = v31 + 1;
  *v31 = a3;
  v31[2] = 0;
  v31[3] = 0;
  v36 = (v31 + v27[9]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v31 + v27[10]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v31 + v27[11]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v31 + v27[12]);
  *v39 = 0;
  v39[1] = 0;
  *(v31 + v27[13]) = 2;
  v40 = (v31 + v27[14]);
  *v40 = 0;
  v40[1] = 0;
  v41 = a4;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(a4, *MEMORY[0x277D2A030], v15);
  v42 = v17[6];
  v43 = v42(v15, 1, v16);
  v74 = v41;
  if (v43 == 1)
  {
    outlined destroy of URL?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v65[0] = a1;
    v46 = v17[4];
    v44 = v17 + 4;
    v45 = v46;
    v46(v76, v15, v16);
    v47 = v73;
    _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v41, *MEMORY[0x277D2A028], v73);
    v48 = v42(v47, 1, v16);
    v49 = (v44 - 2);
    v50 = (v44 - 3);
    if (v48 == 1)
    {
      outlined destroy of URL?(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v51 = *v49;
      v52 = v76;
      (*v49)(v68, v76, v16);
      v51(v69, v52, v16);
      v53 = v71;
      DateInterval.init(start:end:)();
      (*v50)(v52, v16);
      v66(v53, 0, 1, v67);
      v54 = v31 + v70;
      v55 = v53;
    }

    else
    {
      v45(v25, v73, v16);
      v56 = *v49;
      (*v49)(v68, v76, v16);
      v56(v69, v25, v16);
      v57 = v71;
      DateInterval.init(start:end:)();
      v58 = *v50;
      (*v50)(v25, v16);
      v58(v76, v16);
      v66(v57, 0, 1, v67);
      v54 = v31 + v70;
      v55 = v57;
    }

    outlined assign with take of URL?(v55, v54, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    a1 = v65[0];
  }

  v59 = v74;
  v60 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(v74, *MEMORY[0x277D29FD8]);
  if (v60)
  {
    *v72 = v60;
  }

  v61 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(v59, *MEMORY[0x277D2A020]);
  if (v61)
  {
    v31[2] = v61;
  }

  v62 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(v59, *MEMORY[0x277D29FD0]);
  if (v62)
  {
    v31[3] = v62;
  }

  v77[3] = v27;
  v77[4] = &protocol witness table for JournalingSuggestion.Workout.Details;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  outlined init with copy of JournalingSuggestion.Workout.Details(v31, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout.Details);
  a1(v77, 0);
  outlined destroy of URL?(v77, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Workout.Details(v31, type metadata accessor for JournalingSuggestion.Workout.Details);
}

uint64_t closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1, void *a2), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v10 = a5;

  a3(partial apply for closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:), v9);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  outlined init with copy of URL?(a1, v21, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v21[1];
  *(v15 + 32) = v21[0];
  *(v15 + 48) = v16;
  *(v15 + 64) = v22;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;
  *(v15 + 88) = a5;
  *(v15 + 96) = a2;
  v17 = a3;

  v18 = a2;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:), v15);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = type metadata accessor for UUID();
  v8[22] = v9;
  v10 = *(v9 - 8);
  v8[23] = v10;
  v11 = *(v10 + 64) + 15;
  v8[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v13 = type metadata accessor for URL();
  v8[26] = v13;
  v14 = *(v13 - 8);
  v8[27] = v14;
  v15 = *(v14 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v16 = type metadata accessor for JournalingSuggestion.Workout(0);
  v8[31] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR) - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v19 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v8[34] = v19;
  v20 = *(v19 - 8);
  v8[35] = v20;
  v21 = *(v20 + 64) + 15;
  v8[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)()
{
  v1 = *(v0 + 280);
  outlined init with copy of URL?(*(v0 + 136), v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v2 = (v1 + 56);
  if (!*(v0 + 40))
  {
    v36 = *(v0 + 264);
    v37 = *(v0 + 272);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    (*v2)(v36, 1, 1, v37);
    goto LABEL_9;
  }

  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
  v6 = swift_dynamicCast();
  v7 = *v2;
  (*v2)(v5, v6 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_9:
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v40 = *(v0 + 152);
    outlined destroy of URL?(*(v0 + 264), &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v40(v0 + 56, v38);
    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    goto LABEL_10;
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 144);
  outlined init with take of JournalingSuggestion.Workout(*(v0 + 264), v8, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined init with copy of JournalingSuggestion.Workout.Details(v8, v10, type metadata accessor for JournalingSuggestion.Workout.Details);
  v7(v10, 0, 1, v9);
  v15 = *(v11 + 20);
  v16 = *(v13 + 56);
  v16(v10 + v15, 1, 1, v12);
  v17 = *(v11 + 24);
  *(v10 + v17) = 0;
  v18 = [v14 iconURL];
  if (v18)
  {
    v19 = v15;
    v20 = v16;
    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);
    v25 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = *(v24 + 32);
    v26(v21, v22, v23);
    outlined destroy of URL?(v10 + v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v26(v10 + v19, v21, v23);
    v20(v10 + v19, 0, 1, v23);
  }

  else
  {
    v51 = [*(v0 + 144) icon];
    if (v51)
    {
      v75 = v10;
      v76 = v16;
      v77 = v15;
      v78 = v17;
      v53 = *(v0 + 216);
      v52 = *(v0 + 224);
      v54 = *(v0 + 200);
      v79 = *(v0 + 208);
      v80 = v51;
      v56 = *(v0 + 184);
      v55 = *(v0 + 192);
      v57 = *(v0 + 176);
      v58 = [objc_opt_self() defaultManager];
      v59 = [v58 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v56 + 8))(v55, v57);
      v60 = v80;
      URL.appendingPathComponent(_:)();

      v61 = *(v53 + 8);
      v61(v52, v79);
      v62 = UIImageHEICRepresentation(v80);
      if (v62 || (v62 = UIImagePNGRepresentation(v80)) != 0)
      {
        v63 = *(v0 + 224);
        v64 = *(v0 + 200);
        v65 = v62;
        v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        URL.appendingPathExtension(_:)();
        v70 = *(v0 + 216);
        v69 = *(v0 + 224);
        v72 = *(v0 + 200);
        v71 = *(v0 + 208);
        v61(v72, v71);
        (*(v70 + 32))(v72, v69, v71);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v66, v68);
        v60 = v80;
      }

      v74 = *(v0 + 200);
      v73 = *(v0 + 208);

      v76(v74, 0, 1, v73);
      v10 = v75;
      outlined assign with take of URL?(v74, v75 + v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v17 = v78;
    }
  }

  v27 = [*(v0 + 144) route];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 locationReadings];
    type metadata accessor for CLLocation();
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v10 + v17) = v30;
  }

  v31 = *(v0 + 288);
  v32 = *(v0 + 256);
  v34 = *(v0 + 152);
  v33 = *(v0 + 160);
  *(v0 + 120) = *(v0 + 248);
  *(v0 + 128) = &protocol witness table for JournalingSuggestion.Workout;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  outlined init with copy of JournalingSuggestion.Workout.Details(v32, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout);
  v34(v0 + 96, 0);
  outlined destroy of JournalingSuggestion.Workout.Details(v31, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.Workout.Details(v32, type metadata accessor for JournalingSuggestion.Workout);
LABEL_10:
  v41 = *(v0 + 288);
  v42 = *(v0 + 256);
  v43 = *(v0 + 264);
  v45 = *(v0 + 232);
  v44 = *(v0 + 240);
  v46 = *(v0 + 224);
  v48 = *(v0 + 192);
  v47 = *(v0 + 200);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a4, v15);
  (*(v16 + 56))(&v13[v14], 0, 1, v15);
  *v13 = a3;
  v17 = v9[6];
  *&v13[v17] = 0;
  v18 = *MEMORY[0x277D2A000];

  v19 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(a5, v18);
  if (v19)
  {
    *&v13[v17] = v19;
  }

  v20 = v9[7];
  v21 = &v13[v9[8]];
  *&v13[v20] = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5(a5, *MEMORY[0x277D29FE0]);
  *v21 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSd_Tt2g5(a5, *MEMORY[0x277D2A008]);
  v21[8] = v22 & 1;
  v26[3] = v9;
  v26[4] = &protocol witness table for JournalingSuggestion.WorkoutGroup;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  outlined init with copy of JournalingSuggestion.Workout.Details(v13, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.WorkoutGroup);
  a1(v26, 0);
  outlined destroy of URL?(v26, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Workout.Details(v13, type metadata accessor for JournalingSuggestion.WorkoutGroup);
}

uint64_t (*specialized static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A0F8];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSu_Tt2g5(a1, *MEMORY[0x277D2A018]);
  if (v11)
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.bridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238A75000, v13, v14, "Workout asset should carry .workoutHKType of type Int metadata", v15, 2u);
      MEMORY[0x23EE71510](v15, -1, -1);
    }

    return 0;
  }

  v17 = v10;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  v19 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:);
}

uint64_t (*specialized static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A0F8];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = [a1 content];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v19 = [a1 metadata];
    v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v33[0] = *MEMORY[0x277D2A010];
    type metadata accessor for MOSuggestionAssetMetadataKey(0);
    lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
    v21 = *&v33[0];
    AnyHashable.init<A>(_:)();
    if (*(v20 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v34), (v23 & 1) != 0))
    {
      outlined init with copy of Any(*(v20 + 56) + 32 * v22, v33);
      outlined destroy of AnyHashable(v34);

      outlined destroy of URL?(v33, &_sypSgMd, &_sypSgMR);
    }

    else
    {

      outlined destroy of AnyHashable(v34);
      memset(v33, 0, sizeof(v33));
      outlined destroy of URL?(v33, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.bridge);
      v25 = a1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v34[0] = v29;
        *v28 = 136315138;
        *&v33[0] = [v25 content];
        v30 = String.init<A>(describing:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v34);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_238A75000, v26, v27, "SuggestionWorkout.getAssetLoader, Unexpected content: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x23EE71510](v29, -1, -1);
        MEMORY[0x23EE71510](v28, -1, -1);
      }
    }

    return 0;
  }

  v12 = v11;
  v13 = specialized static JournalingSuggestion.Workout.Details.getAssetLoader(for:inside:)(a1);
  v15 = v14;
  if (v13)
  {
    v16 = v13;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = v12;
    return partial apply for closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:);
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t (*specialized static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = type metadata accessor for JournalingSuggestion.Workout(0);
  v141 = *(v2 - 8);
  v3 = *(v141 + 64);
  MEMORY[0x28223BE20](v2);
  v147 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v142 = *(v5 - 8);
  v6 = *(v142 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v136 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v135 = &v110 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v137 = &v110 - v12;
  MEMORY[0x28223BE20](v11);
  v140 = &v110 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v110 - v16;
  v146 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v138 = *(v146 - 8);
  v18 = v138[8];
  MEMORY[0x28223BE20](v146);
  v20 = (&v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v134 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v110 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v143 = &v110 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v110 - v29;
  v145 = type metadata accessor for URL();
  v133 = *(v145 - 8);
  v31 = *(v133 + 64);
  v32 = MEMORY[0x28223BE20](v145);
  v131 = v33;
  v132 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v144 = &v110 - v34;
  v35 = [a1 assetType];
  v36 = *MEMORY[0x277D2A100];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  v42 = *MEMORY[0x277D29FE8];
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a1, *MEMORY[0x277D29FE8]);
  if (v43)
  {
    return 0;
  }

  assetImageContentToUrl(_:)(a1, v144);
  v44 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a1, v42);
  if (v45)
  {
    (*(v133 + 8))(v144, v145);
    return 0;
  }

  v46 = v44;
  v47 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySuG_Tt2g5(a1, *MEMORY[0x277D2A010]);
  if (!v47)
  {
LABEL_11:
    v5 = v145;
    if (one-time initialization token for bridge != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_12;
  }

  if (*(v47 + 16) < v46)
  {

    goto LABEL_11;
  }

  v55 = v47;
  v56 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSay10Foundation4DateVG_Tt2g5(a1, *MEMORY[0x277D29FF8]);
  v57 = a1;
  v58 = MEMORY[0x277D84F90];
  if (v56)
  {
    v59 = v56;
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  v114 = v59;
  v60 = *MEMORY[0x277D29FF0];
  v111 = v57;
  result = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSay10Foundation4DateVG_Tt2g5(v57, v60);
  if (!result)
  {
    result = v58;
  }

  if (v46 < 0)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  v61 = v143;
  v110 = v55;
  if (v46)
  {
    if (v46 <= *(v55 + 16))
    {
      v62 = v55;
      v63 = 0;
      v124 = *(v114 + 16);
      v123 = *(result + 2);
      v119 = v62 + 32;
      v127 = (v142 + 56);
      v125 = (v142 + 16);
      v118 = (v142 + 48);
      v113 = (v142 + 32);
      v112 = (v142 + 8);
      v117 = v138 + 7;
      v116 = (v133 + 56);
      v138 = MEMORY[0x277D84F90];
      v120 = v46;
      v126 = result;
      v122 = v2;
      v115 = v17;
      v121 = v30;
      while (1)
      {
        if (v63 >= v124)
        {
          v64 = 1;
        }

        else
        {
          if ((v63 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            swift_once();
LABEL_12:
            v48 = type metadata accessor for Logger();
            __swift_project_value_buffer(v48, static Logger.bridge);
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();
            v51 = os_log_type_enabled(v49, v50);
            v52 = v144;
            if (v51)
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_238A75000, v49, v50, "Can't get enough workout group activity types", v53, 2u);
              MEMORY[0x23EE71510](v53, -1, -1);
            }

            (*(v133 + 8))(v52, v5);
            return 0;
          }

          if (v63 >= *(v114 + 16))
          {
            goto LABEL_52;
          }

          (*(v142 + 16))(v30, v114 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v63, v5);
          v64 = 0;
        }

        v65 = v5;
        v5 = v127;
        v66 = *v127;
        v67 = 1;
        (*v127)(v30, v64, 1, v65);
        if (v63 < v123)
        {
          if ((v63 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v63 >= *(v126 + 2))
          {
            goto LABEL_53;
          }

          (*(v142 + 16))(v61, v126 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v63, v65);
          v67 = 0;
        }

        v66(v61, v67, 1, v65);
        v68 = *(v119 + 8 * v63);
        v69 = v146;
        v70 = *(v146 + 32);
        v71 = v61;
        v72 = type metadata accessor for DateInterval();
        v73 = *(v72 - 8);
        v74 = *(v73 + 56);
        v130 = v70;
        v129 = v74;
        v128 = v73 + 56;
        v74(v20 + v70, 1, 1, v72);
        *v20 = v68;
        v20[1] = 0;
        v20[2] = 0;
        v20[3] = 0;
        v75 = (v20 + v69[9]);
        *v75 = 0;
        v75[1] = 0;
        v76 = (v20 + v69[10]);
        *v76 = 0;
        v76[1] = 0;
        v77 = (v20 + v69[11]);
        *v77 = 0;
        v77[1] = 0;
        v78 = (v20 + v69[12]);
        *v78 = 0;
        v78[1] = 0;
        *(v20 + v69[13]) = 2;
        v79 = (v20 + v69[14]);
        *v79 = 0;
        v79[1] = 0;
        v80 = v139;
        outlined init with copy of URL?(v30, v139, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v81 = *v118;
        if ((*v118)(v80, 1, v65) == 1)
        {
          outlined destroy of URL?(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v82 = 1;
          v83 = v145;
          v84 = v115;
        }

        else
        {
          v85 = v80;
          v86 = *v113;
          v87 = v140;
          (*v113)(v140, v85, v65);
          v88 = v71;
          v89 = v134;
          outlined init with copy of URL?(v88, v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          if (v81(v89, 1, v65) == 1)
          {
            v90 = *v125;
            (*v125)(v137, v87, v65);
            if (v81(v89, 1, v65) != 1)
            {
              outlined destroy of URL?(v89, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }

            v91 = v137;
          }

          else
          {
            v91 = v137;
            v86(v137, v89, v65);
            v90 = *v125;
          }

          v92 = v140;
          v90(v135, v140, v65);
          v90(v136, v91, v65);
          v93 = v115;
          DateInterval.init(start:end:)();
          v94 = *v112;
          (*v112)(v91, v65);
          v84 = v93;
          v94(v92, v65);
          v82 = 0;
          v83 = v145;
        }

        v129(v84, v82, 1, v72);
        outlined assign with take of URL?(v84, v20 + v130, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        v95 = v147;
        outlined init with copy of JournalingSuggestion.Workout.Details(v20, v147, type metadata accessor for JournalingSuggestion.Workout.Details);
        (*v117)(v95, 0, 1, v146);
        v96 = v122;
        (*v116)(v95 + *(v122 + 20), 1, 1, v83);
        *(v95 + *(v96 + 24)) = 0;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v121;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138[2] + 1, 1, v138);
        }

        v61 = v143;
        v99 = v138[2];
        v98 = v138[3];
        if (v99 >= v98 >> 1)
        {
          v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v98 > 1, v99 + 1, 1, v138);
        }

        ++v63;
        outlined destroy of URL?(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of URL?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v100 = v138;
        v138[2] = v99 + 1;
        outlined init with take of JournalingSuggestion.Workout(v147, v100 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v99, type metadata accessor for JournalingSuggestion.Workout);
        outlined destroy of JournalingSuggestion.Workout.Details(v20, type metadata accessor for JournalingSuggestion.Workout.Details);
        v5 = v65;
        if (v120 == v63)
        {
          goto LABEL_49;
        }
      }
    }

    goto LABEL_56;
  }

  v138 = MEMORY[0x277D84F90];
LABEL_49:

  v101 = v145;
  v102 = v132;
  v104 = v133 + 32;
  v103 = *(v133 + 32);
  v103(v132, v144, v145);
  v105 = (*(v104 + 48) + 24) & ~*(v104 + 48);
  v106 = (v131 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  *(v107 + 16) = v138;
  v103((v107 + v105), v102, v101);
  v108 = v111;
  *(v107 + v106) = v111;
  v109 = v108;
  return partial apply for specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:);
}

uint64_t sub_238AA1714()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return specialized closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:inside:)(a1, a2, v8, v2 + v6, v7);
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey)
  {
    type metadata accessor for MOSuggestionAssetMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey);
  }

  return result;
}

uint64_t sub_238AA1948()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238AA1994()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238AA19E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(for:inside:)(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t outlined init with copy of JournalingSuggestion.Workout.Details(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Workout.Details(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for CLLocation()
{
  result = lazy cache variable for type metadata for CLLocation;
  if (!lazy cache variable for type metadata for CLLocation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLLocation);
  }

  return result;
}

uint64_t sub_238AA1C2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t MOSuggestionAssetMotionActivityType.movementType.getter@<X0>(char *a1@<X8>)
{
  v2 = *MEMORY[0x277D2A038];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D2A048];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    v10 = 1;
    goto LABEL_13;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    v10 = 1;
    goto LABEL_14;
  }

  v18 = *MEMORY[0x277D2A040];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v10 = 2;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
LABEL_13:

    goto LABEL_14;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

LABEL_14:
  *a1 = v10;
  return result;
}

uint64_t closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(void (*a1)(__int128 *, void), uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a3, *MEMORY[0x277D29F70]);
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v14 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo0gH18MotionActivityTypea_Tt2g5(a3, *MEMORY[0x277D29F78]);
    if (v14)
    {
      v15 = v14;
      MOSuggestionAssetMotionActivityType.movementType.getter(&v23);
      v16 = v23;
      if (v23 != 3)
      {
        v18 = type metadata accessor for URL();
        (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
        v19 = v7[6];
        v20 = type metadata accessor for DateInterval();
        (*(*(v20 - 8) + 56))(&v10[v19], 1, 1, v20);
        *&v10[v7[5]] = v13;
        v21 = v7[7];
        v10[v21] = 3;
        outlined assign with copy of URL?(a4, v10);
        v10[v21] = v16;
        *(&v24 + 1) = v7;
        v25 = &protocol witness table for JournalingSuggestion.MotionActivity;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
        outlined init with copy of JournalingSuggestion.MotionActivity(v10, boxed_opaque_existential_1);
        a1(&v23, 0);

        outlined destroy of JournalingSuggestionAsset?(&v23);
        return outlined destroy of JournalingSuggestion.MotionActivity(v10);
      }
    }
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  a1(&v23, 0);
  return outlined destroy of JournalingSuggestionAsset?(&v23);
}

uint64_t (*specialized static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(void *a1))(void (*a1)(__int128 *, void), uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-v7];
  v9 = [a1 assetType];
  v10 = *MEMORY[0x277D2A0A8];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  assetImageContentToUrl(_:)(a1, v8);
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  outlined init with take of URL?(v8, v6);
  v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  outlined init with take of URL?(v6, v20 + v19);
  v21 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:);
}

uint64_t sub_238AA2248()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(void (*a1)(__int128 *, void), uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:inside:)(a1, a2, v6, v7);
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion.MotionActivity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.MotionActivity(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3, void *a4)
{
  v41 = a4;
  v42 = a2;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for JournalingSuggestion.Podcast(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 24);
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v20 = 1;
  v39 = v17;
  v37 = v19;
  v19(v16 + v17, 1, 1, v18);
  v21 = *(v12 + 28);
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v38 = v21;
  v23(v16 + v21, 1, 1, v22);
  v24 = [a3 artistName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v16[2] = v25;
  v16[3] = v27;
  v28 = [a3 title];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *v16 = v29;
  v16[1] = v31;
  v32 = [a3 imageURL];
  if (v32)
  {
    v33 = v32;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  v37(v11, v20, 1, v18);
  outlined assign with take of URL?(v11, v16 + v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = v40;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v41, *MEMORY[0x277D29F68], v40);
  outlined assign with take of URL?(v34, v16 + v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v44[3] = v12;
  v44[4] = &protocol witness table for JournalingSuggestion.Podcast;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  outlined init with copy of JournalingSuggestion.Podcast(v16, boxed_opaque_existential_1);
  v43(v44, 0);
  outlined destroy of JournalingSuggestionAsset?(v44);
  return outlined destroy of JournalingSuggestion.Podcast(v16);
}

uint64_t (*specialized static JournalingSuggestion.Podcast.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A098];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = [a1 content];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_13:
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.bridge);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315394;
      v28 = type metadata accessor for JournalingSuggestion.Podcast(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7PodcastVmMd, &_s21JournalingSuggestions0A10SuggestionV7PodcastVmMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      [v17 content];
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_238A75000, v18, v19, "%s.getAssetLoader, Unexpected content: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v21, -1, -1);
      MEMORY[0x23EE71510](v20, -1, -1);
    }

    return 0;
  }

  v12 = v11;
  if ([v11 mediaType] == 2 || objc_msgSend(v12, sel_mediaType) == 5)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    v14 = a1;
    return partial apply for closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:inside:);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_238AA2B7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with copy of JournalingSuggestion.Podcast(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Podcast(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Podcast(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Podcast(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getMetadataValue<A>(_:key:as:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  getMetadata<A>(_:key:as:)(a1, a2, a3, &v24 - v11);
  v13 = *(a3 - 8);
  if ((*(v13 + 48))(v12, 1, a3) != 1)
  {
    return (*(v13 + 32))(a4, v12, a3);
  }

  (*(v9 + 8))(v12, v8);
  type metadata accessor for JournalingSuggestionsError();
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError);
  swift_allocError();
  v15 = v14;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v16;
  MEMORY[0x23EE70790](8250, 0xE200000000000000);
  v26 = a3;
  swift_getMetatypeMetadata();
  v17 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v17);

  v18 = v24;
  v19 = v25;
  v24 = 0x203A7465737341;
  v25 = 0xE700000000000000;
  v26 = [a1 content];
  v20 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v20);

  v21 = v24;
  v22 = v25;
  *v15 = v18;
  v15[1] = v19;
  v15[2] = v21;
  v15[3] = v22;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t getMetadata<A>(_:key:as:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = [a1 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v14[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey);
  v9 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v10, v14);
    outlined destroy of AnyHashable(v15);
  }

  else
  {

    outlined destroy of AnyHashable(v15);
    memset(v14, 0, sizeof(v14));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v12 ^ 1u, 1, a3);
}

uint64_t getMetadata<A>(_:key:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v13[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey);
  v8 = a2;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v9, v13);
    outlined destroy of AnyHashable(v14);
  }

  else
  {
    outlined destroy of AnyHashable(v14);
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v11 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v11 ^ 1u, 1, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EE70B30](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Video(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.Video.getAssetLoader(for:)(a1);
}

uint64_t static JournalingSuggestion.Video.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.Video.getAssetLoader(for:)(a1);
}

uint64_t closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v59 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for JournalingSuggestion.Video(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 16))(v17, a3, v18);
  v19 = v14[5];
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  *&v60 = v19;
  v21(&v17[v19], 1, 1, v20);
  v57 = a4;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v22 = type metadata accessor for DateInterval();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    outlined destroy of URL?(v9, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v24 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v23 + 8))(v9, v22);
    v24 = 0;
  }

  v21(v13, v24, 1, v20);
  outlined assign with take of Date?(v13, &v17[v60]);
  v25 = dispatch thunk of TransferPhotoFamilyViewModel.landscapeCropRect.getter();
  v26 = 0uLL;
  v60 = 0u;
  v27 = 0uLL;
  if (v25)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v54 = v28;
    v55 = v29;
    v53 = v30;
    v56 = v31;

    *&v27 = v53;
    *&v26 = v54;
    *(&v26 + 1) = v55;
    *(&v27 + 1) = v56;
  }

  v32 = &v17[v14[6]];
  *v32 = v26;
  *(v32 + 1) = v27;
  v32[32] = v25 == 0;
  v33 = dispatch thunk of TransferPhotoFamilyViewModel.squareCropRect.getter();
  v34 = 0uLL;
  if (v33)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v60 = v35;
    v54 = v37;
    v55 = v36;
    v56 = v38;

    *&v34 = v54;
    *&v39 = v60;
    *(&v39 + 1) = v55;
    v60 = v39;
    *(&v34 + 1) = v56;
  }

  v40 = &v17[v14[7]];
  *v40 = v60;
  *(v40 + 1) = v34;
  v40[32] = v33 == 0;
  v41 = dispatch thunk of TransferPhotoFamilyViewModel.portraitCropRect.getter();
  if (v41)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v55 = v42;
    v56 = v43;
    v54 = v44;
    v60 = v45;

    *&v47 = v54;
    *&v46 = v55;
    *(&v46 + 1) = v56;
    *(&v47 + 1) = v60;
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
  }

  v48 = &v17[v14[8]];
  v49 = &v17[v14[9]];
  *v48 = v46;
  *(v48 + 1) = v47;
  v48[32] = v41 == 0;
  *v49 = dispatch thunk of TransferPhotoFamilyViewModel.photoIdentifier.getter();
  v49[1] = v50;
  v61[3] = v14;
  v61[4] = &protocol witness table for JournalingSuggestion.Video;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  outlined init with copy of JournalingSuggestion.Video(v17, boxed_opaque_existential_1);
  v59(v61, 0);
  outlined destroy of URL?(v61, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Video(v17);
}

uint64_t specialized static JournalingSuggestion.Video.getAssetLoader(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Video.getAssetLoader(for:), 0, 0);
}

uint64_t specialized static JournalingSuggestion.Video.getAssetLoader(for:)()
{
  v1 = v0[2];
  v2 = Asset.transferRepresentation.getter();
  v0[9] = v2;
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferVideoViewModel();
    v4 = swift_dynamicCastClass();
    v0[10] = v4;
    if (v4)
    {
      v5 = dispatch thunk of TransferVideoViewModel.urlBasedVideo.getter();
      v0[11] = v5;
      if (v5)
      {
        v6 = *(MEMORY[0x277D2A180] + 4);
        v17 = (*MEMORY[0x277D2A180] + MEMORY[0x277D2A180]);
        v7 = swift_task_alloc();
        v0[12] = v7;
        *v7 = v0;
        v7[1] = specialized static JournalingSuggestion.Video.getAssetLoader(for:);
        v8 = v0[3];

        return v17(v8);
      }

      v10 = v0[4];
      v11 = v0[5];
      v12 = v0[3];

      (*(v11 + 56))(v12, 1, 1, v10);
      outlined destroy of URL?(v0[3], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }
  }

  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[3];

  v16 = v0[1];

  return v16(0, 0);
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.Video.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of URL?(*(v0 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v2 + 32);
    v10(v7, v3, v1);
    v10(v8, v7, v1);
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v5 = swift_allocObject();
    v10(v5 + v11, v8, v1);
    *(v5 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    v4 = partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:);
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 24);

  v15 = *(v0 + 8);

  return v15(v4, v5);
}

uint64_t sub_238AA40A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:)(a1, a2, v2 + v6, v7);
}

uint64_t static Logger.osLogger(category:)()
{

  return Logger.init(subsystem:category:)();
}

uint64_t Logger.bridge.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for shared(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.shared.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

uint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t key path setter for SuggestionSheetManager.journalConfiguration : SuggestionSheetManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x98))(v7);
}

uint64_t SuggestionSheetManager.journalConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_journalConfiguration;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
}

uint64_t SuggestionSheetManager.journalConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_journalConfiguration;
  swift_beginAccess();
  outlined assign with take of JournalConfiguration?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of JournalConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SuggestionSheetManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *SuggestionSheetManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SuggestionSheetManager.shared;
}

id static SuggestionSheetManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionSheetManager.shared;

  return v1;
}

uint64_t SuggestionSheetManager.peekDetent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v9 - v4);
  (*((*MEMORY[0x277D85000] & *v0) + 0x90))(v3);
  v6 = type metadata accessor for JournalConfiguration(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v8 = *v5;
  }

  return outlined destroy of URL?(v5, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
}

id SuggestionSheetManager.presentationOptions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v32 - v11;
  v13 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(v10);
  v15 = *((*v13 & *v0) + 0x90);
  v15();
  v16 = type metadata accessor for JournalConfiguration(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = 1;
  if (!v17(v12, 1, v16))
  {
    v18 = v12[8];
  }

  v19 = outlined destroy of URL?(v12, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  (v15)(v19);
  if (v17(v9, 1, v16))
  {
    outlined destroy of URL?(v9, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  }

  else
  {
    outlined init with copy of URL?(&v9[*(v16 + 24)], v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of URL?(v9, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  v21 = specialized static SuggestionSheetUIManager.getClientPlatformVersion()();
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  isa = 0;
  if ((*(v27 + 48))(v4, 1, v26) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v27 + 8))(v4, v26);
  }

  if (v23 >= 0)
  {
    v29 = (v21 > 17) & ~v25;
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D2A140]) initWithShowCancelButton:1 showBlankEntryButton:1 peekDetentRatio:v18 presentFullScreen:1 presentationIsAnimated:1 selectedTabIsRecommended:isa selectedSuggestionId:v14 contentOptions:v29];

  return v30;
}

uint64_t static SuggestionSheetManager.content(bySpiType:)()
{
  result = specialized static SuggestionSheetManager.contentImpl(bySpiType:)();
  if (result)
  {
    if (*(result + 16))
    {
      v1 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238AD9810;
      *(inited + 32) = MEMORY[0x277CE1088];
      *(inited + 40) = &protocol witness table for Image;
      *(inited + 48) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
      *(inited + 56) = &protocol witness table for UIImage;
      specialized Array.append<A>(contentsOf:)(inited);
      return v1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t SuggestionSheetManager.servicePickerViewState()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in SuggestionSheetManager.servicePickerViewState();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_79;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void closure #1 in SuggestionSheetManager.servicePickerViewState()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller);
    if (!v2)
    {
      v5 = Strong;
LABEL_42:

      return;
    }

    v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    v4 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock);
    v5 = v2;
    [v4 lock];
    v6 = &v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
    v7 = *&v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
    v8 = v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8];
    v9 = &v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState];
    v10 = v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState + 8];
    if (v8)
    {
      if (!v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState + 8])
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v7 != *v9)
      {
        v10 = 1;
      }

      if (v10)
      {
LABEL_11:
        [*&v1[v3] unlock];
        if (one-time initialization token for bridge != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.bridge);
        v12 = v1;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 134218496;
          if (v8)
          {
            v16 = 0;
          }

          else
          {
            v16 = v7;
          }

          *(v15 + 4) = v16;
          *(v15 + 12) = 2048;
          if (v6[8])
          {
            v17 = 99;
          }

          else
          {
            v17 = *v6;
          }

          v20 = v5;
          *(v15 + 14) = v17;
          *(v15 + 22) = 2048;
          v21 = v7;
          if (v9[8])
          {
            v22 = 99;
          }

          else
          {
            v22 = *v9;
          }

          *(v15 + 24) = v22;
          v48 = v15;

          _os_log_impl(&dword_238A75000, v13, v14, "servicePickerViewState, target, %lu, targetView, %lu, view, %lu", v48, 0x20u);
          MEMORY[0x23EE71510](v48, -1, -1);
          v7 = v21;
          v5 = v20;

          if (v8)
          {
LABEL_38:
            v40 = Logger.logObject.getter();
            v49 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v40, v49))
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              v43 = "nil targetViewState, ignoring update";
              v44 = v49;
              v45 = v40;
              v46 = v42;
              v47 = 2;
              goto LABEL_40;
            }

            goto LABEL_41;
          }
        }

        else
        {

          if (v8)
          {
            goto LABEL_38;
          }
        }

        v18 = v6[8];
        v19 = v12 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState;
        *v19 = *v6;
        v19[8] = v18;
        if (v9[8])
        {
          if ((v7 - 1) > 1)
          {
            goto LABEL_31;
          }
        }

        else if (*v9 || (v7 - 1) >= 2)
        {
LABEL_31:
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = v12;
            v34 = v5;
            v35 = v7;
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_238A75000, v31, v32, "Posting picker state update: .dismissed", v36, 2u);
            v37 = v36;
            v7 = v35;
            v5 = v34;
            v12 = v33;
            MEMORY[0x23EE71510](v37, -1, -1);
          }

          v38 = (*((*MEMORY[0x277D85000] & *v12) + 0xC8))();
          v39 = [v38 presentationIsAnimated];

          [v5 updatePickerState:0 animated:v39];
          *v19 = 0;
          v19[8] = 1;
          goto LABEL_34;
        }

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = v12;
          v26 = v5;
          v27 = v7;
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_238A75000, v23, v24, "Requesting picker", v28, 2u);
          v29 = v28;
          v7 = v27;
          v5 = v26;
          v12 = v25;
          MEMORY[0x23EE71510](v29, -1, -1);
        }

        v30 = (*((*MEMORY[0x277D85000] & *v12) + 0xC8))();
        [v5 requestPickerWithOptions_];

LABEL_34:
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 134217984;
          *(v42 + 4) = v7;
          v43 = "Expecting transition to %lu";
          v44 = v41;
          v45 = v40;
          v46 = v42;
          v47 = 12;
LABEL_40:
          _os_log_impl(&dword_238A75000, v45, v44, v43, v46, v47);
          MEMORY[0x23EE71510](v42, -1, -1);
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    *v6 = 0;
    v6[8] = 1;
    goto LABEL_11;
  }
}

uint64_t SuggestionSheetManager.remoteViewStateChangedTo(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in SuggestionSheetManager.remoteViewStateChangedTo(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

void closure #1 in SuggestionSheetManager.remoteViewStateChangedTo(_:)(uint64_t a1, unint64_t a2)
{
  v69 = type metadata accessor for UUID();
  v65 = *(v69 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v69);
  v64 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v56[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    [*(Strong + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
    v15 = v13 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState;
    if (*(v13 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState + 8) != 1)
    {
      v25 = *v15;
      *v15 = 0;
      v15[8] = 1;
      if ((*(v13 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || v25 != *(v13 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState))
      {
        if (!a2)
        {
          v57 = 1;
          goto LABEL_19;
        }

        v57 = 1;
        goto LABEL_17;
      }

      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.bridge);
      v17 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v27))
      {
        goto LABEL_7;
      }

      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a2;
      v20 = "Completed transition to %lu";
      v21 = v27;
      v22 = v17;
      v23 = v19;
      v24 = 12;
      goto LABEL_6;
    }

    if (one-time initialization token for bridge != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.bridge);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "No view state updated expected.";
        v21 = v18;
        v22 = v17;
        v23 = v19;
        v24 = 2;
LABEL_6:
        _os_log_impl(&dword_238A75000, v22, v21, v20, v23, v24);
        MEMORY[0x23EE71510](v19, -1, -1);
      }

LABEL_7:

      v57 = 0;
      if (a2)
      {
LABEL_17:
        v28 = MEMORY[0x277D84F98];
      }

      else
      {
LABEL_19:
        v29 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens;
        swift_beginAccess();
        v28 = *(v13 + v29);
        *(v13 + v29) = MEMORY[0x277D84F98];
      }

      [*(v13 + v14) unlock];
      v30 = 0;
      v31 = v13 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState;
      *v31 = a2;
      v31[8] = 0;
      v32 = *(v28 + 64);
      v58 = v13;
      v59 = v28 + 64;
      v33 = 1 << *(v28 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      a2 = v34 & v32;
      v35 = (v33 + 63) >> 6;
      v60 = v65 + 32;
      v61 = v65 + 16;
      v66 = (v65 + 8);
      v67 = v28;
      v13 = &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd;
      v62 = v35;
      v63 = v11;
      if ((v34 & v32) != 0)
      {
        break;
      }

LABEL_24:
      if (v35 <= v30 + 1)
      {
        v36 = v30 + 1;
      }

      else
      {
        v36 = v35;
      }

      v37 = v36 - 1;
      while (1)
      {
        v14 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v14 >= v35)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
          (*(*(v54 - 8) + 56))(v9, 1, 1, v54);
          a2 = 0;
          goto LABEL_32;
        }

        a2 = *(v59 + 8 * v14);
        ++v30;
        if (a2)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
    }

    while (1)
    {
      v14 = v30;
LABEL_31:
      v38 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v39 = v38 | (v14 << 6);
      v40 = v64;
      v41 = v65;
      v42 = v69;
      (*(v65 + 16))(v64, *(v28 + 48) + *(v65 + 72) * v39, v69);
      v43 = *(v28 + 56) + 32 * v39;
      v68 = *v43;
      v44 = *(v43 + 24);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
      v46 = v9;
      v47 = &v9[*(v45 + 48)];
      v48 = *(v41 + 32);
      v70 = *(v43 + 8);
      v49 = v40;
      v13 = &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd;
      v48(v46, v49, v42);
      *v47 = v68;
      *(v47 + 8) = v70;
      *(v47 + 3) = v44;
      v9 = v46;
      (*(*(v45 - 8) + 56))(v46, 0, 1, v45);

      v37 = v14;
      v35 = v62;
      v11 = v63;
LABEL_32:
      outlined init with take of UUID?(v9, v11, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
      if ((*(*(v50 - 8) + 48))(v11, 1, v50) == 1)
      {
        break;
      }

      v51 = &v11[*(v50 + 48)];
      v52 = *(v51 + 1);
      v53 = *(v51 + 3);
      (*(v51 + 2))();

      (*v66)(v11, v69);
      v30 = v37;
      v28 = v67;
      if (!a2)
      {
        goto LABEL_24;
      }
    }

    v55 = v58;
    if (v57)
    {
      SuggestionSheetManager.servicePickerViewState()();
    }
  }
}

Swift::Bool __swiftcall SuggestionSheetManager.activate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 connectedScenes];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = specialized Collection.first.getter(v12);

  if (v13)
  {

    objc_opt_self();
    v15 = swift_dynamicCastObjCClassUnconditional();
    if (*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller))
    {

      return (*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState + 8) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState) - 1) < 2;
    }

    else
    {
      v16 = v15;
      v23 = *(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue);
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      aBlock[4] = partial apply for closure #1 in SuggestionSheetManager.activate();
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1;
      v19 = _Block_copy(aBlock);

      v22 = v13;
      static DispatchQoS.unspecified.getter();
      v25 = MEMORY[0x277D84F90];
      _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      v21 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x23EE709F0](0, v9, v5, v19);
      _Block_release(v19);

      (*(v2 + 8))(v5, v1);
      (*(v24 + 8))(v9, v21);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in SuggestionSheetManager.activate()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller;
    if (!*&Strong[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller])
    {
      v5 = Strong;
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.bridge);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_238A75000, v7, v8, "Activating JournalingSuggestionsPicker", v9, 2u);
        MEMORY[0x23EE71510](v9, -1, -1);
      }

      v10 = [objc_allocWithZone(MEMORY[0x277D2A138]) initForScene_];
      [v10 setDelegate_];
      v11 = *&v5[v4];
      *&v5[v4] = v10;
      v12 = v10;

      [v12 activate];
      Strong = v12;
    }
  }
}

uint64_t SuggestionSheetManager.show(token:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  if (*(v5 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller))
  {
    v17 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    v18 = *(v5 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock);

    [v18 lock];
    v19 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens;
    swift_beginAccess();

    v20 = *(v6 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v6 + v19);
    *(v6 + v19) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, partial apply for closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:), v16, a1, isUniquelyReferenced_nonNull_native);
    *(v6 + v19) = v33;
    swift_endAccess();
    [*(v6 + v17) unlock];
    [*(v6 + v17) lock];
    v22 = v6 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
    if ((*(v6 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v22 != 2)
    {
      *v22 = 2;
      *(v22 + 8) = 0;
    }

    [*(v6 + v17) unlock];
    SuggestionSheetManager.servicePickerViewState()();
  }

  else
  {
    v23 = one-time initialization token for bridge;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.bridge);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_238A75000, v25, v26, "Can't show suggestions picker, not activated", v27, 2u);
      MEMORY[0x23EE71510](v27, -1, -1);
    }

    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
    type metadata accessor for MainActor();

    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = a4;
    v30[5] = a5;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:), v30);
  }
}

uint64_t closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:)partial apply, v10);
}

Swift::Int SuggestionSheetManager.DismissReason.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](a1 & 1);
  return Hasher._finalize()();
}

id SuggestionSheetManager.dismiss(presentationToken:reason:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
  (*(v7 + 16))(v10, a1, v6);
  v12 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, 0, 0, 0, v10);
  swift_endAccess();
  v13 = *(*(v3 + v12) + 16);
  result = [*(v3 + v11) unlock];
  if (!v13 || (a2 & 1) == 0)
  {
    [*(v3 + v11) lock];
    v15 = v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
    if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v15)
    {
      *v15 = 0;
      *(v15 + 8) = 0;
    }

    [*(v3 + v11) unlock];
    return SuggestionSheetManager.servicePickerViewState()();
  }

  return result;
}

Swift::Void __swiftcall SuggestionSheetManager.onApplicationMovedToForeground()()
{
  v1 = (v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState);
  if ((*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) == 0)
  {
    v2 = *v1;
    if ((*v1 - 3) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
      [*(v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
      *v1 = v2;
      *(v1 + 8) = 0;
      v4 = v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState;
      *v4 = 0;
      *(v4 + 8) = 1;
      v5 = v0 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState;
      *v5 = 0;
      *(v5 + 8) = 1;
      [*(v0 + v3) unlock];

      SuggestionSheetManager.servicePickerViewState()();
    }
  }
}

void SuggestionSheetManager.suggestionSheetControllerShouldShowMomentsValidator(_:)()
{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.bridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_238A75000, oslog, v1, "Picker:MV", v2, 2u);
    MEMORY[0x23EE71510](v2, -1, -1);
  }
}

uint64_t SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[5] = a3;
  v3[6] = ObjectType;
  v3[3] = a1;
  v3[4] = a2;
  v8 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

uint64_t SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)()
{
  v1 = v0[3].i64[0];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMd, &_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMR);
  v4 = swift_task_alloc();
  v0[4].i64[1] = v4;
  v4[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v4[2].i64[0] = v1;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[5].i64[0] = v6;
  *v6 = v0;
  v6[1] = SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);

  return MEMORY[0x282200600](&v0[1], v2, v3, 0, 0, &async function pointer to partial apply for closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), v4, v2);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v43 = v0[5];
      }

      else
      {
        v43 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 != MEMORY[0x23EE70C40](v43))
      {
        goto LABEL_4;
      }
    }

    else if (v2 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v4 = v0[5];
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.bridge);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134218240;
        if (v3 >> 62)
        {
          v18 = v0[5];
          if (v3 < 0)
          {
            v19 = v0[5];
          }

          else
          {
            v19 = v3 & 0xFFFFFFFFFFFFFF8;
          }

          v9 = MEMORY[0x23EE70C40](v19);
        }

        else
        {
          v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = v0[5];
        *(v8 + 4) = v9;

        *(v8 + 12) = 2048;
        *(v8 + 14) = *(v1 + 16);

        _os_log_impl(&dword_238A75000, v6, v7, "assets input count=%ld, output count=%ld", v8, 0x16u);
        MEMORY[0x23EE71510](v8, -1, -1);
      }

      else
      {
        v17 = v0[5];
      }
    }

    v22 = v0[7];
    v21 = v0[8];
    v24 = v0[3];
    v23 = v0[4];
    v25 = [v23 title];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = type metadata accessor for JournalingSuggestion(0);
    v29 = v28[6];
    v30 = [v23 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = [v23 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.init(start:end:)();
    v32 = type metadata accessor for DateInterval();
    (*(*(v32 - 8) + 56))(&v24[v29], 0, 1, v32);
    v33 = v28[7];
    v34 = type metadata accessor for UUID();
    v35 = *(*(v34 - 8) + 56);
    v35(&v24[v33], 1, 1, v34);
    v35(&v24[v28[8]], 1, 1, v34);
    v36 = [v23 suggestionIdentifier];
    v37 = &v24[v28[11]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = NSObject.hashValue.getter();
    *v24 = v1;
    *(v24 + 1) = v44;
    *(v24 + 2) = v27;
    *&v24[v28[9]] = 0;
    v24[v28[10]] = 1;
    *&v24[v28[12]] = v38;
    (*(*(v28 - 1) + 56))(v24, 0, 1, v28);
    goto LABEL_22;
  }

  v10 = v0[2];

  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.bridge);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_238A75000, v12, v13, "Error: No valid representation available for asset, dropping, asset type", v14, 2u);
    MEMORY[0x23EE71510](v14, -1, -1);
  }

  v15 = v0[3];

  v16 = type metadata accessor for JournalingSuggestion(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
LABEL_22:
  v40 = v0[7];
  v39 = v0[8];

  v41 = v0[1];

  return v41();
}

uint64_t closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v4[24] = v6;
  v7 = *(v6 - 8);
  v4[25] = v7;
  v8 = *(v7 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
  v4[29] = v10;
  v11 = *(v10 - 8);
  v4[30] = v11;
  v12 = *(v11 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
  v4[33] = v13;
  v14 = *(v13 - 8);
  v4[34] = v14;
  v15 = *(v14 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

uint64_t closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = v3;
  v4 = *(v3 + 160);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v53 = *(v3 + 160);
    }

    else
    {
      v53 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    a1 = MEMORY[0x23EE70C40](v53);
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_34:
    v54 = *(v3 + 280);
    v55 = *(v3 + 232);
    v56 = **(v3 + 152);
    TaskGroup.makeAsyncIterator()();
    *(v3 + 288) = MEMORY[0x277D84F90];
    v57 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
    v58 = *(MEMORY[0x277D856D0] + 4);
    v59 = swift_task_alloc();
    *(v3 + 296) = v59;
    *v59 = v3;
    v59[1] = closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
    v60 = *(v3 + 280);
    a2 = *(v3 + 264);
    a1 = *(v3 + 224);
    a3 = v57;

    return MEMORY[0x282200308](a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v66 = v4 & 0xC000000000000001;
    v62 = (v3 + 80);
    v63 = *(v3 + 160) + 32;
    v7 = &off_278A60000;
    v64 = v5;
    while (1)
    {
      if (v66)
      {
        v8 = MEMORY[0x23EE70B80](v6, *(v3 + 160));
      }

      else
      {
        v8 = *(v63 + 8 * v6);
      }

      v9 = v8;
      v10 = [v8 v7[142]];
      v11 = specialized static SuggestionSheetManager.contentImpl(bySpiType:)();
      if (!v11)
      {
        goto LABEL_20;
      }

      if (!*(v11 + 16))
      {

LABEL_20:

        if (one-time initialization token for bridge != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.bridge);
        v40 = v9;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v67 = v44;
          *v43 = 136315138;
          *(v3 + 136) = [v40 v7[142]];
          type metadata accessor for MOSuggestionAssetsType(0);
          v45 = String.init<A>(describing:)();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v67);
          v7 = &off_278A60000;

          *(v43 + 4) = v47;
          _os_log_impl(&dword_238A75000, v41, v42, "Error: Not implemented internal asset type: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x23EE71510](v44, -1, -1);
          MEMORY[0x23EE71510](v43, -1, -1);
        }

        else
        {
        }

        goto LABEL_6;
      }

      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238AD9810;
      *(inited + 32) = MEMORY[0x277CE1088];
      *(inited + 40) = &protocol witness table for Image;
      *(inited + 48) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
      *(inited + 56) = &protocol witness table for UIImage;
      v67 = v12;
      specialized Array.append<A>(contentsOf:)(inited);

      v65 = v67;
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.bridge);
      v15 = v9;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v67 = v19;
        *v18 = 136315138;
        v20 = [v15 v7[142]];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v67);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_238A75000, v16, v17, "Got asset with internal asset type: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x23EE71510](v19, -1, -1);
        MEMORY[0x23EE71510](v18, -1, -1);
      }

      v25 = *(v3 + 176);
      v26 = *(v3 + 184);
      v27 = *(v3 + 168);
      v28 = type metadata accessor for TaskPriority();
      v29 = *(v28 - 8);
      (*(v29 + 56))(v26, 1, 1, v28);
      v30 = swift_allocObject();
      v30[2] = 0;
      v31 = v30 + 2;
      v30[3] = 0;
      v30[4] = v65;
      v30[5] = v15;
      v30[6] = v27;
      outlined init with copy of URL?(v26, v25, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v25) = (*(v29 + 48))(v25, 1, v28);
      v32 = v15;
      v33 = v27;
      v34 = *(v3 + 176);
      if (v25 == 1)
      {
        outlined destroy of URL?(*(v3 + 176), &_sScPSgMd, &_sScPSgMR);
        if (!*v31)
        {
          goto LABEL_25;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v29 + 8))(v34, v28);
        if (!*v31)
        {
LABEL_25:
          v36 = 0;
          v38 = 0;
          goto LABEL_26;
        }
      }

      v35 = v30[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v36 = dispatch thunk of Actor.unownedExecutor.getter();
      v38 = v37;
      swift_unknownObjectRelease();
LABEL_26:
      v48 = **(v3 + 152);
      v49 = swift_allocObject();
      *(v49 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
      *(v49 + 24) = v30;

      if (v38 | v36)
      {
        v50 = v62;
        *v62 = 0;
        v62[1] = 0;
        *(v3 + 96) = v36;
        *(v3 + 104) = v38;
      }

      else
      {
        v50 = 0;
      }

      v5 = v64;
      v51 = *(v3 + 232);
      v52 = *(v3 + 184);
      *(v3 + 112) = 1;
      *(v3 + 120) = v50;
      *(v3 + 128) = v48;
      swift_task_create();

      outlined destroy of URL?(v52, &_sScPSgMd, &_sScPSgMR);
      v7 = &off_278A60000;
LABEL_6:
      if (v5 == ++v6)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return MEMORY[0x282200308](a1, a2, a3);
}

uint64_t closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[35];
    v4 = v2[36];
    v8 = v2 + 33;
    v6 = v2[33];
    v7 = v8[1];

    (*(v7 + 8))(v5, v6);

    v9 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v9 = closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = v0[28];
  if ((*(v0[30] + 48))(v1, 1, v0[29]) == 1)
  {
    v2 = v0[36];
    v4 = v0[31];
    v3 = v0[32];
    v6 = v0[26];
    v5 = v0[27];
    v7 = v0[23];
    v32 = v0[22];
    v8 = v0[18];
    (*(v0[34] + 8))(v0[35], v0[33]);
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgSgMR);
    *v8 = v2;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[31];
    v11 = v0[32];
    v13 = v0[24];
    v14 = v0[25];
    outlined init with take of UUID?(v1, v11, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    outlined init with copy of URL?(v11, v12, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v15 = v0[31];
      outlined destroy of URL?(v0[32], &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      outlined destroy of URL?(v15, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v16 = v0[36];
    }

    else
    {
      v17 = v0[36];
      v19 = v0[26];
      v18 = v0[27];
      outlined init with take of JournalingSuggestion.ItemContent(v0[31], v18, type metadata accessor for JournalingSuggestion.ItemContent);
      outlined init with copy of JournalingSuggestionsError(v18, v19, type metadata accessor for JournalingSuggestion.ItemContent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v0[36];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v0[36]);
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v16);
      }

      v23 = v0[32];
      v24 = v0[26];
      v25 = v0[25];
      _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v0[27], type metadata accessor for JournalingSuggestion.ItemContent);
      outlined destroy of URL?(v23, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
      v16[2] = v22 + 1;
      outlined init with take of JournalingSuggestion.ItemContent(v24, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for JournalingSuggestion.ItemContent);
    }

    v0[36] = v16;
    v26 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.ItemContent?>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV11ItemContentVSg_GMR);
    v27 = *(MEMORY[0x277D856D0] + 4);
    v28 = swift_task_alloc();
    v0[37] = v28;
    *v28 = v0;
    v28[1] = closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:);
    v29 = v0[35];
    v30 = v0[33];
    v31 = v0[28];

    return MEMORY[0x282200308](v31, v30, v26);
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a1;
  v6[10] = a4;
  v7 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:), 0, 0);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)()
{
  v56 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  UUID.init()();
  v4 = MEMORY[0x277D84F90];
  *(v1 + *(v2 + 20)) = MEMORY[0x277D84F90];
  v53 = v2;
  *(v1 + *(v2 + 24)) = v4;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (*(v0 + 80) + 32);
    do
    {
      v8 = *(v0 + 120);
      v54 = *v6;
      v9 = JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:inside:)(*v6, *(v0 + 88), *(v0 + 96), *v6, v6[1]);
      if (v9)
      {
        v13 = v9;
        v14 = v10;
        v15 = v11;
        v16 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v18 = v4[2];
        v17 = v4[3];
        if (v18 >= v17 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
        }

        v4[2] = v18 + 1;
        v7 = &v4[6 * v18];
        v7[4] = v13;
        v7[5] = v14;
        v7[6] = v15;
        v7[7] = v16;
        *(v7 + 4) = v54;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (v4[2])
  {
    v19 = *(v0 + 120);
    JournalingSuggestion.ItemContent.appendAssetContent(_:)(v4);

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.bridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 120);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55 = v25;
      *v24 = 136315138;
      swift_beginAccess();
      v26 = *(v23 + *(v53 + 20));

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pXpMd, &_s21JournalingSuggestions0A15SuggestionAsset_pXpMR);
      v28 = MEMORY[0x23EE70840](v26, v27);
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v55);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_238A75000, v21, v22, "Got asset representations: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x23EE71510](v25, -1, -1);
      MEMORY[0x23EE71510](v24, -1, -1);
    }

    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 104);
    v35 = *(v0 + 72);
    swift_beginAccess();
    outlined init with copy of JournalingSuggestionsError(v32, v35, type metadata accessor for JournalingSuggestion.ItemContent);
    (*(v33 + 56))(v35, 0, 1, v34);
  }

  else
  {

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 88);
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.bridge);
    v38 = v36;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 104);
    v43 = *(v0 + 112);
    if (v41)
    {
      v44 = *(v0 + 88);
      v45 = *(v0 + 72);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v46 = 136315138;
      *(v0 + 64) = [v44 assetType];
      type metadata accessor for MOSuggestionAssetsType(0);
      v48 = String.init<A>(describing:)();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v55);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_238A75000, v39, v40, "Error: Couldn't load any representation for asset of type: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x23EE71510](v47, -1, -1);
      MEMORY[0x23EE71510](v46, -1, -1);
    }

    else
    {
      v45 = *(v0 + 72);
    }

    (*(v43 + 56))(v45, 1, 1, v42);
  }

  _s21JournalingSuggestions0aB5ErrorOWOhTm_0(*(v0 + 120), type metadata accessor for JournalingSuggestion.ItemContent);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t SuggestionSheetManager.getAssetsFor(suggestion:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](SuggestionSheetManager.getAssetsFor(suggestion:), 0, 0);
}

uint64_t SuggestionSheetManager.getAssetsFor(suggestion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller);
  v0[5] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[6] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = v1;
    v6 = swift_task_alloc();
    v0[7] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17MOSuggestionAssetCGMd, &_sSaySo17MOSuggestionAssetCGMR);
    *v6 = v0;
    v6[1] = SuggestionSheetManager.getAssetsFor(suggestion:);

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x8000000238ADF8C0, partial apply for closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:), v3, v7);
  }

  else
  {
    type metadata accessor for JournalingSuggestionsError();
    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError);
    swift_allocError();
    *v8 = 0xD000000000000028;
    v8[1] = 0x8000000238ADF890;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = SuggestionSheetManager.getAssetsFor(suggestion:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = SuggestionSheetManager.getAssetsFor(suggestion:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

void closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [MOSuggestionAsset<Swift.AnyObject>]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [a2 getAssetsForSuggestion:v14 withTypes:0 onAssetsCallback:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JournalingSuggestionsError();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v16 = one-time initialization token for bridge;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.bridge);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      if (a1 >> 62)
      {
        if (a1 >= 0)
        {
          v29 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v29 = a1;
        }

        v21 = MEMORY[0x23EE70C40](v29);
      }

      else
      {
        v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 4) = v21;

      _os_log_impl(&dword_238A75000, v18, v19, "got %ld assets from system picker", v20, 0xCu);
      MEMORY[0x23EE71510](v20, -1, -1);
    }

    else
    {
    }

    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    v30 = a2;
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v30 = 0xD000000000000023;
    v31 = 0x8000000238ADF900;
    v24 = [a4 suggestionIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x23EE70790](v25);

    (*(v8 + 8))(v11, v7);
    v26 = v31;
    *v15 = v30;
    v15[1] = v26;
    swift_storeEnumTagMultiPayload();
    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError);
    v27 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v15, v28, type metadata accessor for JournalingSuggestionsError);
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v15, type metadata accessor for JournalingSuggestionsError);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [MOSuggestionAsset<Swift.AnyObject>]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCMd, &_sSo17MOSuggestionAssetCMR);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v63 - v14;
  v16 = type metadata accessor for UUID();
  v68 = *(v16 - 8);
  v69 = v16;
  v17 = *(v68 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.bridge);
  v22 = a3;
  v67 = v21;
  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v65 = v23;
  v66 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v64 = v25;
    v28 = v27;
    v63 = swift_slowAlloc();
    v70 = v63;
    *v28 = 134218242;
    *(v28 + 4) = a2;
    *(v28 + 12) = 2080;
    v29 = [v23 suggestionIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v30 = v15;
    v31 = v69;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v4;
    v34 = v11;
    v35 = a1;
    v37 = v36;
    v38 = v31;
    v15 = v30;
    (*(v68 + 8))(v19, v38);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v37, &v70);
    a1 = v35;
    v11 = v34;
    v4 = v33;

    *(v28 + 14) = v39;
    _os_log_impl(&dword_238A75000, v24, v64, "sheet delegate shouldPerform:%lu, for:'%s'", v28, 0x16u);
    v40 = v63;
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x23EE71510](v40, -1, -1);
    MEMORY[0x23EE71510](v28, -1, -1);
  }

  v41 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*&v4[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock] lock];
  v42 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens;
  swift_beginAccess();
  v43 = *&v4[v42];

  specialized Collection.first.getter(v44, v15);

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetMR);
  if ((*(*(v45 - 8) + 48))(v15, 1, v45) == 1)
  {
    outlined destroy of URL?(v15, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMd, &_s10Foundation4UUIDV3key_21JournalingSuggestions22SuggestionSheetManagerC16TrackingHandlers33_C713564B63AEAFD0E87ACF083EBD61D5LLV5valuetSgMR);
    [*&v4[v41] unlock];
    [*&v4[v41] lock];
    v46 = &v4[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
    if ((v4[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8] & 1) != 0 || *v46)
    {
      *v46 = 0;
      v46[8] = 0;
    }

    [*&v4[v41] unlock];
    SuggestionSheetManager.servicePickerViewState()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_238A75000, v47, v48, "Ignoring selection, sheet already dismissed", v49, 2u);
      MEMORY[0x23EE71510](v49, -1, -1);
    }
  }

  else
  {
    v50 = &v15[*(v45 + 48)];
    v52 = *v50;
    v51 = *(v50 + 1);
    v53 = *(v50 + 3);

    (*(v68 + 8))(v15, v69);
    [*&v4[v41] unlock];
    if (v66 != 2)
    {
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_238A75000, v54, v55, "requesting assets...", v56, 2u);
        MEMORY[0x23EE71510](v56, -1, -1);
      }

      MEMORY[0x23EE70910]();
      v57 = type metadata accessor for TaskPriority();
      (*(*(v57 - 8) + 56))(v11, 0, 1, v57);
      v58 = swift_allocObject();
      v58[2] = 0;
      v58[3] = 0;
      v58[4] = a1;
      v58[5] = v4;
      v59 = v65;
      v58[6] = v65;
      v58[7] = v52;
      v58[8] = v51;
      v60 = v59;
      v61 = a1;
      v62 = v4;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v58);
    }
  }
}

uint64_t closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR) - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v11 = type metadata accessor for JournalingSuggestion(0);
  v8[9] = v11;
  v12 = *(v11 - 8);
  v8[10] = v12;
  v8[11] = *(v12 + 64);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), 0, 0);
}

uint64_t closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)()
{
  [*(v0 + 16) setDisableAssetUnwrapping_];
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return SuggestionSheetManager.getAssetsFor(suggestion:)(v2);
}

{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      v18 = v0[15];
      if (v18 >= 0)
      {
        v18 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = v7;
      v8 = MEMORY[0x23EE70C40](v18);
      v7 = v19;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v0[15];
    *(v7 + 4) = v8;
    v10 = v7;

    _os_log_impl(&dword_238A75000, v3, v4, "getAssetsFor count=%ld", v10, 0xCu);
    MEMORY[0x23EE71510](v10, -1, -1);
  }

  else
  {
    v11 = v0[15];
  }

  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  v13 = v0[15];
  v14 = v0[8];
  v16 = v0[3];
  v15 = v0[4];

  return SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(v14, v15, v13);
}

{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[8];
  if ((*(v1 + 48))(v2, 1, v0[9]) == 1)
  {
    outlined destroy of URL?(v2, &_s21JournalingSuggestions0A10SuggestionVSgMd, &_s21JournalingSuggestions0A10SuggestionVSgMR);
    v3 = v0[3];
    v4 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
    [*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
    v5 = v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
    if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v5)
    {
      *v5 = 0;
      *(v5 + 8) = 0;
    }

    v6 = v0[3];
    [*(v3 + v4) unlock];
    SuggestionSheetManager.servicePickerViewState()();
  }

  else
  {
    v8 = v0[12];
    v7 = v0[13];
    v26 = v0[11];
    v10 = v0[6];
    v9 = v0[7];
    v28 = v0[5];
    v11 = v0[3];
    v27 = v9;
    outlined init with take of JournalingSuggestion.ItemContent(v2, v7, type metadata accessor for JournalingSuggestion);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    outlined init with copy of JournalingSuggestionsError(v7, v8, type metadata accessor for JournalingSuggestion);
    type metadata accessor for MainActor();

    v13 = v11;
    v14 = static MainActor.shared.getter();
    v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v16 = (v26 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v14;
    *(v17 + 24) = v18;
    outlined init with take of JournalingSuggestion.ItemContent(v8, v17 + v15, type metadata accessor for JournalingSuggestion);
    v19 = (v17 + v16);
    *v19 = v28;
    v19[1] = v10;
    *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v13;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v27, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v17);

    _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v7, type metadata accessor for JournalingSuggestion);
  }

  v21 = v0[12];
  v20 = v0[13];
  v23 = v0[7];
  v22 = v0[8];

  v24 = v0[1];

  return v24();
}

{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_238A75000, v4, v5, "getAssetsError: %@", v8, 0xCu);
    outlined destroy of URL?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE71510](v9, -1, -1);
    MEMORY[0x23EE71510](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[3];
  v13 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*(v12 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
  v14 = v12 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
  if ((*(v12 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v14)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
  }

  v15 = v0[3];
  [*(v12 + v13) unlock];
  SuggestionSheetManager.servicePickerViewState()();
  v17 = v0[12];
  v16 = v0[13];
  v19 = v0[7];
  v18 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  }

  else
  {
    v5 = closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(type metadata accessor for JournalingSuggestion(0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v10;
  v7[9] = v9;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v10, v9);
}

uint64_t closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)()
{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.bridge);
  outlined init with copy of JournalingSuggestionsError(v2, v1, type metadata accessor for JournalingSuggestion);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(*v7 + 16);
    _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v7, type metadata accessor for JournalingSuggestion);
    *(v8 + 4) = v9;
    _os_log_impl(&dword_238A75000, v4, v5, "Calling picker .onCompletion with %ld assets", v8, 0xCu);
    MEMORY[0x23EE71510](v8, -1, -1);
  }

  else
  {
    _s21JournalingSuggestions0aB5ErrorOWOhTm_0(v0[6], type metadata accessor for JournalingSuggestion);
  }

  v10 = v0[3];

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:);
  v13 = v0[4];
  v14 = v0[2];

  return v16(v14);
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:), v4, v3);
}

{
  v1 = v0[7];
  v2 = v0[5];

  v3 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*(v2 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
  v4 = v2 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
  if ((*(v2 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v4)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  v6 = v0[5];
  v5 = v0[6];
  [*(v2 + v3) unlock];
  SuggestionSheetManager.servicePickerViewState()();

  v7 = v0[1];

  return v7();
}

id SuggestionSheetManager.init()()
{
  v1 = v0;
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_journalConfiguration;
  v11 = type metadata accessor for JournalConfiguration(0);
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  *&v0[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_controller] = 0;
  v20 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_pickerQueue;
  v12 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v19[1] = ")";
  v19[2] = v12;
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v21);
  *&v0[v20] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = &v0[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_viewState];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v0[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_transitionViewState];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  *&v1[v15] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v16 = &v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState];
  *v16 = 0;
  v16[8] = 1;
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_trackingTokens] = MEMORY[0x277D84F98];
  v17 = type metadata accessor for SuggestionSheetManager();
  v22.receiver = v1;
  v22.super_class = v17;
  return objc_msgSendSuper2(&v22, sel_init);
}

id SuggestionSheetManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionSheetManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SuggestionSheetManager@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SuggestionSheetManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5TQ0_;

  return v7(a1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}