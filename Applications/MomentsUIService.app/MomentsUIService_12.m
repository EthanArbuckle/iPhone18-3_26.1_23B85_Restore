uint64_t MOSuggestionCollectionViewModel.cellViewModelForWithoutOffset(indexPath:)(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 56);

  v5 = IndexPath.section.getter();
  if (v5 < 0 || v5 >= *(v4 + 16))
  {
LABEL_16:

    return 0;
  }

  v6 = *(v4 + 8 * v5 + 32);

  v7 = IndexPath.row.getter();
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < v8)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          goto LABEL_13;
        }

        if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v6 + 8 * v7 + 32);

          goto LABEL_9;
        }

        __break(1u);
LABEL_15:
        v8 = v7;
        v7 = a1;
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

  a1 = v7;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_13:
  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:

  return v9;
}

void MOSuggestionCollectionViewModel.setCheckmarkVisibilityFor(indexPath:visibility:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = IndexPath.section.getter();
  v11 = (*(*v2 + 632))();
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = IndexPath.row.getter();
  swift_beginAccess();
  v14 = v3[7];
  if (v13 >= *(v14 + 16))
  {
    goto LABEL_16;
  }

  if (v13 < 0)
  {
    goto LABEL_14;
  }

  v15 = *(v14 + 8 * v13 + 32);
  if (!(v15 >> 62))
  {
    if (v2 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (v2 < _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_6:
    v16 = v3[7];
    if (v13 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v16 + 8 * v13 + 32);
      if ((v17 & 0xC000000000000001) == 0)
      {
        if (v2 < 0)
        {
          __break(1u);
        }

        else if (v2 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v17 + 8 * v2 + 32);

          goto LABEL_11;
        }

        __break(1u);
        return;
      }
    }

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_11:
    (*(*v18 + 232))(a2 & 1);

    v20 = (*(*v3 + 368))(v19);
    if (v20)
    {
      v21 = v20;
      v20(a1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v21);
    }

    return;
  }

LABEL_16:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static MOAngelLogger.shared);
  (*(v7 + 16))(v9, a1, v6);
  swift_retain_n();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136315394;
    v27 = IndexPath.debugDescription.getter();
    v29 = v28;
    (*(v7 + 8))(v9, v6);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v32);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2048;
    v31 = *(v3[7] + 16);

    *(v25 + 14) = v31;

    _os_log_impl(&_mh_execute_header, v23, v24, "[MOSuggestionCollectionViewModel] attempt to setCheckmarkVisibilityFor for invalid indexPath=%s, sectionedSuggestionCellViewModels.count=%ld", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

void MOSuggestionCollectionViewModel.setInteractionStateFor(indexPath:interaction:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = IndexPath.section.getter();
  v11 = (*(*v2 + 632))();
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = IndexPath.row.getter();
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    v2 = v14;
    if (v14 < 0)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v15 = v3[7];
    if (v13 >= *(v15 + 16))
    {
      goto LABEL_22;
    }

    v16 = *(v15 + 8 * v13 + 32);
    if (!(v16 >> 62))
    {
      if (v2 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  if (v2 < _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_7:
    v17 = v3[7];
    v18 = *(v17 + 16);
    if (a2)
    {
      if (v13 < v18)
      {
        v19 = *(v17 + 8 * v13 + 32);
        if ((v19 & 0xC000000000000001) == 0)
        {
          if (v2 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = *(v19 + 8 * v2 + 32);

LABEL_12:
            (*(*v20 + 256))(1);
            goto LABEL_18;
          }

          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

LABEL_30:

        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_12;
      }

      __break(1u);
    }

    else if (v13 < v18)
    {
      v21 = *(v17 + 8 * v13 + 32);
      if ((v21 & 0xC000000000000001) != 0)
      {

        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v22 = *(v21 + 8 * v2 + 32);
      }

      (*(*v22 + 232))(1);
LABEL_18:

      v24 = (*(*v3 + 368))(v23);
      if (v24)
      {
        v25 = v24;
        v24(a1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v25);
      }

      return;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_22:
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static MOAngelLogger.shared);
  (*(v7 + 16))(v9, a1, v6);
  swift_retain_n();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136315394;
    v31 = IndexPath.debugDescription.getter();
    v33 = v32;
    (*(v7 + 8))(v9, v6);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v37);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2048;
    swift_beginAccess();
    v35 = *(v3[7] + 16);

    *(v29 + 14) = v35;

    _os_log_impl(&_mh_execute_header, v27, v28, "[MOSuggestionCollectionViewModel] attempt to setInteractionStateFor for invalid indexPath=%s, sectionedSuggestionCellViewModels.count=%ld", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewModel.createSuggestionCellViewModels()()
{
  v1 = v0;
  v111 = type metadata accessor for UUID();
  v106 = *(v111 - 8);
  v2 = __chkstk_darwin(v111);
  v104 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v103 = &v99 - v5;
  __chkstk_darwin(v4);
  v115 = &v99 - v6;
  swift_beginAccess();
  v7 = *(v0 + 56);
  v101 = *(v7 + 16);
  v112 = v1;
  if (!v101)
  {
LABEL_34:
    if (one-time initialization token for shared != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_35;
  }

  v100 = v7 + 32;
  v105 = v106 + 16;
  v108 = (v106 + 8);

  v8 = 0;
  v99 = v7;
  while (1)
  {
    if (v8 >= *(v7 + 16))
    {
      goto LABEL_73;
    }

    v9 = *(v100 + 8 * v8);
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        break;
      }

      goto LABEL_4;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      break;
    }

LABEL_4:
    if (++v8 == v101)
    {

      goto LABEL_34;
    }
  }

  v102 = v8;
  v113 = (v9 & 0xC000000000000001);
  v107 = v9 & 0xFFFFFFFFFFFFFF8;

  v11 = 0;
  v109 = v10;
  v110 = v9;
  while (1)
  {
    if (v113)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_18;
    }

    if (v11 >= *(v107 + 16))
    {
      goto LABEL_71;
    }

    v14 = *(v9 + 8 * v11 + 32);

    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

LABEL_18:
    v15 = *(*v14 + 224);
    if ((v15() & 1) == 0 && ((*(*v14 + 248))() & 1) == 0)
    {
      goto LABEL_11;
    }

    v114 = v13;
    v16 = v115;
    v17 = (*(*v14 + 344))();
    v18 = (v15)(v17);
    v19 = (*(*v14 + 248))();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = *(v1 + 72);
    v21 = v122;
    *(v1 + 72) = 0x8000000000000000;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_70;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v30 = v122;
        if ((v22 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v30 = v122;
        if ((v27 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v115);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_83;
      }

      v23 = v28;
      v30 = v122;
      if ((v27 & 1) == 0)
      {
LABEL_27:
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v31 = v106;
        v1 = v115;
        v32 = v111;
        (*(v106 + 16))(v30[6] + *(v106 + 72) * v23, v115, v111);
        v33 = (v30[7] + 2 * v23);
        *v33 = v18 & 1;
        v33[1] = v19 & 1;
        (*(v31 + 8))(v1, v32);
        v34 = v30[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_72;
        }

        v30[2] = v36;
        goto LABEL_10;
      }
    }

    v12 = (v30[7] + 2 * v23);
    *v12 = v18 & 1;
    v12[1] = v19 & 1;
    (*v108)(v115, v111);
LABEL_10:
    v1 = v112;
    *(v112 + 72) = v30;

    swift_endAccess();
    v10 = v109;
    v9 = v110;
    v13 = v114;
LABEL_11:

    ++v11;
    if (v13 == v10)
    {

      v7 = v99;
      v8 = v102;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  swift_once();
LABEL_35:
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static MOAngelLogger.shared);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v123[0] = v41;
    *v40 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_SbtMd);
    v42 = v1;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v43 = Dictionary.debugDescription.getter();
    v45 = v44;

    v46 = v43;
    v1 = v42;
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, v123);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "[MOSuggestionCollectionViewModel] stateBackup=%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  *(v1 + 56) = _swiftEmptyArrayStorage;

  v124 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v48 = *(v1 + 48);
  if (v48 >> 62)
  {
    v93 = *(v1 + 48);
    v94 = _CocoaArrayWrapper.endIndex.getter();
    v48 = v93;
    v49 = v94;
    if (!v94)
    {
      goto LABEL_76;
    }

LABEL_39:
    if (v49 < 1)
    {
      __break(1u);
LABEL_83:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v50 = (*v1 + 440);
    v113 = *v50;
    LODWORD(v110) = *(v1 + 16);
    v51 = *(v1 + 24);
    v108 = (v48 & 0xC000000000000001);
    v109 = v51;
    v107 = v50;
    v52 = v48;

    swift_beginAccess();
    v53 = v52;
    v54 = 0;
    v55 = (v106 + 8);
    v56 = &selRef_isLocationShiftRequiredForCoordinate_;
    v114 = v49;
    v115 = v52;
    v106 += 8;
    while (1)
    {
      if (v108)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v53 + 8 * v54 + 32);
      }

      v58 = v57;
      v59 = [v57 v56[109]];
      v60 = v103;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = *(v112 + 72);
      if (*(v61 + 16))
      {

        v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60);
        if (v63)
        {
          v64 = *(*(v61 + 56) + 2 * v62);
          v65 = *v55;
          (*v55)(v60, v111);

          goto LABEL_49;
        }
      }

      v65 = *v55;
      (*v55)(v60, v111);
      v64 = 0;
LABEL_49:
      v66 = [v58 v56[109]];
      v67 = v104;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = *(v112 + 72);
      if (*(v68 + 16))
      {

        v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
        if (v70)
        {
          v71 = *(*(v68 + 56) + 2 * v69 + 1);
          v65(v67, v111);

          goto LABEL_54;
        }
      }

      v65(v67, v111);
      v71 = 0;
LABEL_54:
      type metadata accessor for MOSuggestionCollectionViewCellViewModel();
      v72 = swift_allocObject();
      *(v72 + 32) = 0;
      *(v72 + 24) = 0;
      *(v72 + 40) = 0xE000000000000000;
      *(v72 + 48) = 0;
      *(v72 + 64) = 0;
      *(v72 + 56) = 0xE000000000000000;
      *(v72 + 66) = 0;
      *(v72 + 72) = 0;
      *(v72 + 16) = v58;
      swift_beginAccess();
      *(v72 + 64) = v64;
      swift_beginAccess();
      *(v72 + 65) = v71;
      *(v72 + 80) = v110;
      *(v72 + 88) = v109;
      v73 = v58;
      v74 = [v73 interfaceType];
      v75 = *(v72 + 16);
      if (v74 == 10)
      {
        if ([v75 interfaceType] != 10)
        {
          goto LABEL_64;
        }

        v76 = [*(v72 + 16) labels];
        if (!v76)
        {
          goto LABEL_64;
        }

        v77 = v76;
        v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!v78[2])
        {
          goto LABEL_63;
        }

        v79 = v78[4];
        v80 = v78[5];

        v120 = v79;
        v121 = v80;
        v118 = 10;
        v119 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v81 = StringProtocol.components<A>(separatedBy:)();

        if (!v81[2])
        {
          goto LABEL_63;
        }

        v82 = v81[4];
        v83 = v81[5];

        v120 = v82;
        v121 = v83;
        v118 = 8224;
        v119 = 0xE200000000000000;
        v116 = 32;
        v117 = 0xE100000000000000;
        v84 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v86 = v85;
      }

      else
      {
        v87 = [v75 labels];
        if (!v87)
        {
          goto LABEL_64;
        }

        v88 = v87;
        v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!v89[2])
        {
LABEL_63:

LABEL_64:
          v84 = 0;
          v86 = 0xE000000000000000;
          goto LABEL_65;
        }

        v84 = v89[4];
        v86 = v89[5];
      }

LABEL_65:
      swift_beginAccess();
      *(v72 + 32) = v84;
      *(v72 + 40) = v86;

      v91 = v113(v90);
      swift_beginAccess();
      *(v72 + 66) = v91 & 1;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v54;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v53 = v115;
      v55 = v106;
      v56 = &selRef_isLocationShiftRequiredForCoordinate_;
      if (v114 == v54)
      {
        v92 = v124;

        v1 = v112;
        goto LABEL_77;
      }
    }
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    goto LABEL_39;
  }

LABEL_76:
  v92 = _swiftEmptyArrayStorage;
LABEL_77:
  swift_beginAccess();
  v95 = *(v1 + 56);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v95;
  if ((v96 & 1) == 0)
  {
    v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95[2] + 1, 1, v95);
    *(v1 + 56) = v95;
  }

  v98 = v95[2];
  v97 = v95[3];
  if (v98 >= v97 >> 1)
  {
    v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v95);
  }

  v95[2] = v98 + 1;
  v95[v98 + 4] = v92;
  *(v1 + 56) = v95;
  swift_endAccess();
}

uint64_t MOSuggestionCollectionViewCellViewModel.__allocating_init(_:clientDetails:showAdded:showSaved:)(void *a1, char a2, uint64_t a3, char a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0xE000000000000000;
  *(v10 + 64) = 0;
  *(v10 + 66) = 0;
  *(v10 + 72) = 0;
  *(v10 + 16) = a1;
  swift_beginAccess();
  *(v10 + 64) = a4;
  swift_beginAccess();
  *(v10 + 65) = a5;
  *(v10 + 80) = a2;
  *(v10 + 88) = a3;
  v11 = a1;
  v12 = MOSuggestionCollectionViewCellViewModel.bundleTitle.getter();
  v14 = v13;

  swift_beginAccess();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;

  return v10;
}

Swift::Void __swiftcall MOSuggestionCollectionViewModel.fetchCollectionViewBundles()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os23OSSignpostIntervalStateC_AA0B2IDVtSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = (&v22 - v3);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  if (one-time initialization token for bundleProcessing != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static MOAngelSignposter.bundleProcessing);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v16, "UIService_FetchSuggestionBundles", "", v15, 2u);
  }

  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v17 = OSSignpostIntervalState.init(id:isOpen:)();
  v18 = (*(*v0 + 648))(1);
  (*(*v0 + 808))(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os23OSSignpostIntervalStateC_AA0B2IDVtMd);
  v20 = *(v19 + 48);
  *v4 = v17;
  (*(v6 + 32))(v4 + v20, v11, v5);
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  v21 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_currentFetchSignpostState;
  swift_beginAccess();
  outlined assign with take of Date?(v4, v1 + v21, &_s2os23OSSignpostIntervalStateC_AA0B2IDVtSgMd);
  swift_endAccess();
}

uint64_t MOSuggestionCollectionViewModel.refreshAndFetchBundles(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  if (one-time initialization token for pullToRefresh != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static MOAngelSignposter.pullToRefresh);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v16, "SuggestionCollectionViewModelPullToRefresh", "", v15, 2u);
  }

  v17 = *(v6 + 16);
  v28 = v5;
  v17(v9, v11, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v18 = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = static MOEventBundleStore.shared;
  v20 = *(v3 + 16);
  v21 = *(v3 + 24);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v24 = v27;
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a2;
  v23[5] = v18;
  v25 = one-time initialization token for defaultQueue;

  if (v25 != -1)
  {
    swift_once();
  }

  (*(*v19 + 592))(v20, v21, static MOEventBundleStore.defaultQueue, partial apply for closure #1 in MOSuggestionCollectionViewModel.refreshAndFetchBundles(completionHandler:), v23);

  (*(v6 + 8))(v11, v28);
}

uint64_t closure #1 in MOSuggestionCollectionViewModel.refreshAndFetchBundles(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v34 = a1;
  v35 = a2;
  v7 = type metadata accessor for OSSignpostError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OSSignpostID();
  v11 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = swift_allocObject();
    v32 = v13;
    v33 = a5;
    v17 = v10;
    v18 = v11;
    v19 = a4;
    v20 = v8;
    v21 = v7;
    v22 = v16;
    v23 = v34;
    *(v16 + 16) = v15;
    *(v16 + 24) = v23;

    MOSuggestionCollectionViewModel.validateConditions(additionalBundleIds:completion:)(v35, closure #1 in MOSuggestionCollectionViewModel.showLatestBundles(bundles:additionalBundleIds:)partial apply, v22);

    v7 = v21;
    v8 = v20;
    a4 = v19;
    v11 = v18;
    v10 = v17;
    v13 = v32;
  }

  a4(Strong);
  if (one-time initialization token for pullToRefresh != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static MOAngelSignposter.pullToRefresh);
  v25 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v26 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v8 + 88))(v10, v7) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v27 = "[Error] Interval already ended";
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v27 = "";
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v29, "SuggestionCollectionViewModelPullToRefresh", v27, v28, 2u);
  }

  (*(v11 + 8))(v13, v36);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 568))(1);
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionCollectionViewModel.fetchBundles()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MOEventBundleStore.shared;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = one-time initialization token for defaultQueue;

  if (v7 != -1)
  {
    swift_once();
  }

  (*(*v2 + 600))(v3, v4, static MOEventBundleStore.defaultQueue, partial apply for closure #1 in MOSuggestionCollectionViewModel.fetchBundles(), v5, partial apply for closure #2 in MOSuggestionCollectionViewModel.fetchBundles(), v6);
}

uint64_t closure #1 in MOSuggestionCollectionViewModel.fetchBundles()(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 704))(a1 & 1);
  }

  return result;
}

uint64_t closure #2 in MOSuggestionCollectionViewModel.fetchBundles()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;

    MOSuggestionCollectionViewModel.validateConditions(additionalBundleIds:completion:)(a2, partial apply for closure #1 in MOSuggestionCollectionViewModel.showLatestBundles(bundles:additionalBundleIds:), v6);
  }

  return result;
}

uint64_t closure #1 in MOSuggestionCollectionViewModel.showLatestBundles(bundles:additionalBundleIds:)(void *a1, unint64_t a2)
{
  v36 = type metadata accessor for OSSignpostError();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = type metadata accessor for OSSignpostID();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os23OSSignpostIntervalStateC_AA0B2IDVtSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v37 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v32[-v13];
  swift_beginAccess();
  a1[6] = a2;

  v16 = *(*a1 + 440);
  if (((v16)(v15) & 1) == 0)
  {
    MOSuggestionCollectionViewModel.groupViewModelsByRecommended()();
    goto LABEL_7;
  }

  if (v16())
  {
    if (!(a2 >> 62))
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_6:
      MOSuggestionCollectionViewModel.groupViewModelsBundlesByDate()();
    }
  }

