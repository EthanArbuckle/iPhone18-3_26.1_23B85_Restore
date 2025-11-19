uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EE707C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized static SuggestionSheetManager.contentImpl(bySpiType:)()
{
  v0 = *MEMORY[0x277D2A0B8];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.Photo(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.Photo;
LABEL_16:
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    return result;
  }

  v7 = *MEMORY[0x277D2A0F0];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    goto LABEL_18;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.Video(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.Video;
    goto LABEL_16;
  }

  v14 = *MEMORY[0x277D2A080];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.LivePhoto;
    goto LABEL_16;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_20;
  }

  v24 = *MEMORY[0x277D2A098];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {

LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_238AD9F20;
    *(v30 + 32) = type metadata accessor for JournalingSuggestion.Song(0);
    *(v30 + 40) = &protocol witness table for JournalingSuggestion.Song;
    *(v30 + 48) = type metadata accessor for JournalingSuggestion.Podcast(0);
    *(v30 + 56) = &protocol witness table for JournalingSuggestion.Podcast;
    v31 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
    result = v30;
    *(v30 + 64) = v31;
    *(v30 + 72) = &protocol witness table for JournalingSuggestion.GenericMedia;
    return result;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_25;
  }

  v32 = *MEMORY[0x277D2A060];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {

LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.Contact(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.Contact;
    goto LABEL_16;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_30;
  }

  v38 = *MEMORY[0x277D2A0F8];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_238AD9810;
    *(v44 + 32) = type metadata accessor for JournalingSuggestion.Workout(0);
    *(v44 + 40) = &protocol witness table for JournalingSuggestion.Workout;
    v45 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
    result = v44;
    v46 = &protocol witness table for JournalingSuggestion.Workout.Details;
LABEL_36:
    *(v44 + 48) = v45;
    *(v44 + 56) = v46;
    return result;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_35;
  }

  v47 = *MEMORY[0x277D2A100];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;
  if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
  {

LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.WorkoutGroup;
    goto LABEL_16;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v52)
  {
    goto LABEL_41;
  }

  v53 = *MEMORY[0x277D2A0B0];
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {

LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_238AD9810;
    *(v44 + 32) = &type metadata for JournalingSuggestion.LocationGroup;
    *(v44 + 40) = &protocol witness table for JournalingSuggestion.LocationGroup;
    v45 = type metadata accessor for JournalingSuggestion.Location(0);
    result = v44;
    v46 = &protocol witness table for JournalingSuggestion.Location;
    goto LABEL_36;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    goto LABEL_46;
  }

  v59 = *MEMORY[0x277D2A0A8];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
  {

LABEL_51:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.MotionActivity;
    goto LABEL_16;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
    goto LABEL_51;
  }

  v65 = *MEMORY[0x277D2A088];
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;
  if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
  {
    goto LABEL_54;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v70)
  {
    goto LABEL_56;
  }

  v71 = *MEMORY[0x277D2A068];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;
  if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
  {
LABEL_54:

LABEL_56:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.Location(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.Location;
    goto LABEL_16;
  }

  v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v76)
  {
    goto LABEL_56;
  }

  v77 = *MEMORY[0x277D2A0D0];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;
  if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
  {
    goto LABEL_62;
  }

  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v82)
  {
    return 0;
  }

  v83 = *MEMORY[0x277D2A0C8];
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;
  if (v84 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v86 == v87)
  {

LABEL_69:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_238AD9800;
    *(result + 32) = &type metadata for JournalingSuggestion.Reflection;
    *(result + 40) = &protocol witness table for JournalingSuggestion.Reflection;
    return result;
  }

  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v88)
  {
    goto LABEL_69;
  }

  v89 = *MEMORY[0x277D2A0D8];
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;
  if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
  {

LABEL_74:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_238AD9800;
    v20 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
    result = v19;
    v22 = &protocol witness table for JournalingSuggestion.StateOfMind;
    goto LABEL_16;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v94)
  {
    goto LABEL_74;
  }

  v95 = *MEMORY[0x277D2A070];
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;
  if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v98 == v99)
  {
    goto LABEL_62;
  }

  v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v100)
  {
    return 0;
  }

  v101 = *MEMORY[0x277D2A090];
  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;
  if (v102 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v104 == v105)
  {
    goto LABEL_62;
  }

  v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v106)
  {
    return 0;
  }

  v107 = *MEMORY[0x277D2A0C0];
  v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v109;
  if (v108 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v110 == v111)
  {
    goto LABEL_62;
  }

  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v112)
  {
    return 0;
  }

  v113 = *MEMORY[0x277D2A050];
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v115;
  if (v114 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v116 == v117)
  {
    goto LABEL_62;
  }

  v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v118)
  {
    return 0;
  }

  v119 = *MEMORY[0x277D2A078];
  v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = v121;
  if (v120 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v122 == v123)
  {
    goto LABEL_62;
  }

  v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v124)
  {
    return 0;
  }

  v125 = *MEMORY[0x277D2A0E0];
  v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = v127;
  if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v128 == v129)
  {
    goto LABEL_62;
  }

  v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v130)
  {
    return 0;
  }

  v131 = *MEMORY[0x277D2A0E8];
  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v134 = v133;
  if (v132 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v134 == v135)
  {
    goto LABEL_62;
  }

  v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v136)
  {
    return 0;
  }

  v137 = *MEMORY[0x277D2A058];
  v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v139;
  if (v138 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v140 == v141)
  {
    goto LABEL_62;
  }

  v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v142)
  {
    return 0;
  }

  v143 = *MEMORY[0x277D2A0A0];
  v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v146 = v145;
  if (v144 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v146 == v147)
  {
LABEL_62:

    return 0;
  }

  v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v148)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for UIScene, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

uint64_t sub_238AACF18()
{
  MEMORY[0x23EE715A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238AACF50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238AACFF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetManager.show(token:onCompletion:onDismiss:)(uint64_t a1)
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

uint64_t specialized SuggestionSheetManager.suggestionSheetController(_:didTransitionTo:)(uint64_t a1)
{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_238A75000, v3, v4, "Picker didTransitionTo %lu", v5, 0xCu);
    MEMORY[0x23EE71510](v5, -1, -1);
  }

  return SuggestionSheetManager.remoteViewStateChangedTo(_:)(a1);
}

uint64_t specialized SuggestionSheetManager.suggestionSheetControllerDidCancel(_:)()
{
  v1 = v0;
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238A75000, v3, v4, "Picker sheet cancel", v5, 2u);
    MEMORY[0x23EE71510](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock;
  [*(v1 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_presentationLock) lock];
  v7 = v1 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState;
  if ((*(v1 + OBJC_IVAR____TtC21JournalingSuggestions22SuggestionSheetManager_targetViewState + 8) & 1) != 0 || *v7)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
  }

  [*(v1 + v6) unlock];

  return SuggestionSheetManager.servicePickerViewState()();
}

void specialized SuggestionSheetManager.suggestionSheetControllerShouldShowBlankComposeView(_:)()
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
    _os_log_impl(&dword_238A75000, oslog, v1, "Picker:BCV", v2, 2u);
    MEMORY[0x23EE71510](v2, -1, -1);
  }
}

uint64_t sub_238AAD424()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for SuggestionSheetManager()
{
  result = type metadata singleton initialization cache for SuggestionSheetManager;
  if (!type metadata singleton initialization cache for SuggestionSheetManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionSheetManager.DismissReason and conformance SuggestionSheetManager.DismissReason()
{
  result = lazy protocol witness table cache variable for type SuggestionSheetManager.DismissReason and conformance SuggestionSheetManager.DismissReason;
  if (!lazy protocol witness table cache variable for type SuggestionSheetManager.DismissReason and conformance SuggestionSheetManager.DismissReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionSheetManager.DismissReason and conformance SuggestionSheetManager.DismissReason);
  }

  return result;
}

void type metadata completion function for SuggestionSheetManager()
{
  type metadata accessor for JournalConfiguration?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for JournalConfiguration?()
{
  if (!lazy cache variable for type metadata for JournalConfiguration?)
  {
    type metadata accessor for JournalConfiguration(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for JournalConfiguration?);
    }
  }
}

uint64_t sub_238AADAEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:)(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo17MOSuggestionAssetCGs5Error_pGMd, &_sScCySaySo17MOSuggestionAssetCGs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in SuggestionSheetManager.getAssetsFor(suggestion:)(a1, a2, v2 + v6, v7);
}

uint64_t partial apply for closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(a1, a2, v6, v7);
}

uint64_t sub_238AADD10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(uint64_t a1)
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

  return closure #1 in closure #1 in SuggestionSheetManager.sheetOnAssetCallback(suggestion:assets:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_238AADE28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with take of JournalingSuggestion.ItemContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestionsError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238AADF38()
{
  v1 = type metadata accessor for JournalingSuggestion(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v21 = *(*(v1 - 1) + 64);
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

  v16 = (v21 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v5 + v1[9]);

  (*(v13 + 8))(v5 + v1[11], v12);
  v19 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for JournalingSuggestion(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t _s21JournalingSuggestions0aB5ErrorOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSS_Tt2g5(uint64_t a1, void *a2)
{
  *&v8[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v4 = a2;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v8);
    outlined destroy of AnyHashable(v9);
  }

  else
  {
    outlined destroy of AnyHashable(v9);
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlF10Foundation4DateV_Tt2g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *&v12[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v6 = a2;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v7, v12);
    outlined destroy of AnyHashable(v13);
  }

  else
  {
    outlined destroy of AnyHashable(v13);
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = type metadata accessor for Date();
  v10 = swift_dynamicCast();
  return (*(*(v9 - 8) + 56))(a3, v10 ^ 1u, 1, v9);
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSd_Tt2g5(uint64_t a1, void *a2)
{
  *&v10[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v4 = a2;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v10);
    outlined destroy of AnyHashable(v11);
  }

  else
  {
    outlined destroy of AnyHashable(v11);
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = swift_dynamicCast();
  v8 = v12;
  if (!v7)
  {
    return 0;
  }

  return v8;
}

uint64_t static JournalingSuggestion.Location.fromMedatata(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  a2[4] = 0;
  v13 = type metadata accessor for JournalingSuggestion.Location(0);
  v14 = v13[7];
  (*(v5 + 56))(a2 + v14, 1, 1, v4);
  v15 = (a2 + v13[8]);
  *v15 = 0;
  v15[1] = 0;
  *(a2 + v13[9]) = 0;
  *(a2 + v13[10]) = 2;
  *a2 = _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSS_Tt2g5(a1, *MEMORY[0x277D29F40]);
  a2[1] = v16;
  a2[2] = _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSS_Tt2g5(a1, *MEMORY[0x277D29F38]);
  a2[3] = v17;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlF10Foundation4DateV_Tt2g5(a1, *MEMORY[0x277D29F60], v12);
  outlined assign with take of Date?(v12, a2 + v14);
  *&result = COERCE_DOUBLE(_s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSd_Tt2g5(a1, *MEMORY[0x277D29F50]));
  if ((v19 & 1) == 0)
  {
    v20 = *&result;
    *&result = COERCE_DOUBLE(_s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSd_Tt2g5(a1, *MEMORY[0x277D29F58]));
    if ((v21 & 1) == 0)
    {
      v22 = v20;
      v23 = *&result;
      v24 = COERCE_DOUBLE(_s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSd_Tt2g5(a1, *MEMORY[0x277D29F48]));
      if (v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      static Date.distantPast.getter();
      v27 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v29 = [v27 initWithCoordinate:isa altitude:v22 horizontalAccuracy:v23 verticalAccuracy:0.0 timestamp:{v26, -1.0}];

      *&result = COERCE_DOUBLE((*(v5 + 8))(v8, v4));
      a2[4] = v29;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.Location.getAssetLoaderForPlainLocation(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for JournalingSuggestion.Location(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a3 metadata];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static JournalingSuggestion.Location.fromMedatata(_:)(v12, v10);

  v13 = v10[4];
  v14 = a4;

  v10[4] = a4;
  v18[3] = v7;
  v18[4] = &protocol witness table for JournalingSuggestion.Location;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  outlined init with copy of JournalingSuggestion.Location(v10, boxed_opaque_existential_1);
  a1(v18, 0);
  outlined destroy of JournalingSuggestionAsset?(v18);
  return outlined destroy of JournalingSuggestion.Location(v10);
}

uint64_t closure #1 in static JournalingSuggestion.Location.getAssetLoaderMultiPinMap(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for JournalingSuggestion.Location(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  static JournalingSuggestion.Location.fromMedatata(_:)(a3, v8);
  v12[3] = v5;
  v12[4] = &protocol witness table for JournalingSuggestion.Location;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  outlined init with copy of JournalingSuggestion.Location(v8, boxed_opaque_existential_1);
  a1(v12, 0);
  outlined destroy of JournalingSuggestion.Location(v8);
  return outlined destroy of JournalingSuggestionAsset?(v12);
}

uint64_t closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:inside:)(void (*a1)(void *, void), uint64_t a2, uint64_t a3)
{
  v55[1] = a2;
  v56 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v55 - v10;
  v12 = type metadata accessor for JournalingSuggestion.Location(0);
  v65 = *(v12 - 1);
  v13 = *(v65 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (v55 - v17);
  MEMORY[0x28223BE20](v16);
  v66 = v55 - v19;
  v20 = *(a3 + 16);
  if (v20)
  {
    v64 = *MEMORY[0x277D29F40];
    v63 = *MEMORY[0x277D29F38];
    v62 = *MEMORY[0x277D29F60];
    v21 = *MEMORY[0x277D29F50];
    v23 = *(v5 + 56);
    v22 = v5 + 56;
    v60 = v23;
    v61 = v21;
    v24 = (a3 + 32);
    v57 = (v22 - 48);
    v25 = MEMORY[0x277D84F90];
    v58 = v11;
    do
    {
      v26 = *v24;
      v18[4] = 0;
      v27 = v12[7];
      v60(v18 + v27, 1, 1, v4);
      v28 = (v18 + v12[8]);
      *v28 = 0;
      v28[1] = 0;
      *(v18 + v12[9]) = 0;
      *(v18 + v12[10]) = 2;

      *v18 = _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSS_Tt2g5(v29, v64);
      v18[1] = v30;
      v18[2] = _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSS_Tt2g5(v26, v63);
      v18[3] = v31;
      _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlF10Foundation4DateV_Tt2g5(v26, v62, v11);
      outlined assign with take of Date?(v11, v18 + v27);
      v32 = _s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSd_Tt2g5(v26, v61);
      if (v33 & 1) != 0 || (v34 = *&v32, *&v35 = COERCE_DOUBLE(_s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSd_Tt2g5(v26, *MEMORY[0x277D29F58])), (v36))
      {
      }

      else
      {
        v37 = v34;
        v38 = *&v35;
        v39 = COERCE_DOUBLE(_s21JournalingSuggestions11getMetadata_3key2asxSgSDys11AnyHashableVypG_So017MOSuggestionAssetD3KeyaxmtlFSd_Tt2g5(v26, *MEMORY[0x277D29F48]));
        v40 = v22;
        v41 = v4;
        v43 = v42;

        v44 = (v43 & 1) == 0;
        v4 = v41;
        v22 = v40;
        if (v44)
        {
          v45 = v39;
        }

        else
        {
          v45 = 0.0;
        }

        v46 = v59;
        static Date.distantPast.getter();
        v47 = objc_allocWithZone(MEMORY[0x277CE41F8]);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v49 = [v47 initWithCoordinate:isa altitude:v37 horizontalAccuracy:v38 verticalAccuracy:0.0 timestamp:{v45, -1.0}];

        v50 = v46;
        v11 = v58;
        (*v57)(v50, v4);
        v18[4] = v49;
      }

      v51 = v66;
      outlined init with take of JournalingSuggestion.Location(v18, v66);
      outlined init with copy of JournalingSuggestion.Location(v51, v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
      }

      v53 = v25[2];
      v52 = v25[3];
      if (v53 >= v52 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v25);
      }

      outlined destroy of JournalingSuggestion.Location(v66);
      v25[2] = v53 + 1;
      outlined init with take of JournalingSuggestion.Location(v67, v25 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v53);
      ++v24;
      --v20;
    }

    while (v20);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v68[3] = &type metadata for JournalingSuggestion.LocationGroup;
  v68[4] = &protocol witness table for JournalingSuggestion.LocationGroup;
  v68[0] = v25;
  v56(v68, 0);
  return outlined destroy of JournalingSuggestionAsset?(v68);
}

uint64_t (*specialized static JournalingSuggestion.LocationGroup.getAssetLoader(for:inside:)(void *a1))(void (*a1)(void *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A0B0];
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

  v10 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySDys11AnyHashableVypGG_Tt2g5(a1, *MEMORY[0x277D29F80]);
  if (v10)
  {
    if (*(v10 + 16) >= 2uLL)
    {
      *(swift_allocObject() + 16) = v10;
      return partial apply for closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:inside:);
    }

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.bridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "SuggestionLocationGroup, skip single location group";
  }

  else
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.bridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "SuggestionLocationGroup.getAssetLoader, Unexpected .multiPinMapLocations type";
  }

  _os_log_impl(&dword_238A75000, v13, v14, v16, v15, 2u);
  MEMORY[0x23EE71510](v15, -1, -1);
LABEL_20:

  return 0;
}

uint64_t (*specialized static JournalingSuggestion.Location.getAssetLoaderForPlainLocation(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A088];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
LABEL_12:

    goto LABEL_13;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v2 = [a1 assetType];
    v10 = *MEMORY[0x277D2A068];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v13 != v14)
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v17 = [a1 content];
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v19;
    v21 = a1;
    return partial apply for closure #1 in static JournalingSuggestion.Location.getAssetLoaderForPlainLocation(for:inside:);
  }

  swift_unknownObjectRelease();
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.bridge);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v27 = 136315138;
    [v24 content];
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v32);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_238A75000, v25, v26, "SuggestionLocation.getAssetLoader, Unexpected content: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x23EE71510](v28, -1, -1);
    MEMORY[0x23EE71510](v27, -1, -1);
  }

  return 0;
}

uint64_t (*specialized static JournalingSuggestion.Location.getAssetLoaderMultiPinMap(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A0B0];
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

  v10 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySDys11AnyHashableVypGG_Tt2g5(a1, *MEMORY[0x277D29F80]);
  if (v10)
  {
    if (*(v10 + 16) == 1)
    {
      v11 = *(v10 + 32);

      *(swift_allocObject() + 16) = v11;
      return partial apply for closure #1 in static JournalingSuggestion.Location.getAssetLoaderMultiPinMap(for:inside:);
    }
  }

  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.bridge);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_238A75000, v14, v15, "SuggestionLocation, ignoring multiPinMap group", v16, 2u);
    MEMORY[0x23EE71510](v16, -1, -1);
  }

  return 0;
}

uint64_t (*specialized static JournalingSuggestion.Location.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A088];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_14;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return specialized static JournalingSuggestion.Location.getAssetLoaderForPlainLocation(for:inside:)(a1);
  }

  v2 = [a1 assetType];
  v10 = *MEMORY[0x277D2A068];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
LABEL_14:

    return specialized static JournalingSuggestion.Location.getAssetLoaderForPlainLocation(for:inside:)(a1);
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    return specialized static JournalingSuggestion.Location.getAssetLoaderForPlainLocation(for:inside:)(a1);
  }

  v17 = [a1 assetType];
  v18 = *MEMORY[0x277D2A0B0];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    return specialized static JournalingSuggestion.Location.getAssetLoaderMultiPinMap(for:inside:)(a1);
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return specialized static JournalingSuggestion.Location.getAssetLoaderMultiPinMap(for:inside:)(a1);
  }

  return 0;
}

uint64_t sub_238AAF99C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238AAF9DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v8 = *(a4 + 24);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v4[10] = v10;
  *v10 = v4;
  v10[1] = JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:);

  return v12(a2, a3, a4);
}

uint64_t JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[10];
  v7 = *v2;
  v4[11] = a1;

  return MEMORY[0x2822009F8](JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:), 0, 0);
}

uint64_t JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:)()
{
  v23 = v0;
  if (v0[11])
  {
    v1 = v0[4];
    v2 = v0[9];
    v3 = v0[6];
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = _typeName(_:qualified:)();
    v8 = v7;
    v0[5] = Asset.transferRepresentation.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14AssetViewModelCSgMd, &_s9MomentsUI14AssetViewModelCSgMR);
    v9 = String.init<A>(describing:)();
    v11 = v10;
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
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315394;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v22);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v22);

      *(v15 + 14) = v18;
      _os_log_impl(&dword_238A75000, v13, v14, "No asset '%s' loader available for '%s'", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v16, -1, -1);
      MEMORY[0x23EE71510](v15, -1, -1);
    }

    else
    {
    }

    v3 = 0;
    v2 = 0;
    v1 = 0;
  }

  v19 = v0[1];
  v20 = v0[11];

  return v19(v3, v2, v20, v1);
}

uint64_t closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, void *a3, void *a4)
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
  v12 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v44 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = v12[8];
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 56);
  v43 = v20;
  v22(v16 + v20, 1, 1, v21);
  v23 = (v16 + v12[9]);
  *v23 = 0;
  v23[1] = 0;
  *(v16 + v12[10]) = 0;
  *(v16 + v12[11]) = 4;
  v24 = [a3 title];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *v16 = v25;
  v16[1] = v27;
  v28 = [a3 artistName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v16[2] = v29;
  v16[3] = v31;
  v32 = [a3 albumTitle];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v16[4] = v33;
  v16[5] = v35;
  v36 = [a3 imageURL];
  if (v36)
  {
    v37 = v36;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v22(v11, v38, 1, v21);
  outlined assign with take of URL?(v11, v16 + v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v39 = v45;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v46, *MEMORY[0x277D29F68], v45);
  outlined assign with take of URL?(v39, v16 + v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v49[3] = v12;
  v49[4] = &protocol witness table for JournalingSuggestion.GenericMedia;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  outlined init with copy of JournalingSuggestion.GenericMedia(v16, boxed_opaque_existential_1);
  v48(v49, 0);
  outlined destroy of JournalingSuggestionAsset?(v49);
  return outlined destroy of JournalingSuggestion.GenericMedia(v16);
}

uint64_t (*specialized static JournalingSuggestion.GenericMedia.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
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
      goto LABEL_12;
    }
  }

  v10 = [a1 content];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_12:
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
      v28 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV12GenericMediaVmMd, &_s21JournalingSuggestions0A10SuggestionV12GenericMediaVmMR);
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
  if ([v11 mediaType] - 6 < 3)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    v14 = a1;
    return partial apply for closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:inside:);
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_238AB0574()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id static UIColor.dynamicColor(light:dark:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11[4] = partial apply for closure #1 in static UIColor.dynamicColor(light:dark:);
  v11[5] = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v11[3] = &block_descriptor_2;
  v6 = _Block_copy(v11);
  v7 = a2;
  v8 = a1;
  v9 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  return v9;
}

id closure #1 in static UIColor.dynamicColor(light:dark:)(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5;
}