LABEL_7:
  v17 = (*(*a1 + 648))(0);
  v18 = (*(*a1 + 344))(v17);
  if (v18)
  {
    v19 = v18;
    v18(1, 0);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v19);
  }

  v20 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_currentFetchSignpostState;
  swift_beginAccess();
  outlined init with copy of (String, Date?)(a1 + v20, v14, &_s2os23OSSignpostIntervalStateC_AA0B2IDVtSgMd);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os23OSSignpostIntervalStateC_AA0B2IDVtMd);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s2os23OSSignpostIntervalStateC_AA0B2IDVtSgMd);
  }

  v24 = &v14[*(v21 + 48)];
  v34 = *(v7 + 8);
  v35 = v7 + 8;
  v34(v24, v38);
  if (one-time initialization token for bundleProcessing != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v25, static MOAngelSignposter.bundleProcessing);
  v26 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v33 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v27 = v36;
    if ((*(v4 + 88))(v6, v36) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v27);
      v28 = "";
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v33, v30, "UIService_FetchSuggestionBundles", v28, v29, 2u);
  }

  v34(v9, v38);
  v31 = v37;
  (*(v22 + 56))(v37, 1, 1, v21);
  swift_beginAccess();
  outlined assign with take of Date?(v31, a1 + v20, &_s2os23OSSignpostIntervalStateC_AA0B2IDVtSgMd);
  return swift_endAccess();
}

Swift::Void __swiftcall MOSuggestionCollectionViewModel.sortBundles(with:scrollToTop:scrollToHeaderOffset:)(MomentsUIService::SegmentType with, Swift::Bool scrollToTop, Swift::Bool scrollToHeaderOffset)
{
  v6 = (*(*v3 + 448))(with & 1);
  if ((*(*v3 + 440))(v6))
  {
    v7 = MOSuggestionCollectionViewModel.groupViewModelsBundlesByDate()();
  }

  else
  {
    v7 = MOSuggestionCollectionViewModel.groupViewModelsByRecommended()();
  }

  v8 = (*(*v3 + 344))(v7);
  if (v8)
  {
    v9 = v8;
    v8(scrollToTop, scrollToHeaderOffset);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
  }
}

uint64_t MOSuggestionCollectionViewModel.groupViewModelsByRecommended()()
{
  v1 = v0;
  swift_beginAccess();
  v21[0] = v0[6];

  specialized MutableCollection<>.sort(by:)(v21, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  v0[6] = v21[0];

  (*(*v0 + 784))(v2);
  swift_beginAccess();
  v3 = v0[7];
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static MOAngelLogger.shared);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = specialized FlattenSequence<>.startIndex.getter(v3);
    *(v8 + 4) = specialized FlattenSequence<>.distance(from:to:)(v9, v11, v10 & 1, *(v3 + 16), 0, 1, v3);

    _os_log_impl(&_mh_execute_header, v6, v7, "[Bundles] Begin Filtering suggestions by recommended eligibility, bundle count before filter:%ld", v8, 0xCu);
  }

  else
  {
  }

  v12 = specialized Sequence.filter(_:)(v3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    if (v12 >> 62)
    {
      v20 = v15;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v20;
    }

    else
    {
      v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Bundles] Filtering suggestions by recommended eligibility, bundle count after filter:%ld", v15, 0xCu);
  }

  v17 = MOSuggestionCollectionViewModel.reorderEvergreenBundles(recommendedViewModels:)(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay16MomentsUIService030MOSuggestionCollectionViewCellH5ModelCGGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002A48B0;
  *(v18 + 32) = v17;
  v1[7] = v18;
}

uint64_t specialized Sequence.filter(_:)(uint64_t result)
{
  v14 = 0;
  v18 = _swiftEmptyArrayStorage;
  v12 = result + 32;
  v13 = result;
LABEL_25:
  while (1)
  {
    v9 = *(v13 + 16);
    if (v14 == v9)
    {
      break;
    }

    if (v14 >= v9)
    {
      goto LABEL_32;
    }

    v10 = *(v12 + 8 * v14);

    v11 = v10;
    ++v14;
    if (v10)
    {
      v1 = 0;
      v2 = v10 >> 62;
      if (!(v10 >> 62))
      {
        goto LABEL_5;
      }

LABEL_3:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v1 != result)
      {
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v3 = result;
            if (__OFADD__(v1, 1))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v3 = *(v11 + 8 * v1 + 32);

            if (__OFADD__(v1, 1))
            {
LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              return result;
            }
          }

          v4 = [*(v3 + 16) rankingDictionary];
          if (!v4)
          {
            goto LABEL_18;
          }

          v5 = v4;
          v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          AnyHashable.init<A>(_:)();
          if (!*(v6 + 16))
          {
            break;
          }

          v7 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
          if ((v8 & 1) == 0)
          {
            break;
          }

          outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v16);
          outlined destroy of AnyHashable(v15);

          if (!*(&v17 + 1))
          {
            goto LABEL_19;
          }

          if (swift_dynamicCast() && (v15[0] - 1) < 2)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v1;
            if (v2)
            {
              goto LABEL_3;
            }

            goto LABEL_5;
          }

LABEL_20:

          ++v1;
          if (v2)
          {
            goto LABEL_3;
          }

LABEL_5:
          result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v1 == result)
          {
            goto LABEL_25;
          }
        }

        outlined destroy of AnyHashable(v15);
LABEL_18:
        v16 = 0u;
        v17 = 0u;
LABEL_19:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v16, &_sypSgMd);
        goto LABEL_20;
      }
    }
  }

  return v18;
}

{
  v14 = 0;
  v18 = _swiftEmptyArrayStorage;
  v12 = result + 32;
  v13 = result;
LABEL_25:
  while (1)
  {
    v9 = *(v13 + 16);
    if (v14 == v9)
    {
      break;
    }

    if (v14 >= v9)
    {
      goto LABEL_32;
    }

    v10 = *(v12 + 8 * v14);

    v11 = v10;
    ++v14;
    if (v10)
    {
      v1 = 0;
      v2 = v10 >> 62;
      if (!(v10 >> 62))
      {
        goto LABEL_5;
      }

LABEL_3:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v1 != result)
      {
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v3 = result;
            if (__OFADD__(v1, 1))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v3 = *(v11 + 8 * v1 + 32);

            if (__OFADD__(v1, 1))
            {
LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              return result;
            }
          }

          v4 = [*(v3 + 16) rankingDictionary];
          if (!v4)
          {
            goto LABEL_18;
          }

          v5 = v4;
          v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          AnyHashable.init<A>(_:)();
          if (!*(v6 + 16))
          {
            break;
          }

          v7 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
          if ((v8 & 1) == 0)
          {
            break;
          }

          outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v16);
          outlined destroy of AnyHashable(v15);

          if (!*(&v17 + 1))
          {
            goto LABEL_19;
          }

          if (swift_dynamicCast() && (v15[0] | 2) == 3)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v1;
            if (v2)
            {
              goto LABEL_3;
            }

            goto LABEL_5;
          }

LABEL_20:

          ++v1;
          if (v2)
          {
            goto LABEL_3;
          }

LABEL_5:
          result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v1 == result)
          {
            goto LABEL_25;
          }
        }

        outlined destroy of AnyHashable(v15);
LABEL_18:
        v16 = 0u;
        v17 = 0u;
LABEL_19:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v16, &_sypSgMd);
        goto LABEL_20;
      }
    }
  }

  return v18;
}

unint64_t MOSuggestionCollectionViewModel.reorderEvergreenBundles(recommendedViewModels:)(unint64_t a1)
{
  v145 = type metadata accessor for UUID();
  v2 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_31;
  }

LABEL_2:
  v4 = type metadata accessor for Logger();
  v157 = __swift_project_value_buffer(v4, static MOAngelLogger.shared);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Bundles] Constructing reordered recommended suggestions", v7, 2u);
  }

  v8 = _swiftEmptyArrayStorage;
  v160 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
LABEL_33:
      v19 = _swiftEmptyArrayStorage;

      v18 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_33;
    }
  }

  v156 = v2;
  v10 = 0;
  v11 = a1 & 0xC000000000000001;
  v2 = &selRef_data;
  while (!v11)
  {
    if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_2;
    }

    v12 = *(a1 + 8 * v10 + 32);

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    if ([*(v12 + 16) interfaceType] == 11)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_17;
    }
  }

  v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v13 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v14 = v160;
  v160 = _swiftEmptyArrayStorage;
  v146 = v14;

  v15 = 0;
  while (2)
  {
    if (v11)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      goto LABEL_23;
    }

    if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v16 = *(a1 + 8 * v15 + 32);

    v17 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
LABEL_23:
      if ([*(v16 + 16) interfaceType] == 11)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v15;
      if (v17 == v9)
      {
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_28:
  v18 = v160;
  v19 = v146;
  v2 = v156;
  v8 = _swiftEmptyArrayStorage;
LABEL_34:
  v162 = v18;

  v20 = Logger.logObject.getter();
  LOBYTE(v21) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
    {
      v23 = *(v19 + 16);
      goto LABEL_38;
    }

    goto LABEL_289;
  }

  v24 = v18 & 0x4000000000000000;
  while (2)
  {
    v161 = v8;
    v26 = v18 >= 0 && v24 == 0;
    v22 = !v26;
    if (v26)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_66;
      }

      goto LABEL_52;
    }

LABEL_232:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_52:
      v8 = v18 & 0xC000000000000001;
      if ((v18 & 0xC000000000000001) != 0)
      {
        goto LABEL_286;
      }

      if (*(v18 + 16))
      {
        v27 = *(v18 + 32);

        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_288;
    }

LABEL_66:
    swift_beginAccess();
    v18 = v162;
    v148 = v162 >> 62;
    if (v162 >> 62)
    {
      v153 = _CocoaArrayWrapper.endIndex.getter();
      if (!v153)
      {
        goto LABEL_235;
      }

LABEL_68:
      if (v153 >= 1)
      {
        v152 = v18 & 0xC000000000000001;
        v133 = v18 + 32;
        if (v18 < 0)
        {
          v29 = v18;
        }

        else
        {
          v29 = v18 & 0xFFFFFFFFFFFFFF8;
        }

        v138 = v29;
        v142 = (v2 + 8);
        v132 = v19 & 0x4000000000000000;
        v30 = (v19 >> 62) & 1;
        if (v19 < 0)
        {
          LODWORD(v30) = 1;
        }

        v139 = v30;
        v137 = v19 & 0xC000000000000001;
        v146 = v19;
        v136 = (v19 + 32);
        v140 = v18 & 0xFFFFFFFFFFFFFF8;
        if (v18 < 0)
        {
          v31 = v18;
        }

        else
        {
          v31 = v18 & 0xFFFFFFFFFFFFFF8;
        }

        v134 = v31;

        v151 = 0;
        v135 = 0;
        v32 = 0;
        v149 = 0;
        v150 = 0;
        v22 = 0;
        v33 = 0;
        v8 = 1;
        *&v34 = 136315906;
        v141 = v34;
        v143 = v18;
        while (1)
        {
          if (v152)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            if (v8 > 2)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v35 = *(v18 + 8 * v33 + 32);

            if (v8 > 2)
            {
LABEL_82:
              if (v8 != 3 && ((v8 + 1) & 3) != 0)
              {
                goto LABEL_140;
              }

              if (v139)
              {
                if (!_CocoaArrayWrapper.endIndex.getter())
                {
                  goto LABEL_140;
                }

                v36 = _CocoaArrayWrapper.endIndex.getter();
LABEL_86:
                if (v151 >= v36)
                {
                  if (v137)
                  {
                    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (!*(v146 + 16))
                    {
                      goto LABEL_224;
                    }

                    v21 = *v136;
                  }

                  (*(v21->isa + 20))(3);
                  v20 = &v161;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v2 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v37 = __OFADD__(v8++, 1);
                  if (v37)
                  {
                    goto LABEL_222;
                  }

                  v151 = 1;
                  v135 = 1;
                }

                else
                {
                  if (v137)
                  {
                    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v151 < 0)
                    {
                      goto LABEL_223;
                    }

                    if (v151 >= *(v146 + 16))
                    {
                      goto LABEL_226;
                    }

                    v21 = v136[v151];
                  }

                  (*(v21->isa + 20))(3);
                  v20 = &v161;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v2 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v37 = __OFADD__(v8++, 1);
                  if (v37)
                  {
                    goto LABEL_225;
                  }

                  ++v151;
                }

                v21 = Logger.logObject.getter();
                v19 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v21, v19))
                {
                  v38 = swift_slowAlloc();
                  v156 = v32;
                  v39 = v38;
                  v40 = swift_slowAlloc();
                  v154 = v22;
                  v159 = v40;
                  *v39 = v141;
                  v41 = *(*v35 + 344);
                  v155 = v8;
                  v42 = v144;
                  v41();
                  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
                  v43 = v145;
                  v44 = dispatch thunk of CustomStringConvertible.description.getter();
                  v46 = v45;
                  v47 = v43;
                  v18 = v143;
                  (*v142)(v42, v47);
                  v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v159);

                  *(v39 + 4) = v48;
                  *(v39 + 12) = 2080;
                  v158 = MOEventBundle.visibilityCategory.getter();
                  type metadata accessor for MOVisibilityCategoryForUI(0);
                  v49 = String.init<A>(describing:)();
                  v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v159);

                  *(v39 + 14) = v51;
                  *(v39 + 22) = 2048;
                  *(v39 + 24) = MOEventBundle.bundleRankingScore.getter();
                  *(v39 + 32) = 2080;
                  v8 = v155;
                  LOBYTE(v158) = (*(*v35 + 152))();
                  v52 = String.init<A>(describing:)();
                  v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v159);

                  *(v39 + 34) = v2;
                  _os_log_impl(&_mh_execute_header, v21, v19, "[Bundles] inserted evergreen suggestion: %s into Recommended with ranking category: %s, ranking score: %f, with cell style: %s", v39, 0x2Au);
                  swift_arrayDestroy();
                  v22 = v154;

                  v32 = v156;
                }

                if (v22)
                {
                  goto LABEL_141;
                }

                v149 = 0;
                v150 = 0;
              }

              else
              {
                v36 = *(v146 + 16);
                if (v36)
                {
                  goto LABEL_86;
                }

LABEL_140:
                if (v22)
                {
LABEL_141:
                  v20 = v35;
                  (*(*v35 + 160))(1);
                  v37 = __OFADD__(v8++, 1);
                  if (v37)
                  {
                    goto LABEL_219;
                  }

                  v149 = 0;
                  v150 = 0;
                  v22 = 0;
LABEL_167:

                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v2 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v20 = v157;
                  v21 = Logger.logObject.getter();
                  v19 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v21, v19))
                  {
                    v80 = swift_slowAlloc();
                    v156 = v32;
                    v81 = v80;
                    v82 = swift_slowAlloc();
                    v154 = v22;
                    v159 = v82;
                    *v81 = v141;
                    v83 = *(*v35 + 344);
                    v155 = v8;
                    v84 = v144;
                    v83();
                    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
                    v85 = v145;
                    v86 = dispatch thunk of CustomStringConvertible.description.getter();
                    v88 = v87;
                    v89 = v85;
                    v18 = v143;
                    (*v142)(v84, v89);
                    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v159);

                    *(v81 + 4) = v90;
                    *(v81 + 12) = 2080;
                    v158 = MOEventBundle.visibilityCategory.getter();
                    type metadata accessor for MOVisibilityCategoryForUI(0);
                    v91 = String.init<A>(describing:)();
                    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v159);

                    *(v81 + 14) = v93;
                    *(v81 + 22) = 2048;
                    *(v81 + 24) = MOEventBundle.bundleRankingScore.getter();
                    *(v81 + 32) = 2080;
                    v8 = v155;
                    LOBYTE(v158) = (*(*v35 + 152))();
                    v94 = String.init<A>(describing:)();
                    v20 = v95;
                    v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v159);

                    *(v81 + 34) = v2;
                    _os_log_impl(&_mh_execute_header, v21, v19, "[Bundles] inserted suggestion: %s into Recommended with ranking category: %s, ranking score: %f, with cell style: %s", v81, 0x2Au);
                    swift_arrayDestroy();
                    v22 = v154;

                    v96 = v156;

                    v37 = __OFADD__(v96, 1);
                    v32 = v96 + 1;
                    if (v37)
                    {
                      goto LABEL_218;
                    }
                  }

                  else
                  {

                    v37 = __OFADD__(v32++, 1);
                    if (v37)
                    {
                      goto LABEL_218;
                    }
                  }

                  goto LABEL_79;
                }
              }

              if (((*(*v147 + 872))(v35) & 1) != 0 && (v150 = v149, v149 < 2))
              {
                v2 = v149;
LABEL_148:
                v20 = v35;
                (*(*v35 + 160))(0);
                v37 = __OFADD__(v8++, 1);
                if (v37)
                {
                  goto LABEL_220;
                }

                v75 = v2 + 1;
                if (__OFADD__(v2, 1))
                {
                  goto LABEL_221;
                }
              }

              else
              {
                v74 = (*v147 + 848);
                v2 = *v74;
                v22 = v74;
                if ((*v74)(v35))
                {
                  v2 = v150;
                  goto LABEL_148;
                }

                v20 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_227;
                }

                if (v148)
                {
                  v76 = _CocoaArrayWrapper.endIndex.getter();
                  if ((v76 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_228;
                  }
                }

                else
                {
                  v76 = *(v140 + 16);
                }

                if (v20 >= v76)
                {
                  v20 = v35;
                  (*(*v35 + 160))(0);
                  v37 = __OFADD__(v8++, 1);
                  if (v37)
                  {
                    __break(1u);
LABEL_252:
                    __break(1u);
LABEL_253:
                    __break(1u);
                    goto LABEL_254;
                  }

                  v75 = v150 + 1;
                  if (__OFADD__(v150, 1))
                  {
                    goto LABEL_253;
                  }
                }

                else
                {
                  if (v152)
                  {

                    v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v20 >= *(v140 + 16))
                    {
                      goto LABEL_252;
                    }

                    v77 = *(v133 + 8 * v20);
                  }

                  v78 = (v2)(v77);
                  v79 = *(*v35 + 160);
                  if ((v78 & 1) == 0)
                  {
                    v22 = 1;
                    v79(1);

                    goto LABEL_167;
                  }

                  v20 = v35;
                  v79(0);

                  v37 = __OFADD__(v8++, 1);
                  if (v37)
                  {
                    __break(1u);
LABEL_293:
                    __break(1u);
LABEL_294:
                    __break(1u);
LABEL_295:
                    v21 = _CocoaArrayWrapper.endIndex.getter();
                    goto LABEL_58;
                  }

                  v75 = v150 + 1;
                  if (__OFADD__(v150, 1))
                  {
                    goto LABEL_293;
                  }
                }
              }

              v22 = 0;
              v149 = v75;
              v150 = v75;
              goto LABEL_167;
            }
          }

          if (v148)
          {
            if (_CocoaArrayWrapper.endIndex.getter() < 3)
            {
LABEL_98:
              (*(*v35 + 160))(0);
              goto LABEL_131;
            }
          }

          else if (*(v140 + 16) < 3)
          {
            goto LABEL_98;
          }

          if (v8 != 1)
          {
            if (v22)
            {
              (*(*v35 + 160))(1);
              goto LABEL_130;
            }

            v20 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_229;
            }

            if (v148)
            {
              v54 = _CocoaArrayWrapper.endIndex.getter();
              if ((v54 & 0x8000000000000000) != 0)
              {
                goto LABEL_230;
              }
            }

            else
            {
              v54 = *(v140 + 16);
            }

            if (v20 >= v54)
            {
              v55 = v147;
              v2 = v147 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
            }

            else
            {
              if (v152)
              {

                v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v20 >= *(v140 + 16))
                {
                  goto LABEL_297;
                }

                v21 = *(v133 + 8 * v20);
              }

              v55 = v147;
              if ((*(*v147 + 848))(v21))
              {
                (*(*v35 + 160))(0);

                goto LABEL_130;
              }

              v2 = v55 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
            }

            v56 = (*(*v55 + 848))(v35);
            v57 = *(*v35 + 160);
            if ((v56 & 1) == 0)
            {
              v22 = 1;
              v57(1);
              goto LABEL_132;
            }

            v57(0);