uint64_t sub_238AB06FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id partial apply for closure #1 in static UIColor.dynamicColor(light:dark:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id UIColor.init(rgbColorCodeRed:green:blue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a1 / 255.0;
  v6 = a2 / 255.0;
  v7 = a3 / 255.0;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:v5 green:v6 blue:v7 alpha:a4];
}

uint64_t Color.init(light:dark:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v12[4] = closure #1 in static UIColor.dynamicColor(light:dark:)partial apply;
  v12[5] = v4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v12[3] = &block_descriptor_7;
  v6 = _Block_copy(v12);
  v7 = a2;
  v8 = a1;
  v9 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  v10 = MEMORY[0x23EE6FF50](v9);

  return v10;
}

void one-time initialization function for resilienceBackground()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.450980392 green:0.435294118 blue:0.674509804 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.349019608 green:0.333333333 blue:0.57254902 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = closure #1 in static UIColor.dynamicColor(light:dark:)partial apply;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v9[3] = &block_descriptor_52;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  v8 = MEMORY[0x23EE6FF50](v7);

  static JournalingSuggestion.Reflection.resilienceBackground = v8;
}

uint64_t *JournalingSuggestion.Reflection.resilienceBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for resilienceBackground != -1)
  {
    swift_once();
  }

  return &static JournalingSuggestion.Reflection.resilienceBackground;
}

void one-time initialization function for gratitudeBackground()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.866666667 green:0.352941176 blue:0.345098039 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.764705882 green:0.250980392 blue:0.243137255 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = closure #1 in static UIColor.dynamicColor(light:dark:)partial apply;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v9[3] = &block_descriptor_45;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  v8 = MEMORY[0x23EE6FF50](v7);

  static JournalingSuggestion.Reflection.gratitudeBackground = v8;
}

uint64_t *JournalingSuggestion.Reflection.gratitudeBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for gratitudeBackground != -1)
  {
    swift_once();
  }

  return &static JournalingSuggestion.Reflection.gratitudeBackground;
}

void one-time initialization function for purposeBackground()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.537254902 green:0.611764706 blue:0.968627451 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.435294118 green:0.509803922 blue:0.866666667 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = closure #1 in static UIColor.dynamicColor(light:dark:)partial apply;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v9[3] = &block_descriptor_38;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  v8 = MEMORY[0x23EE6FF50](v7);

  static JournalingSuggestion.Reflection.purposeBackground = v8;
}

uint64_t *JournalingSuggestion.Reflection.purposeBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for purposeBackground != -1)
  {
    swift_once();
  }

  return &static JournalingSuggestion.Reflection.purposeBackground;
}

void one-time initialization function for kindnessBackground()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.854901961 green:0.533333333 blue:0.533333333 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.752941176 green:0.431372549 blue:0.431372549 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = closure #1 in static UIColor.dynamicColor(light:dark:)partial apply;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v9[3] = &block_descriptor_31;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  v8 = MEMORY[0x23EE6FF50](v7);

  static JournalingSuggestion.Reflection.kindnessBackground = v8;
}

uint64_t *JournalingSuggestion.Reflection.kindnessBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for kindnessBackground != -1)
  {
    swift_once();
  }

  return &static JournalingSuggestion.Reflection.kindnessBackground;
}

void one-time initialization function for creativityBackground()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.568627451 green:0.31372549 blue:0.447058824 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.466666667 green:0.211764706 blue:0.345098039 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = closure #1 in static UIColor.dynamicColor(light:dark:)partial apply;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v9[3] = &block_descriptor_24;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  v8 = MEMORY[0x23EE6FF50](v7);

  static JournalingSuggestion.Reflection.creativityBackground = v8;
}

uint64_t *JournalingSuggestion.Reflection.creativityBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for creativityBackground != -1)
  {
    swift_once();
  }

  return &static JournalingSuggestion.Reflection.creativityBackground;
}

void one-time initialization function for wisdomBackground()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.129411765 green:0.141176471 blue:0.219607843 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.231372549 green:0.243137255 blue:0.321568627 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = closure #1 in static UIColor.dynamicColor(light:dark:)partial apply;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v9[3] = &block_descriptor_17;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  v8 = MEMORY[0x23EE6FF50](v7);

  static JournalingSuggestion.Reflection.wisdomBackground = v8;
}

uint64_t *JournalingSuggestion.Reflection.wisdomBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for wisdomBackground != -1)
  {
    swift_once();
  }

  return &static JournalingSuggestion.Reflection.wisdomBackground;
}

uint64_t static JournalingSuggestion.Reflection.resilienceBackground.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t closure #1 in static JournalingSuggestion.Reflection.getAssetLoader(for:inside:)(void (*a1)(void *, void), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  v10[3] = &type metadata for JournalingSuggestion.Reflection;
  v10[4] = &protocol witness table for JournalingSuggestion.Reflection;
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = specialized static JournalingSuggestion.Reflection.evergreenColorOfType(_:)([a5 reflectionType]);

  a1(v10, 0);
  outlined destroy of JournalingSuggestionAsset?(v10);
}

id thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor)(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*specialized static JournalingSuggestion.Reflection.getAssetLoader(for:inside:)(void *a1))(void (*a1)(void *, void), uint64_t a2)
{
  v2 = [a1 assetType];
  v3 = *MEMORY[0x277D2A0C8];
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
  if (v11)
  {
    v12 = v11;
    v13 = [v11 reflectionPrompts];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14[2])
    {
      v16 = v14[4];
      v15 = v14[5];

      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v15;
      v17[4] = v12;
      return partial apply for closure #1 in static JournalingSuggestion.Reflection.getAssetLoader(for:inside:);
    }
  }

  swift_unknownObjectRelease();
LABEL_13:
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.bridge);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV10ReflectionVmMd, &_s21JournalingSuggestions0A10SuggestionV10ReflectionVmMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v31);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    [v20 content];
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v31);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_238A75000, v21, v22, "%s.getAssetLoader, Unexpected content: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE71510](v24, -1, -1);
    MEMORY[0x23EE71510](v23, -1, -1);
  }

  return 0;
}

uint64_t specialized static JournalingSuggestion.Reflection.evergreenColorOfType(_:)(uint64_t a1)
{
  result = 0;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        if (one-time initialization token for purposeBackground != -1)
        {
          swift_once();
        }

        v3 = &static JournalingSuggestion.Reflection.purposeBackground;
        break;
      case 5:
        if (one-time initialization token for resilienceBackground != -1)
        {
          swift_once();
        }

        v3 = &static JournalingSuggestion.Reflection.resilienceBackground;
        break;
      case 6:
        if (one-time initialization token for creativityBackground != -1)
        {
          swift_once();
        }

        v3 = &static JournalingSuggestion.Reflection.creativityBackground;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (one-time initialization token for wisdomBackground != -1)
        {
          swift_once();
        }

        v3 = &static JournalingSuggestion.Reflection.wisdomBackground;
        break;
      case 2:
        if (one-time initialization token for gratitudeBackground != -1)
        {
          swift_once();
        }

        v3 = &static JournalingSuggestion.Reflection.gratitudeBackground;
        break;
      case 3:
        if (one-time initialization token for kindnessBackground != -1)
        {
          swift_once();
        }

        v3 = &static JournalingSuggestion.Reflection.kindnessBackground;
        break;
      default:
        return result;
    }
  }

  v4 = *v3;
}

uint64_t sub_238AB1B48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [a1 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v13[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v7 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v6 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v9 & 1) != 0))
  {
    outlined init with copy of Any(*(v6 + 56) + 32 * v8, v13);
    outlined destroy of AnyHashable(v14);
  }

  else
  {

    outlined destroy of AnyHashable(v14);
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = type metadata accessor for Date();
  v11 = swift_dynamicCast();
  return (*(*(v10 - 8) + 56))(a3, v11 ^ 1u, 1, v10);
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSd_Tt2g5Tm(void *a1, void *a2)
{
  v3 = [a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v11[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v5 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v6, v11);
    outlined destroy of AnyHashable(v12);
  }

  else
  {

    outlined destroy of AnyHashable(v12);
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = swift_dynamicCast();
  v9 = v13;
  if (!v8)
  {
    return 0;
  }

  return v9;
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo0gH18MotionActivityTypea_Tt2g5(void *a1, void *a2)
{
  v3 = [a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v9[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v5 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v6, v9);
    outlined destroy of AnyHashable(v10);
  }

  else
  {

    outlined destroy of AnyHashable(v10);
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  type metadata accessor for MOSuggestionAssetMotionActivityType(0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySiG_Tt2g5Tm(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = [a1 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v13[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v9 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v10, v13);
    outlined destroy of AnyHashable(v14);
  }

  else
  {

    outlined destroy of AnyHashable(v14);
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSS_Tt2g5(void *a1, void *a2)
{
  v3 = [a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v9[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v5 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v6, v9);
    outlined destroy of AnyHashable(v10);
  }

  else
  {

    outlined destroy of AnyHashable(v10);
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5Tm(void *a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v13[0] = a2;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v9 = a2;
  AnyHashable.init<A>(_:)();
  if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v10, v13);
    outlined destroy of AnyHashable(v14);
  }

  else
  {

    outlined destroy of AnyHashable(v14);
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  type metadata accessor for OS_dispatch_queue(0, a3, a4);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void static JournalingSuggestion.Photo.getCropRect(_:key:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSo10HKQuantityC_Tt2g5Tm(a1, a2, &lazy cache variable for type metadata for MOSuggestionAssetPhotoCropRect, 0x277D2A120);
  v5 = v4;
  if (v4)
  {
    [v4 cgRect];
    v13 = v6;
    v14 = v7;
    v12 = v8;
    v15 = v9;

    *&v11 = v12;
    *&v10 = v13;
    *(&v10 + 1) = v14;
    *(&v11 + 1) = v15;
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v5 == 0;
}

uint64_t closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, a3, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v16, v10, v7);
  *(v18 + v17) = a4;
  v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v23;
  v19[1] = a2;
  v20 = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:), v18);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[22] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v10 = type metadata accessor for JournalingSuggestion.Photo(0);
  v7[26] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[27] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v7[28] = v12;
  v13 = *(v12 - 8);
  v7[29] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v7[30] = v15;
  v16 = swift_task_alloc();
  v7[31] = v16;
  *v16 = v7;
  v16[1] = closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:);

  return prepareUrlAccess(_:)(v15, a4);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:)()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:);
  }

  else
  {
    v3 = closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[22];
  (*(v0[29] + 16))(v1, v0[30], v0[28]);
  v4 = v2[5];
  v5 = type metadata accessor for Date();
  v6 = (*(v5 - 8) + 56);
  v34 = *v6;
  v35 = v4;
  (*v6)(v1 + v4, 1, 1, v5);
  v7 = v1 + v2[6];
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = v1 + v2[7];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  v9 = v1 + v2[8];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  v10 = (v1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = [v3 metadata];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *MEMORY[0x277D29F88];
  v0[21] = *MEMORY[0x277D29F88];
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v14 = v13;
  AnyHashable.init<A>(_:)();
  if (*(v12 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)((v0 + 7)), (v16 & 1) != 0))
  {
    v17 = v0[25];
    outlined init with copy of Any(*(v12 + 56) + 32 * v15, (v0 + 17));
    outlined destroy of AnyHashable((v0 + 7));

    v18 = swift_dynamicCast() ^ 1;
    v19 = v17;
  }

  else
  {
    v20 = v0[25];

    outlined destroy of AnyHashable((v0 + 7));
    v19 = v20;
    v18 = 1;
  }

  v34(v19, v18, 1, v5);
  v22 = v0[29];
  v21 = v0[30];
  v24 = v0[27];
  v23 = v0[28];
  v25 = v0[26];
  v27 = v0[23];
  v26 = v0[24];
  outlined assign with take of Date?(v0[25], v1 + v35);
  v0[15] = v25;
  v0[16] = &protocol witness table for JournalingSuggestion.Photo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  outlined init with copy of JournalingSuggestion.Photo(v24, boxed_opaque_existential_1);
  v27(v0 + 12, 0);
  (*(v22 + 8))(v21, v23);
  outlined destroy of URL?((v0 + 12), &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.Photo(v24);
  v29 = v0[30];
  v30 = v0[27];
  v31 = v0[25];

  v32 = v0[1];

  return v32();
}

{
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v1;
  v3(v0 + 16, v1);

  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 200);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t (*specialized static JournalingSuggestion.Photo.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = [a1 assetType];
  v10 = *MEMORY[0x277D2A0B8];
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
  v17 = *(v3 + 32);
  v17(v6, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  v17((v19 + v18), v6, v2);
  *(v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v20 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:);
}

uint64_t sub_238AB3100()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:)(a1, a2, v2 + v6, v7);
}

uint64_t sub_238AB3248()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.Photo.getAssetLoader(for:inside:)(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Podcast()
{
  v1 = specialized static JournalingSuggestion.Podcast.getAssetLoader(for:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v30 - v10;
  v11 = type metadata accessor for JournalingSuggestion.Podcast(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 24);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v33 = *(v18 + 56);
  v33(v15 + v16, 1, 1, v17);
  v34 = v11;
  v19 = *(v11 + 28);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v31 = *(v21 + 56);
  v32 = v19;
  v30 = v21 + 56;
  v31(v15 + v19, 1, 1, v20);
  *v15 = dispatch thunk of AssetViewModel.baseTitle.getter();
  v15[1] = v22;
  v15[2] = dispatch thunk of TransferMediaFirstPartyViewModel.subtitle.getter();
  v15[3] = v23;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v24 = type metadata accessor for DateInterval();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v7, 1, v24) == 1)
  {
    outlined destroy of URL?(v7, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v26 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v25 + 8))(v7, v24);
    v26 = 0;
  }

  v27 = v38;
  v31(v38, v26, 1, v20);
  outlined assign with take of Date?(v27, v15 + v32);
  outlined destroy of URL?(v15 + v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v18 + 16))(v15 + v16, v35, v17);
  v33(v15 + v16, 0, 1, v17);
  v39[3] = v34;
  v39[4] = &protocol witness table for JournalingSuggestion.Podcast;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  outlined init with copy of JournalingSuggestion.Podcast(v15, boxed_opaque_existential_1);
  v37(v39, 0);
  outlined destroy of URL?(v39, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Podcast(v15);
}

uint64_t (*specialized static JournalingSuggestion.Podcast.getAssetLoader(for:)())(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  result = Asset.transferRepresentation.getter();
  if (!result)
  {
    return result;
  }

  v17 = result;
  type metadata accessor for TransferMediaFirstPartyViewModel();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    return 0;
  }

  v45 = v1;
  v19 = v18;
  v20 = v17;
  v43 = v19;
  v21 = v20;
  v22 = dispatch thunk of AssetViewModel.baseImage.getter();

  if (!v22 || (v46 = v9, v23 = Image.uiImage.getter(), v22, (v44 = v23) == 0))
  {

    return 0;
  }

  v41 = v15;
  v42 = v21;
  v24 = [objc_opt_self() defaultManager];
  v25 = [v24 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v45 + 8))(v4, v0);
  URL.appendingPathComponent(_:)();

  v45 = v10;
  v26 = *(v10 + 8);
  v26(v13, v46);
  v27 = v44;
  v28 = UIImageHEICRepresentation(v44);
  if (v28 || (v28 = UIImagePNGRepresentation(v27)) != 0)
  {
    v29 = v28;
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    URL.appendingPathExtension(_:)();
    v33 = v46;
    v26(v8, v46);
    (*(v45 + 32))(v8, v13, v33);
    Data.write(to:options:)();
    outlined consume of Data._Representation(v30, v32);
    v27 = v44;
  }

  v35 = v45;
  v34 = v46;
  (*(v45 + 56))(v8, 0, 1, v46);
  v36 = *(v35 + 32);
  v37 = v41;
  v36(v41, v8, v34);
  v36(v13, v37, v34);
  v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v43;
  v36((v39 + v38), v13, v34);
  return partial apply for closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:);
}

uint64_t sub_238AB3D64()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in static JournalingSuggestion.Podcast.getAssetLoader(for:)(a1, a2, v6, v7);
}

void EmbeddedJSPicker.setupHostingUUID(_:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of UUID?(a1, &v11 - v6);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v7, v8);
  }

  [a2 setupSceneHostingWithConnectionUUID_];
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance EmbeddedJSPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type EmbeddedJSPicker and conformance EmbeddedJSPicker();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EmbeddedJSPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type EmbeddedJSPicker and conformance EmbeddedJSPicker();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance EmbeddedJSPicker()
{
  lazy protocol witness table accessor for type EmbeddedJSPicker and conformance EmbeddedJSPicker();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id TransparentNotifierViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmbeddedJSPicker.init()(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t type metadata accessor for TransparentNotifierViewController()
{
  result = type metadata singleton initialization cache for TransparentNotifierViewController;
  if (!type metadata singleton initialization cache for TransparentNotifierViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance EmbeddedJSPickerTransparentWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EmbeddedJSPickerTransparentWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance EmbeddedJSPickerTransparentWrapper()
{
  lazy protocol witness table accessor for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t key path getter for TransparentNotifierViewController.viewHasAppeared : TransparentNotifierViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result & 1;
  return result;
}

uint64_t TransparentNotifierViewController.viewHasAppeared.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_238AB44DC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result & 1;
  return result;
}

uint64_t TransparentNotifierViewController.viewHasAppeared.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*TransparentNotifierViewController.viewHasAppeared.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationSchedule.modify;
}

uint64_t key path setter for TransparentNotifierViewController.$viewHasAppeared : TransparentNotifierViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x78))(v7);
}

uint64_t TransparentNotifierViewController.$viewHasAppeared.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TransparentNotifierViewController.$viewHasAppeared.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*TransparentNotifierViewController.$viewHasAppeared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions33TransparentNotifierViewController__viewHasAppeared;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationSchedule.modify;
}

id TransparentNotifierViewController.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC21JournalingSuggestions33TransparentNotifierViewController__viewHasAppeared;
  v14 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v6], v5, v1);
  v7 = type metadata accessor for TransparentNotifierViewController();
  v13.receiver = v0;
  v13.super_class = v7;
  v8 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor_];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TransparentNotifierViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TransparentNotifierViewController.init(coder:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7[-v4];
  v6 = OBJC_IVAR____TtC21JournalingSuggestions33TransparentNotifierViewController__viewHasAppeared;
  v7[15] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall TransparentNotifierViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TransparentNotifierViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  (*((*MEMORY[0x277D85000] & *v1) + 0x60))(1);
}

id TransparentNotifierViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x23EE70700]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TransparentNotifierViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransparentNotifierViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type EmbeddedJSPicker and conformance EmbeddedJSPicker()
{
  result = lazy protocol witness table cache variable for type EmbeddedJSPicker and conformance EmbeddedJSPicker;
  if (!lazy protocol witness table cache variable for type EmbeddedJSPicker and conformance EmbeddedJSPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedJSPicker and conformance EmbeddedJSPicker);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmbeddedJSPicker and conformance EmbeddedJSPicker;
  if (!lazy protocol witness table cache variable for type EmbeddedJSPicker and conformance EmbeddedJSPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedJSPicker and conformance EmbeddedJSPicker);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper()
{
  result = lazy protocol witness table cache variable for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper;
  if (!lazy protocol witness table cache variable for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper;
  if (!lazy protocol witness table cache variable for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedJSPickerTransparentWrapper and conformance EmbeddedJSPickerTransparentWrapper);
  }

  return result;
}

void type metadata completion function for TransparentNotifierViewController()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t static JournalingSuggestion.LivePhoto.getLivePhotoComponentURLs(pvtURL:)@<X0>(char *a1@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v58 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v56 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v61 = v56 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v56 - v20;
  MEMORY[0x28223BE20](v19);
  v62 = v3;
  v22 = *(v3 + 56);
  v65 = v56 - v23;
  v22();
  v64 = v21;
  v67 = v22;
  v68 = v3 + 56;
  (v22)(v21, 1, 1, v2);
  v24 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v72._countAndFlagsBits = 0;
  v28 = [v24 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:0 options:0 error:&v72];

  countAndFlagsBits = v72._countAndFlagsBits;
  v60 = v16;
  if (v28)
  {
    v59 = v9;
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = countAndFlagsBits;

    v32 = *(v30 + 16);
    if (v32)
    {
      v56[1] = v30;
      v57 = a1;
      v33 = *(v62 + 16);
      v34 = v30 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v69 = *(v62 + 72);
      v70 = v33;
      v63 = (v62 + 8);
      v71 = v62 + 16;
      v66 = (v62 + 32);
      v33(v11, v34, v2);
      while (1)
      {
        URL.pathExtension.getter();
        v35 = String.lowercased()();

        v72 = v35;
        MEMORY[0x28223BE20](v36);
        v56[-2] = v37;
        v38 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v56[-4], &outlined read-only object #0 of static JournalingSuggestion.LivePhoto.getLivePhotoComponentURLs(pvtURL:));
        swift_arrayDestroy();

        if (v38)
        {
          v39 = v65;
        }

        else
        {
          URL.pathExtension.getter();
          v40 = String.lowercased()();

          v72 = v40;
          MEMORY[0x28223BE20](v41);
          v56[-2] = v42;
          v43 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v56[-4], &outlined read-only object #1 of static JournalingSuggestion.LivePhoto.getLivePhotoComponentURLs(pvtURL:));
          swift_arrayDestroy();

          if ((v43 & 1) == 0)
          {
            (*v63)(v11, v2);
            goto LABEL_5;
          }

          v39 = v64;
        }

        outlined destroy of URL?(v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*v66)(v39, v11, v2);
        (v67)(v39, 0, 1, v2);
LABEL_5:
        v34 += v69;
        if (!--v32)
        {

          a1 = v57;
          goto LABEL_15;
        }

        v70(v11, v34, v2);
      }
    }

LABEL_15:
    v9 = v59;
  }

  else
  {
    v44 = v72._countAndFlagsBits;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v47 = v61;
  v46 = v62;
  outlined init with take of UUID?(v64, v61, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v48 = *(v46 + 48);
  if (v48(v47, 1, v2) == 1)
  {
    outlined destroy of URL?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v49 = *(v46 + 32);
    v49(v9, v47, v2);
    v47 = v60;
    outlined init with take of UUID?(v65, v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v48(v47, 1, v2) != 1)
    {
      v52 = v58;
      v49(v58, v47, v2);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV05imageB0_AC05videoB0tMd, &_s10Foundation3URLV05imageB0_AC05videoB0tMR);
      v54 = *(v53 + 48);
      v49(a1, v52, v2);
      v49(&a1[v54], v9, v2);
      result = (*(*(v53 - 8) + 56))(a1, 0, 1, v53);
      goto LABEL_22;
    }

    (*(v46 + 8))(v9, v2);
  }

  outlined destroy of URL?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV05imageB0_AC05videoB0tMd, &_s10Foundation3URLV05imageB0_AC05videoB0tMR);
  result = (*(*(v50 - 8) + 56))(a1, 1, 1, v50);
LABEL_22:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a1;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, a3, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v16, v10, v7);
  v19 = (v18 + v17);
  *v19 = v23;
  v19[1] = a2;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;

  v20 = a4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:), v18);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v10 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  v7[22] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV05imageB0_AC05videoB0tSgMd, &_s10Foundation3URLV05imageB0_AC05videoB0tSgMR) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV05imageB0_AC05videoB0tMd, &_s10Foundation3URLV05imageB0_AC05videoB0tMR);
  v7[25] = v13;
  v14 = *(v13 - 8);
  v7[26] = v14;
  v15 = *(v14 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v7[30] = v16;
  v17 = *(v16 - 8);
  v7[31] = v17;
  v18 = *(v17 + 64) + 15;
  v7[32] = swift_task_alloc();
  v19 = swift_task_alloc();
  v7[33] = v19;
  v20 = swift_task_alloc();
  v7[34] = v20;
  *v20 = v7;
  v20[1] = closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:);

  return prepareUrlAccess(_:)(v19, a4);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:);
  }

  else
  {
    v3 = closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v70 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  static JournalingSuggestion.LivePhoto.getLivePhotoComponentURLs(pvtURL:)(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    outlined destroy of URL?(*(v0 + 192), &_s10Foundation3URLV05imageB0_AC05videoB0tSgMd, &_s10Foundation3URLV05imageB0_AC05videoB0tSgMR);
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = *(v0 + 240);
    v8 = *(v0 + 136);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.bridge);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v15 = *(v0 + 240);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69 = v66;
      *v16 = 136315138;
      _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = v20;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v69);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_238A75000, v10, v11, "Can't prepare live photo using url: '%s'", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x23EE71510](v66, -1, -1);
      MEMORY[0x23EE71510](v16, -1, -1);
    }

    else
    {

      v41 = *(v14 + 8);
      v41(v13, v15);
      v21 = v41;
    }

    v42 = *(v0 + 264);
    v43 = *(v0 + 240);
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    type metadata accessor for JournalingSuggestionsError();
    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_2(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v46 = swift_allocError();
    v48 = v47;
    _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    *v48 = 0x4C5255747670;
    v48[1] = 0xE600000000000000;
    v48[2] = v49;
    v48[3] = v50;
    swift_storeEnumTagMultiPayload();
    v45(v0 + 56, v46);

    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v21(v42, v43);
  }

  else
  {
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v27 = *(v0 + 216);
    v28 = *(v0 + 200);
    v30 = *(v0 + 176);
    v29 = *(v0 + 184);
    v63 = *(v0 + 168);
    v64 = *(v0 + 160);
    v67 = *(v0 + 152);
    v68 = *(v0 + 264);
    v65 = *(v0 + 144);
    outlined init with take of UUID?(*(v0 + 192), v25, &_s10Foundation3URLV05imageB0_AC05videoB0tMd, &_s10Foundation3URLV05imageB0_AC05videoB0tMR);
    outlined init with copy of (imageURL: URL, videoURL: URL)(v25, v26);
    v62 = *(v28 + 48);
    outlined init with copy of (imageURL: URL, videoURL: URL)(v25, v27);
    v31 = *(v28 + 48);
    v32 = v30[6];
    v61 = v32;
    v33 = type metadata accessor for Date();
    (*(*(v33 - 8) + 56))(v29 + v32, 1, 1, v33);
    v34 = *(v24 + 32);
    v34(v29, v26, v23);
    v34(v29 + v30[5], v27 + v31, v23);
    v35 = v29 + v30[7];
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 1;
    v36 = v29 + v30[8];
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 1;
    v37 = v29 + v30[9];
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 1;
    v38 = (v29 + v30[10]);
    *v38 = 0;
    v38[1] = 0;
    v39 = *(v24 + 8);
    v39(v27, v23);
    v39(v26 + v62, v23);
    _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(v64, *MEMORY[0x277D29F90], v63);
    outlined assign with take of Date?(v63, v29 + v61);
    *(v0 + 120) = v30;
    *(v0 + 128) = &protocol witness table for JournalingSuggestion.LivePhoto;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    outlined init with copy of JournalingSuggestion.LivePhoto(v29, boxed_opaque_existential_1);
    v65(v0 + 96, 0);
    outlined destroy of URL?(v25, &_s10Foundation3URLV05imageB0_AC05videoB0tMd, &_s10Foundation3URLV05imageB0_AC05videoB0tMR);
    v39(v68, v23);
    outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestion.LivePhoto(v29);
  }

  v52 = *(v0 + 256);
  v51 = *(v0 + 264);
  v54 = *(v0 + 224);
  v53 = *(v0 + 232);
  v55 = *(v0 + 216);
  v57 = *(v0 + 184);
  v56 = *(v0 + 192);
  v58 = *(v0 + 168);

  v59 = *(v0 + 8);

  return v59();
}