LABEL_130:
            v22 = 0;
LABEL_131:
            ++v8;
            goto LABEL_132;
          }

          (*(*v35 + 160))(0);
          v8 = 2;
LABEL_132:

          v20 = &v161;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v2 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v37 = __OFADD__(v32++, 1);
          if (v37)
          {
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
            goto LABEL_232;
          }

          v20 = v157;
          v21 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v21, v19))
          {
            v58 = swift_slowAlloc();
            v156 = v32;
            v59 = v58;
            v60 = swift_slowAlloc();
            v154 = v22;
            v159 = v60;
            *v59 = v141;
            v61 = *(*v35 + 344);
            v155 = v8;
            v62 = v144;
            v61();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
            v63 = v145;
            v64 = dispatch thunk of CustomStringConvertible.description.getter();
            v66 = v65;
            v67 = v63;
            v18 = v143;
            (*v142)(v62, v67);
            v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v159);

            *(v59 + 4) = v68;
            *(v59 + 12) = 2080;
            v158 = MOEventBundle.visibilityCategory.getter();
            type metadata accessor for MOVisibilityCategoryForUI(0);
            v69 = String.init<A>(describing:)();
            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v159);

            *(v59 + 14) = v71;
            *(v59 + 22) = 2048;
            *(v59 + 24) = MOEventBundle.bundleRankingScore.getter();
            *(v59 + 32) = 2080;
            v8 = v155;
            LOBYTE(v158) = (*(*v35 + 152))();
            v72 = String.init<A>(describing:)();
            v20 = v73;
            v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v159);

            *(v59 + 34) = v2;
            _os_log_impl(&_mh_execute_header, v21, v19, "[Bundles] inserted suggestion: %s into Top Lockup Recommended with ranking category: %s, ranking score: %f, with cell style: %s", v59, 0x2Au);
            swift_arrayDestroy();
            v22 = v154;

            v32 = v156;
          }

          else
          {
          }

LABEL_79:
          if (v153 == ++v33)
          {

            v19 = v146;
            v97 = v132;
            if ((v135 & 1) == 0)
            {
              goto LABEL_236;
            }

            goto LABEL_276;
          }
        }
      }

LABEL_288:
      __break(1u);
LABEL_289:
      v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_38:
      *(v22 + 4) = v23;

      *(v22 + 12) = 2048;
      v24 = v18 & 0x4000000000000000;
      if (v18 < 0 || v24)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *(v18 + 16);
      }

      *(v22 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "[Bundles] Constructing reordered recommended suggestions - Evergreen Count:%ld, Recommended Count:%ld", v22, 0x16u);

      continue;
    }

    break;
  }

  v153 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v153)
  {
    goto LABEL_68;
  }

LABEL_235:
  v151 = 0;
  v97 = v19 & 0x4000000000000000;
LABEL_236:
  v109 = v19 >= 0 && v97 == 0;
  v8 = !v109;
  if (v109)
  {
    v110 = *(v19 + 16);
    if (!v110)
    {
      goto LABEL_255;
    }
  }

  else
  {
LABEL_254:
    v110 = _CocoaArrayWrapper.endIndex.getter();
    if (!v110)
    {
      goto LABEL_255;
    }
  }

  if (v110 < 1)
  {
    goto LABEL_294;
  }

  v2 = 0;
  v21 = (v19 & 0xC000000000000001);
  do
  {
    if (v21)
    {
      v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v111 = *(v19 + 8 * v2 + 32);
    }

    ++v2;
    (*(*v111 + 160))(3);
  }

  while (v110 != v2);
LABEL_255:
  v112 = v151;
  if (v110 < v151)
  {
    __break(1u);
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  if (v8)
  {
    v113 = _CocoaArrayWrapper.endIndex.getter();
    v112 = v151;
  }

  else
  {
    v113 = *(v19 + 16);
  }

  if (v113 < v112)
  {
    goto LABEL_283;
  }

  if (v112 < 0)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  if (v8)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  if (v20 < v110)
  {
LABEL_285:
    __break(1u);
LABEL_286:

    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_55:
    v20 = *(v27 + 16);
    v28 = MOEventBundle._orderedAssetReferences()();
    if (!v28)
    {
      goto LABEL_64;
    }

    if (v28 >> 62)
    {
      goto LABEL_295;
    }

    v21 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_58:

    if (v21 != 1)
    {
      goto LABEL_65;
    }

    if (v22)
    {
      if (_CocoaArrayWrapper.endIndex.getter() <= 2)
      {
        goto LABEL_65;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_298;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 3)
      {
        __break(1u);
LABEL_64:

LABEL_65:

        goto LABEL_66;
      }
    }

    else if (*(v18 + 16) <= 2uLL)
    {
      goto LABEL_65;
    }

    if (v8)
    {
      type metadata accessor for MOSuggestionCollectionViewCellViewModel();

      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      _ArrayBuffer._typeCheckSlowPath(_:)(2);
    }

    else
    {
    }

    v146 = v19;
    v155 = v8;
    v156 = v2;
    v154 = v22;
    if (v22)
    {

      v98 = _CocoaArrayWrapper.subscript.getter();
      v20 = v99;
      v19 = v100;
      v102 = v101 >> 1;
    }

    else
    {
      v20 = v18 + 32;
      v102 = 3;
      v19 = 1;
      v98 = v18;
    }

    v103 = v102 - v19;
    v152 = v102 - v19 + 1;
    v153 = v98;
    if (v19 <= v102)
    {
      v104 = v102;
    }

    else
    {
      v104 = v19;
    }

    swift_unknownObjectRetain();
    v105 = 0;
    v21 = (v104 - v19);
    v8 = v20 + 8 * v19;
    while (1)
    {
      if (v103 == v105)
      {
        goto LABEL_201;
      }

      if (v21 == v105)
      {
        goto LABEL_231;
      }

      v19 = *(v8 + 8 * v105);
      v22 = *(*v147 + 880);
      v2 = *v147 + 880;

      v20 = (v22)(v106);

      if (v20)
      {
        break;
      }

      v105 = (v105 + 1);
      if (__OFADD__(v105, 1))
      {
        __break(1u);
LABEL_201:
        v8 = v152;
        goto LABEL_203;
      }
    }

    v8 = &v105->isa + 1;
LABEL_203:
    swift_unknownObjectRelease_n();
    v19 = v146;
    v107 = v155;
    v2 = v156;
    if (v154)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_207:
        if (v8 < 0 || v8 >= result)
        {
          goto LABEL_65;
        }

        if (v107)
        {

          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v18 + 16))
          {
            goto LABEL_301;
          }

          v22 = *(v18 + 8 * v8 + 32);
        }

        v20 = v147;
        if (((*(*v147 + 880))(v22) & 1) == 0)
        {

          goto LABEL_65;
        }

        swift_beginAccess();
        v20 = &v162;
        specialized Array.remove(at:)(v8, specialized _ArrayBuffer._consumeAndCreateNew());

        if (!(v162 >> 62))
        {
          goto LABEL_215;
        }

        goto LABEL_299;
      }

      __break(1u);
    }

    result = *(v18 + 16);
    goto LABEL_207;
  }

  v2 = v151;
  if ((v19 & 0xC000000000000001) == 0 || v151 == v110)
  {

    goto LABEL_272;
  }

  if (v151 >= v110)
  {
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_301:
      __break(1u);
      return result;
    }

LABEL_215:

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v22, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    swift_endAccess();

    goto LABEL_66;
  }

  type metadata accessor for MOSuggestionCollectionViewCellViewModel();

  v114 = v2;
  do
  {
    v115 = v114 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v114);
    v114 = v115;
  }

  while (v110 != v115);
LABEL_272:

  if (v8)
  {
    v116 = _CocoaArrayWrapper.subscript.getter();
    v118 = v117;
    v120 = v119;
    v122 = v121;

    v123 = v120;
    v124 = v122;
    v125 = v118;
    v19 = v116;
  }

  else
  {
    v125 = v19 + 32;
    v124 = (2 * v110) | 1;
    v123 = v151;
  }

  specialized Array.append<A>(contentsOf:)(v19, v125, v123, v124);
  swift_unknownObjectRelease();
LABEL_276:
  v126 = v161;

  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 134217984;
    if (v126 >> 62)
    {
      v130 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v130 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v129 + 4) = v130;

    _os_log_impl(&_mh_execute_header, v127, v128, "[Bundles] reordered recommended suggestions: %ld into Recommended", v129, 0xCu);
  }

  else
  {
  }

  return v126;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t MOSuggestionCollectionViewModel.cellStyleFor(indexPath:)()
{
  v1 = (*(*v0 + 752))();
  if (!v1)
  {
    return 6;
  }

  v2 = (*(*v1 + 152))(v1);

  return v2;
}

uint64_t MOSuggestionCollectionViewModel.groupViewModelsBundlesByDate()()
{
  v156 = type metadata accessor for UUID();
  v180 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = v146 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Calendar();
  v1 = *(v175 - 8);
  __chkstk_darwin(v175);
  v165 = v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v10 = v146 - v9;
  __chkstk_darwin(v8);
  v163 = v146 - v11;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_263;
  }

LABEL_2:
  v12 = type metadata accessor for Logger();
  v169 = __swift_project_value_buffer(v12, static MOAngelLogger.shared);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Bundles] Constructing recents suggestions by date", v15, 2u);
  }

  v16 = v147;
  swift_beginAccess();
  v185 = v16[6];

  specialized MutableCollection<>.sort(by:)(&v185, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  v16[6] = v185;

  (*(*v16 + 784))(v17);
  swift_beginAccess();
  v18 = v16[7];
  swift_beginAccess();
  v16[8] = &_swiftEmptyDictionarySingleton;
  swift_bridgeObjectRetain_n();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v162 = v7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = specialized FlattenSequence<>.startIndex.getter(v18);
    *(v22 + 4) = specialized FlattenSequence<>.distance(from:to:)(v23, v25, v24 & 1, *(v18 + 16), 0, 1, v18);

    _os_log_impl(&_mh_execute_header, v19, v20, "[Bundles] Begin Filtering suggestions by recents eligibility, bundle count before filter:%ld", v22, 0xCu);
    v7 = v162;
  }

  else
  {
  }

  v26 = specialized Sequence.filter(_:)(v18);
  v150 = 0;

  v27 = Logger.logObject.getter();
  LOBYTE(v28) = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v26 >> 62;
  v171 = v26;
  if (v29)
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    if (!v30)
    {
      v32 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

    goto LABEL_273;
  }

  while (1)
  {
    v31 = v165;
    v28 = v163;
    Date.init()();
    v184 = _swiftEmptyArrayStorage;
    if (!v30)
    {
      v34 = v171;
      if (!*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    LOBYTE(v28) = v171 & 0xF8;
    if (v171 < 0)
    {
      v27 = v171;
    }

    else
    {
      v27 = (v171 & 0xFFFFFFFFFFFFFF8);
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_229;
    }

    v145 = _CocoaArrayWrapper.endIndex.getter();
    v34 = v171;
    if (!v145)
    {
      break;
    }

LABEL_14:
    if ((v34 & 0xC000000000000001) != 0)
    {
      goto LABEL_270;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v34 + 32);

      goto LABEL_17;
    }

LABEL_272:
    __break(1u);
LABEL_273:
    v32 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
    *(v31 + 4) = v32;

    _os_log_impl(&_mh_execute_header, v27, v28, "[Bundles] Filtering suggestions by recommended eligibility, bundle count after filter:%ld", v31, 0xCu);
  }

  __break(1u);
LABEL_270:
  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
  v36 = *(v35 + 16);

  v27 = [v36 displayStartDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v163;
  v37 = static Date.< infix(_:_:)();
  v38 = *(v4 + 8);
  if (v37)
  {
    v38(v28, v3);
    (*(v4 + 32))(v28, v10, v3);
  }

  else
  {
    v38(v10, v3);
  }

  v34 = v171;
  if (!v30)
  {
LABEL_21:
    v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v39)
    {
      goto LABEL_230;
    }

    goto LABEL_22;
  }

LABEL_229:
  v39 = _CocoaArrayWrapper.endIndex.getter();
  v28 = v163;
  if (!v39)
  {
LABEL_230:

    v143 = _swiftEmptyArrayStorage;
    (*(v4 + 8))(v28, v3);
    goto LABEL_231;
  }

LABEL_22:
  if (v39 < 0)
  {
    __break(1u);
    goto LABEL_272;
  }

  v148 = 0;
  v167 = 0;
  v40 = 0;
  v41 = v171;
  v174 = v171 & 0xC000000000000001;
  v166 = v171 & 0xFFFFFFFFFFFFFF8;
  v158 = v171 + 32;
  v173 = v1 + 1;
  v161 = (v4 + 32);
  v154 = (v180 + 1);
  v179 = (v4 + 8);
  v146[1] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *&v33 = 136315650;
  v153 = v33;
  *&v33 = 136316162;
  v151 = v33;
  v149 = _swiftEmptyArrayStorage;
  v176 = _swiftEmptyArrayStorage;
  v157 = v3;
  v172 = v39;
  do
  {
    while (1)
    {
      if (v174)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_232;
        }
      }

      else
      {
        if (v40 >= *(v166 + 16))
        {
          goto LABEL_234;
        }

        v1 = *(v41 + 8 * v40 + 32);

        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
          goto LABEL_239;
        }
      }

      v177 = v44;
      static Calendar.current.getter();
      v45 = [v1[2] displayStartDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v45) = Calendar.isDate(_:inSameDayAs:)();
      v178 = *v179;
      v178(v7, v3);
      v4 = *v173;
      (*v173)(v31, v175);
      v180 = v1;
      if (v45)
      {
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = v1;
        if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v180;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v176 = v184;
        swift_endAccess();

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          *v48 = v153;
          v1 = v155;
          (*(*v10 + 344))();
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
          v49 = v156;
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          v53 = v49;
          v3 = v157;
          (*v154)(v1, v53);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v183);

          *(v48 + 4) = v54;
          *(v48 + 12) = 2080;
          v182 = MOEventBundle.visibilityCategory.getter();
          type metadata accessor for MOVisibilityCategoryForUI(0);
          v55 = String.init<A>(describing:)();
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v183);
          v10 = v180;

          *(v48 + 14) = v57;
          *(v48 + 22) = 2048;
          *(v48 + 24) = MOEventBundle.baseScore.getter();
          _os_log_impl(&_mh_execute_header, v46, v47, "[Bundles] inserted suggestion: %s into Recents with ranking category: %s, bundle goodness score: %f", v48, 0x20u);
          swift_arrayDestroy();
          v41 = v171;

          v31 = v165;
        }

        v28 = v163;
        v7 = v162;
      }

      else
      {
        swift_beginAccess();

        v184 = _swiftEmptyArrayStorage;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v184 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v1 = v180;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v176 = v184;
        swift_endAccess();
        v58 = [v1[2] displayStartDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = v180;
        v178(v28, v3);
        (*v161)(v28, v7, v3);
      }

      if (v177 >= v172)
      {
        break;
      }

      if (v174)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v177 >= *(v166 + 16))
        {
          goto LABEL_235;
        }

        v42 = *(v158 + 8 * v177);
      }

      static Calendar.current.getter();
      v43 = [*(v42 + 16) displayStartDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v43) = Calendar.isDate(_:inSameDayAs:)();

      v178(v7, v3);
      (v4)(v31, v175);
      v10 = v180;
      if ((v43 & 1) == 0)
      {
        break;
      }

      ++v40;
    }

    v3 = v176;
    if (!(v176 >> 62))
    {
      if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_220;
      }

LABEL_48:
      swift_beginAccess();
      v59 = v150;
      specialized MutableCollection<>.sort(by:)(&v184, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
      v150 = v59;
      swift_endAccess();
      v3 = v184;
      v168 = v184 >> 62;
      if (v184 >> 62)
      {
        v60 = _CocoaArrayWrapper.endIndex.getter();
        if (v60)
        {
LABEL_50:
          v160 = v3 & 0xC000000000000001;
          v61 = v3 & 0xFFFFFFFFFFFFFF8;
          v164 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v3 < 0)
          {
            v61 = v3;
          }

          v152 = v61;

          v1 = 0;
          v4 = 0;
          v170 = 0;
          v176 = v3;
          v159 = v60;
LABEL_53:
          v62 = v1;
          while (1)
          {
            if (v160)
            {
              v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v1 = (v62 + 1);
              if (__OFADD__(v62, 1))
              {
                goto LABEL_233;
              }
            }

            else
            {
              if (v62 >= *(v164 + 16))
              {
                goto LABEL_238;
              }

              v63 = *(v3 + 8 * v62 + 32);

              v1 = (v62 + 1);
              if (__OFADD__(v62, 1))
              {
                goto LABEL_233;
              }
            }

            v64 = v4;
            swift_retain_n();
            v7 = Logger.logObject.getter();
            v65 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v7, v65))
            {
              v66 = swift_slowAlloc();
              v10 = swift_slowAlloc();
              v183 = v10;
              *v66 = v151;
              v67 = (*(*v63 + 448))();
              v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v183);

              *(v66 + 4) = v69;
              *(v66 + 12) = 1024;
              v71 = (*(*v63 + 408))(v70);

              *(v66 + 14) = v71 & 1;

              *(v66 + 18) = 2048;
              *(v66 + 20) = v170;
              *(v66 + 28) = 2048;
              *(v66 + 30) = v64;
              *(v66 + 38) = 2048;
              if (v168)
              {
                v72 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v72 = *(v164 + 16);
              }

              *(v66 + 40) = v72;
              _os_log_impl(&_mh_execute_header, v7, v65, "[RecentTabLayout] Date: %s, isFullWidthEligible: %{BOOL}d, rowCount: %ld, topLockCount: %ld, count: %ld", v66, 0x30u);
              __swift_destroy_boxed_opaque_existential_0(v10);

              v41 = v171;
            }

            else
            {
            }

            v3 = v176;
            v4 = v64;
            if (v170 > 1)
            {

              v82 = v167;
              v31 = v165;
              goto LABEL_94;
            }

            v74 = *v63;
            if (v167)
            {
              break;
            }

            v75 = (*(v74 + 408))(v73);
            v76 = v159;
            if (v75)
            {
              goto LABEL_84;
            }

            if (v168)
            {
              if (_CocoaArrayWrapper.endIndex.getter() == 1)
              {
LABEL_84:
                (*(*v63 + 160))(0);

                v80 = __OFADD__(v4++, 1);
                if (v80)
                {
                  goto LABEL_241;
                }

LABEL_88:
                v81 = v170 + 1;
                goto LABEL_89;
              }
            }

            else if (*(v164 + 16) == 1)
            {
              goto LABEL_84;
            }

            v10 = v4 + 1;
            v77 = __OFADD__(v4, 1);
            if (v170 == 1)
            {
              if (v77)
              {
                goto LABEL_237;
              }

              if (v168)
              {
                v78 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v78 = *(v164 + 16);
              }

              v41 = v171;
              v79 = *(*v63 + 160);
              if (v10 == v78)
              {
                v79(0);

                ++v4;
                v81 = 2;
LABEL_89:
                v170 = v81;
                v167 = 0;
                v82 = 0;
                v31 = v165;
                if (v1 != v76)
                {
                  goto LABEL_53;
                }

LABEL_94:

                v167 = v82;
LABEL_99:
                if (!v168)
                {
                  if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_101;
                  }

LABEL_162:
                  v182 = v3;

                  v111 = v3;
LABEL_165:
                  v112 = v4 + 3;
                  if (!__OFADD__(v4, 3))
                  {
                    v7 = (v111 >> 62);
                    if (!(v111 >> 62))
                    {
                      if (v112 < *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_168;
                      }

LABEL_213:
                      v7 = v162;
LABEL_214:
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v128 = v149;
                      }

                      else
                      {
                        v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v149[2] + 1, 1, v149);
                      }

                      v130 = v128[2];
                      v129 = v128[3];
                      v10 = v130 + 1;
                      if (v130 >= v129 >> 1)
                      {
                        v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v128);
                      }

                      v128[2] = v10;
                      v128[v130 + 4] = v111;
                      v80 = __OFADD__(v148++, 1);
                      if (!v80)
                      {
                        v149 = v128;
                        v10 = v180;
                        goto LABEL_220;
                      }

LABEL_240:
                      __break(1u);
LABEL_241:
                      __break(1u);
LABEL_242:
                      __break(1u);
LABEL_243:
                      __break(1u);
LABEL_244:
                      __break(1u);
LABEL_245:
                      __break(1u);
LABEL_246:
                      __break(1u);
LABEL_247:
                      __break(1u);
LABEL_248:
                      __break(1u);
                      goto LABEL_249;
                    }

                    if (v112 >= _CocoaArrayWrapper.endIndex.getter())
                    {
                      goto LABEL_213;
                    }

LABEL_168:
                    if (v112 < 0)
                    {
                      goto LABEL_245;
                    }

                    if (v7)
                    {
                      v113 = _CocoaArrayWrapper.endIndex.getter();
                    }

                    else
                    {
                      v113 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    if (v113 >= v112)
                    {
                      v114 = v4 + 3;
                    }

                    else
                    {
                      v114 = v113;
                    }

                    if (v113 < 0)
                    {
                      v114 = v4 + 3;
                    }

                    if (v4 == -3)
                    {
                      v115 = 0;
                    }

                    else
                    {
                      v115 = v114;
                    }

                    if (v113 < v115)
                    {
                      goto LABEL_247;
                    }

                    if (v7)
                    {
                      if (v111 < 0)
                      {
                        v10 = v111;
                      }

                      else
                      {
                        v10 = v111 & 0xFFFFFFFFFFFFFF8;
                      }

                      if (_CocoaArrayWrapper.endIndex.getter() < v115)
                      {
                        goto LABEL_248;
                      }

                      v116 = _CocoaArrayWrapper.endIndex.getter();
                    }

                    else
                    {
                      v116 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v116 < v115)
                      {
                        goto LABEL_248;
                      }
                    }

                    if (v116 < v113)
                    {
LABEL_249:
                      __break(1u);
                    }

                    else if ((v113 & 0x8000000000000000) == 0)
                    {
                      if ((v111 & 0xC000000000000001) == 0 || v115 == v113)
                      {

                        if (!v7)
                        {
                          goto LABEL_196;
                        }

                        goto LABEL_198;
                      }

                      if (v115 >= v113)
                      {
                        goto LABEL_261;
                      }

                      type metadata accessor for MOSuggestionCollectionViewCellViewModel();

                      v117 = v115;
                      do
                      {
                        v118 = v117 + 1;
                        _ArrayBuffer._typeCheckSlowPath(_:)(v117);
                        v117 = v118;
                      }

                      while (v113 != v118);
                      if (!v7)
                      {
LABEL_196:
                        v119 = v111 & 0xFFFFFFFFFFFFFF8;
                        v120 = (v111 & 0xFFFFFFFFFFFFFF8) + 32;
                        v10 = (2 * v113) | 1;
                        goto LABEL_200;
                      }

LABEL_198:

                      v119 = _CocoaArrayWrapper.subscript.getter();
                      v115 = v121;
                      v10 = v122;
                      if ((v122 & 1) == 0)
                      {
LABEL_199:
                        specialized _copyCollectionToContiguousArray<A>(_:)(v119, v120, v115, v10);
                        v10 = v123;
                        v31 = v165;
                        goto LABEL_208;
                      }

LABEL_200:
                      v1 = v3;
                      v4 = v120;
                      type metadata accessor for __ContiguousArrayStorageBase();
                      swift_unknownObjectRetain_n();
                      v124 = swift_dynamicCastClass();
                      if (!v124)
                      {
                        swift_unknownObjectRelease();
                        v124 = _swiftEmptyArrayStorage;
                      }

                      v3 = v124[2];

                      if (!__OFSUB__(v10 >> 1, v115))
                      {
                        if (v3 != (v10 >> 1) - v115)
                        {
                          swift_unknownObjectRelease();
                          v120 = v4;
                          v3 = v1;
                          goto LABEL_199;
                        }

                        v10 = swift_dynamicCastClass();
                        swift_unknownObjectRelease();
                        v31 = v165;
                        v3 = v1;
                        if (v10)
                        {
                          if (!v7)
                          {
                            goto LABEL_206;
                          }

LABEL_209:
                          v125 = _CocoaArrayWrapper.endIndex.getter();
                        }

                        else
                        {
                          v10 = _swiftEmptyArrayStorage;
LABEL_208:
                          swift_unknownObjectRelease();
                          if (v7)
                          {
                            goto LABEL_209;
                          }

LABEL_206:
                          v125 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        v41 = v171;
                        v7 = v162;
                        if (v125 >= v112)
                        {
                          specialized Array.replaceSubrange<A>(_:with:)(v112, v125);
                          v126 = v147;
                          swift_beginAccess();
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v181 = v126[8];
                          v126[8] = 0x8000000000000000;
                          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v148, isUniquelyReferenced_nonNull_native);
                          v126[8] = v181;
                          swift_endAccess();
                          v111 = v182;
                          goto LABEL_214;
                        }

LABEL_251:
                        __break(1u);
LABEL_252:
                        __break(1u);
LABEL_253:
                        __break(1u);
LABEL_254:
                        __break(1u);
LABEL_255:
                        __break(1u);
LABEL_256:
                        __break(1u);
LABEL_257:
                        __break(1u);
LABEL_258:
                        __break(1u);
LABEL_259:
                        __break(1u);
LABEL_260:
                        __break(1u);
LABEL_261:
                        __break(1u);
                      }

                      __break(1u);
LABEL_263:
                      swift_once();
                      goto LABEL_2;
                    }

                    __break(1u);
                    goto LABEL_251;
                  }

LABEL_239:
                  __break(1u);
                  goto LABEL_240;
                }

                if (v4 >= _CocoaArrayWrapper.endIndex.getter())
                {
                  goto LABEL_162;
                }

LABEL_101:
                if (v4 < 0)
                {
                  goto LABEL_242;
                }

                if (v168)
                {
                  if (v3 < 0)
                  {
                    v10 = v3;
                  }

                  else
                  {
                    v10 = v3 & 0xFFFFFFFFFFFFFF8;
                  }

                  if (_CocoaArrayWrapper.endIndex.getter() < 0)
                  {
                    goto LABEL_254;
                  }

                  v83 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v83 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v83 < v4)
                {
                  goto LABEL_243;
                }

                if ((v3 & 0xC000000000000001) != 0 && v4)
                {
                  type metadata accessor for MOSuggestionCollectionViewCellViewModel();

                  v84 = 0;
                  do
                  {
                    v85 = v84 + 1;
                    _ArrayBuffer._typeCheckSlowPath(_:)(v84);
                    v84 = v85;
                  }

                  while (v4 != v85);
                }

                else
                {
                }

                if (!v168)
                {
                  v10 = 0;
                  v86 = v3 & 0xFFFFFFFFFFFFFF8;
                  v87 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
                  v88 = (2 * v4) | 1;
                  goto LABEL_120;
                }

                v86 = _CocoaArrayWrapper.subscript.getter();
                v10 = v89;
                v88 = v90;
                if ((v90 & 1) == 0)
                {
LABEL_119:
                  specialized _copyCollectionToContiguousArray<A>(_:)(v86, v87, v10, v88);
                  v1 = v91;
                  goto LABEL_126;
                }

LABEL_120:
                v92 = v87;
                type metadata accessor for __ContiguousArrayStorageBase();
                swift_unknownObjectRetain_n();
                v93 = swift_dynamicCastClass();
                if (!v93)
                {
                  swift_unknownObjectRelease();
                  v93 = _swiftEmptyArrayStorage;
                }

                v7 = v93[2];

                if (__OFSUB__(v88 >> 1, v10))
                {
                  goto LABEL_255;
                }

                if (v7 != ((v88 >> 1) - v10))
                {
                  swift_unknownObjectRelease();
                  v87 = v92;
                  goto LABEL_119;
                }

                v1 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v1)
                {
                  v1 = _swiftEmptyArrayStorage;
LABEL_126:
                  swift_unknownObjectRelease();
                }

                if (v168)
                {
                  v94 = _CocoaArrayWrapper.endIndex.getter();
                  if (v94 < v4)
                  {
                    goto LABEL_256;
                  }

                  v10 = v94;
                  if (_CocoaArrayWrapper.endIndex.getter() < v4)
                  {
                    goto LABEL_258;
                  }

                  if (_CocoaArrayWrapper.endIndex.getter() < v10)
                  {
                    goto LABEL_244;
                  }

                  if ((v10 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_246;
                  }
                }

                else
                {
                  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v10 < v4)
                  {
                    goto LABEL_257;
                  }
                }

                if ((v3 & 0xC000000000000001) == 0 || v4 == v10)
                {
                }

                else
                {
                  if (v4 >= v10)
                  {
                    goto LABEL_259;
                  }

                  type metadata accessor for MOSuggestionCollectionViewCellViewModel();

                  v95 = v4;
                  do
                  {
                    v96 = v95 + 1;
                    _ArrayBuffer._typeCheckSlowPath(_:)(v95);
                    v95 = v96;
                  }

                  while (v10 != v96);
                }

                if (v168)
                {

                  v97 = _CocoaArrayWrapper.subscript.getter();
                  v99 = v100;
                  v10 = v101;
                  if (v101)
                  {
                    goto LABEL_146;
                  }
                }

                else
                {
                  v97 = v3 & 0xFFFFFFFFFFFFFF8;
                  v98 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
                  v10 = (2 * v10) | 1;
                  v99 = v4;
                  if (v10)
                  {
LABEL_146:
                    v104 = v98;
                    type metadata accessor for __ContiguousArrayStorageBase();
                    swift_unknownObjectRetain_n();
                    v105 = swift_dynamicCastClass();
                    if (!v105)
                    {
                      swift_unknownObjectRelease();
                      v105 = _swiftEmptyArrayStorage;
                    }

                    v106 = v105[2];

                    if (__OFSUB__(v10 >> 1, v99))
                    {
                      goto LABEL_260;
                    }

                    if (v106 == (v10 >> 1) - v99)
                    {
                      v103 = swift_dynamicCastClass();
                      swift_unknownObjectRelease();
                      if (!v103)
                      {
                        v103 = _swiftEmptyArrayStorage;
LABEL_152:
                        swift_unknownObjectRelease();
                      }

                      v183 = v103;
                      v107 = v150;
                      specialized MutableCollection<>.sort(by:)(&v183, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
                      v150 = v107;
                      v10 = v183;
                      if (v183 >> 62)
                      {
                        v108 = _CocoaArrayWrapper.endIndex.getter();
                        if (v108)
                        {
LABEL_155:
                          if (v108 < 1)
                          {
                            goto LABEL_252;
                          }

                          for (i = 0; i != v108; ++i)
                          {
                            if ((v10 & 0xC000000000000001) != 0)
                            {
                              v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                            }

                            else
                            {
                              v110 = *(v10 + 8 * i + 32);
                            }

                            (*(*v110 + 160))(2);
                          }
                        }
                      }

                      else
                      {
                        v108 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v108)
                        {
                          goto LABEL_155;
                        }
                      }

                      v182 = v1;
                      specialized Array.append<A>(contentsOf:)(v10, specialized Array._copyContents(initializing:));
                      v111 = v182;
                      v31 = v165;
                      v41 = v171;
                      goto LABEL_165;
                    }

                    swift_unknownObjectRelease();
                    v98 = v104;
                  }
                }

                specialized _copyCollectionToContiguousArray<A>(_:)(v97, v98, v99, v10);
                v103 = v102;
                goto LABEL_152;
              }

              v79(1);
            }

            else
            {
              (*(*v63 + 160))(1);

              if (v77)
              {
                goto LABEL_236;
              }
            }

            ++v62;
            ++v4;
            v167 = 1;
            v31 = v165;
            v41 = v171;
            if (v1 == v76)
            {
              v82 = 1;
              v4 = v10;
              goto LABEL_94;
            }
          }

          (*(v74 + 160))(1);

          v80 = __OFADD__(v64, 1);
          v4 = v64 + 1;
          v76 = v159;
          if (v80)
          {
            goto LABEL_253;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v60 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v60)
        {
          goto LABEL_50;
        }
      }

      v4 = 0;
      goto LABEL_99;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_48;
    }

LABEL_220:
    v176 = v3;

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v133 = v153;
      v1 = v155;
      (*(*v10 + 344))();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v134 = v156;
      v4 = v10;
      v135 = dispatch thunk of CustomStringConvertible.description.getter();
      v137 = v136;
      v138 = v134;
      v41 = v171;
      (*v154)(v1, v138);
      v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, &v183);

      *(v133 + 4) = v139;
      *(v133 + 12) = 2080;
      v182 = MOEventBundle.visibilityCategory.getter();
      type metadata accessor for MOVisibilityCategoryForUI(0);
      v140 = String.init<A>(describing:)();
      v10 = v141;
      v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, &v183);

      *(v133 + 14) = v142;
      *(v133 + 22) = 2048;
      *(v133 + 24) = MOEventBundle.baseScore.getter();
      _os_log_impl(&_mh_execute_header, v131, v132, "[Bundles] inserted suggestion: %s into Recents with ranking category: %s, bundle goodness score: %f", v133, 0x20u);
      swift_arrayDestroy();
      v7 = v162;

      v31 = v165;
    }

    v40 = v177;
    v28 = v163;
    v3 = v157;
  }

  while (v177 != v172);

  v143 = v149;
  v178(v28, v3);
LABEL_231:
  v147[7] = v143;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v9[1] = v7;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, a2, a3);
  *a1 = v6;
  return result;
}

{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v10[1] = v8;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v7, type metadata accessor for MOSuggestionCollectionViewCellViewModel, a2, a3);
  *a1 = v6;
  return result;
}

BOOL MOSuggestionCollectionViewModel.isFullWidthEligible(_:)(uint64_t a1)
{
  if ((*(*a1 + 400))(a1))
  {
    return 0;
  }

  v2 = MOEventBundle._orderedAssetReferences()();
  if (!v2)
  {
    return 1;
  }

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 1;
}

uint64_t MOSuggestionCollectionViewModel.removeBundle(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[6];
  v12[2] = &v13;
  v13 = a1;

  v4 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, v3);

  if (v4)
  {
    v6 = v1[6];

    v7 = specialized Collection<>.firstIndex(of:)(a1, v6);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      v10 = specialized Array.remove(at:)(v7, specialized _ArrayBuffer._consumeAndCreateNew());
      swift_endAccess();

      v11 = (*(*v1 + 440))();
      return (*(*v1 + 824))(v11 & 1, 0, 0);
    }
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