{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_238A75000, v4, v5, "Can't access live photo urls: %@'", v7, 0xCu);
    outlined destroy of URL?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE71510](v8, -1, -1);
    MEMORY[0x23EE71510](v7, -1, -1);
  }

  v11 = *(v0 + 280);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v14 = v11;
  v13(v0 + 16, v11);

  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 216);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 168);

  v23 = *(v0 + 8);

  return v23();
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

uint64_t (*specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = a1;
  v13 = [a1 assetType];
  v14 = *MEMORY[0x277D2A080];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v12;
  v42 = [v12 content];
  v22 = swift_dynamicCast();
  v23 = *(v7 + 56);
  if (v22)
  {
    v23(v5, 0, 1, v6);
    v24 = *(v7 + 32);
    v24(v11, v5, v6);
    v25 = v40;
    v24(v40, v11, v6);
    v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v27 = swift_allocObject();
    v24((v27 + v26), v25, v6);
    *(v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
    v28 = v21;
    return partial apply for closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:);
  }

  v23(v5, 1, 1, v6);
  outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.bridge);
  v31 = v12;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136315138;
    v41 = [v31 content];
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v42);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_238A75000, v32, v33, "SuggestionLivePhoto.getAssetLoader, Unexpected content: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x23EE71510](v35, -1, -1);
    MEMORY[0x23EE71510](v34, -1, -1);
  }

  return 0;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_238AB6FF4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(a1, a2, v2 + v6, v7);
}