Swift::Void __swiftcall MOSuggestionCollectionViewModel.showMoreForDaySection(section:)(Swift::Int section)
{
  v3 = (*(*v1 + 632))();
  v4 = __OFSUB__(section, v3);
  v5 = section - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  swift_beginAccess();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v1[7];
    if (v5 < *(v6 + 16))
    {
      v9 = *(v6 + 8 * v5 + 32);
      swift_beginAccess();
      if (*(v1[8] + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v5);
        if (v7)
        {

          specialized Array.append<A>(contentsOf:)(v8, specialized Array._copyContents(initializing:));
          swift_beginAccess();
          specialized Array.remove(at:)(v5);

          if (*(v1[7] + 16) >= v5)
          {
            specialized Array.replaceSubrange<A>(_:with:)(v5, v5, v9);
            swift_endAccess();

            swift_beginAccess();
            specialized Dictionary._Variant.removeValue(forKey:)(v5);
            swift_endAccess();

            return;
          }

LABEL_10:
          __break(1u);
        }
      }
    }
  }
}

uint64_t MOSuggestionCollectionViewModel.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 80));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 96));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 112));
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + 128, &_s16MomentsUIService34MOSuggestionCollectionViewDelegate_pSgMd);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionCollectionViewModel_currentFetchSignpostState, &_s2os23OSSignpostIntervalStateC_AA0B2IDVtSgMd);
  return v0;
}

uint64_t MOSuggestionCollectionViewModel.__deallocating_deinit()
{
  MOSuggestionCollectionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t MOSuggestionCollectionViewCellViewModel.cellStyle.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t MOSuggestionAssetReference.appendices.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MOSuggestionAssetReference.appendices.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t MOSuggestionCollectionViewCellViewModel.sourcesText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MOSuggestionCollectionViewCellViewModel.sourcesText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t MOSuggestionCollectionViewCellViewModel.showSaved.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 65) = a1;
  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.segmentType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 66) = a1 & 1;
  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.assetViewModels.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t MOSuggestionCollectionViewCellViewModel.init(_:clientDetails:showAdded:showSaved:)(void *a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0xE000000000000000;
  *(v5 + 64) = 0;
  *(v5 + 66) = 0;
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  swift_beginAccess();
  *(v5 + 64) = a4;
  swift_beginAccess();
  *(v5 + 65) = a5;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  v11 = *(*v5 + 352);
  v12 = a1;
  v13 = v11();
  v15 = v14;

  swift_beginAccess();
  *(v5 + 32) = v13;
  *(v5 + 40) = v15;

  return v5;
}

uint64_t MOSuggestionCollectionViewCellViewModel.deinit()
{
  swift_beginAccess();
  if (*(v0 + 72))
  {
    *(v0 + 72) = _swiftEmptyArrayStorage;
  }

  swift_endAccess();

  return v0;
}

uint64_t MOSuggestionCollectionViewCellViewModel.__deallocating_deinit()
{
  swift_beginAccess();
  if (*(v0 + 72))
  {
    *(v0 + 72) = _swiftEmptyArrayStorage;
  }

  swift_endAccess();

  return swift_deallocClassInstance();
}

void MOSuggestionCollectionViewCellViewModel.bundleIdentifier()()
{
  v1 = [*(v0 + 16) bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

id MOSuggestionCollectionViewCellViewModel.bundleTitle.getter()
{
  if ((*(*v0 + 40))())
  {
    return (*(*v0 + 45))();
  }

  result = [v0[2] labels];
  if (result)
  {
    v2 = result;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id MOSuggestionCollectionViewCellViewModel.photoMemoryTitle.getter()
{
  if ((*(*v0 + 40))())
  {
    result = [v0[2] labels];
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16))
    {

      lazy protocol witness table accessor for type String and conformance String();
      v4 = StringProtocol.components<A>(separatedBy:)();

      if (*(v4 + 16))
      {

        v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        return v5;
      }
    }
  }

  return 0;
}

id MOSuggestionCollectionViewCellViewModel.photoMemorySubtitle.getter()
{
  if ((*(*v0 + 40))())
  {
    result = [v0[2] labels];
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16))
    {

      lazy protocol witness table accessor for type String and conformance String();
      v4 = StringProtocol.components<A>(separatedBy:)();

      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = *(v4 + 16 + 16 * v5);

        return v6;
      }
    }
  }

  return 0;
}

Swift::String __swiftcall MOSuggestionCollectionViewCellViewModel.subtitle()()
{
  v1 = (*v0 + 272);
  v2 = *v1;
  if ((*v1)())
  {
    if (v2() & 1) != 0 && ((*(*v0 + 416))())
    {
      v5 = (*(*v0 + 472))();
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v3 = (*(*v0 + 320))();
    v4 = *v0;
    if (v3)
    {
      v5 = (*(v4 + 368))();
    }

    else
    {
      v5 = (*(v4 + 464))();
    }
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.contactNames.getter()
{
  v0 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v4 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_24;
        }

LABEL_11:
        v7 = (*(*v5 + 120))();
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;
        if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
        {
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v13 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v4;
        if (v6 == v3)
        {
          goto LABEL_24;
        }
      }

      if (v4 < *(v2 + 16))
      {
        break;
      }

      __break(1u);
LABEL_23:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    v5 = *(v1 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

LABEL_24:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_46:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
LABEL_27:
      v16 = 0;
      v17 = _swiftEmptyArrayStorage;
      do
      {
        v18 = v16;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v16 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v18 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_45;
            }

            v19 = _swiftEmptyArrayStorage[v18 + 4];

            v16 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }
          }

          v20 = (*(*v19 + 216))();
          v21 = [v20 personName];

          if (v21)
          {
            break;
          }

          ++v18;
          if (v16 == v15)
          {
            goto LABEL_47;
          }
        }

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v26 = *(v17 + 2);
        v25 = *(v17 + 3);
        if (v26 >= v25 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v17);
        }

        *(v17 + 2) = v26 + 1;
        v27 = &v17[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
      }

      while (v16 != v15);
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage[2];
    if (v15)
    {
      goto LABEL_27;
    }
  }

LABEL_47:

  if (one-time initialization token for COMMA_SEPARATOR != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v14 = BidirectionalCollection<>.joined(separator:)();

  return v14;
}

uint64_t MOSuggestionCollectionViewCellViewModel.isCondensedHeight.getter()
{
  v2 = *(v0 + 16);
  v3 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (v3)
  {
    v4 = v3;
    v5 = v3 >> 62;
    if (v3 >> 62)
    {
      goto LABEL_70;
    }

    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_8;
    }

    while ((v4 & 0xC000000000000001) == 0)
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v4 + 32);

        goto LABEL_7;
      }

      __break(1u);
      do
      {
        __break(1u);
LABEL_75:
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v13;
LABEL_17:
        v14 = (*(*v12 + 272))(v13);
        v16 = v15;

        if ((v16 & 1) == 0 && v14 == 6)
        {
          goto LABEL_31;
        }

        if (v1)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v17 = *(v4 + 32);
        }

        v18 = (*(*v17 + 272))();
        v20 = v19;

        if ((v20 & 1) == 0 && v18 == 7)
        {
          goto LABEL_31;
        }

        if (v1)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v21 = *(v4 + 32);
        }

        v22 = (*(*v21 + 272))();
        v1 = v23;

        v11 = 0;
        if ((v1 & 1) == 0 && v22 == 8)
        {
LABEL_31:
          if (v5)
          {
            v24 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v11 = v24 == 1;
        }

LABEL_35:
        if (v5)
        {
          v25 = _CocoaArrayWrapper.endIndex.getter();
          v37 = v2;
          if (!v25)
          {
LABEL_48:

            v1 = _swiftEmptyArrayStorage;
            v30 = _swiftEmptyArrayStorage[2];
            if (v30)
            {
              goto LABEL_49;
            }

LABEL_59:
            v35 = 1;
LABEL_60:

            if ([v37 interfaceType] == 12)
            {
              if (v25 != 1)
              {
                goto LABEL_66;
              }
            }

            else
            {
              if (v25 != 1)
              {
                return v11;
              }

              v35 = 0;
            }

            v36 = vdupq_n_s64([v37 interfaceType]);
            if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_10030AD90, v36), vceqq_s64(unk_10030ADA0, v36)))) & 1) == 0)
            {
LABEL_66:
              if (!v35)
              {
                return v11;
              }
            }

            return 1;
          }
        }

        else
        {
          v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v37 = v2;
          if (!v25)
          {
            goto LABEL_48;
          }
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
      }

      while (v25 < 0);
      v5 = 0;
      v1 = _swiftEmptyArrayStorage;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v4 + 8 * v5 + 32);
        }

        v27 = (*(*v26 + 120))();

        v29 = _swiftEmptyArrayStorage[2];
        v28 = _swiftEmptyArrayStorage[3];
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        }

        ++v5;
        _swiftEmptyArrayStorage[2] = v29 + 1;
        _swiftEmptyArrayStorage[v29 + 4] = v27;
      }

      while (v25 != v5);

      v30 = _swiftEmptyArrayStorage[2];
      if (!v30)
      {
        goto LABEL_59;
      }

LABEL_49:
      v31 = 0;
      v2 = &MOSuggestionAssetsTypeWorkout;
      while (v31 < _swiftEmptyArrayStorage[2])
      {
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v32;
        if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v33)
        {
        }

        else
        {
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v5 & 1) == 0)
          {
            v35 = 0;
            goto LABEL_60;
          }
        }

        if (v30 == ++v31)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_70:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = v8;
LABEL_7:
    (*(*v7 + 272))(v8);

LABEL_8:
    result = [v2 interfaceType];
    if (v6)
    {
      v10 = result == 5;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = 0;
      goto LABEL_35;
    }

    v1 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_75;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v4 + 32);

      goto LABEL_17;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

BOOL MOSuggestionCollectionViewCellViewModel.isFullWidthEligible.getter()
{
  v0 = MOEventBundle._orderedAssetReferences()();
  if (!v0)
  {
    return 1;
  }

  if (v0 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 1;
}

BOOL MOSuggestionCollectionViewCellViewModel.shouldShowInterstitial.getter()
{
  v1 = [v0[2] interfaceType];
  if (v1 == 11)
  {
    (*(*v0 + 55))();
  }

  return v1 != 11;
}

Swift::Void __swiftcall MOSuggestionCollectionViewCellViewModel.markEvergreenEligible()()
{
  if (((*(*v0 + 432))() & 1) == 0)
  {
    return;
  }

  v1 = (*(*v0 + 296))();
  if (!v1)
  {
    return;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v9 = v1;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v9;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v2 + 16))
      {
        __break(1u);
        return;
      }

      v3 = *(v1 + 32);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v4 = static MOSuggestionAssetCacheManager.shared;
    v5 = (*(*v3 + 512))();
    v7 = v6;
    v8 = (*(*v3 + 704))();
    (*(*v4 + 272))(v5, v7, v8);
  }
}

Swift::String __swiftcall MOSuggestionCollectionViewCellViewModel.dateString()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[2];
  if (([v5 interfaceType] & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v6 = (*(*v0 + 368))();
  }

  else
  {
    v6 = MOSuggestionCollectionViewCellViewModel.timeRangeString.getter();
    if (!v7)
    {
      v8 = [v5 displayStartDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for fullDateFormatter != -1)
      {
        swift_once();
      }

      v9 = static MODateFormatter.fullDateFormatter;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v11 = [v9 stringFromDate:isa];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      (*(v2 + 8))(v4, v1);
      v7 = v14;
      v6 = v12;
    }
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.timeRangeString.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = *(v0 + 16);
  v9 = [v8 displayEndDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [v8 displayStartDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v5, v1);
  v13(v7, v1);
  result = 0;
  if (fabs(v12) > 86400.0)
  {
    v15 = [v8 displayStartDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (one-time initialization token for fullDateFormatter != -1)
    {
      swift_once();
    }

    v16 = static MODateFormatter.fullDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [v16 stringFromDate:isa];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v13(v7, v1);
    v36 = v1;
    v22 = [objc_opt_self() mainBundle];
    v39._object = 0x80000001002B4D70;
    v23._countAndFlagsBits = 2108704;
    v23._object = 0xE300000000000000;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0xD000000000000034;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v39);

    v37 = v19;
    v38 = v21;

    String.append(_:)(v25);

    v27 = v37;
    v26 = v38;
    v28 = [v8 displayEndDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = Date._bridgeToObjectiveC()().super.isa;
    v30 = [v16 stringFromDate:v29];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v13(v7, v36);
    v37 = v27;
    v38 = v26;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    return v37;
  }

  return result;
}

Swift::String __swiftcall MOSuggestionCollectionViewCellViewModel.relativeDateString()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = MOSuggestionCollectionViewCellViewModel.timeRangeString.getter();
  if (!object)
  {
    v7 = [*(v0 + 16) displayStartDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = Date.getRelativeDate()();
    (*(v2 + 8))(v4, v1);
    object = v8._object;
    countAndFlagsBits = v8._countAndFlagsBits;
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall MOSuggestionCollectionViewCellViewModel.categoryString()()
{
  v0 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (v0)
  {
    v19 = v0;
    v20 = [objc_allocWithZone(NSCountedSet) init];
    v1 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v3 = 0;
      v4 = &type metadata for MOSuggestionAssetVisualSubType;
      while ((v19 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_29;
        }

LABEL_10:
        type metadata accessor for MOMultiMapAssetReference(0);
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = (*(*v7 + 360))();
          if (v8 >> 62)
          {
            v0 = _CocoaArrayWrapper.endIndex.getter();

            v22 = v4;
            v21[0] = 15;
            if ((v0 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_28;
            }
          }

          else
          {
            v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

            v22 = v4;
            v21[0] = 15;
          }

          if (!v0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v9 = MOSuggestionAssetReference.visualSubType.getter();
          if (v9 == 26)
          {
            goto LABEL_6;
          }

          if (v9 == 13)
          {
            v10 = 12;
          }

          else
          {
            v10 = v9;
          }

          v22 = v4;
          v21[0] = v10;
          v0 = 1;
        }

        v11 = v4;
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v12 + 16) = v0;
        v13 = v12 + 32;
        do
        {
          outlined init with copy of Any(v21, v13);
          v13 += 32;
          --v0;
        }

        while (v0);
        v4 = v11;
LABEL_5:
        __swift_destroy_boxed_opaque_existential_0(v21);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v20 addObjectsFromArray:isa];

LABEL_6:

        if (v3 == i)
        {
          goto LABEL_32;
        }
      }

      if (v3 >= *(v1 + 16))
      {
        goto LABEL_30;
      }

      v6 = __OFADD__(v3++, 1);
      if (!v6)
      {
        goto LABEL_10;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:

    if (one-time initialization token for COMMA_SEPARATOR != -1)
    {
      swift_once();
    }

    v0 = specialized static MOSuggestionInterstitialListAssetViewModel.assetVisualSubTypesToCountString(_:includeCount:separator:)(v20, 0, static MOSuggestionInterstitialListAssetViewModel.COMMA_SEPARATOR, *(&static MOSuggestionInterstitialListAssetViewModel.COMMA_SEPARATOR + 1));
    v14 = v15;
  }

  else
  {
LABEL_28:
    v14 = 0xE000000000000000;
  }

  v16 = v0;
  v17 = v14;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

Swift::String __swiftcall MOSuggestionCollectionViewCellViewModel.promptString()()
{
  v1 = [*(v0 + 16) promptLanguages];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {

    v1 = 0;
LABEL_5:
    v7 = 0xE000000000000000;
    goto LABEL_6;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v6 = v5;

  v7 = v6;
  v1 = v4;
LABEL_6:
  result._object = v7;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.getTitle(title:album:artist:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 4)
  {
    if (a7 == 5)
    {
      return 0;
    }

    if (a7 != 7)
    {
      a3 = a1;
    }
  }

  return a3;
}

uint64_t MOSuggestionCollectionViewCellViewModel.getSubTitle(titleForDisplay:album:artist:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a7 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    if (!a5 && a6 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (a3 == a1 && a4 == a2)
      {
        return 0;
      }
    }

    else
    {
      if (a5 == a1 && a6 == a2)
      {
        return 0;
      }

      a3 = a5;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 0;
    }
  }

  else
  {
    a3 = a5;
  }

  return a3;
}

void *MOSuggestionCollectionViewCellViewModel.createAssetViewModels(for:cellStyle:bundleInterfaceType:)(unint64_t a1, unsigned int a2, uint64_t a3)
{
  result = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v6 = v3;
    if (a1 >> 62)
    {
LABEL_21:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13 < 1)
      {
        return _swiftEmptyArrayStorage;
      }

      v14 = v13;
      v18 = 0;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v14;
      if (!v8)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return result;
      }

      v18 = 0;
      v8 = v7;
    }

    v9 = 0;
    result = _swiftEmptyArrayStorage;
    do
    {
      v15 = result;
      for (i = v9; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(a1 + 8 * i + 32);
        }

        v12 = v11;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ((*(*v6 + 496))(v11, a2, v7, i, &v18, a3))
        {
          break;
        }

        if (v9 == v8)
        {
          return v15;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      result = v19;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.handleSuggestionCollectionViewCellSelect(at:modifiedTitle:isPromptElligibleForTransfer:controller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = v5[2];
  v11 = (*(*v5 + 272))();
  if (v11)
  {
    v12 = 0x746E65636552;
  }

  else
  {
    v12 = 0x6E656D6D6F636552;
  }

  if (v11)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xEB00000000646564;
  }

  (*((swift_isaMask & *a5) + 0x168))(v10, a2, a3, a4, v12, v13);
}

uint64_t MOSuggestionCollectionViewCellViewModel.handleSuggestionCollectionViewCellFeedback(at:controller:)(uint64_t a1, void *a2)
{
  v4 = v2[2];
  v5 = (*(*v2 + 272))();
  v6 = [objc_opt_self() mainBundle];
  if (v5)
  {
    v13 = 0xE600000000000000;
    v7 = 0x746E65636552;
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xEB00000000646564;
    v13 = 0xEB00000000646564;
    v7 = 0x6E656D6D6F636552;
  }

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = v7;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v6, v9, *(&v13 - 1));

  (*((swift_isaMask & *a2) + 0x190))(v4, v11._countAndFlagsBits, v11._object);
}

uint64_t MOSuggestionCollectionViewCellViewModel.handleSuggestionCollectionViewCellRemove(at:controller:)(uint64_t a1, void *a2)
{
  v4 = v2[2];
  v5 = (*(*v2 + 272))();
  if (v5)
  {
    v6 = 0x746E65636552;
  }

  else
  {
    v6 = 0x6E656D6D6F636552;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xEB00000000646564;
  }

  (*((swift_isaMask & *a2) + 0x180))(v4, v6, v7);
}

uint64_t MOSuggestionCollectionViewCellViewModel.handleSuggestionCollectionViewQuickAdd(at:modifiedTitle:isPromptElligibleForTransfer:controller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = v5[2];
  v11 = (*(*v5 + 272))();
  if (v11)
  {
    v12 = 0x746E65636552;
  }

  else
  {
    v12 = 0x6E656D6D6F636552;
  }

  if (v11)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xEB00000000646564;
  }

  (*((swift_isaMask & *a5) + 0x170))(v10, a2, a3, a4, v12, v13);
}

unint64_t MOSuggestionCollectionViewCellViewModel.resetAssetViewModel(uuid:)(uint64_t a1)
{
  result = (*(*v1 + 296))();
  if (result)
  {
    v4 = result;
    v5 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = v4 & 0xC000000000000001;
      v8 = 4;
      v15 = v5;
      v16 = v4;
      v17 = v4 & 0xC000000000000001;
      v18 = i;
      while (1)
      {
        v9 = v8 - 4;
        if (!v7)
        {
          break;
        }

        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 - 3;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_21;
        }

LABEL_11:
        if (static UUID.== infix(_:_:)())
        {
          v12 = (*(*v1 + 312))(v19);
          if (*v11)
          {
            v13 = v11;
            v4 = a1;
            a1 = specialized static MOSuggestionSheetAssetViewModel.PLACEHOLDER_VIEW_MODEL(parent:)(v1);
            v5 = *v13;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *v13 = v5;
            if (!isUniquelyReferenced_nonNull_bridgeObject || v5 < 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
              *v13 = v5;
            }

            if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8) = a1;

            v12(v19, 0);
            a1 = v4;
            v5 = v15;
            v4 = v16;
          }

          else
          {
            v12(v19, 0);
          }

          v7 = v17;
          i = v18;
        }

        ++v8;
        if (v10 == i)
        {
        }
      }

      if (v9 >= *(v5 + 16))
      {
        goto LABEL_22;
      }

      v10 = v8 - 3;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionCellStyle@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SuggestionCellStyle.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t MOEventBundleStore.ResourceValidationResult.failedIndices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0) + 24);
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult.init(assetViewModels:updateIndex:uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  v7 = a6 + *(a5(0) + 24);

  return outlined init with take of UUID?(a4, v7);
}

Swift::OpaquePointer_optional __swiftcall MOSuggestionCollectionViewCellViewModel.targetReferences(previewOnly:previewMax:style:typeSorted:)(Swift::Bool previewOnly, Swift::Int previewMax, MomentsUIService::SuggestionCellStyle style, Swift::Bool typeSorted)
{
  if (previewOnly)
  {
    return MOEventBundle.orderedAssetReferencesForPreview(max:)(previewMax);
  }

  result = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  if (typeSorted)
  {
    if (result.value._rawValue)
    {

      v6 = specialized Array._copyToContiguousArray()(v5);
      specialized MutableCollection<>.sort(by:)(&v6);

      result.value._rawValue = v6;
    }
  }

  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(char a1, Swift::Int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v178 = a5;
  v179 = a6;
  v184 = a3;
  v10 = 0;
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v180 = v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v143 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v17 - 8);
  v190 = v143 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  __chkstk_darwin(v19 - 8);
  v189 = v143 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v21 - 8);
  v23 = v143 - v22;
  v183 = v6;
  if (a1)
  {
    v24 = MOEventBundle.orderedAssetReferencesForPreview(max:)(a2);
    goto LABEL_6;
  }

  v25 = MOEventBundle.orderedAssetReferencesForPreview(max:)(13);
  v24 = v25;
  if ((a4 & 1) == 0)
  {
LABEL_6:
    if (v24)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  v195[0] = specialized Array._copyToContiguousArray()(v26);
  specialized MutableCollection<>.sort(by:)(v195);

  v24 = v195[0];
LABEL_7:
  v181 = v24 >> 62;
  if (v24 >> 62)
  {
    goto LABEL_60;
  }

  v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v28 = specialized MOSuggestionCollectionViewCellViewModel.assetSizes(style:assetCount:)(v184, v27);
  if (!v28)
  {

    return 0;
  }

  v186 = v16;
  v187 = v12;
  v182 = v28;
  v169 = v27;
  v191 = v24;
  v177 = v11;
  v143[0] = v10;
  v29 = type metadata accessor for URL();
  v30 = *(*(v29 - 8) + 56);
  v30(v23, 1, 1, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
  v32 = *(v31 - 8);
  v188 = v23;
  v33 = *(v32 + 56);
  v33(v189, 1, 1, v31);
  v163 = type metadata accessor for Date();
  v34 = *(v163 - 8);
  v144 = *(v34 + 56);
  v167 = v34 + 56;
  v144(v190, 1, 1, v163);
  type metadata accessor for MOSuggestionSheetAssetViewModel(0);
  v11 = swift_allocObject();
  *(v11 + 64) = 0;
  v145 = (v11 + 64);
  *(v11 + 48) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 72) = 26;
  *(v11 + 80) = 0;
  v146 = (v11 + 72);
  v147 = (v11 + 80);
  *(v11 + 104) = 0;
  *(v11 + 96) = 0;
  v148 = (v11 + 96);
  *&v192 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL;
  v30(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_URL, 1, 1, v29);
  v35 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
  v149 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactName);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactID);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
  v150 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_contactFirstName);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
  v151 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_workoutName);
  *v38 = 0;
  v38[1] = 0;
  v152 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_livePhoto) = 0;
  v153 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_videoAsset) = 0;
  v39 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
  v154 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityName);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
  v155 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_activityStepCount);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_title);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
  v156 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_subtitle);
  *v42 = 0;
  v42[1] = 0;
  v43 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
  v157 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherString);
  *v43 = 0;
  v43[1] = 0;
  v158 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature;
  v33(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_weatherTemperature, 1, 1, v31);
  v44 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
  v159 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_calories);
  *v44 = 0;
  v44[1] = 0;
  v45 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
  v160 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_duration;
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
  v161 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_distance);
  *v46 = 0;
  v46[1] = 0;
  v47 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
  v162 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_averageHeartRate);
  *v47 = 0;
  v47[1] = 0;
  v48 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_squareCropRect;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 1;
  v49 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_landscapeCropRect;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  v50 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_portraitCropRect;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 1;
  v165 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_assignedAssetTileSize) = 11;
  v51 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
  v166 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapPrimaryField);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
  v168 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapSecondaryField);
  *v52 = 0;
  v52[1] = 0;
  v53 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
  v170 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mapLocationCount;
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_preComposedView) = 0;
  v55 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
  v171 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_valenceClassificationAndReflectiveInterval);
  *v55 = 0;
  v55[1] = 0;
  v56 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels);
  *&v172 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabels;
  *v56 = 0;
  v56[1] = 0;
  v57 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
  v173 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindLabelsShortened);
  *v57 = 0;
  v57[1] = 0;
  v58 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains);
  v174 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomains;
  *v58 = 0;
  v58[1] = 0;
  v59 = (v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened);
  v175 = v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDomainsShortened;
  *v59 = 0;
  v59[1] = 0;
  v176 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsLight) = 0;
  v185 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindAssociatedColorsDark) = 0;
  v164 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate;
  v144(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_stateOfMindDate, 1, 1, v163);
  v163 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColor) = 0;
  v167 = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaThirdPartyAppAssociatedColors) = 0;
  swift_weakInit();
  v143[1] = OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid;
  UUID.init()();
  *(v11 + 16) = 0x6C6F686563616C70;
  v144 = (v11 + 16);
  *(v11 + 24) = 0xEB00000000726564;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  v60 = *(v11 + 32);
  *(v11 + 32) = 0;

  swift_beginAccess();
  v61 = *(v11 + 40);
  *(v11 + 40) = 0;

  swift_beginAccess();
  v62 = *(v11 + 48);
  *(v11 + 48) = 0;

  swift_beginAccess();
  v63 = *(v11 + 56);
  *(v11 + 56) = 0;

  v64 = v145;
  swift_beginAccess();
  v65 = *v64;
  *v64 = 0;

  v66 = v146;
  swift_beginAccess();
  *v66 = 26;
  v67 = v147;
  swift_beginAccess();
  v68 = *v67;
  *v67 = 0;

  *(v11 + 88) = 0;
  v69 = v148;
  swift_beginAccess();
  *v69 = 0;
  *(v11 + 104) = 0;

  v70 = v192;
  swift_beginAccess();
  outlined assign with copy of URL?(v188, v11 + v70, &_s10Foundation3URLVSgMd);
  swift_endAccess();
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_mediaType) = 0;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isSquare) = 0;
  v71 = v149;
  swift_beginAccess();
  v192 = xmmword_1002A8990;
  *v71 = xmmword_1002A8990;

  v72 = v150;
  swift_beginAccess();
  *v72 = v192;

  v73 = v151;
  swift_beginAccess();
  *v73 = v192;

  v74 = v152;
  swift_beginAccess();
  v75 = *(v11 + v74);
  *(v11 + v74) = 0;

  v76 = v153;
  swift_beginAccess();
  v77 = *(v11 + v76);
  *(v11 + v76) = 0;

  v78 = v154;
  swift_beginAccess();
  *v78 = v192;

  v79 = v155;
  swift_beginAccess();
  *v79 = v192;

  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_motionActivityNumSteps) = 0;
  swift_beginAccess();
  *v41 = 0;
  v41[1] = 0;

  v80 = v156;
  swift_beginAccess();
  *v80 = 0;
  v80[1] = 0;

  v81 = v157;
  swift_beginAccess();
  *v81 = v192;

  v82 = v158;
  swift_beginAccess();
  outlined assign with copy of URL?(v189, v11 + v82, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  swift_endAccess();
  v83 = v159;
  swift_beginAccess();
  *v83 = v192;

  v84 = v160;
  swift_beginAccess();
  *v84 = 0;
  *(v84 + 8) = 0;
  v85 = v161;
  swift_beginAccess();
  *v85 = v192;

  v86 = v162;
  swift_beginAccess();
  *v86 = v192;

  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_shouldAutoPlay) = 0;
  swift_beginAccess();
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 1;
  swift_beginAccess();
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 1;
  swift_beginAccess();
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 1;
  v87 = v165;
  swift_beginAccess();
  *(v11 + v87) = 11;
  v88 = v166;
  swift_beginAccess();
  *v88 = 0;
  v88[1] = 0;

  v89 = v168;
  swift_beginAccess();
  *v89 = 0;
  v89[1] = 0;

  v90 = v170;
  swift_beginAccess();
  *v90 = 0;
  *(v90 + 8) = 1;
  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_isLoadingPlaceHolder) = 1;
  swift_beginAccess();
  v91 = *(v11 + v54);
  *(v11 + v54) = 0;

  v92 = v171;
  swift_beginAccess();
  *v92 = v192;

  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_reflectiveInterval) = 1;
  v93 = v172;
  swift_beginAccess();
  *v93 = v192;

  v94 = v173;
  swift_beginAccess();
  *v94 = v192;

  v95 = v174;
  swift_beginAccess();
  *v95 = v192;

  v96 = v175;
  swift_beginAccess();
  *v96 = v192;

  v97 = v176;
  swift_beginAccess();
  *(v11 + v97) = 0;

  v98 = v185;
  swift_beginAccess();
  *(v11 + v98) = 0;

  v99 = v164;
  swift_beginAccess();
  outlined assign with copy of URL?(v190, v11 + v99, &_s10Foundation4DateVSgMd);
  swift_endAccess();
  v100 = v163;
  swift_beginAccess();
  v101 = *(v11 + v100);
  *(v11 + v100) = 0;

  v102 = v167;
  swift_beginAccess();
  *(v11 + v102) = 0;

  *(v11 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_bgColorVariant) = 0;
  if (one-time initialization token for memory != -1)
  {
    swift_once();
  }

  v103 = type metadata accessor for Logger();
  __swift_project_value_buffer(v103, static MOAngelLogger.memory);

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();

  v106 = os_log_type_enabled(v104, v105);
  v16 = v177;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    *v107 = 136315394;
    v108 = UUID.uuidString.getter();
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &v193);

    *(v107 + 4) = v110;
    *(v107 + 12) = 2080;
    swift_beginAccess();
    v111 = *(v11 + 16);
    v112 = *(v11 + 24);

    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, &v193);

    *(v107 + 14) = v113;
    _os_log_impl(&_mh_execute_header, v104, v105, "[MOSuggestionSheetAssetViewModel] init=%s\t id=%s", v107, 0x16u);
    swift_arrayDestroy();
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v190, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v189, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v188, &_s10Foundation3URLVSgMd);
  v12 = v186;
  v114 = swift_allocObject();
  v115 = _sSa9repeating5countSayxGx_SitcfC16MomentsUIService31MOSuggestionSheetAssetViewModelC_Tt1g5Tf4gn_n(v11, v169);

  v176 = v114;
  *(v114 + 16) = v115;
  v175 = swift_allocObject();
  *(v175 + 16) = 0;
  v23 = v191;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v103, static MOAngelLogger.assets);

  v24 = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v193 = v118;
    *v117 = 134218498;
    *(v117 + 4) = v184;
    *(v117 + 12) = 2048;
    v23 = v191;
    if (v181)
    {
      v119 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v119 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v117 + 14) = v119;

    *(v117 + 22) = 2080;
    v121 = Array.debugDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v193);

    *(v117 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v24, v116, "[MOSuggestionCollectionViewCellViewModel] style: %ld, assetReferencesCount: %ld, assetSizes: %s", v117, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v118);
  }

  else
  {
  }

  v10 = 0;
  v185 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 < 0)
  {
    v123 = v23;
  }

  else
  {
    v123 = v23 & 0xFFFFFFFFFFFFFF8;
  }

  v173 = (v187 + 16);
  v174 = v23 & 0xC000000000000001;
  v170 = v123;
  v171 = (v187 + 8);
  v172 = xmmword_1002A4A70;
  if (v181)
  {
LABEL_28:
    if (v10 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_31;
    }
  }

  else
  {
    while (v10 != *(v185 + 16))
    {
LABEL_31:
      if (v174)
      {
        v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v124 = v125;
      }

      else
      {
        if (v10 >= *(v185 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          v27 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_9;
        }

        v124 = *(v23 + 8 * v10 + 32);
      }

      v126 = (*(*v124 + 120))(v125);
      v23 = specialized static MOBundleProcessingSession.signpostNameForAssetLoading(assetType:)();
      v190 = v127;
      LODWORD(v192) = v128;

      if (one-time initialization token for assetRendering != -1)
      {
        swift_once();
      }

      v129 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v129, static MOAngelSignposter.assetRendering);
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v130 = OSSignposter.logHandle.getter();
      v131 = static os_signpost_type_t.begin.getter();
      v24 = v130;
      if (OS_os_log.signpostsEnabled.getter())
      {
        if (v192)
        {
          if (HIDWORD(v23))
          {
            goto LABEL_57;
          }

          if ((v23 & 0xFFFFF800) == 0xD800)
          {
            goto LABEL_59;
          }

          if (v23 >> 16 > 0x10)
          {
            goto LABEL_58;
          }

          v132 = &v194;
        }

        else
        {
          if (!v23)
          {
            goto LABEL_56;
          }

          v132 = v23;
        }

        v133 = swift_slowAlloc();
        *v133 = 0;
        v134 = v186;
        v135 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v130, v131, v135, v132, "", v133, 2u);
        v12 = v134;
      }

      (*v173)(v180, v12, v16);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v11 = OSSignpostIntervalState.init(id:isOpen:)();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v24 = static MOSuggestionAssetCacheManager.shared;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v136 = swift_allocObject();
      *(v136 + 16) = v172;
      *(v136 + 32) = v124;
      if (v10 >= v182[2])
      {
        goto LABEL_55;
      }

      v137 = v136;
      LODWORD(v189) = *(v182 + v10 + 32);
      v138 = swift_allocObject();
      swift_weakInit();
      v139 = swift_allocObject();
      v140 = v190;
      *(v139 + 16) = v23;
      *(v139 + 24) = v140;
      *(v139 + 32) = v192;
      *(v139 + 40) = v11;
      *(v139 + 48) = v138;
      v141 = v178;
      v142 = v179;
      *(v139 + 56) = v176;
      *(v139 + 64) = v141;
      *(v139 + 72) = v142;
      *(v139 + 80) = v184;
      *(v139 + 88) = v191;
      *(v139 + 96) = v10;
      v190 = v10;
      *(v139 + 104) = v175;
      v187 = one-time initialization token for defaultQueue;

      *&v192 = v124;

      v188 = v138;

      if (v187 != -1)
      {
        swift_once();
      }

      (*(*v24 + 232))(v137, 0, static MOSuggestionAssetCacheManager.defaultQueue, v189, partial apply for closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:), v139);

      v12 = v186;
      v16 = v177;
      (*v171)(v186, v177);

      v23 = v191;
      v10 = v190 + 1;
      if (v181)
      {
        goto LABEL_28;
      }
    }
  }

  return v169;
}