uint64_t sub_238AB713C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t _s21JournalingSuggestions0aB5ErrorOACs0C0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of (imageURL: URL, videoURL: URL)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV05imageB0_AC05videoB0tMd, &_s10Foundation3URLV05imageB0_AC05videoB0tMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion.LivePhoto(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.LivePhoto(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.EventPoster()
{
  v1 = specialized static JournalingSuggestion.EventPoster.getAssetLoader(for:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static JournalingSuggestion.EventPoster.getAssetLoader(for:)(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v55 = a2;
  v6 = type metadata accessor for JournalingSuggestion.EventPoster(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v51 = v15;
  v52 = v14;
  v50 = *(v15 + 56);
  v50(&v46 - v24, 1, 1, v14);
  v53 = a3;
  v26 = dispatch thunk of AssetViewModel.baseImage.getter();
  if (v26)
  {
    v27 = v26;
    v28 = Image.uiImage.getter();

    if (v28)
    {
      v47 = a1;
      v29 = [objc_opt_self() defaultManager];
      v30 = [v29 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v48 + 1))(v13, v49);
      URL.appendingPathComponent(_:)();

      v31 = v52;
      v32 = *(v51 + 8);
      v32(v18, v52);
      v33 = UIImageHEICRepresentation(v28);
      if (v33 || (v33 = UIImagePNGRepresentation(v28)) != 0)
      {
        v48 = v32;
        v46 = v28;
        v34 = v33;
        v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        URL.appendingPathExtension(_:)();
        v31 = v52;
        v48(v23, v52);
        (*(v51 + 32))(v23, v18, v31);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v49, v36);
        v28 = v46;
      }

      outlined destroy of URL?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v50(v23, 0, 1, v31);
      outlined init with take of URL?(v23, v25);
      a1 = v47;
    }
  }

  v37 = type metadata accessor for AttributedString();
  (*(*(v37 - 8) + 16))(v9, v54, v37);
  outlined init with copy of URL?(v25, &v9[v6[5]]);
  v38 = &v9[v6[6]];
  dispatch thunk of TransferPosterViewModel.eventStart.getter();
  v39 = &v9[v6[7]];
  dispatch thunk of TransferPosterViewModel.eventEnd.getter();
  v40 = dispatch thunk of TransferPosterViewModel.isHost.getter();
  v41 = dispatch thunk of TransferPosterViewModel.placeName.getter();
  v9[v6[8]] = v40;
  v42 = &v9[v6[9]];
  *v42 = v41;
  v42[1] = v43;
  v56[3] = v6;
  v56[4] = &protocol witness table for JournalingSuggestion.EventPoster;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  outlined init with copy of JournalingSuggestion.EventPoster(v9, boxed_opaque_existential_1);
  a1(v56, 0);
  outlined destroy of JournalingSuggestion.EventPoster(v9);
  outlined destroy of URL?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined destroy of URL?(v56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
}

uint64_t (*specialized static JournalingSuggestion.EventPoster.getAssetLoader(for:)())(void (*a1)(void, void), uint64_t a2)
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v12 = result;
    type metadata accessor for TransferPosterViewModel();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {

      return 0;
    }

    v14 = v13;
    dispatch thunk of TransferPosterViewModel.title.getter();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      outlined destroy of URL?(v3, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      return 0;
    }

    v15 = *(v5 + 32);
    v15(v10, v3, v4);
    v15(v8, v10, v4);
    v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    v15((v17 + v16), v8, v4);
    return partial apply for closure #1 in static JournalingSuggestion.EventPoster.getAssetLoader(for:);
  }

  return result;
}

uint64_t sub_238AB7D28()
{
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.EventPoster.getAssetLoader(for:)(void (*a1)(void, void), uint64_t a2)
{
  v5 = *(type metadata accessor for AttributedString() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in static JournalingSuggestion.EventPoster.getAssetLoader(for:)(a1, a2, v6, v7);
}

uint64_t outlined init with copy of JournalingSuggestion.EventPoster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.EventPoster(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.EventPoster(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.EventPoster(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JournalingSuggestion.Contact.init(name:photo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for JournalingSuggestion.Contact(0);
  return outlined init with take of UUID?(a3, a4 + *(v6 + 20), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t JournalingSuggestion.Location.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for JournalingSuggestion.Location(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = v2[7];
  v4 = type metadata accessor for Date();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 2;
  return result;
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v24 - v12;
  outlined init with copy of URL?(a1, v24 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of TaskPriority?(v13);
    if (*(a3 + 16))
    {
LABEL_3:
      v16 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = dispatch thunk of Actor.unownedExecutor.getter();
      v19 = v18;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = *v5;
  v21 = swift_allocObject();
  v21[2] = *(a4 + 16);
  v21[3] = a2;
  v21[4] = a3;
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t JournalingSuggestion.Workout.Details.init(activityType:activeEnergyBurned:distance:averageHeartRate:date:distanceLocalizedString:activeEnergyBurnedLocalizedString:averageHeartRateLocalizedString:workoutLocalizedName:workoutIsIndoors:localizedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v21 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  result = outlined init with take of UUID?(a5, a9 + v21[8], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v23 = (a9 + v21[9]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + v21[10]);
  *v24 = a8;
  v24[1] = a10;
  v25 = (a9 + v21[11]);
  *v25 = a11;
  v25[1] = a12;
  v26 = (a9 + v21[12]);
  *v26 = a13;
  v26[1] = a14;
  *(a9 + v21[13]) = a15;
  v27 = (a9 + v21[14]);
  *v27 = a16;
  v27[1] = a17;
  return result;
}

uint64_t JournalingSuggestion.Workout.init(details:icon:route:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of UUID?(a1, a4, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
  v7 = type metadata accessor for JournalingSuggestion.Workout(0);
  result = outlined init with take of UUID?(a2, a4 + *(v7 + 20), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t JournalingSuggestion.WorkoutGroup.init(workouts:icon:activeEnergyBurned:averageHeartRate:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  *a7 = a1;
  v13 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
  result = outlined init with take of UUID?(a2, a7 + v13[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a7 + v13[6]) = a3;
  *(a7 + v13[7]) = a4;
  v15 = a7 + v13[8];
  *v15 = a5;
  v15[8] = a6 & 1;
  return result;
}

uint64_t JournalingSuggestion.StateOfMind.init(state:icon:lightBackground:darkBackground:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  result = outlined init with take of UUID?(a2, a5 + v9[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a5 + v9[6]) = a3;
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t JournalingSuggestion.GenericMedia.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v3 = v2[7];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for URL();
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v8 = &a1[v2[9]];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&a1[v2[10]] = 0;
  a1[v2[11]] = 4;
  return result;
}

uint64_t JournalingSuggestion.ItemContent.init(id:representations:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for JournalingSuggestion.ItemContent(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

Swift::Void __swiftcall JournalingSuggestion.ItemContent.appendAssetContent(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v4 = type metadata accessor for JournalingSuggestion.ItemContent(0);
    v20 = *(v4 + 24);
    v21 = v1;
    v5 = *(v1 + v20);
    v19 = *(v4 + 20);
    v6 = *(v1 + v19);
    v7 = (a1._rawValue + 72);
    do
    {
      v22 = *(v7 - 5);
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[32 * v13];
      *(v14 + 2) = v22;
      *(v14 + 6) = v9;
      *(v14 + 7) = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMR);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMR);
      }

      v17 = *(v11 + 8);
      *(v6 + 2) = v16 + 1;
      v18 = &v6[16 * v16];
      *(v18 + 4) = v10;
      *(v18 + 5) = v17;
      v7 += 6;
      --v2;
    }

    while (v2);
    *(v21 + v19) = v6;
    *(v21 + v20) = v5;
  }
}

uint64_t JournalingSuggestion.init(items:title:date:bundleIdentifier:transferID:promptLanguages:suggestionType:suggestionIdentifier:suggestionHashValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a8;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  v17 = type metadata accessor for JournalingSuggestion(0);
  outlined init with take of UUID?(a4, a9 + v17[6], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  outlined init with take of UUID?(a5, a9 + v17[7], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of UUID?(a6, a9 + v17[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a9 + v17[9]) = a7;
  *(a9 + v17[10]) = v16;
  v18 = v17[11];
  v19 = type metadata accessor for UUID();
  result = (*(*(v19 - 8) + 32))(a9 + v18, a10, v19);
  *(a9 + v17[12]) = a11;
  return result;
}

uint64_t JournalingSuggestion.Song.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for JournalingSuggestion.Song(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v3 = v2[7];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for Date();
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v8 = &a1[v2[9]];
  *v8 = 0;
  *(v8 + 1) = 0;
  return result;
}

__n128 JournalingSuggestion.Video.init(url:date:landscapeCropRect:squareCropRect:portraitCropRect:photoCloudIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void)@<X7>, uint64_t a9@<X8>)
{
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = a8(0);
  outlined init with take of UUID?(a2, a9 + v19[5], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = a9 + v19[6];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a3 + 32);
  v22 = a9 + v19[7];
  v23 = *(a4 + 16);
  *v22 = *a4;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a4 + 32);
  v24 = a9 + v19[8];
  result = *a5;
  v26 = *(a5 + 16);
  *v24 = *a5;
  *(v24 + 16) = v26;
  *(v24 + 32) = *(a5 + 32);
  v27 = (a9 + v19[9]);
  *v27 = a6;
  v27[1] = a7;
  return result;
}

uint64_t JournalingSuggestion.MotionActivity.init(icon:steps:date:movementType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  outlined init with take of UUID?(a1, a5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  *(a5 + v9[5]) = a2;
  result = outlined init with take of UUID?(a3, a5 + v9[6], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  *(a5 + v9[7]) = v8;
  return result;
}

uint64_t JournalingSuggestion.Podcast.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for JournalingSuggestion.Podcast(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t JournalingSuggestion.ItemContent.getContentProviderOfType<A>(assetType:for:inside:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(a5 + 16))(a2, a3, a4, a5))
  {
    v7 = _typeName(_:qualified:)();
    v9 = v8;
    v10 = [a2 assetType];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    [a2 content];
    _print_unlocked<A, B>(_:_:)();
    swift_unknownObjectRelease();
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
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315650;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v23);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v23);

      *(v17 + 14) = v20;
      *(v17 + 22) = 2080;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v23);

      *(v17 + 24) = v21;
      _os_log_impl(&dword_238A75000, v15, v16, "No asset '%s' loader available for '%s' content class type '%s'", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v18, -1, -1);
      MEMORY[0x23EE71510](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return a1;
}

uint64_t JournalingSuggestion.Reflection.init(prompt:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 JournalingSuggestion.LivePhoto.init(image:video:date:landscapeCropRect:squareCropRect:portraitCropRect:photoCloudIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v18 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  v17(a9 + v18[5], a2, v16);
  outlined init with take of UUID?(a3, a9 + v18[6], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = a9 + v18[7];
  v20 = *(a4 + 16);
  *v19 = *a4;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(a4 + 32);
  v21 = a9 + v18[8];
  v22 = *(a5 + 16);
  *v21 = *a5;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a5 + 32);
  v23 = a9 + v18[9];
  result = *a6;
  v25 = *(a6 + 16);
  *v23 = *a6;
  *(v23 + 16) = v25;
  *(v23 + 32) = *(a6 + 32);
  v26 = (a9 + v18[10]);
  *v26 = a7;
  v26[1] = a8;
  return result;
}

uint64_t JournalingSuggestion.EventPoster.init(title:image:eventStart:eventEnd:isHost:placeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for AttributedString();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for JournalingSuggestion.EventPoster(0);
  outlined init with take of UUID?(a2, a8 + v17[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with take of UUID?(a3, a8 + v17[6], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  result = outlined init with take of UUID?(a4, a8 + v17[7], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(a8 + v17[8]) = a5;
  v19 = (a8 + v17[9]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

void *JournalingSuggestion.Workout.Details.activeEnergyBurned.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *JournalingSuggestion.Workout.Details.distance.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *JournalingSuggestion.Workout.Details.averageHeartRate.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t JournalingSuggestion.Workout.Details.averageHeartRateLocalizedString.getter()
{
  v1 = (v0 + *(type metadata accessor for JournalingSuggestion.Workout.Details(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JournalingSuggestion.Workout.Details.averageHeartRateLocalizedString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JournalingSuggestion.Workout.Details(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JournalingSuggestion.Workout.Details.workoutLocalizedName.getter()
{
  v1 = (v0 + *(type metadata accessor for JournalingSuggestion.Workout.Details(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JournalingSuggestion.Workout.Details.workoutLocalizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JournalingSuggestion.Workout.Details(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JournalingSuggestion.Workout.Details.workoutIsIndoors.setter(char a1)
{
  result = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t JournalingSuggestion.Workout.Details.localizedName.getter()
{
  v1 = (v0 + *(type metadata accessor for JournalingSuggestion.Workout.Details(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JournalingSuggestion.Workout.Details.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JournalingSuggestion.Workout.Details(0) + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JournalingSuggestion.Workout.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for JournalingSuggestion.Workout(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for URL();
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + *(v3 + 24)) = 0;
  return result;
}

uint64_t JournalingSuggestion.WorkoutGroup.workouts.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *JournalingSuggestion.WorkoutGroup.activeEnergyBurned.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion.WorkoutGroup(0) + 24));
  v2 = v1;
  return v1;
}

void JournalingSuggestion.WorkoutGroup.activeEnergyBurned.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.WorkoutGroup(0) + 24);

  *(v1 + v3) = a1;
}

void *JournalingSuggestion.WorkoutGroup.averageHeartRate.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion.WorkoutGroup(0) + 28));
  v2 = v1;
  return v1;
}

void JournalingSuggestion.WorkoutGroup.averageHeartRate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.WorkoutGroup(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t JournalingSuggestion.WorkoutGroup.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for JournalingSuggestion.WorkoutGroup(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t JournalingSuggestion.WorkoutGroup.duration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t JournalingSuggestion.Contact.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JournalingSuggestion.Contact.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *JournalingSuggestion.Location.location.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t JournalingSuggestion.Location.mapItemIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for JournalingSuggestion.Location(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JournalingSuggestion.Location.mapItemIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JournalingSuggestion.Location(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *JournalingSuggestion.Location.mapKitItemIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion.Location(0) + 36));
  v2 = v1;
  return v1;
}

void JournalingSuggestion.Location.mapKitItemIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.Location(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t JournalingSuggestion.Location.isWorkLocation.setter(char a1)
{
  result = type metadata accessor for JournalingSuggestion.Location(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t JournalingSuggestion.Location.init(place:city:location:date:mapItemIdentifier:mapKitItemIdentifier:isWorkLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v15 = type metadata accessor for JournalingSuggestion.Location(0);
  result = outlined init with take of UUID?(a6, a9 + v15[7], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = (a9 + v15[8]);
  *v17 = a7;
  v17[1] = a8;
  *(a9 + v15[9]) = a10;
  *(a9 + v15[10]) = a11;
  return result;
}

uint64_t JournalingSuggestion.LocationGroup.locations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t JournalingSuggestion.Workout.Details.distanceLocalizedString.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t JournalingSuggestion.Workout.Details.distanceLocalizedString.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t JournalingSuggestion.Song.init(song:artist:album:artwork:date:trackIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v14 = type metadata accessor for JournalingSuggestion.Song(0);
  outlined init with take of UUID?(a7, a9 + v14[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = outlined init with take of UUID?(a8, a9 + v14[8], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = (a9 + v14[9]);
  *v16 = a10;
  v16[1] = a11;
  return result;
}

uint64_t JournalingSuggestion.Podcast.init(episode:show:artwork:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for JournalingSuggestion.Podcast(0);
  outlined init with take of UUID?(a5, a7 + *(v10 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined init with take of UUID?(a6, a7 + *(v10 + 28), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t JournalingSuggestion.GenericMedia.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JournalingSuggestion.GenericMedia.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JournalingSuggestion.GenericMedia.artist.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t JournalingSuggestion.GenericMedia.artist.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JournalingSuggestion.GenericMedia.album.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t JournalingSuggestion.GenericMedia.album.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t JournalingSuggestion.GenericMedia.color.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion.GenericMedia(0) + 40));
}

uint64_t JournalingSuggestion.GenericMedia.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.GenericMedia(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x6B72614479726576;
  }

  if (*v0)
  {
    v1 = 0x746867696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO18VeryDarkCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO18VeryDarkCodingKeysOGMR);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO14DarkCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO14DarkCodingKeysOGMR);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO15LightCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO15LightCodingKeysOGMR);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17UnknownCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17UnknownCodingKeysOGMR);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys();
      v12 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t _s21JournalingSuggestions0A10SuggestionV12GenericMediaV12ColorVariantV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO15LightCodingKeysOs0T3KeyAAsAMP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JournalingSuggestion.GenericMedia.ColorVariant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t JournalingSuggestion.GenericMedia.ColorVariant.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t JournalingSuggestion.GenericMedia.colorVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t JournalingSuggestion.GenericMedia.colorVariant.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t JournalingSuggestion.GenericMedia.init(title:artist:album:date:appIcon:appIconAccessibilityString:color:colorVariant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v16 = *a13;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v17 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  outlined init with take of UUID?(a7, a9 + v17[7], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  result = outlined init with take of UUID?(a8, a9 + v17[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = (a9 + v17[9]);
  *v19 = a10;
  v19[1] = a11;
  *(a9 + v17[10]) = a12;
  *(a9 + v17[11]) = v16;
  return result;
}

__n128 JournalingSuggestion.Photo.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.Photo(0) + 24);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 JournalingSuggestion.Photo.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.Photo(0) + 28);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 JournalingSuggestion.Photo.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.Photo(0) + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 JournalingSuggestion.Photo.landscapeCropRect.getter@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

__n128 JournalingSuggestion.Video.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.Video(0) + 24);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 JournalingSuggestion.Photo.squareCropRect.getter@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

__n128 JournalingSuggestion.Video.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.Video(0) + 28);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 JournalingSuggestion.Photo.portraitCropRect.getter@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 32);
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

__n128 JournalingSuggestion.Video.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.Video(0) + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t JournalingSuggestion.LivePhoto.video.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JournalingSuggestion.LivePhoto(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JournalingSuggestion.LivePhoto.video.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.LivePhoto(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 JournalingSuggestion.LivePhoto.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.LivePhoto(0) + 28);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 JournalingSuggestion.LivePhoto.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.LivePhoto(0) + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 JournalingSuggestion.LivePhoto.portraitCropRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.LivePhoto(0) + 36);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 JournalingSuggestion.LivePhoto.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalingSuggestion.LivePhoto(0) + 36);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t JournalingSuggestion.Workout.Details.activeEnergyBurnedLocalizedString.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t JournalingSuggestion.Workout.Details.activeEnergyBurnedLocalizedString.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t JournalingSuggestion.MotionActivity.steps.setter(uint64_t a1)
{
  result = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO24RunningWalkingCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO24RunningWalkingCodingKeysOGMR);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17WalkingCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17WalkingCodingKeysOGMR);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17RunningCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17RunningCodingKeysOGMR);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys()
{
  v1 = 0x676E696B6C6177;
  if (*v0 != 1)
  {
    v1 = 0x57676E696E6E7572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696E6E7572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JournalingSuggestion.MotionActivity.MovementType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t JournalingSuggestion.MotionActivity.MovementType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t JournalingSuggestion.MotionActivity.movementType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t JournalingSuggestion.MotionActivity.movementType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t JournalingSuggestion.Workout.route.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));
}

uint64_t JournalingSuggestion.Workout.route.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t JournalingSuggestion.StateOfMind.darkBackground.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion.StateOfMind(0) + 28));
}

uint64_t JournalingSuggestion.StateOfMind.darkBackground.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.StateOfMind(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t JournalingSuggestion.Reflection.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JournalingSuggestion.Reflection.prompt.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JournalingSuggestion.Reflection.color.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t JournalingSuggestion.EventPoster.isHost.setter(char a1)
{
  result = type metadata accessor for JournalingSuggestion.EventPoster(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t JournalingSuggestion.Photo.photo.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t JournalingSuggestion.Photo.photo.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t JournalingSuggestion.ItemContent.representations.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 20));
}

uint64_t JournalingSuggestion.ItemContent.representations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

BOOL JournalingSuggestion.ItemContent.hasContent<A>(ofType:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 20));
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v4;
    v4 += 2;
  }

  while (v6 != a1);
  return v5 != 0;
}

uint64_t JournalingSuggestion.ItemContent.content<A>(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return static JournalingSuggestionAsset.content(forItem:)(a1, v4, a3, a4);
}

uint64_t JournalingSuggestion.ItemContent.content.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 24));
}

uint64_t JournalingSuggestion.ItemContent.content.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance JournalingSuggestion.ItemContent@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JournalingSuggestion.content<A>(forType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](JournalingSuggestion.content<A>(forType:), 0, 0);
}

uint64_t JournalingSuggestion.content<A>(forType:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v9 = *(v0 + 32);
  v3 = type metadata accessor for Optional();
  v4 = type metadata accessor for Array();
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v9;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = JournalingSuggestion.content<A>(forType:);

  return MEMORY[0x282200600](v0 + 16, v3, v4, 0, 0, &async function pointer to partial apply for closure #1 in JournalingSuggestion.content<A>(forType:), v5, v3);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](JournalingSuggestion.content<A>(forType:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in JournalingSuggestion.content<A>(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v8 = *(type metadata accessor for JournalingSuggestion.ItemContent(0) - 8);
  v6[11] = v8;
  v6[12] = *(v8 + 64);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in JournalingSuggestion.content<A>(forType:), 0, 0);
}

uint64_t closure #1 in JournalingSuggestion.content<A>(forType:)()
{
  v1 = **(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 88);
    v34 = *(v0 + 96);
    v5 = *(v4 + 80);
    v6 = v1 + ((v5 + 32) & ~v5);
    v7 = *(v4 + 72);
    v33 = v6;
    v8 = (v5 + 56) & ~v5;
    do
    {
      v18 = *(v0 + 112);
      v19 = v6 + v3 * v7;
      ++v3;
      outlined init with copy of JournalingSuggestion.ItemContent(v19, v18);
      v20 = *(v18 + *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 20));
      v21 = (v20 + 32);
      v22 = *(v20 + 16) + 1;
      while (--v22)
      {
        v23 = *v21;
        v21 += 2;
        v24 = *(v0 + 56);
        if (v23 == v24)
        {
          v10 = *(v0 + 104);
          v9 = *(v0 + 112);
          v11 = v2;
          v12 = *(v0 + 80);
          v13 = *(v0 + 40);
          v14 = type metadata accessor for TaskPriority();
          v35 = *(v0 + 64);
          (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
          outlined init with copy of JournalingSuggestion.ItemContent(v9, v10);
          v15 = swift_allocObject();
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
          *(v15 + 32) = v35;
          *(v15 + 48) = v24;
          outlined init with take of JournalingSuggestion.ItemContent(v10, v15 + v8);
          type metadata accessor for Optional();
          v16 = type metadata accessor for TaskGroup();
          _sScG7addTask8priority9operationyScPSg_xyYaYAcntF(v12, &async function pointer to partial apply for closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:), v15, v16);
          v17 = v12;
          v2 = v11;
          v6 = v33;
          outlined destroy of TaskPriority?(v17);
          break;
        }
      }

      outlined destroy of JournalingSuggestion.ItemContent(*(v0 + 112));
    }

    while (v3 != v2);
  }

  *(v0 + 16) = **(v0 + 40);
  v36 = *(v0 + 64);
  *(v0 + 24) = Array.init()();
  v25 = swift_task_alloc();
  *(v0 + 120) = v25;
  *(v25 + 16) = v36;
  v26 = *(MEMORY[0x277D85860] + 4);
  v27 = swift_task_alloc();
  *(v0 + 128) = v27;
  type metadata accessor for Optional();
  v28 = type metadata accessor for TaskGroup();
  v29 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *v27 = v0;
  v27[1] = closure #1 in JournalingSuggestion.content<A>(forType:);
  v31 = *(v0 + 32);

  return MEMORY[0x282200540](v31, v0 + 24, &async function pointer to partial apply for closure #2 in closure #1 in JournalingSuggestion.content<A>(forType:), v25, v28, v29, WitnessTable);
}

void closure #1 in JournalingSuggestion.content<A>(forType:)()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[14];
    v5 = v2[15];
    v7 = v2[13];
    v8 = v2[10];

    v9 = *(v4 + 8);

    v9();
  }
}

uint64_t closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  v7[7] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:), 0, 0);
}

uint64_t closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:)()
{
  v28 = v0;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.assets);
  outlined init with copy of JournalingSuggestion.ItemContent(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    outlined init with copy of JournalingSuggestion.ItemContent(v7, v8);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of JournalingSuggestion.ItemContent(v7);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v27);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_238A75000, v4, v5, "Loading content %s for item %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE71510](v12, -1, -1);
    MEMORY[0x23EE71510](v11, -1, -1);
  }

  else
  {

    outlined destroy of JournalingSuggestion.ItemContent(v7);
  }

  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:);
  v21 = v0[5];
  v22 = v0[6];
  v23 = v0[3];
  v24 = v0[4];
  v25 = v0[2];

  return JournalingSuggestion.ItemContent.content<A>(forType:)(v25, v23, v21, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:), 0, 0);
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v7 = *(v4 + 8);

    return v7();
  }
}

{
  (*(*(v0[5] - 8) + 56))(v0[2], 1, 1);
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t closure #2 in closure #1 in JournalingSuggestion.content<A>(forType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for Optional();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = *(a3 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in JournalingSuggestion.content<A>(forType:), 0, 0);
}

uint64_t closure #2 in closure #1 in JournalingSuggestion.content<A>(forType:)()
{
  v1 = v0[8];
  v3 = v0 + 7;
  v2 = v0[7];
  v4 = v0 + 6;
  v5 = v0 + 5;
  v6 = v0[4];
  (*(v0[6] + 16))(v2, v0[3], v0[5]);
  if ((*(v1 + 48))(v2, 1, v6) != 1)
  {
    v3 = v0 + 10;
    v7 = v0[10];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[4];
    v11 = v0[2];
    (*(v9 + 32))(v7, v0[7], v10);
    (*(v9 + 16))(v8, v7, v10);
    type metadata accessor for Array();
    Array.append(_:)();
    v4 = v0 + 8;
    v5 = v0 + 4;
  }

  v12 = *v4;
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[7];
  (*(v12 + 8))(*v3, *v5);

  v16 = v0[1];

  return v16();
}

uint64_t JournalingSuggestion.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t JournalingSuggestion.promptLanguages.getter()
{
  v1 = *(v0 + *(type metadata accessor for JournalingSuggestion(0) + 36));
}

uint64_t JournalingSuggestion.promptLanguages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalingSuggestion(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D654D6F746F6870 && a2 == 0xEB0000000079726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO21PhotoMemoryCodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO21PhotoMemoryCodingKeysOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalingSuggestion.SuggestionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalingSuggestion.SuggestionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JournalingSuggestion.SuggestionType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMd, &_ss22KeyedEncodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int JournalingSuggestion.SuggestionType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](0);
  return Hasher._finalize()();
}

uint64_t JournalingSuggestion.SuggestionType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV10CodingKeys33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](0);
  return Hasher._finalize()();
}

uint64_t JournalingSuggestion.suggestionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for JournalingSuggestion(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t JournalingSuggestion.suggestionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for JournalingSuggestion(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t JournalingSuggestion.suggestionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JournalingSuggestion(0) + 44);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int JournalingSuggestion.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  Hasher.init(_seed:)();
  v11 = type metadata accessor for JournalingSuggestion(0);
  v12 = v11[11];
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EE70D90](*(v1 + v11[12]));
  outlined init with copy of URL?(v1 + v11[6], v10, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

void JournalingSuggestion.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for JournalingSuggestion(0);
  v12 = v11[11];
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EE70D90](*(v1 + v11[12]));
  outlined init with copy of URL?(v1 + v11[6], v10, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JournalingSuggestion(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  Hasher.init(_seed:)();
  v14 = a2[11];
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EE70D90](*(v4 + a2[12]));
  outlined init with copy of URL?(v4 + a2[6], v13, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v9, v5);
  }

  return Hasher._finalize()();
}

void JournalingSuggestion.ItemContent.appendContentOfType<A>(assetType:for:inside:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = (*(a5 + 16))(a2, a3, a4, a5);
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v14 = type metadata accessor for JournalingSuggestion.ItemContent(0);
    v15 = *(v14 + 24);
    v16 = *(v6 + v15);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[32 * v18];
    *(v19 + 4) = a1;
    *(v19 + 5) = a5;
    *(v19 + 6) = v12;
    *(v19 + 7) = v13;
    *(v6 + v15) = v16;
    v20 = *(v14 + 20);
    v21 = *(v6 + v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMR);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D15SuggestionAsset_pXpGMR);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@in_guaranteed JournalingSuggestionAsset?, @guaranteed Error?) -> ()) -> ())?(v12);
    v24 = *(a5 + 8);
    *(v21 + 2) = v23 + 1;
    v25 = &v21[16 * v23];
    *(v25 + 4) = a1;
    *(v25 + 5) = v24;
    *(v6 + v20) = v21;
  }

  else
  {
    v26 = _typeName(_:qualified:)();
    v28 = v27;
    v29 = [a2 assetType];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    [a2 content];
    _print_unlocked<A, B>(_:_:)();
    swift_unknownObjectRelease();
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.bridge);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41[0] = v37;
      *v36 = 136315650;
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v41);

      *(v36 + 4) = v38;
      *(v36 + 12) = 2080;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v41);

      *(v36 + 14) = v39;
      *(v36 + 22) = 2080;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v41);

      *(v36 + 24) = v40;
      _os_log_impl(&dword_238A75000, v34, v35, "No asset '%s' loader available for '%s' content class type '%s'", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v37, -1, -1);
      MEMORY[0x23EE71510](v36, -1, -1);
    }

    else
    {
    }
  }
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D10SuggestionV8LocationVGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D10SuggestionV8LocationVGMR, type metadata accessor for JournalingSuggestion.Location);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D10SuggestionV7WorkoutVGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D10SuggestionV7WorkoutVGMR, type metadata accessor for JournalingSuggestion.Workout);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D10SuggestionV11ItemContentVGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions0D10SuggestionV11ItemContentVGMR, type metadata accessor for JournalingSuggestion.ItemContent);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo24HKStateOfMindAssociationVGMd, &_ss23_ContiguousArrayStorageCySo24HKStateOfMindAssociationVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo18HKStateOfMindLabelVGMd, &_ss23_ContiguousArrayStorageCySo18HKStateOfMindLabelVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions21InternalAssetProvider_pXpGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions20InternalAssetContentV0G8ProviderV05assetI0_AC0fgI0_pXp0J4TypetGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions20InternalAssetContentV0G8ProviderV05assetI0_AC0fgI0_pXp0J4TypetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20InternalAssetContentV0D8ProviderV05assetF0_AA0cdF0_pXmT0G4TypetMd, &_s21JournalingSuggestions20InternalAssetContentV0D8ProviderV05assetF0_AA0cdF0_pXmT0G4TypetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for JournalingSuggestion.Contact(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl);
  }

  return result;
}

uint64_t partial apply for closure #1 in JournalingSuggestion.content<A>(forType:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in JournalingSuggestion.content<A>(forType:)(a1, a2, v9, v8, v6, v7);
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.CodingKeys and conformance JournalingSuggestion.SuggestionType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@in_guaranteed JournalingSuggestionAsset?, @guaranteed Error?) -> ()) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant and conformance JournalingSuggestion.GenericMedia.ColorVariant()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant and conformance JournalingSuggestion.GenericMedia.ColorVariant;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant and conformance JournalingSuggestion.GenericMedia.ColorVariant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant and conformance JournalingSuggestion.GenericMedia.ColorVariant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType and conformance JournalingSuggestion.MotionActivity.MovementType()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType and conformance JournalingSuggestion.MotionActivity.MovementType;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType and conformance JournalingSuggestion.MotionActivity.MovementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType and conformance JournalingSuggestion.MotionActivity.MovementType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType and conformance JournalingSuggestion.SuggestionType()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType and conformance JournalingSuggestion.SuggestionType;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType and conformance JournalingSuggestion.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType and conformance JournalingSuggestion.SuggestionType);
  }

  return result;
}

uint64_t sub_238AC15B0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_238AC1748(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for JournalingSuggestion()
{
  type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for [JournalingSuggestion.ItemContent], type metadata accessor for JournalingSuggestion.ItemContent, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String]?(319, &lazy cache variable for type metadata for [String]?, &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for JournalingSuggestion.SuggestionType?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UUID();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [JournalingSuggestion.ItemContent](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_238AC1B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_238AC1C48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for JournalingSuggestion.Workout()
{
  type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for JournalingSuggestion.Workout.Details?, type metadata accessor for JournalingSuggestion.Workout.Details, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String]?(319, &lazy cache variable for type metadata for [CLLocation]?, &_sSaySo10CLLocationCGMd, " %", MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238AC1EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_238AC1F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for JournalingSuggestion.Workout.Details()
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MKMapItemIdentifier?(319, &lazy cache variable for type metadata for HKQuantity?, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for Bool?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for MKMapItemIdentifier?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for OS_dispatch_queue(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for JournalingSuggestion.WorkoutGroup()
{
  type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for [JournalingSuggestion.Workout], type metadata accessor for JournalingSuggestion.Workout, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MKMapItemIdentifier?(319, &lazy cache variable for type metadata for HKQuantity?, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for Double?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_238AC2344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238AC2414(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for JournalingSuggestion.Contact()
{
  type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_238AC2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_238AC2660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for JournalingSuggestion.Location()
{
  type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MKMapItemIdentifier?(319, &lazy cache variable for type metadata for CLLocation?, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MKMapItemIdentifier?(319, &lazy cache variable for type metadata for MKMapItemIdentifier?, &lazy cache variable for type metadata for MKMapItemIdentifier, 0x277CD4E98);
        if (v3 <= 0x3F)
        {
          type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for Bool?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for JournalingSuggestion.LocationGroup(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for JournalingSuggestion.LocationGroup(uint64_t result, int a2, int a3)
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

void type metadata completion function for JournalingSuggestion.Song()
{
  type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238AC2A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_238AC2BF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for JournalingSuggestion.Podcast()
{
  type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_88Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 == 2147483646)
  {
    v8 = *(a1 + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v17 = v15;
      v18 = *(v16 + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }

    else
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v21 = *(*(v20 - 8) + 48);
      v22 = a1 + *(a3 + 32);

      return v21(v22, a2, v20);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_89Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a3)
    {
      v16 = v14;
      v17 = *(v15 + 56);
      v18 = v9 + *(a4 + 28);

      return v17(v18, a2, a2, v16);
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      v20 = *(*(v19 - 8) + 56);
      v21 = v9 + *(a4 + 32);

      return v20(v21, a2, a2, v19);
    }
  }

  return result;
}

void type metadata completion function for JournalingSuggestion.GenericMedia()
{
  type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for Color?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for JournalingSuggestion.GenericMedia.ColorVariant?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_119Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_120Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for JournalingSuggestion.Photo()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_238AC3698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_238AC37D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for JournalingSuggestion.LivePhoto()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_238AC3A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28));
  }

  v16 = v15 - 3;
  if (v14 >= 3)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238AC3B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for JournalingSuggestion.MotionActivity()
{
  type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for JournalingSuggestion.MotionActivity.MovementType?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_56Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_57Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for JournalingSuggestion.StateOfMind()
{
  type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for HKStateOfMind, 0x277CCDA30);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for Gradient?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for JournalingSuggestion.SuggestionType?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for JournalingSuggestion.Reflection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for JournalingSuggestion.Reflection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238AC4144(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_238AC42D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void type metadata completion function for JournalingSuggestion.EventPoster()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [JournalingSuggestion.ItemContent](319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for Bool?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for JournalingSuggestion.SuggestionType?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_238AC45A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238AC4670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for JournalingSuggestion.ItemContent()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]?(319, &lazy cache variable for type metadata for [JournalingSuggestionAsset.Type], &_s21JournalingSuggestions0A15SuggestionAsset_pXpMd, &_s21JournalingSuggestions0A15SuggestionAsset_pXpMR, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [String]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys);
  }

  return result;
}

uint64_t specialized JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B72614479726576 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO18VeryDarkCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO18VeryDarkCodingKeysOGMR);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO14DarkCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO14DarkCodingKeysOGMR);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO15LightCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO15LightCodingKeysOGMR);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17UnknownCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17UnknownCodingKeysOGMR);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV12GenericMediaV12ColorVariantV01eiJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.CodingKeys();
  v26 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    goto LABEL_16;
  }

  v45 = v15;
  v46 = v23;
  v28 = v54;
  v27 = v55;
  v56 = v20;
  v29 = KeyedDecodingContainer.allKeys.getter();
  v30 = *(v29 + 16);
  if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v35 = &unk_284B63990;
    v37 = v46;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v56 + 8))(v37, v19);
    swift_unknownObjectRelease();
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v57);
    return 0;
  }

  v58 = *(v29 + 32);
  if (v31 > 1)
  {
    v39 = v56;
    if (v31 == 2)
    {
      v61 = 2;
      lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.DarkCodingKeys();
      v40 = v28;
      v41 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v40, v50);
      (*(v39 + 8))(v41, v19);
    }

    else
    {
      v62 = 3;
      lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.VeryDarkCodingKeys();
      v42 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v53 + 8))(v27, v52);
      (*(v39 + 8))(v42, v19);
    }
  }

  else
  {
    if (v31)
    {
      v60 = 1;
      lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.LightCodingKeys();
      v38 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v49 + 8))(v14, v48);
    }

    else
    {
      v59 = 0;
      lazy protocol witness table accessor for type JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys and conformance JournalingSuggestion.GenericMedia.ColorVariant.eColorVariantImpl.UnknownCodingKeys();
      v38 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v18, v45);
    }

    (*(v56 + 8))(v38, v19);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v58;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys);
  }

  return result;
}