uint64_t closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(unint64_t a1, const char *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unint64_t a11, unint64_t a12, uint64_t a13)
{
  v61 = a3;
  v62 = a5;
  v60 = a2;
  v17 = a9;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v57 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v37 = static OS_dispatch_queue.main.getter();
    v56 = a4;
    v38 = v37;
    v39 = swift_allocObject();
    v39[2] = a7;
    v39[3] = a8;
    v39[4] = a9;
    v68 = partial apply for closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:);
    v69 = v39;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed () -> ();
    v67 = &block_descriptor_149;
    a4 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(a4);

    LODWORD(a4) = v56;
    (*(v58 + 8))(v20, v18);
    (*(v57 + 8))(v23, v21);
    v40 = v60;
    v41 = v61;
    return $defer #1 () in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(v40, v41, a4);
  }

  v54 = v23;
  v55 = v20;
  v24 = v18;
  v25 = v21;
  v26 = a1;
  if (a1)
  {
    v27 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (a1 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_20;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v56 = a4;
    v52 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_37;
      }

      v28 = *(a1 + 32);
    }

    v53 = v28;
    v50 = a1;
    v51 = v21;
    if (a11 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = Strong;
    v27 = [*(Strong + 16) interfaceType];
    swift_beginAccess();
    a4 = v53;
    v30 = (*(*v25 + 496))(v53, a10, v29, a12, a13 + 16, v27);
    swift_endAccess();
    if (v30)
    {
      v26 = a7;
      swift_beginAccess();
      v24 = *(a7 + 16);

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(a7 + 16) = v24;
      if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || v24 < 0 || (v24 & 0x4000000000000000) != 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
        *(a7 + 16) = v24;
      }

      if ((a12 & 0x8000000000000000) == 0)
      {
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) > a12)
        {
          *((v24 & 0xFFFFFFFFFFFFFF8) + 8 * a12 + 0x20) = v30;
          *(a7 + 16) = v24;
          swift_endAccess();

          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v32 = static OS_dispatch_queue.main.getter();
          v33 = swift_allocObject();
          v33[2] = v26;
          v33[3] = a12;
          v33[4] = Strong;
          v33[5] = a8;
          v33[6] = a9;
          v68 = partial apply for closure #2 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:);
          v69 = v33;
          aBlock = _NSConcreteStackBlock;
          v65 = 1107296256;
          v66 = thunk for @escaping @callee_guaranteed () -> ();
          v67 = &block_descriptor_155;
          a4 = _Block_copy(&aBlock);

          v34 = v54;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v35 = v55;
          v36 = v52;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(a4);

          (*(v58 + 8))(v35, v36);
          (*(v57 + 8))(v34, v51);
          LODWORD(a4) = v56;
LABEL_43:
          v40 = v60;
          v41 = v61;
          return $defer #1 () in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(v40, v41, a4);
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    LODWORD(a4) = v56;
    v26 = v50;
  }

LABEL_20:
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static MOAngelLogger.assets);

  v27 = Logger.logObject.getter();
  LOBYTE(a8) = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v27, a8))
  {

    goto LABEL_43;
  }

  v17 = a4;
  a4 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  aBlock = v25;
  *a4 = 136315138;
  if (!v26)
  {
    v46 = 0xE300000000000000;
    v47 = 7104878;
LABEL_42:
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &aBlock);

    *(a4 + 1) = v49;
    _os_log_impl(&_mh_execute_header, v27, a8, "[MOSuggestionCollectionViewCellViewModel] failed to generate view model, asset=%s", a4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);

    LODWORD(a4) = v17;
    goto LABEL_43;
  }

  v24 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
LABEL_39:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_40:
    v45 = 0;
    goto LABEL_41;
  }

LABEL_26:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*(v24 + 16))
  {
    v44 = *(v26 + 32);
LABEL_29:
    v45 = v44;
LABEL_41:
    v63 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCSgMd);
    v47 = Optional.debugDescription.getter();
    v46 = v48;

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(v5 + 32);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  *v7 = v8;
  *(v7 + 1) = 0;
  v7[16] = 1;

  a2(v7);
  return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(v7, type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult);
}

uint64_t closure #2 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(v9 + 32);
  v14 = *(*a3 + 344);

  v14(v15);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&v11[v13], 0, 1, v16);
  *v11 = v12;
  *(v11 + 1) = a2;
  v11[16] = 0;
  a4(v11);
  return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(v11, type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult);
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v5 = result;
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 > result)
      {
        if (v7 > a2)
        {
          v3 = *(v6 + 32 + 8 * result);
          v8 = *(v6 + 32 + 8 * a2);

LABEL_7:
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v9 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v9) = 0;
          }

          v10 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v8;

          if ((v6 & 0x8000000000000000) == 0 && !v9)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v6 = result;
          v10 = result & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v10 + 16) > a2)
            {
              *(v10 + 8 * a2 + 32) = v3;

              *v2 = v6;
              return result;
            }

LABEL_24:
            __break(1u);
            return result;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(unint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unint64_t a11, uint64_t a12)
{
  v81 = a5;
  v78 = a4;
  v76 = a2;
  v77 = a3;
  v15 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0);
  v16 = *(v15 - 8);
  v71 = v15;
  v72 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v73 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v74 = &v64 - v19;
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v79 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = objc_autoreleasePoolPush();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v46 = static OS_dispatch_queue.main.getter();
    v47 = swift_allocObject();
    v47[2] = a7;
    v47[3] = a8;
    v47[4] = a9;
    v86 = partial apply for closure #1 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:);
    v87 = v47;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed () -> ();
    v85 = &block_descriptor_168;
    v48 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v80 + 8))(v22, v20);
    (*(v79 + 8))(v25, v23);
    goto LABEL_15;
  }

  v27 = Strong;
  v70 = a7;
  v69 = v22;
  v67 = v20;
  v68 = v23;
  v28 = a9;
  v29 = a1;
  if (!a1)
  {
LABEL_14:
    v49 = v29;
    v50 = specialized static MOSuggestionSheetAssetViewModel.PLACEHOLDER_VIEW_MODEL(parent:)(v27);
    v51 = *(v71 + 24);
    v52 = v74;
    (*(*v27 + 43))();
    v53 = type metadata accessor for UUID();
    (*(*(v53 - 8) + 56))(v52 + v51, 0, 1, v53);
    v54 = v70;
    *v52 = v50;
    *(v52 + 8) = v54;
    *(v52 + 16) = 0;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v71 = static OS_dispatch_queue.main.getter();
    v55 = v73;
    outlined init with copy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(v52, v73);
    v56 = (*(v72 + 80) + 40) & ~*(v72 + 80);
    v57 = swift_allocObject();
    v57[2] = v49;
    v57[3] = a8;
    v57[4] = v28;
    outlined init with take of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(v55, v57 + v56);
    v86 = partial apply for closure #3 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:);
    v87 = v57;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed () -> ();
    v85 = &block_descriptor_174;
    v58 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v59 = v25;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v60 = v69;
    v61 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v62 = v71;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v58);

    (*(v80 + 8))(v60, v61);
    (*(v79 + 8))(v59, v68);
    outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(v52, type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult);
    goto LABEL_15;
  }

  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    v63 = v29;
    result = _CocoaArrayWrapper.endIndex.getter();
    v29 = v63;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_14;
    }
  }

  v66 = v25;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v33 = v29;
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v32 = a8;
    goto LABEL_8;
  }

  if (*(v30 + 16))
  {
    v32 = a8;
    v33 = v29;
    v34 = *(v29 + 32);
LABEL_8:
    if (a11 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v65 = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = [v27[2] interfaceType];
    swift_beginAccess();
    v36 = v34;
    v37 = v34;
    v38 = v70;
    v39 = (*(*v27 + 62))(v36, a10, v65, v70, a12 + 16, v35);
    swift_endAccess();
    if (v39)
    {
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v74 = static OS_dispatch_queue.main.getter();
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = v38;
      v40[4] = v27;
      v40[5] = v32;
      v40[6] = a9;
      v86 = partial apply for closure #2 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:);
      v87 = v40;
      aBlock = _NSConcreteStackBlock;
      v83 = 1107296256;
      v84 = thunk for @escaping @callee_guaranteed () -> ();
      v85 = &block_descriptor_180;
      v41 = _Block_copy(&aBlock);

      v42 = v66;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v43 = v69;
      v44 = v67;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v45 = v74;
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v41);

      (*(v80 + 8))(v43, v44);
      (*(v79 + 8))(v42, v68);
LABEL_15:
      objc_autoreleasePoolPop(v75);
      return $defer #1 () in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(v76, v77, v78);
    }

    v25 = v66;
    v28 = a9;
    v29 = v33;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 32);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *v7 = 0;
  *(v7 + 1) = a1;
  v7[16] = 0;
  a2(v7);
  return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(v7, type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult);
}

uint64_t closure #2 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 32);
  (*(*a3 + 344))();
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v11[v12], 0, 1, v13);
  *v11 = a1;
  *(v11 + 1) = a2;
  v11[16] = 0;

  a4(v11);
  return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(v11, type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult);
}

uint64_t closure #3 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static MOAngelLogger.assets);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_16;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v19 = v11;
  *v10 = 136315138;
  if (!a1)
  {
    v15 = 0xE300000000000000;
    v16 = 7104878;
LABEL_15:
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v19);

    *(v10 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "[MOSuggestionCollectionViewCellViewModel] failed to generate view model, asset=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);

LABEL_16:

    return a2(a4);
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a1 + 32);
LABEL_10:
    v14 = v13;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCSgMd);
    v16 = Optional.debugDescription.getter();
    v15 = v17;

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t MOSuggestionCollectionViewCellViewModel.fetchAssetsForBundle(previewOnly:previewMax:style:completionHandler:)(char a1, Swift::Int a2, char a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  LOBYTE(v6) = a3;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v65 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v54 - v13;
  v64 = v5;
  if (a1)
  {
    v15 = a2;
  }

  else
  {
    v15 = 13;
  }

  result = MOEventBundle.orderedAssetReferencesForPreview(max:)(v15);
  if (result)
  {
    v17 = result;
    v66 = result >> 62;
    if (result >> 62)
    {
      goto LABEL_55;
    }

    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v19 = specialized MOSuggestionCollectionViewCellViewModel.assetSizes(style:assetCount:)(v6, v18);
    if (v19)
    {
      v67 = v19;
      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = _swiftEmptyArrayStorage;
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static MOAngelLogger.assets);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      v23 = os_log_type_enabled(v21, v22);
      v74 = v17;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v75 = v25;
        *v24 = 134218498;
        *(v24 + 4) = v6;
        *(v24 + 12) = 2048;
        if (v66)
        {
          v26 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v24 + 14) = v26;

        *(v24 + 22) = 2080;
        v27 = Array.debugDescription.getter();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v75);

        *(v24 + 24) = v29;
        v17 = v74;
        _os_log_impl(&_mh_execute_header, v21, v22, "[MOSuggestionCollectionViewCellViewModel] style: %ld, assetReferencesCount: %ld, assetSizes: %s", v24, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v25);
      }

      else
      {
      }

      v6 = 0;
      v30 = v17 & 0xFFFFFFFFFFFFFF8;
      v69 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 < 0)
      {
        v30 = v17;
      }

      v54[1] = v30;
      v58 = (v10 + 16);
      v59 = v17 & 0xC000000000000001;
      v55 = (v10 + 8);
      v57 = xmmword_1002A4A70;
      v68 = v14;
      v56 = v9;
      if (v66)
      {
        while (v6 != _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_25:
          if (v59)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = v31;
          }

          else
          {
            if (v6 >= *(v69 + 16))
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              v18 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_7;
            }

            v10 = *(v17 + 8 * v6 + 32);
          }

          v32 = (*(*v10 + 120))(v31);
          v33 = specialized static MOBundleProcessingSession.signpostNameForAssetLoading(assetType:)();
          v73 = v34;
          v36 = v35;

          if (one-time initialization token for assetRendering != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for OSSignposter();
          __swift_project_value_buffer(v37, static MOAngelSignposter.assetRendering);
          OSSignposter.logHandle.getter();
          OSSignpostID.init(log:)();
          v38 = OSSignposter.logHandle.getter();
          v39 = static os_signpost_type_t.begin.getter();
          if (OS_os_log.signpostsEnabled.getter())
          {
            if (v36)
            {
              if (v33 >> 32)
              {
                goto LABEL_52;
              }

              if ((v33 & 0xFFFFF800) == 0xD800)
              {
                goto LABEL_54;
              }

              if (v33 >> 16 > 0x10)
              {
                goto LABEL_53;
              }

              v40 = &v76;
            }

            else
            {
              if (!v33)
              {
                goto LABEL_51;
              }

              v40 = v33;
            }

            v17 = swift_slowAlloc();
            *v17 = 0;
            v41 = v68;
            v42 = OSSignpostID.rawValue.getter();
            v43 = v40;
            v14 = v41;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v42, v43, "", v17, 2u);
          }

          (*v58)(v65, v14, v9);
          type metadata accessor for OSSignpostIntervalState();
          swift_allocObject();
          v44 = OSSignpostIntervalState.init(id:isOpen:)();
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v45 = static MOSuggestionAssetCacheManager.shared;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v46 = swift_allocObject();
          *(v46 + 16) = v57;
          *(v46 + 32) = v10;
          if (v6 >= v67[2])
          {
            goto LABEL_50;
          }

          v47 = v46;
          v72 = *(v67 + v6 + 32);
          v48 = v36;
          v49 = swift_allocObject();
          swift_weakInit();
          v50 = swift_allocObject();
          v51 = v73;
          *(v50 + 16) = v33;
          *(v50 + 24) = v51;
          *(v50 + 32) = v48;
          *(v50 + 40) = v44;
          *(v50 + 48) = v49;
          v52 = v63;
          *(v50 + 56) = v62;
          *(v50 + 64) = v52;
          v53 = v61;
          *(v50 + 72) = v60;
          *(v50 + 80) = v6;
          *(v50 + 88) = v53;
          *(v50 + 96) = v74;
          v70 = one-time initialization token for defaultQueue;

          v71 = v10;

          v73 = v44;

          if (v70 != -1)
          {
            swift_once();
          }

          (*(*v45 + 232))(v47, 0, static MOSuggestionAssetCacheManager.defaultQueue, v72, partial apply for closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsForBundle(previewOnly:previewMax:style:completionHandler:), v50);

          v14 = v68;
          v9 = v56;
          (*v55)(v68, v56);

          ++v6;
          v17 = v74;
          if (!v66)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        if (v6 != *(v69 + 16))
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsForBundle(previewOnly:previewMax:style:completionHandler:)(unint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void, char *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v45 = *(v17 - 8);
  v46 = v17;
  __chkstk_darwin(v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    UUID.init()();
    a7(0, v23);
    (*(v21 + 8))(v23, v20);
    return $defer #1 () in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(v48, v49, v50);
  }

  v25 = Strong;
  v42[1] = a5;
  if (!a1)
  {
LABEL_13:
    swift_beginAccess();
    v35 = *(a11 + 16);
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
    }

    else
    {
      *(a11 + 16) = v36;
      if (!(a12 >> 62))
      {
        if (v36 == *((a12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_16:
          swift_beginAccess();
          specialized MutableCollection<>.sort(by:)((a9 + 16));
          swift_endAccess();
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v37 = static OS_dispatch_queue.main.getter();
          v38 = swift_allocObject();
          v38[2] = a7;
          v38[3] = a8;
          v38[4] = a9;
          v38[5] = v25;
          aBlock[4] = partial apply for closure #2 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsForBundle(previewOnly:previewMax:style:completionHandler:);
          aBlock[5] = v38;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_22;
          v39 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v41 = v43;
          v40 = v44;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v39);

          (*(v47 + 8))(v41, v40);
          (*(v45 + 8))(v19, v46);
          return $defer #1 () in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(v48, v49, v50);
        }

LABEL_20:

        return $defer #1 () in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(v48, v49, v50);
      }
    }

    if (v36 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(a1 + 32);
LABEL_8:
    v28 = v27;
    swift_beginAccess();
    v29 = *(a9 + 16);
    v30 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a9 + 16) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
      *(a9 + 16) = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v29);
    }

    v29[2] = v33 + 1;
    v34 = &v29[2 * v33];
    v34[4] = v30;
    v34[5] = a10;
    *(a9 + 16) = v29;
    swift_endAccess();

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 () in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolder(previewOnly:previewMax:style:typeSorted:completionHandler:)(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for assetRendering != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static MOAngelSignposter.assetRendering);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v7, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v18, v17, a1, v15, v16, 2u);

LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsForBundle(previewOnly:previewMax:style:completionHandler:)(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a3 + 16);
  v13 = *(v12 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v19 = a2;
    v20 = a1;
    v21 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = 32;
    do
    {
      v16 = *(v12 + v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 16;
      --v13;
    }

    while (v13);

    a1 = v20;
    v14 = v21;
  }

  v17 = [*(a4 + 16) bundleIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  a1(v14, v11);

  return (*(v9 + 8))(v11, v8);
}

void MOAssetAndMediaType.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt a3, char a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (a4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a3);
  }
}

Swift::Int MOAssetAndMediaType.hashValue.getter(uint64_t a1, Swift::UInt a2, char a3)
{
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOAssetAndMediaType()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MOAssetAndMediaType()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOAssetAndMediaType()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v10);
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = _swiftEmptyArrayStorage;
      }

      else
      {
        a3(a2);
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v15 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_114:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v124 = v10;
      v107 = *(v10 + 2);
      if (v107 >= 2)
      {
        while (*v7)
        {
          v108 = *&v10[16 * v107];
          v109 = *&v10[16 * v107 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 8 * v108), (*v7 + 8 * *&v10[16 * v107 + 16]), (*v7 + 8 * v109), v5);
          if (v6)
          {
            goto LABEL_124;
          }

          if (v109 < v108)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v107 - 2 >= *(v10 + 2))
          {
            goto LABEL_140;
          }

          v110 = &v10[16 * v107];
          *v110 = v108;
          *(v110 + 1) = v109;
          v124 = v10;
          specialized Array.remove(at:)(v107 - 1);
          v10 = v124;
          v107 = *(v124 + 2);
          if (v107 <= 1)
          {
            goto LABEL_124;
          }
        }

        goto LABEL_150;
      }

LABEL_124:

      return;
    }

LABEL_146:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    goto LABEL_116;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 >= v8)
  {
    goto LABEL_33;
  }

  v12 = *v7;
  v13 = *(*v7 + 8 * v11);
  v119 = v8;
  v14 = *(*v7 + 8 * v9);
  v5 = v13;
  v15 = MOEventBundle.bundleRankingScore.getter();
  v16 = MOEventBundle.bundleRankingScore.getter();

  v9 = v11 + 2;
  if (v11 + 2 >= v119)
  {
    goto LABEL_24;
  }

  v113 = v11;
  v17 = (v12 + 8 * v11 + 16);
  do
  {
    v18 = *(v17 - 1);
    v19 = *v17;
    v5 = v18;
    v20 = [v19 rankingDictionary];
    v21 = 0.0;
    if (v20)
    {
      v22 = v20;
      v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v121, "rankingScore");
      BYTE5(v121[1]) = 0;
      HIWORD(v121[1]) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v122), (v25 & 1) != 0))
      {
        outlined init with copy of Any(*(v23 + 56) + 32 * v24, v123);
        outlined destroy of AnyHashable(v122);

        if (swift_dynamicCast())
        {
          v21 = v121[0];
        }
      }

      else
      {

        outlined destroy of AnyHashable(v122);
      }
    }

    v26 = [v5 rankingDictionary];
    if (v26)
    {
      v27 = v26;
      v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v121, "rankingScore");
      BYTE5(v121[1]) = 0;
      HIWORD(v121[1]) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v28 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v122), (v30 & 1) != 0))
      {
        outlined init with copy of Any(*(v28 + 56) + 32 * v29, v123);
        outlined destroy of AnyHashable(v122);

        if (swift_dynamicCast())
        {

          if (v16 < v15 == v121[0] >= v21)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v122);
      }
    }

    if (v16 < v15 == v21 <= 0.0)
    {
      goto LABEL_23;
    }

LABEL_21:
    ++v17;
    ++v9;
  }

  while (v119 != v9);
  v9 = v119;
LABEL_23:
  v11 = v113;
LABEL_24:
  if (v16 < v15)
  {
    if (v9 < v11)
    {
      goto LABEL_143;
    }

    v31 = v9;
    if (v11 < v9)
    {
      v32 = 8 * v9 - 8;
      v33 = 8 * v11;
      v34 = v11;
      do
      {
        if (v34 != --v31)
        {
          v36 = *v7;
          if (!*v7)
          {
            goto LABEL_149;
          }

          v35 = *(v36 + v33);
          *(v36 + v33) = *(v36 + v32);
          *(v36 + v32) = v35;
        }

        ++v34;
        v32 -= 8;
        v33 += 8;
      }

      while (v34 < v31);
    }
  }

LABEL_33:
  v37 = v7[1];
  if (v9 >= v37)
  {
    goto LABEL_63;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_142;
  }

  if (v9 - v11 >= a4)
  {
    goto LABEL_63;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_144;
  }

  if (v11 + a4 < v37)
  {
    v37 = v11 + a4;
  }

  if (v37 < v11)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v9 == v37)
  {
    goto LABEL_63;
  }

  v38 = v9;
  v117 = v37;
  v111 = v7;
  v112 = v6;
  v39 = v11;
  v40 = *v7;
  v41 = *v7 + 8 * v9 - 8;
  v114 = v39;
  v42 = v39 - v9;
  v43 = v38;
LABEL_43:
  v118 = v41;
  v120 = v43;
  v44 = *(v40 + 8 * v43);
  v45 = v42;
  while (1)
  {
    v46 = *v41;
    v47 = v44;
    v5 = v46;
    v48 = [v47 rankingDictionary];
    v49 = 0.0;
    if (v48)
    {
      v50 = v48;
      v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v121, "rankingScore");
      BYTE5(v121[1]) = 0;
      HIWORD(v121[1]) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v51 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v122), (v53 & 1) != 0))
      {
        outlined init with copy of Any(*(v51 + 56) + 32 * v52, v123);
        outlined destroy of AnyHashable(v122);

        if (swift_dynamicCast())
        {
          v49 = v121[0];
        }
      }

      else
      {

        outlined destroy of AnyHashable(v122);
      }
    }

    v54 = [v5 rankingDictionary];
    if (v54)
    {
      v55 = v54;
      v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v121, "rankingScore");
      BYTE5(v121[1]) = 0;
      HIWORD(v121[1]) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v56 + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(v122), (v58 & 1) != 0))
      {
        outlined init with copy of Any(*(v56 + 56) + 32 * v57, v123);
        outlined destroy of AnyHashable(v122);

        if (swift_dynamicCast())
        {

          if (v121[0] >= v49)
          {
            goto LABEL_42;
          }

          goto LABEL_58;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v122);
      }
    }

    if (v49 <= 0.0)
    {
      goto LABEL_42;
    }

LABEL_58:
    if (!v40)
    {
      break;
    }

    v59 = *v41;
    v44 = *(v41 + 8);
    *v41 = v44;
    *(v41 + 8) = v59;
    v41 -= 8;
    if (__CFADD__(v45++, 1))
    {
LABEL_42:
      v43 = v120 + 1;
      v41 = v118 + 8;
      --v42;
      if (v120 + 1 != v117)
      {
        goto LABEL_43;
      }

      v9 = v117;
      v7 = v111;
      v6 = v112;
      v11 = v114;
LABEL_63:
      if (v9 < v11)
      {
        goto LABEL_141;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v62 = *(v10 + 2);
      v61 = *(v10 + 3);
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v10);
      }

      *(v10 + 2) = v63;
      v64 = &v10[16 * v62];
      *(v64 + 4) = v11;
      *(v64 + 5) = v9;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_151;
      }

      if (!v62)
      {
LABEL_3:
        v8 = v7[1];
        if (v9 >= v8)
        {
          goto LABEL_114;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v65 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v66 = *(v10 + 4);
          v67 = *(v10 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_83:
          if (v69)
          {
            goto LABEL_130;
          }

          v82 = &v10[16 * v63];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_133;
          }

          v88 = &v10[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_137;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v63 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v92 = &v10[16 * v63];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_97:
        if (v87)
        {
          goto LABEL_132;
        }

        v95 = &v10[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_135;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_104:
        v103 = v65 - 1;
        if (v65 - 1 >= v63)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v7)
        {
          goto LABEL_148;
        }

        v104 = *&v10[16 * v103 + 32];
        v105 = *&v10[16 * v65 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 8 * v104), (*v7 + 8 * *&v10[16 * v65 + 32]), (*v7 + 8 * v105), v5);
        if (v6)
        {
          goto LABEL_124;
        }

        if (v105 < v104)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v103 >= *(v10 + 2))
        {
          goto LABEL_127;
        }

        v106 = &v10[16 * v103];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        v124 = v10;
        specialized Array.remove(at:)(v65);
        v10 = v124;
        v63 = *(v124 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v10[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_128;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_129;
      }

      v77 = &v10[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_131;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_134;
      }

      if (v81 >= v73)
      {
        v99 = &v10[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_138;
        }

        if (v68 < v102)
        {
          v65 = v63 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }
  }

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
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v113 = a1;
  v122 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v122);
  v121 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v120 = &v107 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v123 = result;
    v103 = *(result + 16);
    if (v103 >= 2)
    {
      while (*v17)
      {
        a4 = *(result + 16 * v103);
        v104 = result;
        v105 = *(result + 16 * (v103 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v17 + 8 * a4), (*v17 + 8 * *(result + 16 * (v103 - 1) + 32)), (*v17 + 8 * v105), v5);
        if (v6)
        {
        }

        if (v105 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v104);
        }

        if (v103 - 2 >= *(v104 + 2))
        {
          goto LABEL_115;
        }

        v106 = &v104[16 * v103];
        *v106 = a4;
        v106[1] = v105;
        v123 = v104;
        specialized Array.remove(at:)(v103 - 1);
        result = v123;
        v103 = *(v123 + 2);
        if (v103 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v15 = 0;
  v119 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v112 = a4;
  v108 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v117 = v14;
      v110 = v16;
      v111 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v116 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = *(v19 + 16);

      v23 = [v22 displayStartDate];
      v24 = v120;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [*(v21 + 16) displayStartDate];
      v26 = v121;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v118) = static Date.< infix(_:_:)();
      v27 = *v119;
      v28 = v122;
      (*v119)(v26, v122);
      v27(v24, v28);

      v109 = v17;
      v29 = (v17 + 2);
      while (1)
      {
        v15 = v117;
        if (v117 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *(*v5 + 16);

        v32 = [v31 displayStartDate];
        v33 = v120;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = [*(v30 + 16) displayStartDate];
        v35 = v121;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v34) = static Date.< infix(_:_:)() & 1;
        v36 = v35;
        v37 = v122;
        v27(v36, v122);
        v27(v33, v37);

        ++v29;
        v5 += 8;
        if ((v118 & 1) != v34)
        {
          v15 = (v29 - 1);
          break;
        }
      }

      v16 = v110;
      v6 = v111;
      a4 = v112;
      v17 = v109;
      v38 = v116;
      if (v118)
      {
        if (v15 < v109)
        {
          goto LABEL_118;
        }

        a3 = v108;
        if (v109 < v15)
        {
          v39 = 8 * v15 - 8;
          v40 = v15;
          v41 = v109;
          do
          {
            if (v41 != --v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v42 = *(v43 + v38);
              *(v43 + v38) = *(v43 + v39);
              *(v43 + v39) = v42;
            }

            v41 = (v41 + 1);
            v39 -= 8;
            v38 += 8;
          }

          while (v41 < v40);
        }
      }

      else
      {
        a3 = v108;
      }
    }

    v44 = a3[1];
    if (v15 < v44)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v45 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v45 >= v44)
        {
          v45 = a3[1];
        }

        if (v45 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v45)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v59 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v59;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
      v16 = result;
    }

    a4 = *(v16 + 2);
    v60 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v60 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), a4 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v5;
    v61 = &v16[16 * a4];
    *(v61 + 4) = v17;
    *(v61 + 5) = v15;
    v62 = *v113;
    if (!*v113)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v63 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v64 = *(v16 + 4);
          v65 = *(v16 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_56:
          if (v67)
          {
            goto LABEL_105;
          }

          v80 = &v16[16 * v5];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_108;
          }

          v86 = &v16[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_112;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v90 = &v16[16 * v5];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_70:
        if (v85)
        {
          goto LABEL_107;
        }

        v93 = &v16[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_110;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v63 - 1;
        if (v63 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
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
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v101 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v63 + 32]), (*a3 + 8 * v17), v62);
        if (v6)
        {
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
        }

        if (a4 >= *(v101 + 2))
        {
          goto LABEL_102;
        }

        v102 = &v101[16 * a4];
        *(v102 + 4) = v5;
        *(v102 + 5) = v17;
        v123 = v101;
        a4 = &v123;
        result = specialized Array.remove(at:)(v63);
        v16 = v123;
        v5 = *(v123 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v16[16 * v5 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_103;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_104;
      }

      v75 = &v16[16 * v5];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_106;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_109;
      }

      if (v79 >= v71)
      {
        v97 = &v16[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_113;
        }

        if (v66 < v100)
        {
          v63 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v112;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v110 = v16;
  v111 = v6;
  v118 = *a3;
  v46 = v118 + 8 * v15 - 8;
  v109 = v17;
  a4 = v17 - v15;
  v114 = v45;
LABEL_29:
  v116 = v46;
  v117 = v15;
  v5 = *(v118 + 8 * v15);
  v115 = a4;
  v47 = v46;
  while (1)
  {
    v48 = *v47;
    v49 = *(v5 + 16);

    v50 = [v49 displayStartDate];
    v51 = v120;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = [*(v48 + 16) displayStartDate];
    v53 = v121;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v52) = static Date.< infix(_:_:)();
    v54 = *v119;
    v55 = v53;
    v56 = v122;
    (*v119)(v55, v122);
    v54(v51, v56);

    if ((v52 & 1) == 0)
    {
LABEL_28:
      v15 = v117 + 1;
      v46 = v116 + 8;
      a4 = v115 - 1;
      if ((v117 + 1) != v114)
      {
        goto LABEL_29;
      }

      v15 = v114;
      v16 = v110;
      v6 = v111;
      a3 = v108;
      v17 = v109;
      goto LABEL_36;
    }

    if (!v118)
    {
      break;
    }

    v57 = *v47;
    v5 = v47[1];
    *v47 = v5;
    v47[1] = v57;
    --v47;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v111 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_114:
    v10 = *v111;
    if (!*v111)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_116:
      v118 = v9;
      v102 = *(v9 + 2);
      if (v102 >= 2)
      {
        while (*v6)
        {
          v103 = *&v9[16 * v102];
          v104 = *&v9[16 * v102 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v103), (*v6 + 8 * *&v9[16 * v102 + 16]), (*v6 + 8 * v104), v10);
          if (v5)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          }

          if (v102 - 2 >= *(v9 + 2))
          {
            goto LABEL_140;
          }

          v105 = &v9[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          v118 = v9;
          result = specialized Array.remove(at:)(v102 - 1);
          v9 = v118;
          v102 = *(v118 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_150;
      }
    }

LABEL_146:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v9 = result;
    goto LABEL_116;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
LABEL_4:
  v10 = (v8 + 1);
  if (v8 + 1 >= v7)
  {
    goto LABEL_33;
  }

  v11 = *v6;

  v12 = MOEventBundle.baseScore.getter();
  v13 = MOEventBundle.baseScore.getter();

  v10 = (v8 + 2);
  if (v8 + 2 >= v7)
  {
    goto LABEL_24;
  }

  v114 = v7;
  v108 = v8;
  v14 = v11 + 8 * v8 + 16;
  do
  {
    v15 = v10;
    v16 = *(v14 - 8);
    v17 = *(*v14 + 16);

    v18 = [v17 rankingDictionary];
    v19 = 0.0;
    if (v18)
    {
      v20 = v18;
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v116), (v23 & 1) != 0))
      {
        outlined init with copy of Any(*(v21 + 56) + 32 * v22, v117);
        outlined destroy of AnyHashable(v116);

        if (swift_dynamicCast())
        {
          v19 = 1.67436463e243;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v116);
      }
    }

    v24 = [*(v16 + 16) rankingDictionary];
    if (v24)
    {
      v25 = v24;
      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v116), (v28 & 1) != 0))
      {
        outlined init with copy of Any(*(v26 + 56) + 32 * v27, v117);
        outlined destroy of AnyHashable(v116);

        if (swift_dynamicCast())
        {

          v10 = v15;
          if (v13 < v12 == v19 <= 1.67436463e243)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v116);
      }
    }

    v10 = v15;
    if (v13 < v12 == v19 <= 0.0)
    {
      goto LABEL_23;
    }

LABEL_21:
    ++v10;
    v14 += 8;
  }

  while (v114 != v10);
  v10 = v114;
LABEL_23:
  v8 = v108;
LABEL_24:
  if (v13 < v12)
  {
    if (v10 < v8)
    {
      goto LABEL_143;
    }

    if (v8 < v10)
    {
      v29 = 8 * v10 - 8;
      v30 = 8 * v8;
      v31 = v10;
      v32 = v8;
      do
      {
        if (v32 != --v31)
        {
          v34 = *v6;
          if (!*v6)
          {
            goto LABEL_149;
          }

          v33 = *(v34 + v30);
          *(v34 + v30) = *(v34 + v29);
          *(v34 + v29) = v33;
        }

        ++v32;
        v29 -= 8;
        v30 += 8;
      }

      while (v32 < v31);
    }
  }

LABEL_33:
  v35 = v6[1];
  if (v10 >= v35)
  {
    goto LABEL_63;
  }

  if (__OFSUB__(v10, v8))
  {
    goto LABEL_142;
  }

  if (&v10[-v8] >= a4)
  {
    goto LABEL_63;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_144;
  }

  if (v8 + a4 < v35)
  {
    v35 = (v8 + a4);
  }

  if (v35 < v8)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v10 == v35)
  {
    goto LABEL_63;
  }

  v112 = v35;
  v106 = v6;
  v107 = v5;
  v36 = *v6;
  v37 = (*v6 + 8 * v10 - 8);
  v109 = v8;
  v38 = v8 - v10;
LABEL_43:
  v113 = v37;
  v115 = v10;
  v39 = *(v36 + 8 * v10);
  v40 = v38;
  while (1)
  {
    v41 = *v37;
    v42 = *(v39 + 16);

    v43 = [v42 rankingDictionary];
    v44 = 0.0;
    if (v43)
    {
      v45 = v43;
      v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v46 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(v116), (v48 & 1) != 0))
      {
        outlined init with copy of Any(*(v46 + 56) + 32 * v47, v117);
        outlined destroy of AnyHashable(v116);

        if (swift_dynamicCast())
        {
          v44 = 1.67436463e243;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v116);
      }
    }

    v49 = [*(v41 + 16) rankingDictionary];
    if (v49)
    {
      v50 = v49;
      v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v51 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v116), (v53 & 1) != 0))
      {
        outlined init with copy of Any(*(v51 + 56) + 32 * v52, v117);
        outlined destroy of AnyHashable(v116);

        if (swift_dynamicCast())
        {

          if (v44 <= 1.67436463e243)
          {
            goto LABEL_42;
          }

          goto LABEL_58;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v116);
      }
    }

    if (v44 <= 0.0)
    {
      goto LABEL_42;
    }

LABEL_58:
    if (!v36)
    {
      break;
    }

    v54 = *v37;
    v39 = v37[1];
    *v37 = v39;
    v37[1] = v54;
    --v37;
    if (__CFADD__(v40++, 1))
    {
LABEL_42:
      v10 = v115 + 1;
      v37 = v113 + 1;
      --v38;
      if (v115 + 1 != v112)
      {
        goto LABEL_43;
      }

      v10 = v112;
      v6 = v106;
      v5 = v107;
      v8 = v109;
LABEL_63:
      if (v10 < v8)
      {
        goto LABEL_141;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v57 = *(v9 + 2);
      v56 = *(v9 + 3);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v58;
      v59 = &v9[16 * v57];
      *(v59 + 4) = v8;
      *(v59 + 5) = v10;
      v8 = v10;
      v10 = *v111;
      if (!*v111)
      {
        goto LABEL_151;
      }

      if (!v57)
      {
LABEL_3:
        v7 = v6[1];
        if (v8 >= v7)
        {
          goto LABEL_114;
        }

        goto LABEL_4;
      }

      while (1)
      {
        v60 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v9 + 4);
          v62 = *(v9 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_83:
          if (v64)
          {
            goto LABEL_130;
          }

          v77 = &v9[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_133;
          }

          v83 = &v9[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_137;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v58 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v87 = &v9[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_97:
        if (v82)
        {
          goto LABEL_132;
        }

        v90 = &v9[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_135;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_104:
        v98 = v60 - 1;
        if (v60 - 1 >= v58)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v6)
        {
          goto LABEL_148;
        }

        v99 = *&v9[16 * v98 + 32];
        v100 = *&v9[16 * v60 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v99), (*v6 + 8 * *&v9[16 * v60 + 32]), (*v6 + 8 * v100), v10);
        if (v5)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v98 >= *(v9 + 2))
        {
          goto LABEL_127;
        }

        v101 = &v9[16 * v98];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        v118 = v9;
        result = specialized Array.remove(at:)(v60);
        v9 = v118;
        v58 = *(v118 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v9[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_128;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_129;
      }

      v72 = &v9[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_131;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_134;
      }

      if (v76 >= v68)
      {
        v94 = &v9[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_138;
        }

        if (v63 < v97)
        {
          v60 = v58 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }
  }

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
  return result;
}