uint64_t specialized JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x57676E696E6E7572 && a2 == 0xEE00676E696B6C61)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.init(from:)(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO24RunningWalkingCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO24RunningWalkingCodingKeysOGMR);
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17WalkingCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17WalkingCodingKeysOGMR);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17RunningCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO17RunningCodingKeysOGMR);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV14MotionActivityV12MovementTypeV07eMoventJ4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMR);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.CodingKeys();
  v17 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v26 = &unk_284B63870;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningCodingKeys();
    v29 = v15;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.WalkingCodingKeys();
    v29 = v15;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  lazy protocol witness table accessor for type JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys and conformance JournalingSuggestion.MotionActivity.MovementType.eMoventTypeImpl.RunningWalkingCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v43;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys;
  if (!lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys);
  }

  return result;
}

uint64_t specialized JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO21PhotoMemoryCodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO21PhotoMemoryCodingKeysOGMR);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy21JournalingSuggestions0D10SuggestionV0F4TypeV01efG4Impl33_0A3EB2DDC5F6E4F75C05D376BFC113A4LLO10CodingKeysOGMR);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      lazy protocol witness table accessor for type JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys and conformance JournalingSuggestion.SuggestionType.eSuggestionTypeImpl.PhotoMemoryCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v16 = &unk_284B63750;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t outlined init with copy of JournalingSuggestion.ItemContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.ItemContent(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #2 in closure #1 in JournalingSuggestion.content<A>(forType:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #2 in closure #1 in JournalingSuggestion.content<A>(forType:)(a1, a2, v7);
}

uint64_t sub_238AC6388()
{
  v1 = (type metadata accessor for JournalingSuggestion.ItemContent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7]);

  v8 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of JournalingSuggestion.ItemContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.ItemContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for JournalingSuggestion.ItemContent(0) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in JournalingSuggestion.content<A>(forType:)(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238AC665C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t getEnumTagSinglePayload for JournalingSuggestion.SuggestionType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for JournalingSuggestion.SuggestionType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JournalingSuggestion.MotionActivity.MovementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JournalingSuggestion.MotionActivity.MovementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}