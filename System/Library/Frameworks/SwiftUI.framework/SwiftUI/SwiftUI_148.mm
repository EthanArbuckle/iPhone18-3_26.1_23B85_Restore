uint64_t specialized ToolbarStrategy.makeBarContext(storage:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *v3;
  if (*v3)
  {
    v7 = *(a1 + 8);
    outlined init with copy of ToolbarStorage?((v3 + 1), v33, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    if (v33[11])
    {
      outlined init with take of Toolbar.UpdateContext(v33, v34);
      v8 = v34[80];
      v9 = v34[81];
      Strong = swift_unknownObjectWeakLoadStrong();
      v27 = v9;
      v28 = v8;
      v26 = v4;
      if (Strong)
      {
        v25 = UIViewController.hasOrWillHaveSystemLeadingItems(_:)(v34);
      }

      else
      {
        v25 = 0;
      }

      v33[0] = a2;
      PreferenceValues.subscript.getter();
      v24 = v29;
      v11 = ToolbarStorage.placements.getter();
      v12 = v11;
      v13 = v11 + 56;
      v14 = 1 << *(v11 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v11 + 56);
      v17 = (v14 + 63) >> 6;

      v18 = 0;
      while (v16)
      {
LABEL_14:
        outlined init with copy of ToolbarItemPlacement.Role(*(v12 + 48) + 48 * (__clz(__rbit64(v16)) | (v18 << 6)), v33);
        v29 = 6;
        v30 = 0u;
        v31 = 0u;
        v32 = 2;
        v20 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v33, &v29);
        outlined destroy of ToolbarItemPlacement.Role(&v29);
        if (v20)
        {
          outlined destroy of ToolbarItemPlacement.Role(v33);
LABEL_19:

          v22 = 1;
LABEL_20:

          result = outlined destroy of Toolbar.UpdateContext(v34);
          *a3 = v7 != 0;
          *(a3 + 1) = v24;
          *(a3 + 2) = v25 & 1;
          *(a3 + 3) = v22;
          *(a3 + 4) = v28;
          *(a3 + 5) = v27;
          return result;
        }

        v29 = 26;
        v16 &= v16 - 1;
        v30 = 0u;
        v31 = 0u;
        v32 = 2;
        v21 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v33, &v29);
        outlined destroy of ToolbarItemPlacement.Role(&v29);
        outlined destroy of ToolbarItemPlacement.Role(v33);
        if (v21)
        {
          goto LABEL_19;
        }
      }

      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v19 >= v17)
        {

          v22 = 0;
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * v19);
        ++v18;
        if (v16)
        {
          v18 = v19;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    outlined destroy of ToolbarStorage?(v33, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized ToolbarBridge.updateStorage(newStorage:barContext:updateContext:strategy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7ToolbarO11BarLocationO_AE0G7StorageVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v6;
  v46 = *(a1 + 64);
  v7 = *(a1 + 16);
  v42 = *a1;
  v43 = v7;
  outlined init with copy of ToolbarStorage(a1, &v36);
  ToolbarStorage.removeRequestedDefaultItems()();
  *&v36 = specialized static Toolbar.BarLocation.allCases.getter();

  specialized Array.append<A>(contentsOf:)(v8);
  v9 = v36;
  v10 = *(v36 + 16);
  if (v10)
  {
    v30 = v5;
    v31 = v36 + 32;
    v32 = direct field offset for ToolbarBridge.allowedLocations;
    result = swift_beginAccess();
    v12 = 0;
    v29 = v10;
    while (v12 < *(v9 + 16))
    {
      outlined init with copy of Toolbar.BarLocation(v31 + 40 * v12, v41);
      v13 = *(v3 + v32);
      if (!*(v13 + 16))
      {
        goto LABEL_4;
      }

      Hasher.init(_seed:)();

      Toolbar.BarLocation.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(v13 + 32);
      v16 = v14 & ~v15;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {

        goto LABEL_4;
      }

      v17 = ~v15;
      while (2)
      {
        outlined init with copy of Toolbar.BarLocation(*(v13 + 48) + 40 * v16, v40);
        outlined init with copy of Toolbar.BarLocation(v40, &v36);
        outlined init with copy of Toolbar.BarLocation(v41, &v38[8]);
        switch(*(&v37 + 1))
        {
          case 0:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32])
            {
              goto LABEL_53;
            }

            goto LABEL_58;
          case 1:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 1)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 2:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 2)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 3:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 3)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 4:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 4)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 5:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 5)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 6:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 6)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 7:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 7)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 8:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 8)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 9:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 9)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0xALL:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 10)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0xBLL:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 11)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0xCLL:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 12)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0xDLL:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 13)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0xELL:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 14)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0xFLL:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 15)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0x10:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 16)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0x11:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 17)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0x12:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 18)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          case 0x13:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] != 19)
            {
              goto LABEL_53;
            }

            goto LABEL_58;
          case 0x14:
            outlined destroy of Toolbar.BarLocation(v40);
            if (*&v38[32] == 20)
            {
              goto LABEL_58;
            }

            goto LABEL_53;
          default:
            outlined init with copy of Toolbar.BarLocation(&v36, v35);
            if (*&v38[32] < 0x15uLL)
            {
              outlined destroy of Toolbar.BarLocation(v40);
              outlined destroy of AnyHashable(v35);
LABEL_53:
              outlined destroy of ToolbarStorage.GroupItem(&v36, type metadata accessor for (Toolbar.BarLocation, Toolbar.BarLocation));
              goto LABEL_54;
            }

            v33[0] = *&v38[8];
            v33[1] = *&v38[24];
            v34 = v39;
            v18 = MEMORY[0x18D00E7E0](v35, v33);
            outlined destroy of AnyHashable(v33);
            outlined destroy of Toolbar.BarLocation(v40);
            outlined destroy of AnyHashable(v35);
            if ((v18 & 1) == 0)
            {
              outlined destroy of Toolbar.BarLocation(&v36);
LABEL_54:
              v16 = (v16 + 1) & v17;
              if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {

                v10 = v29;
                goto LABEL_4;
              }

              continue;
            }

LABEL_58:

            outlined destroy of Toolbar.BarLocation(&v36);
            v47[2] = v44;
            v47[3] = v45;
            v48 = v46;
            v47[0] = v42;
            v47[1] = v43;
            v19 = specialized ToolbarBridge.filterAndSortMatchingItems(in:newStorage:context:)(v41, v47, a2 & 0x1FFFF01010101);
            v20 = specialized ToolbarStrategy.makeEntries(in:from:)(v41, v19);

            v21 = specialized ToolbarBridge.makeStorage(in:from:strategy:)(v41, v20);
            v23 = v22;
            v25 = v24;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v36 = v30;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v23, v25, v41, isUniquelyReferenced_nonNull_native);
            v30 = v36;
            v10 = v29;
LABEL_4:
            ++v12;
            result = outlined destroy of Toolbar.BarLocation(v41);
            if (v12 == v10)
            {

              v5 = v30;
              goto LABEL_61;
            }

            break;
        }

        break;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_61:
    *v38 = v44;
    *&v38[16] = v45;
    *&v38[32] = v46;
    v36 = v42;
    v37 = v43;
    outlined destroy of ToolbarStorage(&v36);
    v27 = direct field offset for ToolbarBridge.storageByLocation;
    swift_beginAccess();
    *(v3 + v27) = v5;
  }

  return result;
}

uint64_t specialized closure #2 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(uint64_t a1, uint64_t a2)
{
  v4 = direct field offset for ToolbarBridge.searchItem;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.SearchItem?(a1, a2 + v4);
  return swift_endAccess();
}

uint64_t specialized closure #3 in closure #2 in ToolbarBridge.preferencesDidChange(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = direct field offset for ToolbarBridge.lastNavigationProperties;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.NavigationProperties?(a1, a2 + v6);
  result = swift_endAccess();
  *(a3 + 11) = 0;
  return result;
}

uint64_t specialized ToolbarBridge.makeStorage(in:from:strategy:)(uint64_t a1, uint64_t a2)
{
  v194 = a2;
  v179 = type metadata accessor for UUID();
  v207 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v5);
  v196 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v202 = &v171 - v8;
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v192 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v191 = &v171 - v12;
  v204 = type metadata accessor for ToolbarStorage.Entry(0);
  v209 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v195 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v171 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v208 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v210 = &v171 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v171 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v171 - v25;
  v27 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v28 = *(v2 + v27);
  if (*(v28 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v30 & 1) != 0))
  {
    v31 = (*(v28 + 56) + 24 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];

    v190 = v34;
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v190 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v32);
  }

  v205 = a1;
  v189 = v16;
  v201 = v5;
  swift_endAccess();
  v35 = *(v32 + 16);
  v206 = v32;
  if (v35)
  {
    v36 = 0;
    v37 = (v32 + 40);
    v38 = MEMORY[0x1E69E7CC0];
    while (v36 < *(v32 + 16))
    {
      if (*(v33 + 16))
      {
        v40 = *(v37 - 1);
        v39 = *v37;

        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v39);
        if (v42)
        {
          v43 = v33;
          _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(*(v33 + 56) + *(v209 + 72) * v41, v26, type metadata accessor for ToolbarStorage.Entry);
          ToolbarStorage.Entry.id.getter(&v215);

          outlined destroy of ToolbarStorage.GroupItem(v26, type metadata accessor for ToolbarStorage.Entry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
          }

          v45 = *(v38 + 2);
          v44 = *(v38 + 3);
          if (v45 >= v44 >> 1)
          {
            v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v38);
          }

          *(v38 + 2) = v45 + 1;
          v46 = &v38[88 * v45];
          v47 = *v216;
          *(v46 + 2) = v215;
          *(v46 + 3) = v47;
          v48 = *&v216[16];
          v49 = v217;
          v50 = v218;
          v46[112] = v219;
          *(v46 + 5) = v49;
          *(v46 + 6) = v50;
          *(v46 + 4) = v48;
          v32 = v206;
          v33 = v43;
        }

        else
        {

          v32 = v206;
        }
      }

      ++v36;
      v37 += 2;
      if (v35 == v36)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v177 = v33;
    v51 = v194;
    v52 = *(v194 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    v54 = v205;
    v212 = MEMORY[0x1E69E7CC0];
    v174 = v52;
    if (v52)
    {
      v214 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
      v55 = v214;
      v56 = v51 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
      v57 = *(v209 + 72);
      do
      {
        _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v56, v23, type metadata accessor for ToolbarStorage.Entry);
        ToolbarStorage.Entry.id.getter(&v215);
        outlined destroy of ToolbarStorage.GroupItem(v23, type metadata accessor for ToolbarStorage.Entry);
        v214 = v55;
        v59 = *(v55 + 2);
        v58 = *(v55 + 3);
        if (v59 >= v58 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
          v55 = v214;
        }

        *(v55 + 2) = v59 + 1;
        v60 = &v55[88 * v59];
        v61 = *v216;
        *(v60 + 2) = v215;
        *(v60 + 3) = v61;
        v62 = *&v216[16];
        v63 = v217;
        v64 = v218;
        v60[112] = v219;
        *(v60 + 5) = v63;
        *(v60 + 6) = v64;
        *(v60 + 4) = v62;
        v56 += v57;
        --v52;
      }

      while (v52);
      v54 = v205;
      v53 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    v213 = v55;
    v214 = v38;
    *&v215 = v53;
    type metadata accessor for CollectionChanges<Int, Int>();
    type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for [ToolbarStorage.Entry.ID], &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [ToolbarStorage.Entry.ID] and conformance [A]();
    lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
    CollectionChanges.formChanges<A, B>(from:to:)();
    v65 = MEMORY[0x1E69E7CC0];

    v66 = v215;
    v215 = 0uLL;
    *v216 = 0;
    *&v216[8] = xmmword_18CD90770;
    v67 = specialized static Toolbar.BarLocation.== infix(_:_:)(v54, &v215);
    outlined destroy of Toolbar.BarLocation(&v215);
    v211 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI14ToolbarStorageV5EntryVTt0g5Tf4g_n(v65);
    v188 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI7ToolbarO10VendedItemOTt0g5Tf4g_n(v65);
    v68 = *(v66 + 16);

    if (!v68)
    {
LABEL_128:

      swift_bridgeObjectRelease_n();
      return v212;
    }

    v69 = v54;
    v70 = 0;
    if (v67)
    {
      v71 = 0;
    }

    else
    {
      v71 = 2;
    }

    v186 = "swiftui-document";
    v176 = (v207 + 8);
    v175 = v66 + 64;
    v212 = MEMORY[0x1E69E7CC0];
    v203 = xmmword_18CD7DD20;
    v72 = v202;
    v73 = v210;
    v197 = v66;
LABEL_30:
    if (v70 <= v68)
    {
      v74 = v68;
    }

    else
    {
      v74 = v70;
    }

    v75 = ~v70;
    v76 = (v175 + 40 * v70);
    while (v74 + v75 != -1)
    {
      if (*v76)
      {
        v77 = *(v76 - 4);
        v78 = *(v76 - 3);
        if (*v76 != 1)
        {
          v111 = v78 - v77;
          if (v78 != v77)
          {
            if (v78 < v77)
            {
              goto LABEL_149;
            }

            v112 = 0;
            v113 = 0;
            v115 = *(v76 - 2);
            v114 = *(v76 - 1);
            v116 = v114 - 1;
            if (v115 <= v114)
            {
              v117 = v114;
            }

            else
            {
              v117 = v115;
            }

            v187 = v114;
            v185 = v114 - v115;
            if (v114 == v115)
            {
              v116 = 0;
            }

            v182 = v206 + 16 * v77;
            v118 = v174 - v115;
            if (v174 < v115)
            {
              v118 = 0;
            }

            v183 = v118;
            v184 = v117 - v115;
            v171 = v116 - v115;
            v180 = 16 * v115;
            v198 = v115;
            v200 = -v115;
            v119 = v189;
            v181 = v78 - v77;
            while (v111 != v113)
            {
              if (v185 != v113)
              {
                if (v187 < v198)
                {
                  goto LABEL_137;
                }

                if (v184 == v113)
                {
                  goto LABEL_138;
                }

                v215 = 0uLL;
                *v216 = 0;
                *&v216[8] = v203;
                v121 = specialized static Toolbar.BarLocation.== infix(_:_:)(v69, &v215);
                outlined destroy of Toolbar.BarLocation(&v215);
                if ((v121 & 1) != 0 && v187 != v198 && -*(v197 + 16) == v75 && v171 == v113)
                {
                  v71 = 1;
                }

                if (v77 < 0)
                {
                  goto LABEL_139;
                }

                if ((v77 + v113) >= *(v206 + 16))
                {
                  goto LABEL_140;
                }

                if (v183 == v113)
                {
                  goto LABEL_141;
                }

                v122 = v198 + v113;
                v199 = v112;
                v124 = *(v182 + v112 + 32);
                v123 = *(v182 + v112 + 40);
                v125 = v194 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
                v193 = *(v209 + 72);
                _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v125 + v193 * (v198 + v113), v119, type metadata accessor for ToolbarStorage.Entry);
                *(v119 + *(v204 + 20)) = v71;
                v126 = v190;
                v127 = *(v190 + 16);

                v207 = v124;
                if (v127 && (v128 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v123), (v129 & 1) != 0))
                {
                  v130 = *(v126 + 56) + 16 * v128;
                  v131 = *v130;
                  v173 = *(v130 + 8);
                  v172 = v131;
                  v132 = v188;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v215 = v132;
                  v135 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v123);
                  v136 = *(v132 + 16);
                  v137 = (v134 & 1) == 0;
                  v138 = v136 + v137;
                  if (__OFADD__(v136, v137))
                  {
                    goto LABEL_145;
                  }

                  v139 = v134;
                  if (*(v132 + 24) >= v138)
                  {
                    v142 = v212;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      specialized _NativeDictionary.copy()();
                      v142 = v212;
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v138, isUniquelyReferenced_nonNull_native);
                    v140 = specialized __RawDictionaryStorage.find<A>(_:)(v207, v123);
                    if ((v139 & 1) != (v141 & 1))
                    {
                      goto LABEL_150;
                    }

                    v135 = v140;
                    v142 = v212;
                  }

                  v143 = v215;
                  v188 = v215;
                  if (v139)
                  {
                    v144 = *(v215 + 56) + 16 * v135;
                    v145 = *v144;
                    *v144 = v131;
                    *(v144 + 8) = v173;
                  }

                  else
                  {
                    *(v215 + 8 * (v135 >> 6) + 64) |= 1 << v135;
                    v146 = (*(v143 + 48) + 16 * v135);
                    *v146 = v207;
                    v146[1] = v123;
                    v147 = *(v143 + 56) + 16 * v135;
                    *v147 = v131;
                    *(v147 + 8) = v173;

                    v148 = *(v188 + 16);
                    v102 = __OFADD__(v148, 1);
                    v149 = v148 + 1;
                    if (v102)
                    {
                      goto LABEL_146;
                    }

                    *(v188 + 16) = v149;
                  }

                  v119 = v189;
                }

                else
                {
                  v142 = v212;
                }

                v150 = *(v142 + 2);
                if (v150 < v122)
                {
                  goto LABEL_142;
                }

                v151 = swift_isUniquelyReferenced_nonNull_native();
                if (!v151 || v150 >= *(v142 + 3) >> 1)
                {
                  v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v151, v150 + 1, 1, v142);
                }

                v152 = v205;
                v111 = v181;
                v153 = &v142[v180 + v199];
                swift_arrayDestroy();
                memmove(v153 + 48, v153 + 32, 16 * (v200 + *(v142 + 2)));
                v154 = *(v142 + 2) + 1;
                v212 = v142;
                *(v142 + 2) = v154;
                v155 = v207;
                *(v153 + 4) = v207;
                *(v153 + 5) = v123;
                _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v119, v195, type metadata accessor for ToolbarStorage.Entry);
                v156 = v211;
                v157 = swift_isUniquelyReferenced_nonNull_native();
                *&v215 = v156;
                v158 = specialized __RawDictionaryStorage.find<A>(_:)(v155, v123);
                v160 = *(v156 + 16);
                v161 = (v159 & 1) == 0;
                v102 = __OFADD__(v160, v161);
                v162 = v160 + v161;
                if (v102)
                {
                  goto LABEL_143;
                }

                v163 = v159;
                if (*(v156 + 24) >= v162)
                {
                  if ((v157 & 1) == 0)
                  {
                    v169 = v158;
                    specialized _NativeDictionary.copy()();
                    v158 = v169;
                  }
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v162, v157);
                  v158 = specialized __RawDictionaryStorage.find<A>(_:)(v207, v123);
                  if ((v163 & 1) != (v164 & 1))
                  {
                    goto LABEL_150;
                  }
                }

                v119 = v189;
                if (v163)
                {
                  v120 = v158;

                  v211 = v215;
                  outlined assign with take of ToolbarStorage.Entry(v195, *(v215 + 56) + v120 * v193);
                  outlined destroy of ToolbarStorage.GroupItem(v119, type metadata accessor for ToolbarStorage.Entry);
                }

                else
                {
                  v165 = v215;
                  *(v215 + 8 * (v158 >> 6) + 64) |= 1 << v158;
                  v166 = (v165[6] + 16 * v158);
                  *v166 = v207;
                  v166[1] = v123;
                  _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v195, v165[7] + v158 * v193, type metadata accessor for ToolbarStorage.Entry);
                  outlined destroy of ToolbarStorage.GroupItem(v119, type metadata accessor for ToolbarStorage.Entry);
                  v167 = v165[2];
                  v102 = __OFADD__(v167, 1);
                  v168 = v167 + 1;
                  if (v102)
                  {
                    goto LABEL_144;
                  }

                  v211 = v165;
                  v165[2] = v168;
                }

                ++v113;
                v112 = v199 + 16;
                --v200;
                v71 = 2;
                v69 = v152;
                if (v111 != v113)
                {
                  continue;
                }
              }

              v68 = *(v197 + 16);
              v72 = v202;
              v73 = v210;
              goto LABEL_127;
            }

            goto LABEL_136;
          }

LABEL_127:
          v70 = -v75;
          if (v68 + v75)
          {
            goto LABEL_30;
          }

          goto LABEL_128;
        }

        if (v78 != v77)
        {
          if (v78 < v77)
          {
            goto LABEL_147;
          }

          if (v78 > v77)
          {
            v187 = -v75;
            v199 = v194 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
            v79 = v174;
            if (v77 > v174)
            {
              v79 = v77;
            }

            v200 = -v79;
            v80 = -v77;
            v198 = -v78;
            v81 = 16 * v77;
            v193 = 1 - v78;
            while (v77 < v78)
            {
              v215 = 0uLL;
              *v216 = 0;
              *&v216[8] = v203;
              v82 = specialized static Toolbar.BarLocation.== infix(_:_:)(v205, &v215);
              outlined destroy of Toolbar.BarLocation(&v215);
              if ((v82 & 1) != 0 && !(v75 + *(v197 + 16)) && v193 == v80)
              {
                v71 = 1;
              }

              if (v200 == v80)
              {
                goto LABEL_132;
              }

              v207 = *(v209 + 72);
              _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v199 + v207 * v77, v73, type metadata accessor for ToolbarStorage.Entry);
              *(v73 + *(v204 + 20)) = v71;
              _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v73, v72, type metadata accessor for ToolbarStorage.Entry.Kind);
              if (swift_getEnumCaseMultiPayload())
              {
                outlined destroy of ToolbarStorage.GroupItem(v72, type metadata accessor for ToolbarStorage.Entry.Kind);
                v83 = v196;
                _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v73, v196, type metadata accessor for ToolbarStorage.Entry.Kind);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                outlined destroy of ToolbarStorage.GroupItem(v83, type metadata accessor for ToolbarStorage.Entry.Kind);
                if (EnumCaseMultiPayload == 3)
                {
                  v85 = 0xE600000000000000;
                  v86 = 0x686372616573;
                }

                else
                {
                  MEMORY[0x18D009810](0xD000000000000014, v186 | 0x8000000000000000);
                  v86 = 0;
                  v85 = 0xE000000000000000;
                }
              }

              else
              {
                v87 = v192;
                _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v72, v192, type metadata accessor for ToolbarStorage.Item);
                v88 = v191;
                _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v87, v191, type metadata accessor for ToolbarStorage.Item);
                v85 = *(v88 + 40);
                if (v85)
                {
                  v86 = *(v88 + 32);
                }

                else
                {
                  v89 = v178;
                  UUID.init()();
                  v86 = UUID.uuidString.getter();
                  v85 = v90;
                  (*v176)(v89, v179);
                }

                outlined destroy of ToolbarStorage.GroupItem(v88, type metadata accessor for ToolbarStorage.Item);
              }

              v91 = v212;
              v92 = *(v212 + 2);
              if (v92 < v77)
              {
                goto LABEL_133;
              }

              v93 = swift_isUniquelyReferenced_nonNull_native();
              if (!v93 || v92 >= *(v91 + 3) >> 1)
              {
                v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93, v92 + 1, 1, v91);
              }

              v94 = &v91[v81];
              swift_arrayDestroy();
              memmove(v94 + 48, v94 + 32, 16 * (v80 + *(v91 + 2)));
              v95 = *(v91 + 2) + 1;
              v212 = v91;
              *(v91 + 2) = v95;
              *(v94 + 4) = v86;
              *(v94 + 5) = v85;
              _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v210, v208, type metadata accessor for ToolbarStorage.Entry);
              v96 = v211;
              v97 = swift_isUniquelyReferenced_nonNull_native();
              *&v215 = v96;
              v98 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v85);
              v100 = *(v96 + 16);
              v101 = (v99 & 1) == 0;
              v102 = __OFADD__(v100, v101);
              v103 = v100 + v101;
              if (v102)
              {
                goto LABEL_134;
              }

              v104 = v99;
              if (*(v96 + 24) >= v103)
              {
                if ((v97 & 1) == 0)
                {
                  v110 = v98;
                  specialized _NativeDictionary.copy()();
                  v98 = v110;
                }
              }

              else
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v103, v97);
                v98 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v85);
                if ((v104 & 1) != (v105 & 1))
                {
                  goto LABEL_150;
                }
              }

              v106 = v215;
              v211 = v215;
              if (v104)
              {
                outlined assign with take of ToolbarStorage.Entry(v208, *(v215 + 56) + v98 * v207);
              }

              else
              {
                *(v215 + 8 * (v98 >> 6) + 64) |= 1 << v98;
                v107 = (v106[6] + 16 * v98);
                *v107 = v86;
                v107[1] = v85;
                _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v208, v106[7] + v98 * v207, type metadata accessor for ToolbarStorage.Entry);
                v108 = v106[2];
                v102 = __OFADD__(v108, 1);
                v109 = v108 + 1;
                if (v102)
                {
                  goto LABEL_135;
                }

                v106[2] = v109;
              }

              v73 = v210;
              outlined destroy of ToolbarStorage.GroupItem(v210, type metadata accessor for ToolbarStorage.Entry);

              --v80;
              v81 += 16;
              ++v77;
              v71 = 2;
              v72 = v202;
              if (v198 == v80)
              {
                v68 = *(v197 + 16);
                v69 = v205;
                v70 = v187;
                if (v68 + v75)
                {
                  goto LABEL_30;
                }

                goto LABEL_128;
              }
            }

            goto LABEL_131;
          }

          goto LABEL_148;
        }
      }

      --v75;
      v76 += 40;
      if (v68 + v75 == -1)
      {
        goto LABEL_128;
      }
    }
  }

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
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized ToolbarBridge.hasItem(withPlacement:)(uint64_t a1)
{
  v53 = a1;
  v52 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (key: String, value: ToolbarStorage.Entry)();
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = direct field offset for ToolbarBridge.storageByLocation;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 64);
  v46 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v9;
  v45 = (v10 + 63) >> 6;
  v48 = v8;

  v14 = 0;
  v15 = 0;
  do
  {
LABEL_5:
    v16 = v14;
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      do
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_37;
        }

        if (v18 >= v45)
        {

          return v14 & 1;
        }

        v17 = *(v46 + 8 * v18);
        ++v15;
      }

      while (!v17);
      v15 = v18;
    }

    v12 = (v17 - 1) & v17;
    v14 = 1;
  }

  while ((v16 & 1) != 0);
  v49 = (v17 - 1) & v17;
  v19 = *(*(v48 + 56) + 24 * (__clz(__rbit64(v17)) | (v15 << 6)) + 8);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v54 = v19;
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  while (v23)
  {
LABEL_21:
    v27 = __clz(__rbit64(v23)) | (v25 << 6);
    v28 = *(v54 + 56);
    v29 = (*(v54 + 48) + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = v28 + *(*(type metadata accessor for ToolbarStorage.Entry(0) - 8) + 72) * v27;
    v33 = *(v50 + 48);
    v34 = v55;
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v32, v55 + v33, type metadata accessor for ToolbarStorage.Entry);
    *v34 = v31;
    v34[1] = v30;
    v35 = v34 + v33;
    v36 = v51;
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v35, v51, type metadata accessor for ToolbarStorage.Entry.Kind);
    if (swift_getEnumCaseMultiPayload())
    {

      outlined destroy of ToolbarStorage.GroupItem(v36, type metadata accessor for ToolbarStorage.Entry.Kind);
      memset(v63, 0, sizeof(v63));
      v64 = 0;
      v65 = -1;
    }

    else
    {
      v37 = v36;
      v38 = v47;
      _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v37, v47, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of ToolbarItemPlacement.Role(v38 + 112, v63);

      outlined destroy of ToolbarStorage.GroupItem(v38, type metadata accessor for ToolbarStorage.Item);
    }

    v23 &= v23 - 1;
    outlined init with copy of ToolbarItemPlacement.Role(v53, v62);
    v39 = MEMORY[0x1E69E6720];
    outlined init with copy of ToolbarStorage?(v63, v59, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    outlined init with copy of ToolbarStorage?(v62, &v60, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v39, type metadata accessor for ToolbarStorage?);
    if (v59[40] == 255)
    {
      v42 = MEMORY[0x1E69E6720];
      outlined destroy of ToolbarStorage?(v62, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      outlined destroy of ToolbarStorage?(v63, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v42, type metadata accessor for ToolbarStorage?);
      if (BYTE8(v61[1]) == 255)
      {
        outlined destroy of ToolbarStorage?(v59, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
        outlined destroy of ToolbarStorage.GroupItem(v55, type metadata accessor for (key: String, value: ToolbarStorage.Entry));
LABEL_34:
        v14 = 1;
LABEL_33:

        v12 = v49;
        goto LABEL_5;
      }

LABEL_31:
      outlined destroy of (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(v59, &lazy cache variable for type metadata for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?), &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
      result = outlined destroy of ToolbarStorage.GroupItem(v55, type metadata accessor for (key: String, value: ToolbarStorage.Entry));
    }

    else
    {
      outlined init with copy of ToolbarStorage?(v59, v58, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      if (BYTE8(v61[1]) == 255)
      {
        v43 = MEMORY[0x1E69E6720];
        outlined destroy of ToolbarStorage?(v62, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
        outlined destroy of ToolbarStorage?(v63, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v43, type metadata accessor for ToolbarStorage?);
        outlined destroy of ToolbarItemPlacement.Role(v58);
        goto LABEL_31;
      }

      v56 = v60;
      v57[0] = v61[0];
      *(v57 + 9) = *(v61 + 9);
      v40 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v58, &v56);
      outlined destroy of ToolbarItemPlacement.Role(&v56);
      v41 = MEMORY[0x1E69E6720];
      outlined destroy of ToolbarStorage?(v62, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      outlined destroy of ToolbarStorage?(v63, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v41, type metadata accessor for ToolbarStorage?);
      outlined destroy of ToolbarItemPlacement.Role(v58);
      outlined destroy of ToolbarStorage?(v59, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v41, type metadata accessor for ToolbarStorage?);
      result = outlined destroy of ToolbarStorage.GroupItem(v55, type metadata accessor for (key: String, value: ToolbarStorage.Entry));
      if (v40)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v14 = 0;
      goto LABEL_33;
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

double static ToolbarReader._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v50 = a7;
  v88 = *MEMORY[0x1E69E9840];
  *&v82 = a3;
  *(&v82 + 1) = a4;
  v55[0] = a4;
  *&v83 = a5;
  *(&v83 + 1) = a6;
  v49 = a6;
  v11 = type metadata accessor for ToolbarReader.ToolbarConfiguration();
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v15 = a2[3];
  v16 = a2[1];
  v84 = a2[2];
  v85 = v15;
  v17 = a2[3];
  v86 = a2[4];
  v18 = a2[1];
  v82 = *a2;
  v83 = v18;
  v78 = v84;
  v79 = v17;
  v80 = a2[4];
  v48 = *a1;
  v87 = *(a2 + 20);
  v81 = *(a2 + 20);
  v76 = v82;
  v77 = v16;
  outlined init with copy of _ViewInputs(&v82, &v70);
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  if (static ToolbarEdges.contains(_:)(0, a3, a5))
  {
    PreferenceKeys.add(_:)();
    PreferenceKeys.add(_:)();
  }

  v47 = a5;
  if (static ToolbarEdges.contains(_:)(1, a3, a5))
  {
    PreferenceKeys.add(_:)();
  }

  *&v70 = 0;
  BYTE8(v70) = 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v19 = MEMORY[0x1E69803F8];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for PreferenceValueAttribute<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E69803F8]);
  lazy protocol witness table accessor for type PreferenceValueAttribute<ToolbarKey> and conformance PreferenceValueAttribute<A>();
  v54 = Attribute.init<A>(body:value:flags:update:)();
  *&v70 = 0;
  BYTE8(v70) = 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for PreferenceValueAttribute<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, v19);
  lazy protocol witness table accessor for type PreferenceValueAttribute<NavigationTitleKey> and conformance PreferenceValueAttribute<A>();
  LODWORD(v53) = Attribute.init<A>(body:value:flags:update:)();
  *&v70 = 0;
  BYTE8(v70) = 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for PreferenceValueAttribute<SearchKey>, &type metadata for SearchKey, &protocol witness table for SearchKey, v19);
  lazy protocol witness table accessor for type PreferenceValueAttribute<SearchKey> and conformance PreferenceValueAttribute<A>();
  HIDWORD(v53) = Attribute.init<A>(body:value:flags:update:)();
  *&v70 = 0;
  BYTE8(v70) = 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for PreferenceValueAttribute<NavigationBarAppearanceKey>, &type metadata for NavigationBarAppearanceKey, &protocol witness table for NavigationBarAppearanceKey, v19);
  lazy protocol witness table accessor for type PreferenceValueAttribute<NavigationBarAppearanceKey> and conformance PreferenceValueAttribute<A>();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  *&v70 = 0;
  BYTE8(v70) = 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for PreferenceValueAttribute<BottomBarAppearanceKey>, &type metadata for BottomBarAppearanceKey, &protocol witness table for BottomBarAppearanceKey, v19);
  lazy protocol witness table accessor for type PreferenceValueAttribute<BottomBarAppearanceKey> and conformance PreferenceValueAttribute<A>();
  v52 = Attribute.init<A>(body:value:flags:update:)();
  v20 = v47;
  v21 = v49;
  v22 = ToolbarReader.ToolbarConfiguration.init()(a3, *&v55[0], v47, v49, v14);
  MEMORY[0x1EEE9AC00](v22);
  v23 = v45;
  *(&v44 - 2) = v45;
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, partial apply for closure #1 in Attribute.init(value:), (&v44 - 4), v23, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  (*(v46 + 8))(v14, v23);
  v26 = v70;
  LODWORD(v46) = v70;
  type metadata accessor for ViewGraph();
  MEMORY[0x18D00B7D0]();
  v27 = v55[0];
  default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v64);
  v28 = DWORD2(v64);
  v29 = BYTE12(v64);
  *&v70 = __PAIR64__(v54, v26);
  *(&v70 + 1) = v53;
  *&v71 = __PAIR64__(v51, v52);
  swift_weakInit();

  *&v72 = v64;
  DWORD2(v72) = v28;
  BYTE12(v72) = v29;
  MEMORY[0x1EEE9AC00](v30);
  *&v64 = a3;
  *(&v64 + 1) = v27;
  *&v65 = v20;
  *(&v65 + 1) = v21;
  v31 = type metadata accessor for ToolbarReader.ApplyUpdatesToExternalTarget();
  *(&v44 - 2) = v31;
  *(&v44 - 1) = swift_getWitnessTable();
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v70, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, (&v44 - 4), v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
  (*(*(v31 - 8) + 8))(&v70, v31);
  AGGraphSetFlags();
  LODWORD(v64) = v48;
  *&v70 = a3;
  *(&v70 + 1) = v27;
  *&v71 = v20;
  *(&v71 + 1) = v21;
  type metadata accessor for ToolbarReader();
  type metadata accessor for _GraphValue();
  LODWORD(v31) = _GraphValue.value.getter();
  *&v70 = a3;
  *(&v70 + 1) = v27;
  *&v71 = v20;
  *(&v71 + 1) = v21;
  v34 = type metadata accessor for ToolbarReader.PrimitiveReader();
  *&v64 = __PAIR64__(v31, v46);
  MEMORY[0x1EEE9AC00](v34);
  *(&v44 - 4) = v35;
  *&v70 = a3;
  *(&v70 + 1) = v27;
  *&v71 = v20;
  *(&v71 + 1) = v21;
  PrimitiveReader = type metadata accessor for ToolbarReader.MakePrimitiveReader();
  *(&v44 - 3) = PrimitiveReader;
  *(&v44 - 2) = swift_getWitnessTable();
  v37 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v64, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, (&v44 - 6), PrimitiveReader, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
  _GraphValue.init(_:)();
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v69 = v81;
  v64 = v76;
  v65 = v77;
  v60 = v78;
  v61 = v79;
  v62 = v80;
  v63 = v81;
  v58 = v76;
  v59 = v77;
  outlined init with copy of _ViewInputs(&v64, &v70);
  static View.makeDebuggableView(view:inputs:)();
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v70 = v58;
  v71 = v59;
  outlined destroy of _ViewInputs(&v70);
  v39 = v56;
  *&v40 = v57;
  *v55 = v40;
  *&v58 = v56;
  v41 = v57;
  DWORD2(v58) = v57;
  PreferencesOutputs.subscript.getter();
  static PreferenceValueAttribute.setSource(_:of:)();
  *&v58 = v39;
  DWORD2(v58) = LODWORD(v55[0]);
  PreferencesOutputs.subscript.getter();
  static PreferenceValueAttribute.setSource(_:of:)();
  if (static ToolbarEdges.contains(_:)(0, a3, v20))
  {
    *&v58 = v39;
    DWORD2(v58) = v41;
    PreferencesOutputs.subscript.getter();
    static PreferenceValueAttribute.setSource(_:of:)();
    *&v58 = v39;
    DWORD2(v58) = v41;
    PreferencesOutputs.subscript.getter();
    static PreferenceValueAttribute.setSource(_:of:)();
  }

  if (static ToolbarEdges.contains(_:)(1, a3, v20))
  {
    *&v58 = v39;
    DWORD2(v58) = v41;
    PreferencesOutputs.subscript.getter();
    static PreferenceValueAttribute.setSource(_:of:)();
  }

  v60 = v78;
  v61 = v79;
  v62 = v80;
  v63 = v81;
  v58 = v76;
  v59 = v77;
  outlined destroy of _ViewInputs(&v58);
  v42 = v50;
  *v50 = v39;
  result = v55[0];
  v42[1] = *&v55[0];
  return result;
}

void *ToolbarReader.ToolbarConfiguration.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v18 = a1;
    v19 = a2;
    v20 = a4;
    v21 = a3;
    swift_once();
    a1 = v18;
    a2 = v19;
    a3 = v21;
    a4 = v20;
  }

  v6 = *&qword_1ED5A7510;
  v23[2] = xmmword_1ED5A7500;
  v23[3] = *&qword_1ED5A7510;
  v7 = qword_1ED5A7520;
  v24 = qword_1ED5A7520;
  v9 = static ToolbarKey.defaultValue;
  v8 = *algn_1ED5A74F0;
  v23[0] = static ToolbarKey.defaultValue;
  v23[1] = *algn_1ED5A74F0;
  *(a5 + 32) = xmmword_1ED5A7500;
  *(a5 + 48) = v6;
  *a5 = v9;
  *(a5 + 16) = v8;
  *(a5 + 64) = v7;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 1;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v10 = type metadata accessor for ToolbarReader.ToolbarConfiguration();
  v11 = v10[14];
  outlined init with copy of ToolbarStorage(v23, v22);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v13 = __swift_project_value_buffer(v12, static SearchKey.defaultValue);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v13, a5 + v11, type metadata accessor for ToolbarStorage.SearchItem?);
  v14 = v10[15];
  v15 = MEMORY[0x1E69E7CC0];
  *(a5 + v14) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v16 = v10[16];
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(v15);
  *(a5 + v16) = result;
  return result;
}

uint64_t ToolbarReader.ApplyUpdatesToExternalTarget.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolbarReader.ToolbarConfiguration();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t ToolbarReader.ApplyUpdatesToExternalTarget.navigationTitle.getter@<X0>(__int128 *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v5 = Value[1];
  v4 = Value[2];
  v6 = *Value;
  *&v11[9] = *(Value + 41);
  v10[1] = v5;
  *v11 = v4;
  v10[0] = v6;
  v7 = Value[1];
  *a1 = *Value;
  a1[1] = v7;
  a1[2] = Value[2];
  *(a1 + 41) = *(Value + 41);
  return outlined init with copy of ToolbarStorage?(v10, &v9, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, v2, type metadata accessor for ToolbarStorage?);
}

uint64_t ToolbarReader.ApplyUpdatesToExternalTarget.search.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  Value = AGGraphGetValue();
  return _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(Value, a1, type metadata accessor for ToolbarStorage.SearchItem?);
}

uint64_t ToolbarReader.ApplyUpdatesToExternalTarget.updateValue()(void *a1)
{
  v110 = *MEMORY[0x1E69E9840];
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v76 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v75 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v79 = v64 - v5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v67 = a1[2];
  v68 = v8;
  *&v94 = v67;
  *(&v94 + 1) = v6;
  v69 = v7;
  v70 = v6;
  *&v95 = v7;
  *(&v95 + 1) = v8;
  v9 = type metadata accessor for ToolbarReader.ToolbarConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = v64 - v13;
  v64[2] = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v64 - v16;
  ToolbarReader.ApplyUpdatesToExternalTarget.target.getter(v64 - v16);
  v18 = *&v17[*(v9 + 60)];
  v66 = v10;
  v19 = *(v10 + 8);

  v19(v17, v9);
  type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  v21 = v20;
  v22 = *AGGraphGetValue();

  v74 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_AC0D23AppearanceConfigurationVTt1g5(v18, v22);

  ToolbarReader.ApplyUpdatesToExternalTarget.target.getter(v17);
  v23 = *&v17[*(v9 + 64)];

  v19(v17, v9);
  v64[1] = v21;
  v24 = *AGGraphGetValue();

  v73 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_AC0D23AppearanceConfigurationVTt1g5(v23, v24);

  ToolbarReader.ApplyUpdatesToExternalTarget.target.getter(v17);
  v25 = *(v17 + 3);
  v105[2] = *(v17 + 2);
  v105[3] = v25;
  v106 = *(v17 + 8);
  v26 = *(v17 + 1);
  v105[0] = *v17;
  v105[1] = v26;
  outlined init with copy of ToolbarStorage(v105, &v94);
  v71 = v17;
  v19(v17, v9);
  Value = AGGraphGetValue();
  v103[0] = *Value;
  v29 = *(Value + 32);
  v28 = *(Value + 48);
  v30 = *(Value + 16);
  v104 = *(Value + 64);
  v103[2] = v29;
  v103[3] = v28;
  v103[1] = v30;
  outlined init with copy of ToolbarStorage(v103, &v94);
  ToolbarStorage.identityEquals(_:)(v103);
  v72 = v31;
  outlined destroy of ToolbarStorage(v103);
  outlined destroy of ToolbarStorage(v105);
  v32 = v80;
  ToolbarReader.ApplyUpdatesToExternalTarget.target.getter(v80);
  v33 = *(v32 + 88);
  v107 = *(v32 + 72);
  v108 = v33;
  v109[0] = *(v32 + 104);
  *(v109 + 9) = *(v32 + 113);
  outlined init with copy of ToolbarStorage?(&v107, &v94, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  v77 = v10 + 8;
  v78 = v9;
  v80 = v19;
  v19(v32, v9);
  ToolbarReader.ApplyUpdatesToExternalTarget.navigationTitle.getter(&v91);
  v101 = v107;
  v34 = *(&v108 + 1);
  v102 = v108;
  v100[0] = v109[0];
  *(v100 + 9) = *(v109 + 9);
  *&v99[7] = v91;
  v35 = *(&v92 + 1);
  *&v99[23] = v92;
  if (*(&v108 + 1) != 1)
  {
    v94 = v107;
    v95 = v108;
    *v96 = v109[0];
    *&v96[9] = *(v109 + 9);
    v88 = v107;
    v89 = v108;
    v90[0] = *v96;
    *(v90 + 9) = *(v109 + 9);
    if (*(&v92 + 1) != 1)
    {
      v85 = v91;
      v87[0] = v93[0];
      *(v87 + 9) = *(v93 + 9);
      v86 = v92;
      v38 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage?(&v94, v83, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      v37 = specialized static NavigationTitleStorage.== infix(_:_:)(&v88, &v85);
      v81[0] = v85;
      v81[1] = v86;
      v82[0] = v87[0];
      *(v82 + 9) = *(v87 + 9);
      outlined destroy of NavigationTitleStorage(v81);
      v83[0] = v88;
      v83[1] = v89;
      v84[0] = v90[0];
      *(v84 + 9) = *(v90 + 9);
      outlined destroy of NavigationTitleStorage(v83);
      v85 = v101;
      *&v86 = v102;
      *(&v86 + 1) = v34;
      v87[0] = v100[0];
      *(v87 + 9) = *(v100 + 9);
      outlined destroy of ToolbarStorage?(&v85, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, v38, type metadata accessor for ToolbarStorage?);
      v36 = v71;
      goto LABEL_8;
    }

    v85 = v94;
    v86 = v95;
    v87[0] = *v96;
    *(v87 + 9) = *&v96[9];
    outlined init with copy of ToolbarStorage?(&v94, v83, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    outlined destroy of NavigationTitleStorage(&v85);
    v36 = v71;
    goto LABEL_6;
  }

  v36 = v71;
  if (*(&v92 + 1) != 1)
  {
LABEL_6:
    v94 = v101;
    *&v95 = v102;
    *(&v95 + 1) = v34;
    *v96 = v100[0];
    *&v96[9] = *(v100 + 9);
    *&v96[25] = *v99;
    *&v96[40] = *&v99[15];
    v97 = v35;
    v98[0] = v93[0];
    *(v98 + 9) = *(v93 + 9);
    outlined destroy of (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(&v94, &lazy cache variable for type metadata for (NavigationTitleStorage?, NavigationTitleStorage?), &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
    v37 = 0;
    goto LABEL_8;
  }

  v94 = v107;
  v37 = 1;
  *&v95 = v108;
  *(&v95 + 1) = 1;
  *v96 = v109[0];
  *&v96[9] = *(v109 + 9);
  outlined destroy of ToolbarStorage?(&v94, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
LABEL_8:
  ToolbarReader.ApplyUpdatesToExternalTarget.target.getter(v36);
  v39 = v78;
  v40 = v79;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v36 + *(v78 + 56), v79, type metadata accessor for ToolbarStorage.SearchItem?);
  (v80)(v36, v39);
  v41 = v75;
  ToolbarReader.ApplyUpdatesToExternalTarget.search.getter(v75);
  LODWORD(v39) = AGCompareValues();
  outlined destroy of ToolbarStorage.GroupItem(v41, type metadata accessor for ToolbarStorage.SearchItem?);
  result = outlined destroy of ToolbarStorage.GroupItem(v40, type metadata accessor for ToolbarStorage.SearchItem?);
  if ((v72 & v39 & v73 & v74 & 1) == 0 || !v37)
  {
    result = UpdateCycleDetector.dispatch(label:isDebug:)();
    if (result)
    {
      v43 = AGGraphGetValue();
      v94 = *v43;
      v45 = *(v43 + 32);
      v44 = *(v43 + 48);
      v46 = *(v43 + 16);
      *&v96[32] = *(v43 + 64);
      *v96 = v45;
      *&v96[16] = v44;
      v95 = v46;
      outlined init with copy of ToolbarStorage(&v94, &v91);
      ToolbarReader.ApplyUpdatesToExternalTarget.navigationTitle.getter(&v91);
      v47 = v79;
      ToolbarReader.ApplyUpdatesToExternalTarget.search.getter(v79);
      v48 = *AGGraphGetValue();

      v49 = *AGGraphGetValue();
      *(v36 + 64) = *&v96[32];
      v50 = *&v96[16];
      *(v36 + 32) = *v96;
      *(v36 + 48) = v50;
      v51 = v95;
      *v36 = v94;
      *(v36 + 16) = v51;
      *(v36 + 113) = *(v93 + 9);
      *(v36 + 104) = v93[0];
      *(v36 + 88) = v92;
      *(v36 + 72) = v91;
      v52 = v67;
      *&v88 = v67;
      *(&v88 + 1) = v70;
      *&v89 = v69;
      *(&v89 + 1) = v68;
      v53 = type metadata accessor for ToolbarReader.ToolbarConfiguration();
      _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v47, v36 + v53[14], type metadata accessor for ToolbarStorage.SearchItem?);
      *(v36 + v53[15]) = v48;
      *(v36 + v53[16]) = v49;

      v54 = AGCreateWeakAttribute();
      LODWORD(v49) = v54;
      v79 = HIDWORD(v54);
      LOBYTE(v91) = 17;
      v55 = swift_allocObject();
      swift_weakLoadStrong();
      swift_weakInit();

      v57 = v65;
      v56 = v66;
      v58 = v78;
      (*(v66 + 16))(v65, v36, v78);
      v59 = (*(v56 + 80) + 64) & ~*(v56 + 80);
      v60 = swift_allocObject();
      v62 = v69;
      v61 = v70;
      *(v60 + 16) = v52;
      *(v60 + 24) = v61;
      v63 = v68;
      *(v60 + 32) = v62;
      *(v60 + 40) = v63;
      *(v60 + 48) = v55;
      LODWORD(v63) = v79;
      *(v60 + 56) = v49;
      *(v60 + 60) = v63;
      (*(v56 + 32))(v60 + v59, v57, v58);

      static Update.enqueueAction(reason:_:)();

      (v80)(v36, v58);
    }
  }

  return result;
}

void ToolbarStorage.identityEquals(_:)(void *a1)
{
  v3 = type metadata accessor for ToolbarStorage.Entry(0);
  v55 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  type metadata accessor for (ToolbarStorage.Entry?, ToolbarStorage.Entry?)();
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolbarStorage.Entry?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = v1[1];
  v18 = a1[1];
  if (v17)
  {
    if (!v18 || (*v1 != *a1 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return;
    }
  }

  else if (v18)
  {
    return;
  }

  v19 = v1;
  v20 = v1[3];
  if (!a1[3])
  {
    if (v20)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!v20)
  {

    return;
  }

  v21 = dispatch thunk of AnyLocation.isEqual(to:)();

  if (v21)
  {
LABEL_13:
    v22 = 0;
    v23 = v19;
    v24 = 0;
    v43 = v23;
    v44 = a1;
    v25 = v23[6];
    v45 = a1[6];
    v46 = v25;
    v26 = *(v25 + 16);
    v50 = *(v45 + 16);
    v51 = (v55 + 56);
    v48 = v7;
    v49 = (v55 + 48);
    v47 = v26;
    while (1)
    {
      if (v24 == v26)
      {
        v27 = 1;
        v28 = v26;
        v29 = v51;
      }

      else
      {
        if (v24 >= v26)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v46 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v24, v16, type metadata accessor for ToolbarStorage.Entry);
        v30 = __OFADD__(v24, 1);
        v28 = v24 + 1;
        v29 = v51;
        if (v30)
        {
          goto LABEL_45;
        }

        v27 = 0;
      }

      v31 = *v29;
      v32 = 1;
      (*v29)(v16, v27, 1, v3);
      v33 = v50;
      if (v22 != v50)
      {
        if (v22 >= v50)
        {
          goto LABEL_44;
        }

        _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v45 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v22, v13, type metadata accessor for ToolbarStorage.Entry);
        v33 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_46;
        }

        v32 = 0;
      }

      v52 = v33;
      v53 = v28;
      v31(v13, v32, 1, v3);
      v34 = *(v54 + 48);
      _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v16, v10, type metadata accessor for ToolbarStorage.Entry?);
      _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v13, &v10[v34], type metadata accessor for ToolbarStorage.Entry?);
      v35 = *v49;
      v36 = (*v49)(v10, 1, v3);
      v37 = v35(&v10[v34], 1, v3);
      if (v36 == 1)
      {
        if (v37 == 1)
        {
          _sSh2eeoiySbShyxG_ABtFZ7SwiftUI22ToolbarDefaultItemKindV0G0O_Tt1g5(v43[8], v44[8]);
          return;
        }

        v41 = type metadata accessor for ToolbarStorage.Entry?;
        v42 = &v10[v34];
        goto LABEL_41;
      }

      if (v37 == 1)
      {
        v41 = type metadata accessor for ToolbarStorage.Entry;
        v42 = v10;
LABEL_41:
        outlined destroy of ToolbarStorage.GroupItem(v42, v41);
        return;
      }

      v38 = v48;
      _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v10, v48, type metadata accessor for ToolbarStorage.Entry);
      _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(&v10[v34], v56, type metadata accessor for ToolbarStorage.Entry);
      ToolbarStorage.Entry.id.getter(v65);
      ToolbarStorage.Entry.id.getter(v63);
      if ((MEMORY[0x18D00E7E0](v65, v63) & 1) == 0)
      {
        outlined destroy of ToolbarStorage.Entry.ID(v63);
        outlined destroy of ToolbarStorage.Entry.ID(v65);
        outlined destroy of ToolbarStorage.GroupItem(v56, type metadata accessor for ToolbarStorage.Entry);
        v42 = v38;
        v41 = type metadata accessor for ToolbarStorage.Entry;
        goto LABEL_41;
      }

      v39 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage?(&v66, v60, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      outlined init with copy of ToolbarStorage?(&v64, &v61, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v39, type metadata accessor for ToolbarStorage?);
      if (v60[40] == 255)
      {
        outlined destroy of ToolbarStorage.Entry.ID(v63);
        outlined destroy of ToolbarStorage.Entry.ID(v65);
        outlined destroy of ToolbarStorage.GroupItem(v56, type metadata accessor for ToolbarStorage.Entry);
        outlined destroy of ToolbarStorage.GroupItem(v38, type metadata accessor for ToolbarStorage.Entry);
        if (BYTE8(v62[1]) != 255)
        {
          goto LABEL_39;
        }

        outlined destroy of ToolbarStorage?(v60, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      }

      else
      {
        outlined init with copy of ToolbarStorage?(v60, v59, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
        if (BYTE8(v62[1]) == 255)
        {
          outlined destroy of ToolbarStorage.Entry.ID(v63);
          outlined destroy of ToolbarStorage.Entry.ID(v65);
          outlined destroy of ToolbarStorage.GroupItem(v56, type metadata accessor for ToolbarStorage.Entry);
          outlined destroy of ToolbarStorage.GroupItem(v38, type metadata accessor for ToolbarStorage.Entry);
          outlined destroy of ToolbarItemPlacement.Role(v59);
LABEL_39:
          outlined destroy of (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(v60, &lazy cache variable for type metadata for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?), &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
          return;
        }

        v57 = v61;
        v58[0] = v62[0];
        *(v58 + 9) = *(v62 + 9);
        v40 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v59, &v57);
        outlined destroy of ToolbarItemPlacement.Role(&v57);
        outlined destroy of ToolbarStorage.Entry.ID(v63);
        outlined destroy of ToolbarStorage.Entry.ID(v65);
        outlined destroy of ToolbarStorage.GroupItem(v56, type metadata accessor for ToolbarStorage.Entry);
        outlined destroy of ToolbarStorage.GroupItem(v38, type metadata accessor for ToolbarStorage.Entry);
        outlined destroy of ToolbarItemPlacement.Role(v59);
        outlined destroy of ToolbarStorage?(v60, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
        if ((v40 & 1) == 0)
        {
          return;
        }
      }

      v26 = v47;
      v22 = v52;
      v24 = v53;
    }
  }
}

uint64_t closure #1 in ToolbarReader.ApplyUpdatesToExternalTarget.updateValue()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
    {
      static Transaction.current.getter();
      type metadata accessor for ToolbarReader.ToolbarConfiguration();
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
      GraphHost.asyncTransaction<A>(_:id:setting:to:style:mayDeferUpdate:)();
    }
  }

  return result;
}

uint64_t static ToolbarReader.PrimitiveReader._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a7;
  v60 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v56 = a2[2];
  v57 = v12;
  v58 = a2[4];
  v59 = *(a2 + 20);
  v13 = a2[1];
  v54 = *a2;
  v55 = v13;
  LODWORD(v49) = v11;
  DWORD1(v43) = HIDWORD(a3);
  *(&v43 + 1) = a4;
  *&v44 = a5;
  *(&v44 + 1) = a6;
  type metadata accessor for ToolbarReader.PrimitiveReader();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(1, a3, a4, a5, a6);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.value.getter();
  closure #2 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(1, a3, a4, a5, a6);
  v39 = AGGraphCreateOffsetAttribute2();
  LODWORD(v43) = v11;
  _GraphValue.value.getter();
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  if (*(*(v14 - 8) + 64))
  {
    closure #3 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  v37 = AGGraphCreateOffsetAttribute2();
  _GraphValue.value.getter();
  closure #4 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(1, a3, a4, a5, a6);
  v41 = AGGraphCreateOffsetAttribute2();
  LODWORD(v43) = v11;
  _GraphValue.value.getter();
  closure #5 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(1, a3, a4, a5, a6);
  v15 = AGGraphCreateOffsetAttribute2();
  outlined init with copy of _GraphInputs(&v54, &v43);
  v36 = v11;
  if (one-time initialization token for toolbarUpdateContext != -1)
  {
    swift_once();
  }

  v49 = static CachedEnvironment.ID.toolbarUpdateContext;
  swift_beginAccess();
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720]);
  v35 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v54);
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v16 = _GraphInputs.horizontalSizeClass.getter();
  v17 = v16;
  v49 = __PAIR64__(v15, v41);
  MEMORY[0x1EEE9AC00](v16);
  *&v43 = a3;
  *(&v43 + 1) = a4;
  *&v44 = a5;
  *(&v44 + 1) = a6;
  Appearances = type metadata accessor for ToolbarReader.MakeAppearances();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<[ToolbarPlacement.Role : ToolbarAppearanceConfiguration]>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v49, closure #1 in Attribute.init<A>(_:)partial apply, v32, Appearances, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v41 = v43;
  v42 = v36;
  v20 = _GraphValue.value.getter();
  v21 = v20;
  v49 = __PAIR64__(v37, OffsetAttribute2);
  v50 = v35;
  v51 = v17;
  v52 = 0;
  v53 = 0;
  MEMORY[0x1EEE9AC00](v20);
  *&v43 = a3;
  *(&v43 + 1) = a4;
  *&v44 = a5;
  *(&v44 + 1) = a6;
  updated = type metadata accessor for ToolbarReader.UpdateToolbarBridge();
  Appearances = updated;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for Attribute<ToolbarProxy_V1.Value>, &type metadata for ToolbarProxy_V1.Value, MEMORY[0x1E698D388]);
  v23 = MEMORY[0x1E69E7410];
  v26 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v49, closure #1 in Attribute.init<A>(_:)partial apply, v32, updated, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  v49 = __PAIR64__(v43, v21);
  v50 = v41;
  v51 = v39;
  MEMORY[0x1EEE9AC00](v26);
  v32[0] = a4;
  *&v43 = a3;
  *(&v43 + 1) = a4;
  *&v44 = a5;
  *(&v44 + 1) = a6;
  View = type metadata accessor for ToolbarReader.MakeView();
  v32[1] = View;
  Appearances = swift_getWitnessTable();
  v28 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v49, closure #1 in Attribute.init<A>(_:)partial apply, &v31, View, MEMORY[0x1E69E73E0], v28, v23, v29);
  _GraphValue.init(_:)();
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v43 = v54;
  v44 = v55;
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v9[2] = type metadata accessor for ToolbarReader.PrimitiveReader();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, &type metadata for ToolbarStorage, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v10;
}

uint64_t closure #2 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v11[2] = type metadata accessor for ToolbarReader.PrimitiveReader();
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  v7 = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 72, closure #1 in static PointerOffset.of(_:)partial apply, v11, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

uint64_t closure #3 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = type metadata accessor for ToolbarReader.PrimitiveReader();
  v7 = *(v6 + 56);
  v13[2] = v6;
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

uint64_t closure #4 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = type metadata accessor for ToolbarReader.PrimitiveReader();
  v7 = *(v6 + 60);
  v13[2] = v6;
  type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

uint64_t closure #5 in static ToolbarReader.PrimitiveReader._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = type metadata accessor for ToolbarReader.PrimitiveReader();
  v7 = *(v6 + 64);
  v13[2] = v6;
  type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_19, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

uint64_t ToolbarReader.PrimitiveReader.init(toolbar:navigationTitle:search:navigationBar:bottomBar:reader:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 48);
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = v12;
  v13 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v13;
  v14 = a2[1];
  *(a7 + 72) = *a2;
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 88) = v14;
  *(a7 + 104) = a2[2];
  *(a7 + 113) = *(a2 + 41);
  v15 = type metadata accessor for ToolbarReader.PrimitiveReader();
  _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(a3, a7 + v15[14], type metadata accessor for ToolbarStorage.SearchItem?);
  *(a7 + v15[15]) = a4;
  *(a7 + v15[16]) = a5;
  v16 = v15[17];
  v17 = type metadata accessor for ToolbarReader();
  return (*(*(v17 - 8) + 32))(a7 + v16, a6, v17);
}

uint64_t ToolbarReader.MakePrimitiveReader.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolbarReader.ToolbarConfiguration();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t ToolbarReader.MakePrimitiveReader.reader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolbarReader();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ToolbarReader<A, B>.PrimitiveReader()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t ToolbarReader.MakePrimitiveReader.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a5;
  *&v48 = a1;
  *(&v48 + 1) = a2;
  *&v49 = a3;
  *(&v49 + 1) = a4;
  v9 = type metadata accessor for ToolbarReader();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = v36 - v10;
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = a1;
  *(&v48 + 1) = a2;
  *&v49 = a3;
  *(&v49 + 1) = a4;
  v13 = type metadata accessor for ToolbarReader.ToolbarConfiguration();
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v39 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = v36 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v37 = v36 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v36 - v24;
  v36[1] = a3;
  v36[0] = a4;
  ToolbarReader.MakePrimitiveReader.configuration.getter(v36 - v24);
  v26 = *(v25 + 3);
  v50 = *(v25 + 2);
  v51 = v26;
  v52 = *(v25 + 8);
  v27 = *(v25 + 1);
  v48 = *v25;
  v49 = v27;
  outlined init with copy of ToolbarStorage(&v48, &v45);
  v28 = *(v14 + 8);
  v28(v25, v13);
  ToolbarReader.MakePrimitiveReader.configuration.getter(v22);
  v29 = *(v22 + 88);
  v45 = *(v22 + 72);
  v46 = v29;
  v47[0] = *(v22 + 104);
  *(v47 + 9) = *(v22 + 113);
  outlined init with copy of ToolbarStorage?(&v45, v43, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  v28(v22, v13);
  v43[0] = v45;
  v43[1] = v46;
  v44[0] = v47[0];
  *(v44 + 9) = *(v47 + 9);
  v30 = v37;
  ToolbarReader.MakePrimitiveReader.configuration.getter(v37);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v30 + v13[14], v42, type metadata accessor for ToolbarStorage.SearchItem?);
  v28(v30, v13);
  v31 = v38;
  ToolbarReader.MakePrimitiveReader.configuration.getter(v38);
  v37 = *(v31 + v13[16]);

  v28(v31, v13);
  v32 = v39;
  ToolbarReader.MakePrimitiveReader.configuration.getter(v39);
  v33 = *(v32 + v13[15]);

  v28(v32, v13);
  v34 = v40;
  ToolbarReader.MakePrimitiveReader.reader.getter(v40);
  return ToolbarReader.PrimitiveReader.init(toolbar:navigationTitle:search:navigationBar:bottomBar:reader:)(&v48, v43, v42, v37, v33, v34, v41);
}

id ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 16);
  }

  else
  {
    updated = closure #1 in ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(v1, a1[2], a1[3], a1[4]);
    *(v1 + 16) = updated;
    v3 = updated;
    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id closure #1 in ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for ToolbarBridge<EmptyToolbarStrategy>, &type metadata for EmptyToolbarStrategy, &protocol witness table for EmptyToolbarStrategy, type metadata accessor for ToolbarBridge);
  v9 = [objc_allocWithZone(v8) init];
  v10 = *(a1 + 16);
  specialized ToolbarReader.UpdateToolbarBridge.configure(bridge:)(v9, a2, a3, a4);

  return v9;
}

void ToolbarReader.UpdateToolbarBridge.updateValue()(uint64_t *a1)
{
  updated = ToolbarReader.UpdateToolbarBridge.updateBridgeIfNeeded()(a1);
  if (!AGGraphGetOutputValue() || (updated & 1) != 0)
  {
    v3 = ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(a1);
    AGGraphSetOutputValue();
  }
}

uint64_t ToolbarReader.UpdateToolbarBridge.updateBridgeIfNeeded()(uint64_t *a1)
{
  v2 = v1;
  _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for PreferenceValues.Value<ToolbarStorage.SearchItem?>, type metadata accessor for ToolbarStorage.SearchItem?, MEMORY[0x1E697EA38]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - v6;
  type metadata accessor for ToolbarStorage.SearchItem?(0);
  v89 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v81 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v15 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of ToolbarStorage?(Value, v123, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, v15, type metadata accessor for ToolbarStorage?);
  if (!v123[11])
  {
    outlined destroy of ToolbarStorage?(v123, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    return 0;
  }

  v85 = v7;
  v86 = v5;
  outlined init with take of Toolbar.UpdateContext(v123, v124);
  updated = ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(a1);
  v113 = *&updated[direct field offset for ToolbarBridge.lastToolbarStorage];
  v18 = *&updated[direct field offset for ToolbarBridge.lastToolbarStorage + 16];
  v19 = *&updated[direct field offset for ToolbarBridge.lastToolbarStorage + 32];
  v20 = *&updated[direct field offset for ToolbarBridge.lastToolbarStorage + 48];
  v117 = *&updated[direct field offset for ToolbarBridge.lastToolbarStorage + 64];
  v115 = v19;
  v116 = v20;
  v114 = v18;
  v21 = *&updated[direct field offset for ToolbarBridge.lastInputToolbarStorage + 64];
  v23 = *&updated[direct field offset for ToolbarBridge.lastInputToolbarStorage + 32];
  v22 = *&updated[direct field offset for ToolbarBridge.lastInputToolbarStorage + 48];
  v119 = *&updated[direct field offset for ToolbarBridge.lastInputToolbarStorage + 16];
  v120 = v23;
  v121 = v22;
  v122 = v21;
  v118 = *&updated[direct field offset for ToolbarBridge.lastInputToolbarStorage];
  v24 = v20;
  v90 = v14;
  v88 = a1;
  if (v20)
  {
    v25 = v114;
    v26 = v115;
    v27 = BYTE8(v115);
    v28 = BYTE8(v116);
    v29 = v117;
    if (v121)
    {
      v30 = v118;
      v32 = *(&v119 + 1);
      v31 = v119;
      v33 = v120;
      v34 = BYTE8(v120);
      *&v84 = v122;
      *(&v94 + 9) = *(&v115 + 9);
      HIDWORD(v94) = HIDWORD(v115);
      BYTE8(v95) = BYTE8(v116);
      *(&v95 + 9) = *(&v116 + 9);
      HIDWORD(v95) = HIDWORD(v116);
      v96 = v117;
      v35 = *(&v113 + 1);
      if (*(&v113 + 1))
      {
        v30 = v113;
      }

      else
      {
        v83 = v114;
        v38 = BYTE8(v120);
        v81 = v120;
        v39 = *(&v119 + 1);
        v82 = v119;

        v33 = v81;
        v31 = v82;
        v32 = v39;
        v34 = v38;
        v25 = v83;
        v35 = v40;
      }

      *&v92 = v30;
      *(&v92 + 1) = v35;
      v41 = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        v42 = v25;
      }

      else
      {
        v43 = v32;
        v44 = v33;
        v45 = v34;
        v46 = v31;
        outlined copy of Binding<Int>?(v31, v32);
        v42 = v46;
        v34 = v45;
        v41 = v43;
        v26 = v44;
      }

      *&v93 = v42;
      *(&v93 + 1) = v41;
      *&v94 = v26;
      BYTE8(v94) = (v27 | v34) & 1;
      *&v102[0] = v24;
      v47 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage?(&v118, &v108, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      outlined init with copy of ToolbarStorage?(&v113, &v108, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v47, type metadata accessor for ToolbarStorage?);

      specialized Array.append<A>(contentsOf:)(v48);
      *&v95 = *&v102[0];

      specialized Set.formUnion<A>(_:)(v49);

      outlined destroy of ToolbarStorage?(&v118, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v47, type metadata accessor for ToolbarStorage?);
      v37 = v92;
      v36 = v93;
      v26 = v94;
      v24 = v95;
      v29 = v96;
      v27 = BYTE8(v94);
      v28 = BYTE8(v95);
    }

    else
    {
      v83 = v114;
      v84 = v113;
      v94 = v115;
      v95 = v116;
      v96 = v117;
      v92 = v113;
      v93 = v114;
      outlined init with copy of ToolbarStorage(&v92, &v108);

      v36 = v83;
      v37 = v84;
    }
  }

  else
  {
    outlined init with copy of ToolbarStorage?(&v118, &v92, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);

    v24 = v121;
    if (v121)
    {
      v37 = v118;
      v36 = v119;
      v26 = v120;
      v29 = v122;
      v27 = BYTE8(v120);
      v28 = BYTE8(v121);
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v37 = 0uLL;
      v29 = MEMORY[0x1E69E7CD0];
      v28 = 1;
      v24 = MEMORY[0x1E69E7CC0];
      v36 = 0uLL;
    }
  }

  v102[0] = v37;
  v102[1] = v36;
  v103 = v26;
  v104 = v27 & 1;
  v105 = v24;
  v106 = v28 & 1;
  v107 = v29;
  v50 = AGGraphGetValue();
  v51 = 0;
  v108 = *v50;
  v53 = *(v50 + 32);
  v52 = *(v50 + 48);
  v54 = *(v50 + 16);
  v112 = *(v50 + 64);
  v110 = v53;
  v111 = v52;
  v109 = v54;
  v55 = v90;
  v56 = v88;
  if (v57)
  {
    if (*(v24 + 16))
    {
      v51 = 1;
    }

    else
    {
      v51 = *(v111 + 16) != 0;
    }
  }

  outlined init with copy of ToolbarStorage(&v108, &v92);
  v58 = ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(v56);
  v59 = direct field offset for ToolbarBridge.searchItem;
  swift_beginAccess();
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v58 + v59, v55, type metadata accessor for ToolbarStorage.SearchItem?);

  LODWORD(v84) = *(v2 + 24);
  v60 = AGGraphGetValue();
  LOBYTE(v59) = v61;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v60, v91, type metadata accessor for ToolbarStorage.SearchItem?);
  v62 = 0;
  if (v59)
  {
    v63 = type metadata accessor for ToolbarStorage.SearchItem(0);
    v64 = *(*(v63 - 8) + 48);
    v62 = 1;
    if (v64(v55, 1, v63) == 1)
    {
      LODWORD(v89) = v51;
      v65 = v55;
      v66 = v87;
      _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v91, v87, type metadata accessor for ToolbarStorage.SearchItem?);
      v62 = v64(v66, 1, v63) != 1;
      v67 = v66;
      v55 = v65;
      v51 = v89;
      outlined destroy of ToolbarStorage.GroupItem(v67, type metadata accessor for ToolbarStorage.SearchItem?);
    }
  }

  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, MEMORY[0x1E697FF58], MEMORY[0x1E69E6720]);
  v68 = *AGGraphGetValue();
  v69 = ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(v56);
  swift_beginAccess();
  EnvironmentValues.horizontalSizeClass.getter();
  v70 = v100[0];
  swift_endAccess();

  if (v70 == 2)
  {
    if (!v51 && !v62)
    {
LABEL_30:
      outlined destroy of ToolbarStorage(&v108);
      outlined destroy of ToolbarStorage(v102);
      outlined destroy of ToolbarStorage.GroupItem(v91, type metadata accessor for ToolbarStorage.SearchItem?);
      outlined destroy of Toolbar.UpdateContext(v124);
      outlined destroy of ToolbarStorage.GroupItem(v55, type metadata accessor for ToolbarStorage.SearchItem?);
      return 0;
    }
  }

  else if (v68 != 2 && !v51 && !v62 && ((v70 ^ v68) & 1) == 0)
  {
    goto LABEL_30;
  }

  v71 = v84 + 1;
  *(v2 + 24) = v84 + 1;
  PreferenceValues.init()();
  v94 = v110;
  v95 = v111;
  v96 = v112;
  v92 = v108;
  v93 = v109;
  v97 = v71;
  outlined init with copy of ToolbarStorage(&v108, v100);
  PreferenceValues.subscript.setter();
  v72 = v85;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v91, v85, type metadata accessor for ToolbarStorage.SearchItem?);
  *(v72 + *(v86 + 28)) = v71;
  PreferenceValues.subscript.setter();
  EnvironmentValues.init()();
  LOBYTE(v92) = v68;
  EnvironmentValues.horizontalSizeClass.setter();
  v73 = ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(v56);
  v74 = v98;
  v75 = v99;
  v76 = &v73[direct field offset for ToolbarBridge.lastEnvironment];
  v77 = 1;
  swift_beginAccess();
  *v76 = v74;
  *(v76 + 1) = v75;

  v78 = ToolbarReader.UpdateToolbarBridge.toolbarBridge.getter(v56);
  v79 = v101;
  outlined init with copy of Toolbar.UpdateContext(v124, &v92);
  specialized ToolbarBridge.preferencesDidChange(_:context:)(v79, &v92);

  outlined destroy of ToolbarStorage(v102);
  outlined destroy of ToolbarStorage(&v108);

  outlined destroy of ToolbarStorage.GroupItem(v91, type metadata accessor for ToolbarStorage.SearchItem?);
  outlined destroy of Toolbar.UpdateContext(v124);
  outlined destroy of ToolbarStorage.GroupItem(v90, type metadata accessor for ToolbarStorage.SearchItem?);
  return v77;
}

void *ToolbarReader.MakeAppearances.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (static ToolbarEdges.contains(_:)(0, a2, a4))
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
    memset(v62, 0, 40);
    Value = AGGraphGetValue();
    v8 = *Value;
    if (*(*Value + 16))
    {

      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
      if (v10)
      {
        v11 = (*(v8 + 56) + 80 * v9);
        *v66 = *v11;
        v13 = v11[2];
        v12 = v11[3];
        v14 = *(v11 + 57);
        *&v66[16] = v11[1];
        v67 = v13;
        *&v68[9] = v14;
        *v68 = v12;
        outlined init with copy of ToolbarAppearanceConfiguration(v66, v63);
        outlined destroy of ToolbarPlacement.Role(v62);

        v15 = v66[0];
        v16 = v66[1];
        *v57 = *&v66[2];
        *&v57[4] = *&v66[6];
        v17 = *&v66[8];
        v18 = v66[24];
        LODWORD(v52[0]) = *&v66[25];
        *(v52 + 3) = *&v66[28];
        v19 = v67;
        v20 = BYTE8(v67);
        *(v59 + 3) = HIDWORD(v67);
        v59[0] = *(&v67 + 9);
        v21 = *v68;
        v22 = v68[8];
        v23 = v68[9];
        v24 = v68[10];
        LOBYTE(v61) = v68[15];
        v60 = *&v68[11];
        v25 = *&v68[16];
        v26 = v68[24];
LABEL_7:
        v66[0] = v15;
        v66[1] = v16;
        *&v66[2] = *v57;
        *&v66[6] = *&v57[4];
        *&v66[8] = v17;
        v66[24] = v18;
        *&v66[25] = v52[0];
        *&v66[28] = *(v52 + 3);
        *&v67 = v19;
        BYTE8(v67) = v20;
        *(&v67 + 9) = v59[0];
        HIDWORD(v67) = *(v59 + 3);
        *v68 = v21;
        v68[8] = v22;
        v68[9] = v23;
        v68[10] = v24;
        v68[15] = v61;
        *&v68[11] = v60;
        *&v68[16] = v25;
        v68[24] = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v63 = v6;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v50, isUniquelyReferenced_nonNull_native);
        outlined destroy of ToolbarPlacement.Role(v50);
        v6 = *v63;
        goto LABEL_8;
      }
    }

    outlined destroy of ToolbarPlacement.Role(v62);
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v21 = 0;
    v19 = 0;
    v18 = 0;
    v16 = 0;
    v22 = 1;
    LOBYTE(v54) = 1;
    v58 = 1;
    v23 = 2;
    v20 = 1;
    v15 = 1;
    v17 = 0uLL;
    goto LABEL_7;
  }

LABEL_8:
  if (static ToolbarEdges.contains(_:)(1, a2, a4))
  {
    memset(v62, 0, 24);
    *(&v62[1] + 8) = xmmword_18CD7DD20;
    memset(v52, 0, sizeof(v52));
    v53 = xmmword_18CD7DD20;
    type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
    v28 = AGGraphGetValue();
    v29 = *v28;
    if (*(*v28 + 16))
    {

      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
      if (v31)
      {
        v32 = (*(v29 + 56) + 80 * v30);
        *v63 = *v32;
        v34 = v32[2];
        v33 = v32[3];
        v35 = *(v32 + 57);
        *&v63[16] = v32[1];
        v64 = v34;
        *&v65[9] = v35;
        *v65 = v33;
        outlined init with copy of ToolbarAppearanceConfiguration(v63, v50);
        outlined destroy of ToolbarPlacement.Role(v52);

        v36 = v63[0];
        v37 = v63[1];
        v60 = *&v63[2];
        v61 = *&v63[6];
        v38 = *&v63[8];
        v39 = v63[24];
        v59[0] = *&v63[25];
        *(v59 + 3) = *&v63[28];
        v40 = v64;
        v41 = BYTE8(v64);
        *&v57[3] = HIDWORD(v64);
        *v57 = *(&v64 + 9);
        v42 = *v65;
        v43 = v65[8];
        v44 = v65[9];
        v45 = v65[10];
        v55 = v65[15];
        v54 = *&v65[11];
        v46 = *&v65[16];
        v47 = v65[24];
LABEL_14:
        v63[0] = v36;
        v63[1] = v37;
        *&v63[2] = v60;
        *&v63[6] = v61;
        *&v63[8] = v38;
        v63[24] = v39;
        *&v63[25] = v59[0];
        *&v63[28] = *(v59 + 3);
        *&v64 = v40;
        BYTE8(v64) = v41;
        *(&v64 + 9) = *v57;
        HIDWORD(v64) = *&v57[3];
        *v65 = v42;
        v65[8] = v43;
        v65[9] = v44;
        v65[10] = v45;
        v65[15] = v55;
        *&v65[11] = v54;
        *&v65[16] = v46;
        v65[24] = v47;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *&v50[0] = v6;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v62, v48);
        outlined destroy of ToolbarPlacement.Role(v62);
        return *&v50[0];
      }
    }

    outlined destroy of ToolbarPlacement.Role(v52);
    v42 = 0;
    v40 = 0;
    v39 = 0;
    v37 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v43 = 1;
    v58 = 1;
    v56 = 1;
    v38 = 0uLL;
    v44 = 2;
    v41 = 1;
    v36 = 1;
    goto LABEL_14;
  }

  return v6;
}

void *protocol witness for Rule.value.getter in conformance ToolbarReader<A, B>.MakeAppearances@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ToolbarReader.MakeAppearances.value.getter(*v2, a1[2], a1[3], a1[4]);
  *a2 = result;
  return result;
}

uint64_t ToolbarReader.MakeView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  View = type metadata accessor for ToolbarReader.MakeView();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B90](View, a4, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();
}

uint64_t closure #1 in closure #1 in ToolbarReader.MakeView.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = HIDWORD(a2);
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v14 = *(type metadata accessor for ToolbarReader.PrimitiveReader() + 68);
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v15 = type metadata accessor for ToolbarReader();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v17 = *(a1 + v14 + *(v15 + 52));
    v18 = __PAIR64__(v12, result);
    v19 = a3;
    return v17(&v18);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ToolbarReader<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t ToolbarProxy_V1.appearance(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  result = AGGraphGetInputValue();
  v5 = *result;
  if (*(*result + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = (*(v5 + 56) + 80 * v6);
      v15 = *v8;
      v10 = v8[2];
      v9 = v8[3];
      v11 = *(v8 + 57);
      v16 = v8[1];
      v17 = v10;
      *(v18 + 9) = v11;
      v18[0] = v9;
      outlined init with copy of ToolbarAppearanceConfiguration(&v15, &v14);

      v12 = v18[0];
      *(a2 + 32) = v17;
      *(a2 + 48) = v12;
      *(a2 + 57) = *(v18 + 9);
      v13 = v16;
      *a2 = v15;
      *(a2 + 16) = v13;
      return result;
    }
  }

  *a2 = 1;
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 57) = 2;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t ToolbarProxy_V1.count(in:placement:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ToolbarStorage?(a2, &v11, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  if (v12[24] == 255)
  {
    outlined destroy of ToolbarStorage?(&v11, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    v8 = *AGGraphGetInputValue();
    v7 = specialized ToolbarBridge.entryCount(in:)(a1);
  }

  else
  {
    v13 = v11;
    v14[0] = *v12;
    *(v14 + 9) = *&v12[9];
    v3 = *AGGraphGetInputValue();
    v4 = specialized ToolbarBridge.entries(in:)(a1);

    MEMORY[0x1EEE9AC00](v5);
    v10[2] = &v13;
    specialized Sequence.filter(_:)(partial apply for closure #1 in ToolbarProxy_V1.count(in:placement:), v10, v4);
    v7 = *(v6 + 16);

    outlined destroy of ToolbarItemPlacement.Role(&v13);
  }

  return v7;
}

uint64_t closure #1 in ToolbarProxy_V1.count(in:placement:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1, v6, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ToolbarStorage.GroupItem(v6, type metadata accessor for ToolbarStorage.Entry.Kind);
    v13 = 0;
  }

  else
  {
    _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v6, v9, type metadata accessor for ToolbarStorage.Item);
    _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v9, v12, type metadata accessor for ToolbarStorage.Item);
    v13 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)((v12 + 112), a2);
    outlined destroy of ToolbarStorage.GroupItem(v12, type metadata accessor for ToolbarStorage.Item);
  }

  return v13 & 1;
}

uint64_t ToolbarProxy_V1.subscript.getter(uint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  v2 = *AGGraphGetInputValue();
  ToolbarItemPlacement.Role.barLocation.getter(v9);
  v6 = a1;
  v7 = &v10;
  specialized ToolbarBridge.adjustEntries(in:_:)(v9, partial apply for closure #1 in ToolbarProxy_V1.subscript.getter, v5);

  outlined destroy of Toolbar.BarLocation(v9);
  v3 = v10;
  KeyPath = swift_getKeyPath();
  v9[0] = v3;
  type metadata accessor for [ToolbarStorage.Entry]();
  lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A](&lazy protocol witness table cache variable for type [ToolbarStorage.Entry] and conformance [A], type metadata accessor for [ToolbarStorage.Entry]);
  lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
  return ForEach.init(_:idGenerator:content:)();
}

uint64_t closure #1 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v7 = type metadata accessor for ToolbarStorage.Entry(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1, v13, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = type metadata accessor for ToolbarStorage.Entry.Kind;
    v21 = v13;
    return outlined destroy of ToolbarStorage.GroupItem(v21, v20);
  }

  _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v13, v16, type metadata accessor for ToolbarStorage.Item);
  _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v16, v19, type metadata accessor for ToolbarStorage.Item);
  if (*(a3 + 40) == 255)
  {
    goto LABEL_11;
  }

  v32 = v8;
  outlined init with copy of ToolbarItemPlacement.Role((v19 + 112), v39);
  v23 = MEMORY[0x1E69E6720];
  outlined init with copy of ToolbarStorage?(v39, v36, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  outlined init with copy of ToolbarStorage?(a3, &v37, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v23, type metadata accessor for ToolbarStorage?);
  if (v36[40] == 255)
  {
    outlined destroy of ToolbarStorage?(v39, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    if (v38[24] == 255)
    {
      outlined destroy of ToolbarStorage?(v36, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      v8 = v32;
      goto LABEL_11;
    }

LABEL_17:
    outlined destroy of (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(v36, &lazy cache variable for type metadata for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?), &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role);
LABEL_18:
    v20 = type metadata accessor for ToolbarStorage.Item;
    v21 = v19;
    return outlined destroy of ToolbarStorage.GroupItem(v21, v20);
  }

  outlined init with copy of ToolbarStorage?(v36, v35, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  if (v38[24] == 255)
  {
    outlined destroy of ToolbarStorage?(v39, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    outlined destroy of ToolbarItemPlacement.Role(v35);
    goto LABEL_17;
  }

  v33 = v37;
  v34[0] = *v38;
  *(v34 + 9) = *&v38[9];
  v24 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v35, &v33);
  outlined destroy of ToolbarItemPlacement.Role(&v33);
  v25 = MEMORY[0x1E69E6720];
  outlined destroy of ToolbarStorage?(v39, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  outlined destroy of ToolbarItemPlacement.Role(v35);
  outlined destroy of ToolbarStorage?(v36, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v25, type metadata accessor for ToolbarStorage?);
  v8 = v32;
  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1, v10, type metadata accessor for ToolbarStorage.Entry);
  v26 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *a4 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    *a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v26);
  }

  outlined destroy of ToolbarStorage.GroupItem(v19, type metadata accessor for ToolbarStorage.Item);
  v30 = *a4;
  v30[2] = v29 + 1;
  return _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v10, v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, type metadata accessor for ToolbarStorage.Entry);
}

uint64_t closure #2 in ToolbarProxy_V1.callAsFunction(in:placement:showSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1, v10, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (!swift_getEnumCaseMultiPayload())
  {
    _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v10, v13, type metadata accessor for ToolbarStorage.Item);
    outlined init with copy of _ViewList_View((v13 + 184), v34);
    outlined destroy of ToolbarStorage.GroupItem(v13, type metadata accessor for ToolbarStorage.Item);
    v14 = *(a1 + *(type metadata accessor for ToolbarStorage.Entry(0) + 20));
    if (a2)
    {
      ToolbarStorage.Entry.id.getter(v33);
      v15 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage?(v33, v26, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      outlined init with copy of ToolbarStorage?(a3, &v27, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, v15, type metadata accessor for ToolbarStorage?);
      if (v26[3])
      {
        outlined init with copy of ToolbarStorage?(v26, v25, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
        if (*(&v28 + 1))
        {
          v23[2] = v29;
          v23[3] = v30;
          v23[4] = v31;
          v24 = v32;
          v23[0] = v27;
          v23[1] = v28;
          v16 = specialized static ToolbarStorage.Entry.ID.== infix(_:_:)(v25, v23);
          outlined destroy of ToolbarStorage.Entry.ID(v23);
          v17 = MEMORY[0x1E69E6720];
          outlined destroy of ToolbarStorage?(v33, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
          outlined destroy of ToolbarStorage.Entry.ID(v25);
          outlined destroy of ToolbarStorage?(v26, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, v17, type metadata accessor for ToolbarStorage?);
          v18 = !v16;
LABEL_11:
          swift_unknownObjectWeakInit();
          result = swift_unknownObjectWeakAssign();
          v20 = v34[3];
          *(a4 + 32) = v34[2];
          *(a4 + 48) = v20;
          v21 = v34[5];
          *(a4 + 64) = v34[4];
          *(a4 + 80) = v21;
          v22 = v34[1];
          *a4 = v34[0];
          *(a4 + 16) = v22;
          *(a4 + 96) = v14;
          *(a4 + 97) = v18 & 1;
          return result;
        }

        outlined destroy of ToolbarStorage?(v33, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
        outlined destroy of ToolbarStorage.Entry.ID(v25);
LABEL_10:
        outlined destroy of (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(v26, &lazy cache variable for type metadata for (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?), &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID);
        v18 = 1;
        goto LABEL_11;
      }

      outlined destroy of ToolbarStorage?(v33, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      if (*(&v28 + 1))
      {
        goto LABEL_10;
      }

      outlined destroy of ToolbarStorage?(v26, &lazy cache variable for type metadata for ToolbarStorage.Entry.ID?, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    }

    v18 = 0;
    goto LABEL_11;
  }

  result = outlined destroy of ToolbarStorage.GroupItem(v10, type metadata accessor for ToolbarStorage.Entry.Kind);
  __break(1u);
  return result;
}

uint64_t closure #1 in ToolbarProxy_V1.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v7 = type metadata accessor for ToolbarStorage.Entry(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1, v13, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = type metadata accessor for ToolbarStorage.Entry.Kind;
    v21 = v13;
    return outlined destroy of ToolbarStorage.GroupItem(v21, v20);
  }

  _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v13, v16, type metadata accessor for ToolbarStorage.Item);
  _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v16, v19, type metadata accessor for ToolbarStorage.Item);
  if ((specialized static ToolbarItemPlacement.Role.== infix(_:_:)((v19 + 112), a3) & 1) == 0)
  {
    v20 = type metadata accessor for ToolbarStorage.Item;
    v21 = v19;
    return outlined destroy of ToolbarStorage.GroupItem(v21, v20);
  }

  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1, v10, type metadata accessor for ToolbarStorage.Entry);
  v22 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
    *a4 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    *a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v22);
  }

  outlined destroy of ToolbarStorage.GroupItem(v19, type metadata accessor for ToolbarStorage.Item);
  v26 = *a4;
  v26[2] = v25 + 1;
  return _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v10, v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, type metadata accessor for ToolbarStorage.Entry);
}

uint64_t closure #2 in ToolbarProxy_V1.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(a1, v6, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    result = outlined destroy of ToolbarStorage.GroupItem(v6, type metadata accessor for ToolbarStorage.Entry.Kind);
    __break(1u);
  }

  else
  {
    _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v6, v9, type metadata accessor for ToolbarStorage.Item);
    outlined init with copy of _ViewList_View((v9 + 184), a2);
    outlined destroy of ToolbarStorage.GroupItem(v9, type metadata accessor for ToolbarStorage.Item);
    v10 = *(a1 + *(type metadata accessor for ToolbarStorage.Entry(0) + 20));
    swift_unknownObjectWeakInit();
    result = swift_unknownObjectWeakAssign();
    *(a2 + 96) = v10;
    *(a2 + 97) = 0;
  }

  return result;
}

uint64_t ToolbarProxy_V1.visibility(in:)(uint64_t a1)
{
  outlined init with copy of ToolbarPlacement.Storage(a1, &v5);
  if (*(&v6 + 1) == 7)
  {
    return 0;
  }

  v3[0] = v5;
  v3[1] = v6;
  v4 = v7;
  v2 = ToolbarProxy_V1.visibility(in:)(v3);
  outlined destroy of ToolbarPlacement.Role(v3);
  return v2;
}

{
  v14 = *v1;
  ToolbarProxy_V1.appearance(in:)(a1, v16);
  outlined destroy of ToolbarAppearanceConfiguration(v16);
  if (v16[1] == 2)
  {
    return 2;
  }

  outlined init with copy of ToolbarPlacement.Role(a1, &v14);
  if (v15 == 3)
  {
    v9 = *AGGraphGetInputValue();
    memset(v13, 0, 24);
    *(&v13[1] + 8) = xmmword_18CD90760;
  }

  else
  {
    if (v15)
    {
      outlined destroy of ToolbarPlacement.Role(&v14);
      return 2;
    }

    v3 = *AGGraphGetInputValue();
    memset(v13, 0, 24);
    *(&v13[1] + 8) = xmmword_18CD7DD20;
    v4 = v3;
    v5 = specialized ToolbarBridge.hasEntries(in:)(v13);

    outlined destroy of Toolbar.BarLocation(v13);
    if (v5)
    {
      return 1;
    }

    v6 = *AGGraphGetInputValue();
    memset(v13, 0, 24);
    *(&v13[1] + 8) = xmmword_18CD90770;
    v7 = v6;
    v8 = specialized ToolbarBridge.hasEntries(in:)(v13);

    outlined destroy of Toolbar.BarLocation(v13);
    if (v8)
    {
      return 1;
    }

    v9 = *AGGraphGetInputValue();
    memset(v13, 0, 40);
  }

  v10 = v9;
  v11 = specialized ToolbarBridge.hasEntries(in:)(v13);

  outlined destroy of Toolbar.BarLocation(v13);
  if (v11)
  {
    return 1;
  }

  return 2;
}

uint64_t ToolbarProxy_V1.visibility(defaultItemKind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  InputValue = AGGraphGetInputValue();
  v3 = *InputValue;
  v4 = *InputValue + direct field offset for ToolbarBridge.lastToolbarStorage;
  v50 = *v4;
  v6 = *(v4 + 32);
  v5 = *(v4 + 48);
  v7 = *(v4 + 64);
  v51 = *(v4 + 16);
  v54 = v7;
  v53 = v5;
  v52 = v6;
  v9 = *&v3[direct field offset for ToolbarBridge.lastInputToolbarStorage + 32];
  v8 = *&v3[direct field offset for ToolbarBridge.lastInputToolbarStorage + 48];
  v10 = *&v3[direct field offset for ToolbarBridge.lastInputToolbarStorage + 16];
  v59 = *&v3[direct field offset for ToolbarBridge.lastInputToolbarStorage + 64];
  v56 = v10;
  v58 = v8;
  v57 = v9;
  v55 = *&v3[direct field offset for ToolbarBridge.lastInputToolbarStorage];
  v11 = v53;
  if (v53)
  {
    v13 = *(&v50 + 1);
    v12 = v50;
    v15 = *(&v51 + 1);
    v14 = v51;
    v16 = v52;
    v17 = BYTE8(v52);
    v18 = BYTE8(v53);
    v19 = v54;
    if (v58)
    {
      v21 = *(&v56 + 1);
      v20 = v56;
      *v45 = *(&v52 + 9);
      *&v45[3] = HIDWORD(v52);
      v35 = BYTE8(v53);
      v47 = BYTE8(v53);
      *v48 = *(&v53 + 9);
      *&v48[3] = HIDWORD(v53);
      v49 = v54;
      if (!*(&v50 + 1))
      {

        v21 = *(&v56 + 1);
        v15 = *(&v51 + 1);
        v17 = BYTE8(v52);
        v20 = v56;
        v14 = v51;
        v16 = v52;
        v12 = v55;
        v13 = v22;
      }

      v36 = v12;
      v39 = v12;
      v40 = v13;
      if (!v15)
      {
        v15 = v21;
        v23 = v20;
        outlined copy of Binding<Int>?(v20, v21);
        v14 = v23;
        v16 = v57;
      }

      v41 = v14;
      v42 = v15;
      v43 = v16;
      v17 |= BYTE8(v57);
      v44 = v17 & 1;
      v38 = v53;
      v24 = v16;
      v25 = v14;
      v34 = v3;
      v26 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage?(&v55, v37, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      outlined init with copy of ToolbarStorage?(&v50, v37, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v26, type metadata accessor for ToolbarStorage?);

      v28 = v24;
      specialized Array.append<A>(contentsOf:)(v27);
      v11 = v38;
      v46 = v38;

      specialized Set.formUnion<A>(_:)(v29);

      outlined destroy of ToolbarStorage?(&v55, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v26, type metadata accessor for ToolbarStorage?);
      v19 = v49;
      v18 = v35;
      goto LABEL_12;
    }

    v36 = v50;
    v30 = MEMORY[0x1E69E6720];
    v31 = &v50;
    v28 = v52;
    v25 = v51;
  }

  else
  {
    v11 = v58;
    if (!v58)
    {
      return 1;
    }

    v17 = BYTE8(v57);
    v18 = BYTE8(v58);
    v15 = *(&v56 + 1);
    v28 = v57;
    v13 = *(&v55 + 1);
    v25 = v56;
    v36 = v55;
    v19 = v59;
    v30 = MEMORY[0x1E69E6720];
    v31 = &v55;
  }

  outlined init with copy of ToolbarStorage?(v31, &v39, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, v30, type metadata accessor for ToolbarStorage?);
LABEL_12:
  v39 = v36;
  v40 = v13;
  v41 = v25;
  v42 = v15;
  v43 = v28;
  v44 = v17 & 1;
  v46 = v11;
  v47 = v18 & 1;
  v49 = v19;

  outlined destroy of ToolbarStorage(&v39);
  v32 = specialized Set.contains(_:)(v1, v19);

  if (v32)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t ToolbarProxy_V1.hasItem(in:)(uint64_t a1)
{
  v2 = *AGGraphGetInputValue();
  LOBYTE(a1) = specialized ToolbarBridge.hasItem(withPlacement:)(a1);

  return a1 & 1;
}

uint64_t ToolbarProxy_V1.title.getter()
{
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v1 = 0;
  v2 = *(Value + 41);
  v4 = Value[1];
  v3 = Value[2];
  v13[0] = *Value;
  v13[1] = v4;
  v14[0] = v3;
  *(v14 + 9) = v2;
  v5 = Value[2];
  v6 = v4;
  *(v12 + 9) = *(Value + 41);
  v12[0] = v5;
  if (*(&v4 + 1) != 1)
  {
    outlined copy of Text?(*&v13[0], *(&v13[0] + 1), v4, *(&v4 + 1));
    v1 = *&v13[0];
  }

  v10[0] = v13[0];
  v10[1] = v6;
  v11[0] = v12[0];
  *(v11 + 9) = *(v12 + 9);
  v7 = MEMORY[0x1E69E6720];
  outlined init with copy of ToolbarStorage?(v13, &v9, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  outlined destroy of ToolbarStorage?(v10, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, v7, type metadata accessor for ToolbarStorage?);
  return v1;
}

uint64_t outlined init with copy of ToolbarStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of ToolbarStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t ToolbarProxy_V1.titleDisplayMode.getter@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  *&v23[9] = *(Value + 41);
  v22 = v4;
  *v23 = v5;
  v21 = v3;
  v6 = *Value;
  v20 = *(Value + 2);
  v7 = BYTE8(v5);
  v18 = *(Value + 41);
  v19 = v6;
  if (*(&v22 + 1) == 1)
  {
    v12 = v19;
    v13 = v20;
    v14 = 1;
    v15 = v5;
    v16 = BYTE8(v5);
    v17 = v18;
    v8 = MEMORY[0x1E69E6720];
    outlined init with copy of ToolbarStorage?(&v21, v11, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
    result = outlined destroy of ToolbarStorage?(&v12, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, v8, type metadata accessor for ToolbarStorage?);
LABEL_4:
    *a1 = 0;
    return result;
  }

  v12 = v19;
  v13 = v20;
  v14 = *(&v22 + 1);
  v15 = v5;
  v16 = BYTE8(v5);
  v17 = v18;
  v10 = MEMORY[0x1E69E6720];
  outlined init with copy of ToolbarStorage?(&v21, v11, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  result = outlined destroy of ToolbarStorage?(&v12, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, v10, type metadata accessor for ToolbarStorage?);
  if (v7 == 5)
  {
    goto LABEL_4;
  }

  *a1 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView> and conformance <> ForEach<A, B, C>)
  {
    type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>();
    lazy protocol witness table accessor for type BarItemView and conformance BarItemView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void type metadata accessor for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>()
{
  if (!lazy cache variable for type metadata for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)
  {
    type metadata accessor for [ToolbarStorage.Entry]();
    lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A](&lazy protocol witness table cache variable for type [ToolbarStorage.Entry] and conformance [A], type metadata accessor for [ToolbarStorage.Entry]);
    lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ToolbarScopeModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ToolbarScopeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ToolbarScopeModifier and conformance ToolbarScopeModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance ToolbarScopeModifier()
{
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  return PreferenceKeys.remove(_:)();
}

uint64_t key path getter for EnvironmentValues.toolbarUpdateContext : EnvironmentValues(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t protocol witness for Rule.value.getter in conformance BarItemModifier.Transform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in BarItemModifier.Transform.value.getter;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

void protocol witness for ViewModifier.body(content:) in conformance BarItemWidthModifier(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v11 = *(v1 + 16);
  specialized Environment.wrappedValue.getter(v6);
  v4 = v7;
  v5 = v8 & 1;
  if (v8)
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
}

uint64_t protocol witness for UnaryLayout.placement(of:in:) in conformance ToolbarItemMinimumWidthLayout()
{
  PlacementContext.proposedSize.getter();
  static UnitPoint.center.getter();
  PlacementContext.size.getter();
  return _Placement.init(proposedSize:aligning:in:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ToolbarItemMinimumWidthLayout(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v9;
  v13[4] = *(a2 + 64);
  v14 = *(a2 + 80);
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v15 = v8;
  v11 = lazy protocol witness table accessor for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout();
  return (*(v11 + 80))(&v15, v13, a3, a4, a5, v11);
}

void type metadata accessor for (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for ToolbarStorage?(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined copy of Environment<ToolbarItemMetrics?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of Environment<ToolbarItemMetrics?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t initializeWithCopy for BarItemWidthModifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 33);
  v8 = *(a2 + 32);
  outlined copy of Environment<ToolbarItemMetrics?>.Content(*a2, v4, v5, v6, v8, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 33) = v7;
  return a1;
}

uint64_t assignWithCopy for BarItemWidthModifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 33);
  v8 = *(a2 + 32);
  outlined copy of Environment<ToolbarItemMetrics?>.Content(*a2, v4, v5, v6, v8, v7);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 33);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v14 = *(a1 + 32);
  *(a1 + 32) = v8;
  *(a1 + 33) = v7;
  outlined consume of Environment<ToolbarItemMetrics?>.Content(v9, v10, v11, v12, v14, v13);
  return a1;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for BarItemWidthModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 33);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 33);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  v11 = *(a1 + 32);
  *(a1 + 32) = v3;
  *(a1 + 33) = v4;
  outlined consume of Environment<ToolbarItemMetrics?>.Content(v5, v7, v6, v8, v11, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for BarItemWidthModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
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

uint64_t storeEnumTagSinglePayload for BarItemWidthModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

_BYTE *initializeWithTake for BarItemModifier(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  return a1;
}

_BYTE *assignWithTake for BarItemModifier(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for BarItemModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>, BarItemWidthModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>, BarItemWidthModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>, BarItemWidthModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>(255, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>, BarItemWidthModifier>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>);
    lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>);
    lazy protocol witness table accessor for type BarItemWidthModifier and conformance BarItemWidthModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)>>, BarItemWidthModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarScopeModifier and conformance ToolbarScopeModifier()
{
  result = lazy protocol witness table cache variable for type ToolbarScopeModifier and conformance ToolbarScopeModifier;
  if (!lazy protocol witness table cache variable for type ToolbarScopeModifier and conformance ToolbarScopeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarScopeModifier and conformance ToolbarScopeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceValueAttribute<ToolbarKey> and conformance PreferenceValueAttribute<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceValueAttribute<ToolbarKey> and conformance PreferenceValueAttribute<A>;
  if (!lazy protocol witness table cache variable for type PreferenceValueAttribute<ToolbarKey> and conformance PreferenceValueAttribute<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for PreferenceValueAttribute<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E69803F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceValueAttribute<ToolbarKey> and conformance PreferenceValueAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceValueAttribute<NavigationTitleKey> and conformance PreferenceValueAttribute<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceValueAttribute<NavigationTitleKey> and conformance PreferenceValueAttribute<A>;
  if (!lazy protocol witness table cache variable for type PreferenceValueAttribute<NavigationTitleKey> and conformance PreferenceValueAttribute<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for PreferenceValueAttribute<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, MEMORY[0x1E69803F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceValueAttribute<NavigationTitleKey> and conformance PreferenceValueAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceValueAttribute<SearchKey> and conformance PreferenceValueAttribute<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceValueAttribute<SearchKey> and conformance PreferenceValueAttribute<A>;
  if (!lazy protocol witness table cache variable for type PreferenceValueAttribute<SearchKey> and conformance PreferenceValueAttribute<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for PreferenceValueAttribute<SearchKey>, &type metadata for SearchKey, &protocol witness table for SearchKey, MEMORY[0x1E69803F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceValueAttribute<SearchKey> and conformance PreferenceValueAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceValueAttribute<NavigationBarAppearanceKey> and conformance PreferenceValueAttribute<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceValueAttribute<NavigationBarAppearanceKey> and conformance PreferenceValueAttribute<A>;
  if (!lazy protocol witness table cache variable for type PreferenceValueAttribute<NavigationBarAppearanceKey> and conformance PreferenceValueAttribute<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for PreferenceValueAttribute<NavigationBarAppearanceKey>, &type metadata for NavigationBarAppearanceKey, &protocol witness table for NavigationBarAppearanceKey, MEMORY[0x1E69803F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceValueAttribute<NavigationBarAppearanceKey> and conformance PreferenceValueAttribute<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceValueAttribute<BottomBarAppearanceKey> and conformance PreferenceValueAttribute<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceValueAttribute<BottomBarAppearanceKey> and conformance PreferenceValueAttribute<A>;
  if (!lazy protocol witness table cache variable for type PreferenceValueAttribute<BottomBarAppearanceKey> and conformance PreferenceValueAttribute<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for PreferenceValueAttribute<BottomBarAppearanceKey>, &type metadata for BottomBarAppearanceKey, &protocol witness table for BottomBarAppearanceKey, MEMORY[0x1E69803F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceValueAttribute<BottomBarAppearanceKey> and conformance PreferenceValueAttribute<A>);
  }

  return result;
}

uint64_t outlined assign with take of Toolbar.UpdateContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ToolbarReader.PrimitiveReader()
{
  type metadata accessor for ToolbarStorage.SearchItem?(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ToolbarReader();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarReader.PrimitiveReader(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v7 + 64);
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v13 & 0xF8 | 7;
  v15 = *(v12 + 64);
  v16 = (v13 | v8) & 0x100000;
  if ((v14 | v8) == 7 && v16 == 0)
  {
    v18 = v8 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
    v19 = (((((((((((v18 & (v8 + 16)) + ((((v8 + 9) & ~v8) + v10) & 0xFFFFFFFFFFFFFFFCLL) + 16) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8) + 89;
    if (((((-130 - (v8 | 7)) | v8 | 7) - v19 - v14 - 23) | v14) - ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) - 16 >= 0xFFFFFFFFFFFFFFE7)
    {
      v112 = (v18 & (v8 + 16)) + ((((v8 + 9) & ~v8) + v10) & 0xFFFFFFFFFFFFFFFCLL);
      v114 = v8 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
      v116 = *(v7 + 84);
      v115 = *(*(v6 - 8) + 64);
      v118 = v15 + 7;
      v119 = *(v11 - 8);
      v120 = v11;
      v20 = a2[1];
      *a1 = *a2;
      *(a1 + 8) = v20;
      v21 = a2[3];

      __n = v19;
      if (v21)
      {
        *(a1 + 16) = a2[2];
        *(a1 + 24) = v21;
        *(a1 + 32) = a2[4];
      }

      else
      {
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = a2[4];
      }

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = a2[6];
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = a2[8];
      v23 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
      v24 = (a2 + 79) & 0xFFFFFFFFFFFFFFF8;
      v25 = *(v24 + 24);
      LODWORD(v26) = -1;
      if (v25 < 0xFFFFFFFF)
      {
        v26 = *(v24 + 24);
      }

      v27 = v26 - 1;

      if (v27 < 0)
      {
        if (v25)
        {
          v31 = *v24;
          v32 = *(v24 + 8);
          v33 = *(v24 + 16);
          outlined copy of Text.Storage(*v24, v32, v33);
          *v23 = v31;
          *(v23 + 8) = v32;
          *(v23 + 16) = v33;
          *(v23 + 24) = *(v24 + 24);
        }

        else
        {
          v34 = *(v24 + 16);
          *v23 = *v24;
          *(v23 + 16) = v34;
        }

        v35 = *(v24 + 32);
        if (v35 != 1)
        {
        }

        *(v23 + 32) = v35;
        *(v23 + 40) = *(v24 + 40);
        *(v23 + 48) = *(v24 + 48);
        *(v23 + 56) = *(v24 + 56);
      }

      else
      {
        v28 = *v24;
        v29 = *(v24 + 16);
        v30 = *(v24 + 32);
        *(v23 + 41) = *(v24 + 41);
        *(v23 + 16) = v29;
        *(v23 + 32) = v30;
        *v23 = v28;
      }

      v36 = ~v9;
      v37 = ((a1 + 143) & 0xFFFFFFFFFFFFFFF8);
      v38 = a2 + 143;
      v39 = ((a2 + 143) & 0xFFFFFFFFFFFFFFF8);
      v40 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v116 < 0)
      {
        if ((*(v7 + 48))((((v40 + 15) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 5) & v36))
        {
LABEL_25:
          v42 = __n;
          memcpy(((a1 + 143) & 0xFFFFFFFFFFFFFFF8), v39, __n);
LABEL_43:
          *(v37 + v42 + 7) = *&v39[v42 + 7];
          *((v37 + v42 + 22) & 0xFFFFFFFFFFFFFFF8) = *(&v39[v42 + 22] & 0xFFFFFFFFFFFFFFF8);
          v105 = (v37 + v42 + 30) & 0xFFFFFFFFFFFFFFF8;
          v106 = &v39[v42 + 30] & 0xFFFFFFFFFFFFFFF8;
          v107 = *(v119 + 16);

          v107(v105, v106, v120);
          v108 = ((v118 + v106) & 0xFFFFFFFFFFFFFFF8);
          v109 = v108[1];
          v110 = ((v118 + v105) & 0xFFFFFFFFFFFFFFF8);
          *v110 = *v108;
          v110[1] = v109;
          goto LABEL_44;
        }
      }

      else
      {
        v41 = *v40;
        if (*v40 >= 0xFFFFFFFF)
        {
          LODWORD(v41) = -1;
        }

        if (v41 != -1)
        {
          goto LABEL_25;
        }
      }

      v43 = v39;
      v44 = v112 + 9;
      v113 = v43;
      *v37 = *v43;
      v45 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v45 = *v40;
      v46 = (v114 & (v40 + v9 + 8));
      *(v45 + 8) = *v46;
      *(v45 + 9) = v46[1];
      *(v45 + 10) = v46[2];
      *(v45 + 11) = v46[3];
      v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = (v46 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = *v48;
      *(v47 + 4) = *(v48 + 4);
      *v47 = v49;
      v50 = (v47 + v9 + 5) & v36;
      v51 = (v9 + v48 + 5) & v36;
      v52 = *(v7 + 16);

      v52(v50, v51, v6);
      *(v50 + v115) = *(v51 + v115);
      v53 = (v50 + v115) & 0xFFFFFFFFFFFFFFFCLL;
      v54 = (v51 + v115) & 0xFFFFFFFFFFFFFFFCLL;
      v55 = *(v54 + 4);
      *(v53 + 8) = *(v54 + 8);
      *(v53 + 4) = v55;
      v56 = ((((a1 + 143) | 7) + v44) & 0xFFFFFFFFFFFFFFF8);
      v57 = (((v38 | 7) + v44) & 0xFFFFFFFFFFFFFFF8);
      *v56 = *v57;
      v58 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v59 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
      v60 = *(v59 + 8);

      if (v60 > 1)
      {
        v63 = *v59;
        *(v58 + 8) = *(v59 + 8);
        *v58 = v63;
      }

      else
      {
        v61 = *v59;
        v62 = v60 & 1;
        outlined copy of PlatformItemCollection.Storage(*v59, v62);
        *v58 = v61;
        *(v58 + 8) = v62;
      }

      v64 = (v56 + 31) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v57 + 31) & 0xFFFFFFFFFFFFFFF8;
      v66 = *(v65 + 8);
      v39 = v113;
      if (v66 > 1)
      {
        v69 = *v65;
        *(v64 + 8) = *(v65 + 8);
        *v64 = v69;
      }

      else
      {
        v67 = *v65;
        v68 = v66 & 1;
        outlined copy of PlatformItemCollection.Storage(*v65, v66 & 1);
        *v64 = v67;
        *(v64 + 8) = v68;
      }

      v70 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
      v72 = *v71;
      v73 = *(v71 + 8);
      v74 = *(v71 + 16);
      outlined copy of Text.Storage(*v71, v73, v74);
      *v70 = v72;
      *(v70 + 8) = v73;
      *(v70 + 16) = v74;
      *(v70 + 24) = *(v71 + 24);
      v75 = ((v70 + 39) & 0xFFFFFFFFFFFFFFF8);
      v76 = ((v71 + 39) & 0xFFFFFFFFFFFFFFF8);
      *v75 = *v76;
      v75[1] = v76[1];
      v77 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
      v78 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
      v79 = *v78;

      if (v79 < 0xFFFFFFFF)
      {
        v83 = *(v78 + 16);
        *v77 = *v78;
        *(v77 + 16) = v83;
        v84 = *(v78 + 32);
        v85 = *(v78 + 48);
        v86 = *(v78 + 64);
        *(v77 + 80) = *(v78 + 80);
        *(v77 + 48) = v85;
        *(v77 + 64) = v86;
        *(v77 + 32) = v84;
      }

      else
      {
        v80 = *(v78 + 8);
        *v77 = v79;
        *(v77 + 8) = v80;
        *(v77 + 16) = *(v78 + 16);
        *(v77 + 24) = *(v78 + 24);
        v81 = *(v78 + 32);
        *(v77 + 32) = v81;
        *(v77 + 40) = *(v78 + 40);
        *(v77 + 48) = *(v78 + 48);
        *(v77 + 56) = *(v78 + 56);
        *(v77 + 64) = *(v78 + 64);
        *(v77 + 68) = *(v78 + 68);
        *(v77 + 72) = *(v78 + 72);
        *(v77 + 76) = *(v78 + 76);
        *(v77 + 80) = *(v78 + 80);
        v82 = v81;
      }

      v87 = (v77 + 95) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v78 + 95) & 0xFFFFFFFFFFFFFFF8;
      if (*v88 < 0xFFFFFFFFuLL)
      {
        v92 = *(v88 + 16);
        *v87 = *v88;
        *(v87 + 16) = v92;
        v93 = *(v88 + 32);
        v94 = *(v88 + 48);
        v95 = *(v88 + 64);
        *(v87 + 80) = *(v88 + 80);
        *(v87 + 48) = v94;
        *(v87 + 64) = v95;
        *(v87 + 32) = v93;
      }

      else
      {
        v89 = *(v88 + 8);
        *v87 = *v88;
        *(v87 + 8) = v89;
        *(v87 + 16) = *(v88 + 16);
        *(v87 + 24) = *(v88 + 24);
        v90 = *(v88 + 32);
        *(v87 + 32) = v90;
        *(v87 + 40) = *(v88 + 40);
        *(v87 + 48) = *(v88 + 48);
        *(v87 + 56) = *(v88 + 56);
        *(v87 + 64) = *(v88 + 64);
        *(v87 + 68) = *(v88 + 68);
        *(v87 + 72) = *(v88 + 72);
        *(v87 + 76) = *(v88 + 76);
        *(v87 + 80) = *(v88 + 80);
        v91 = v90;
      }

      *(v87 + 88) = *(v88 + 88);
      v96 = (v77 + 191) & 0xFFFFFFFFFFFFFFF8;
      v97 = (v78 + 191) & 0xFFFFFFFFFFFFFFF8;
      if (*v97 < 0xFFFFFFFFuLL)
      {
        v101 = *(v97 + 16);
        *v96 = *v97;
        *(v96 + 16) = v101;
        v102 = *(v97 + 32);
        v103 = *(v97 + 48);
        v104 = *(v97 + 64);
        *(v96 + 80) = *(v97 + 80);
        *(v96 + 48) = v103;
        *(v96 + 64) = v104;
        *(v96 + 32) = v102;
      }

      else
      {
        v98 = *(v97 + 8);
        *v96 = *v97;
        *(v96 + 8) = v98;
        *(v96 + 16) = *(v97 + 16);
        *(v96 + 24) = *(v97 + 24);
        v99 = *(v97 + 32);
        *(v96 + 32) = v99;
        *(v96 + 40) = *(v97 + 40);
        *(v96 + 48) = *(v97 + 48);
        *(v96 + 56) = *(v97 + 56);
        *(v96 + 64) = *(v97 + 64);
        *(v96 + 68) = *(v97 + 68);
        *(v96 + 72) = *(v97 + 72);
        *(v96 + 76) = *(v97 + 76);
        *(v96 + 80) = *(v97 + 80);
        v100 = v99;
      }

      *(v96 + 88) = *(v97 + 88);
      v37 = ((a1 + 143) & 0xFFFFFFFFFFFFFFF8);
      v42 = __n;
      goto LABEL_43;
    }
  }

  v22 = *a2;
  *a1 = *a2;
  a1 = v22 + (((v14 | v8) + 16) & ~(v14 | v8));
LABEL_44:

  return a1;
}

uint64_t destroy for ToolbarReader.PrimitiveReader(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 24))
  {
  }

  v4 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 24);
  LODWORD(v6) = -1;
  if (v5 < 0xFFFFFFFF)
  {
    v6 = *(v4 + 24);
  }

  if (v6 - 1 < 0)
  {
    if (v5)
    {
      outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
    }

    if (*(v4 + 32) != 1)
    {
    }
  }

  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v4 + (v9 | 7) + 57) & ~(v9 | 7);
  v11 = *(v8 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  v12 = ~v9;
  v13 = ((v9 + 16) & v11) + ((((v9 + 9) & ~v9) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) != 0)
  {
    v16 = v13 + 9;
    if ((*(v8 + 48))((v9 + ((((v14 + v9 + 8) & v11) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v12))
    {
LABEL_15:
      v17 = v16 + 7;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = *v14;
    if (*v14 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v13 + 9;
    if (v15 != -1)
    {
      goto LABEL_15;
    }
  }

  (*(v8 + 8))((v9 + ((((v14 + v9 + 8) & v11) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v12, v7);
  v17 = v16 + 7;
  v18 = (v16 + 7 + v10) & 0xFFFFFFFFFFFFFFF8;

  v19 = *(((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v19 <= 1)
  {
    outlined consume of PlatformItemCollection.Storage(*((v18 + 15) & 0xFFFFFFFFFFFFFFF8), v19 & 1);
  }

  v20 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 8);
  if (v21 <= 1)
  {
    outlined consume of PlatformItemCollection.Storage(*v20, v21 & 1);
  }

  v22 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*v22, *(v22 + 8), *(v22 + 16));

  v23 = (((v22 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v23 >= 0xFFFFFFFFuLL)
  {
  }

  v24 = (v23 + 95) & 0xFFFFFFFFFFFFFFF8;
  if (*v24 >= 0xFFFFFFFFuLL)
  {
  }

  v25 = (v23 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (*v25 >= 0xFFFFFFFFuLL)
  {
  }

LABEL_27:

  v26 = *(*(a2 + 16) - 8);
  v27 = *(v26 + 80) & 0xF8 | 7;
  (*(v26 + 8))((((v10 + (((((((((v17 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + v27 + 8) & ~v27);
}

uint64_t initializeWithCopy for ToolbarReader.PrimitiveReader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);

  if (v6)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 79) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  v11 = v10 - 1;

  if (v11 < 0)
  {
    if (v9)
    {
      v15 = *v8;
      v16 = *(v8 + 8);
      v17 = *(v8 + 16);
      outlined copy of Text.Storage(*v8, v16, v17);
      *v7 = v15;
      *(v7 + 8) = v16;
      *(v7 + 16) = v17;
      *(v7 + 24) = *(v8 + 24);
    }

    else
    {
      v18 = *(v8 + 16);
      *v7 = *v8;
      *(v7 + 16) = v18;
    }

    v19 = *(v8 + 32);
    if (v19 != 1)
    {
    }

    *(v7 + 32) = v19;
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 48) = *(v8 + 48);
    *(v7 + 56) = *(v8 + 56);
  }

  else
  {
    v12 = *v8;
    v13 = *(v8 + 16);
    v14 = *(v8 + 32);
    *(v7 + 41) = *(v8 + 41);
    *(v7 + 16) = v13;
    *(v7 + 32) = v14;
    *v7 = v12;
  }

  v20 = type metadata accessor for AttributedString();
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v114 = ((v7 + (v22 | 7) + 57) & ~(v22 | 7));
  v23 = (v8 + (v22 | 7) + 57) & ~(v22 | 7);
  v24 = *(v21 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  v25 = ~v22;
  v26 = *(v21 + 64);
  v27 = ((v22 + 16) & v24) + ((((v22 + 9) & ~v22) + v26) & 0xFFFFFFFFFFFFFFFCLL) + 16;
  v28 = ((((((((v27 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8;
  v113 = v23;
  v29 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v21 + 84) & 0x80000000) != 0)
  {
    v31 = v28 + 89;
    if ((*(v21 + 48))((v22 + ((((v29 + v22 + 8) & v24) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v25))
    {
LABEL_18:
      v33 = v113;
      v32 = v114;
      memcpy(v114, v113, v31);
      goto LABEL_36;
    }
  }

  else
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    v31 = v28 + 89;
    if (v30 != -1)
    {
      goto LABEL_18;
    }
  }

  v111 = v31;
  *v114 = *v113;
  v34 = ((v114 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v29;
  v35 = ((v34 + v22 + 8) & v24);
  v36 = ((v29 + v22 + 8) & v24);
  *v35 = *v36;
  v35[1] = v36[1];
  v35[2] = v36[2];
  v35[3] = v36[3];
  v37 = (v35 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v38 = (v36 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v36) = *v38;
  *(v37 + 4) = *(v38 + 4);
  *v37 = v36;
  v39 = v22 + 5;
  v40 = (v22 + 5 + v37) & v25;
  v41 = (v39 + v38) & v25;
  v42 = *(v21 + 16);

  v42(v40, v41, v20);
  *(v40 + v26) = *(v41 + v26);
  v43 = (v40 + v26) & 0xFFFFFFFFFFFFFFFCLL;
  v44 = (v41 + v26) & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 4);
  *(v43 + 8) = *(v44 + 8);
  *(v43 + 4) = v45;
  v46 = ((v114 + v27) & 0xFFFFFFFFFFFFFFF8);
  v47 = ((v113 + v27) & 0xFFFFFFFFFFFFFFF8);
  *v46 = *v47;
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = *(v49 + 8);

  if (v50 > 1)
  {
    v53 = *v49;
    *(v48 + 8) = *(v49 + 8);
    *v48 = v53;
  }

  else
  {
    v51 = *v49;
    v52 = v50 & 1;
    outlined copy of PlatformItemCollection.Storage(*v49, v52);
    *v48 = v51;
    *(v48 + 8) = v52;
  }

  v54 = (v46 + 31) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v47 + 31) & 0xFFFFFFFFFFFFFFF8;
  v56 = *(v55 + 8);
  if (v56 > 1)
  {
    v59 = *v55;
    *(v54 + 8) = *(v55 + 8);
    *v54 = v59;
  }

  else
  {
    v57 = *v55;
    v58 = v56 & 1;
    outlined copy of PlatformItemCollection.Storage(*v55, v56 & 1);
    *v54 = v57;
    *(v54 + 8) = v58;
  }

  v60 = (v46 + 47) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v47 + 47) & 0xFFFFFFFFFFFFFFF8;
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = *(v61 + 16);
  outlined copy of Text.Storage(*v61, v63, v64);
  *v60 = v62;
  *(v60 + 8) = v63;
  *(v60 + 16) = v64;
  *(v60 + 24) = *(v61 + 24);
  v65 = ((v60 + 39) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v61 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  v65[1] = v66[1];
  v67 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = *v68;

  if (v69 < 0xFFFFFFFF)
  {
    v73 = *(v68 + 16);
    *v67 = *v68;
    *(v67 + 16) = v73;
    v74 = *(v68 + 32);
    v75 = *(v68 + 48);
    v76 = *(v68 + 64);
    *(v67 + 80) = *(v68 + 80);
    *(v67 + 48) = v75;
    *(v67 + 64) = v76;
    *(v67 + 32) = v74;
  }

  else
  {
    v70 = *(v68 + 8);
    *v67 = v69;
    *(v67 + 8) = v70;
    *(v67 + 16) = *(v68 + 16);
    *(v67 + 24) = *(v68 + 24);
    v71 = *(v68 + 32);
    *(v67 + 32) = v71;
    *(v67 + 40) = *(v68 + 40);
    *(v67 + 48) = *(v68 + 48);
    *(v67 + 56) = *(v68 + 56);
    *(v67 + 64) = *(v68 + 64);
    *(v67 + 68) = *(v68 + 68);
    *(v67 + 72) = *(v68 + 72);
    *(v67 + 76) = *(v68 + 76);
    *(v67 + 80) = *(v68 + 80);
    v72 = v71;
  }

  v77 = (v67 + 95) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v68 + 95) & 0xFFFFFFFFFFFFFFF8;
  if (*v78 < 0xFFFFFFFFuLL)
  {
    v82 = *(v78 + 16);
    *v77 = *v78;
    *(v77 + 16) = v82;
    v83 = *(v78 + 32);
    v84 = *(v78 + 48);
    v85 = *(v78 + 64);
    *(v77 + 80) = *(v78 + 80);
    *(v77 + 48) = v84;
    *(v77 + 64) = v85;
    *(v77 + 32) = v83;
  }

  else
  {
    v79 = *(v78 + 8);
    *v77 = *v78;
    *(v77 + 8) = v79;
    *(v77 + 16) = *(v78 + 16);
    *(v77 + 24) = *(v78 + 24);
    v80 = *(v78 + 32);
    *(v77 + 32) = v80;
    *(v77 + 40) = *(v78 + 40);
    *(v77 + 48) = *(v78 + 48);
    *(v77 + 56) = *(v78 + 56);
    *(v77 + 64) = *(v78 + 64);
    *(v77 + 68) = *(v78 + 68);
    *(v77 + 72) = *(v78 + 72);
    *(v77 + 76) = *(v78 + 76);
    *(v77 + 80) = *(v78 + 80);
    v81 = v80;
  }

  *(v77 + 88) = *(v78 + 88);
  v86 = (v67 + 191) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v68 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (*v87 < 0xFFFFFFFFuLL)
  {
    v91 = *(v87 + 16);
    *v86 = *v87;
    *(v86 + 16) = v91;
    v92 = *(v87 + 32);
    v93 = *(v87 + 48);
    v94 = *(v87 + 64);
    *(v86 + 80) = *(v87 + 80);
    *(v86 + 48) = v93;
    *(v86 + 64) = v94;
    *(v86 + 32) = v92;
  }

  else
  {
    v88 = *(v87 + 8);
    *v86 = *v87;
    *(v86 + 8) = v88;
    *(v86 + 16) = *(v87 + 16);
    *(v86 + 24) = *(v87 + 24);
    v89 = *(v87 + 32);
    *(v86 + 32) = v89;
    *(v86 + 40) = *(v87 + 40);
    *(v86 + 48) = *(v87 + 48);
    *(v86 + 56) = *(v87 + 56);
    *(v86 + 64) = *(v87 + 64);
    *(v86 + 68) = *(v87 + 68);
    *(v86 + 72) = *(v87 + 72);
    *(v86 + 76) = *(v87 + 76);
    *(v86 + 80) = *(v87 + 80);
    v90 = v89;
  }

  v31 = v111;
  *(v86 + 88) = *(v87 + 88);
  v33 = v113;
  v32 = v114;
LABEL_36:
  *(v32 + v31 + 7) = *(v33 + v31 + 7);
  v95 = ((v32 + v31 + 22) & 0xFFFFFFFFFFFFFFF8);
  v96 = ((v33 + v31 + 22) & 0xFFFFFFFFFFFFFFF8);
  *v95 = *v96;
  v97 = *(a3 + 16);
  v98 = *(*(v97 - 8) + 16);
  v99 = *(v97 - 8) + 16;
  v100 = *(*(v97 - 8) + 80) & 0xF8;
  v101 = v100 + 15;
  v102 = v95 + v100 + 15;
  v103 = ~v100 & 0xFFFFFFFFFFFFFFF8;
  v104 = v102 & v103;
  v105 = (v96 + v101) & v103;

  v98(v104, v105, v97);
  v106 = *(v99 + 48) + 7;
  v107 = ((v106 + v104) & 0xFFFFFFFFFFFFFFF8);
  v108 = ((v106 + v105) & 0xFFFFFFFFFFFFFFF8);
  v109 = v108[1];
  *v107 = *v108;
  v107[1] = v109;

  return a1;
}

void *assignWithCopy for ToolbarReader.PrimitiveReader(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  *a1 = *a2;
  a1[1] = *(a2 + 8);

  v5 = *(a2 + 24);
  if (v4[3])
  {
    if (v5)
    {
      v4[2] = *(a2 + 16);

      v4[3] = *(a2 + 24);

      v4[4] = *(a2 + 32);
    }

    else
    {
      outlined destroy of ToolbarStorage?((v4 + 2), &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948], type metadata accessor for ToolbarStorage?);
      v6 = *(a2 + 32);
      *(v4 + 1) = *(a2 + 16);
      v4[4] = v6;
    }
  }

  else if (v5)
  {
    v4[2] = *(a2 + 16);
    v4[3] = *(a2 + 24);
    v4[4] = *(a2 + 32);
  }

  else
  {
    v7 = *(a2 + 16);
    v4[4] = *(a2 + 32);
    *(v4 + 1) = v7;
  }

  *(v4 + 40) = *(a2 + 40);
  v4[6] = *(a2 + 48);

  *(v4 + 56) = *(a2 + 56);
  v4[8] = *(a2 + 64);

  v8 = (v4 + 79) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 79) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 24);
  LODWORD(v11) = -1;
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  else
  {
    v12 = *(v8 + 24);
  }

  v13 = v12 - 1;
  v14 = *(v9 + 24);
  if (v14 < 0xFFFFFFFF)
  {
    v11 = *(v9 + 24);
  }

  v15 = v11 - 1;
  if (v13 < 0)
  {
    if ((v15 & 0x80000000) == 0)
    {
      if (v10)
      {
        outlined consume of Text.Storage(*v8, *(v8 + 8), *(v8 + 16));
      }

      if (*(v8 + 32) != 1)
      {
      }

      goto LABEL_23;
    }

    if (v10)
    {
      if (v14)
      {
        v22 = *v9;
        v23 = *(v9 + 8);
        v24 = *(v9 + 16);
        outlined copy of Text.Storage(*v9, v23, v24);
        v25 = *v8;
        v26 = *(v8 + 8);
        v27 = *(v8 + 16);
        *v8 = v22;
        *(v8 + 8) = v23;
        *(v8 + 16) = v24;
        outlined consume of Text.Storage(v25, v26, v27);
        *(v8 + 24) = *(v9 + 24);
      }

      else
      {
        outlined destroy of Text((v4 + 79) & 0xFFFFFFFFFFFFFFF8);
        v33 = *(v9 + 16);
        *v8 = *v9;
        *(v8 + 16) = v33;
      }
    }

    else if (v14)
    {
      v30 = *v9;
      v31 = *(v9 + 8);
      v32 = *(v9 + 16);
      outlined copy of Text.Storage(*v9, v31, v32);
      *v8 = v30;
      *(v8 + 8) = v31;
      *(v8 + 16) = v32;
      *(v8 + 24) = *(v9 + 24);
    }

    else
    {
      v34 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 16) = v34;
    }

    v35 = (v8 + 32);
    v36 = *(v9 + 32);
    if (*(v8 + 32) == 1)
    {
      if (v36 != 1)
      {
        *v35 = v36;

        goto LABEL_43;
      }

      v37 = 1;
    }

    else
    {
      if (v36 != 1)
      {
        *v35 = v36;

        goto LABEL_43;
      }

      outlined destroy of Transaction(v8 + 32);
      v37 = *(v9 + 32);
    }

    *v35 = v37;
LABEL_43:
    *(v8 + 40) = *(v9 + 40);
    *(v8 + 48) = *(v9 + 48);

    *(v8 + 56) = *(v9 + 56);
    goto LABEL_44;
  }

  if ((v15 & 0x80000000) == 0)
  {
LABEL_23:
    v19 = *v9;
    v20 = *(v9 + 16);
    v21 = *(v9 + 32);
    *(v8 + 41) = *(v9 + 41);
    *(v8 + 16) = v20;
    *(v8 + 32) = v21;
    *v8 = v19;
    goto LABEL_44;
  }

  if (v14)
  {
    v16 = *v9;
    v17 = *(v9 + 8);
    v18 = *(v9 + 16);
    outlined copy of Text.Storage(*v9, v17, v18);
    *v8 = v16;
    *(v8 + 8) = v17;
    *(v8 + 16) = v18;
    *(v8 + 24) = *(v9 + 24);
  }

  else
  {
    v28 = *(v9 + 16);
    *v8 = *v9;
    *(v8 + 16) = v28;
  }

  v29 = *(v9 + 32);
  if (v29 != 1)
  {
  }

  *(v8 + 32) = v29;
  *(v8 + 40) = *(v9 + 40);
  *(v8 + 48) = *(v9 + 48);
  *(v8 + 56) = *(v9 + 56);

LABEL_44:
  v38 = type metadata accessor for AttributedString();
  v39 = *(v38 - 8);
  v40 = *(v39 + 84);
  v41 = *(v39 + 80);
  v42 = v9 + (v41 | 7);
  v43 = ((v8 + (v41 | 7) + 57) & ~(v41 | 7));
  v44 = ((v42 + 57) & ~(v41 | 7));
  v45 = *(v39 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  v46 = ~v41;
  v232 = *(v39 + 64);
  v238 = ((v41 + 16) & v45) + ((((v41 + 9) & ~v41) + v232) & 0xFFFFFFFFFFFFFFFCLL) + 16;
  v239 = v39;
  v47 = (((((((((v238 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8) + 89;
  v48 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v236 = ~v41;
  v237 = v38;
  v235 = v45;
  if ((v40 & 0x80000000) != 0)
  {
    v60 = v38;
    v61 = v41 + 5 + ((((v48 + v41 + 8) & v45) + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v230 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = *(v39 + 48);
    v63 = *(v39 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
    v229 = v62(v61 & v46, v40, v38);
    v64 = v60;
    v49 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
    v47 = (((((((((v238 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8) + 89;
    v51 = v62((v41 + 5 + ((((v49 + v41 + 8) & v63) + 7) & 0xFFFFFFFFFFFFFFFCLL)) & v46, v40, v64);
    v48 = v230;
    v43 = ((v8 + (v41 | 7) + 57) & ~(v41 | 7));
    if (!v229)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v49 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF8);
    v50 = *v49;
    if (*v49 >= 0xFFFFFFFF)
    {
      LODWORD(v50) = -1;
    }

    v51 = v50 + 1;
    if (*v48 > 0xFFFFFFFEuLL)
    {
LABEL_48:
      if (v51)
      {

        (*(v239 + 8))((v41 + ((((v48 + v41 + 8) & v235) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v236, v237);
        v52 = (v43 + v238) & 0xFFFFFFFFFFFFFFF8;

        v53 = *(((v52 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v53 <= 1)
        {
          outlined consume of PlatformItemCollection.Storage(*((v52 + 15) & 0xFFFFFFFFFFFFFFF8), v53 & 1);
        }

        v54 = (v52 + 31) & 0xFFFFFFFFFFFFFFF8;
        v55 = *(v54 + 8);
        if (v55 <= 1)
        {
          outlined consume of PlatformItemCollection.Storage(*v54, v55 & 1);
        }

        v56 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
        outlined consume of Text.Storage(*v56, *(v56 + 8), *(v56 + 16));

        v57 = (((v56 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        if (*v57 >= 0xFFFFFFFFuLL)
        {
        }

        v58 = (v57 + 95) & 0xFFFFFFFFFFFFFFF8;
        if (*v58 >= 0xFFFFFFFFuLL)
        {
        }

        v59 = (v57 + 191) & 0xFFFFFFFFFFFFFFF8;
        if (*v59 >= 0xFFFFFFFFuLL)
        {
        }

        goto LABEL_61;
      }

      v234 = v47;
      *v43 = *v44;

      *v48 = *v49;

      v84 = ((v48 + v41 + 8) & v235);
      v85 = ((v49 + v41 + 8) & v235);
      *v84 = *v85;
      v84[1] = v85[1];
      v84[2] = v85[2];
      v84[3] = v85[3];
      v86 = (v84 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v87 = (v85 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v85) = *v87;
      *(v86 + 4) = *(v87 + 4);
      *v86 = v85;
      v88 = (v41 + 5 + v86) & v236;
      v89 = v43;
      v90 = (v41 + 5 + v87) & v236;
      (*(v239 + 24))(v88, v90, v237);
      v91 = v89;
      *(v88 + v232) = *(v90 + v232);
      v92 = (v88 + v232) & 0xFFFFFFFFFFFFFFFCLL;
      v93 = (v90 + v232) & 0xFFFFFFFFFFFFFFFCLL;
      *(v92 + 4) = *(v93 + 4);
      *(v92 + 8) = *(v93 + 8);
      v94 = ((v89 + v238) & 0xFFFFFFFFFFFFFFF8);
      v240 = v44;
      v95 = ((v44 + v238) & 0xFFFFFFFFFFFFFFF8);
      *v94 = *v95;

      v96 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
      v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
      v98 = *(v96 + 8);
      v99 = *(v97 + 8);
      if (v98 > 1)
      {
        if (v99 <= 1)
        {
          v147 = *v97;
          v148 = v99 & 1;
          outlined copy of PlatformItemCollection.Storage(*v97, v99 & 1);
          *v96 = v147;
          *(v96 + 8) = v148;
          goto LABEL_85;
        }
      }

      else
      {
        if (v99 <= 1)
        {
          v100 = *v97;
          v101 = v99 & 1;
          outlined copy of PlatformItemCollection.Storage(*v97, v99 & 1);
          v102 = *v96;
          v103 = *(v96 + 8);
          *v96 = v100;
          *(v96 + 8) = v101;
          outlined consume of PlatformItemCollection.Storage(v102, v103);
          goto LABEL_85;
        }

        outlined consume of PlatformItemCollection.Storage(*v96, v98 & 1);
      }

      v149 = *v97;
      *(v96 + 8) = *(v97 + 8);
      *v96 = v149;
LABEL_85:
      v150 = (v94 + 31) & 0xFFFFFFFFFFFFFFF8;
      v151 = (v95 + 31) & 0xFFFFFFFFFFFFFFF8;
      v152 = *(v150 + 8);
      v153 = *(v151 + 8);
      v231 = v91;
      v154 = v4;
      if (v152 > 1)
      {
        if (v153 <= 1)
        {
          v159 = *v151;
          v160 = v153 & 1;
          outlined copy of PlatformItemCollection.Storage(*v151, v153 & 1);
          *v150 = v159;
          *(v150 + 8) = v160;
          goto LABEL_92;
        }
      }

      else
      {
        if (v153 <= 1)
        {
          v155 = *v151;
          v156 = v153 & 1;
          outlined copy of PlatformItemCollection.Storage(*v151, v153 & 1);
          v157 = *v150;
          v158 = *(v150 + 8);
          *v150 = v155;
          *(v150 + 8) = v156;
          outlined consume of PlatformItemCollection.Storage(v157, v158);
          goto LABEL_92;
        }

        outlined consume of PlatformItemCollection.Storage(*v150, v152 & 1);
      }

      v161 = *v151;
      *(v150 + 8) = *(v151 + 8);
      *v150 = v161;
LABEL_92:
      v162 = (v94 + 47) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v95 + 47) & 0xFFFFFFFFFFFFFFF8;
      v164 = *v163;
      v165 = *(v163 + 8);
      v166 = *(v163 + 16);
      outlined copy of Text.Storage(*v163, v165, v166);
      v167 = *v162;
      v168 = *(v162 + 8);
      v169 = *(v162 + 16);
      *v162 = v164;
      *(v162 + 8) = v165;
      *(v162 + 16) = v166;
      outlined consume of Text.Storage(v167, v168, v169);
      *(v162 + 24) = *(v163 + 24);

      v170 = ((v162 + 39) & 0xFFFFFFFFFFFFFFF8);
      v171 = ((v163 + 39) & 0xFFFFFFFFFFFFFFF8);
      *v170 = *v171;

      v170[1] = v171[1];

      v172 = (v170 + 23) & 0xFFFFFFFFFFFFFFF8;
      v173 = (v171 + 23) & 0xFFFFFFFFFFFFFFF8;
      v174 = *v173;
      if (*v172 < 0xFFFFFFFFuLL)
      {
        if (v174 >= 0xFFFFFFFF)
        {
          v179 = *(v173 + 8);
          *v172 = v174;
          *(v172 + 8) = v179;
          *(v172 + 16) = *(v173 + 16);
          *(v172 + 24) = *(v173 + 24);
          v180 = *(v173 + 32);
          *(v172 + 32) = v180;
          *(v172 + 40) = *(v173 + 40);
          *(v172 + 48) = *(v173 + 48);
          *(v172 + 56) = *(v173 + 56);
          *(v172 + 64) = *(v173 + 64);
          *(v172 + 68) = *(v173 + 68);
          *(v172 + 72) = *(v173 + 72);
          *(v172 + 76) = *(v173 + 76);
          *(v172 + 80) = *(v173 + 80);
          v181 = v180;

          goto LABEL_99;
        }
      }

      else
      {
        if (v174 >= 0xFFFFFFFF)
        {
          v175 = *(v173 + 8);
          *v172 = v174;
          *(v172 + 8) = v175;
          *(v172 + 16) = *(v173 + 16);
          *(v172 + 24) = *(v173 + 24);
          v176 = *(v173 + 32);
          v177 = *(v172 + 32);
          *(v172 + 32) = v176;
          v178 = v176;

          *(v172 + 40) = *(v173 + 40);

          *(v172 + 48) = *(v173 + 48);
          *(v172 + 56) = *(v173 + 56);

          *(v172 + 64) = *(v173 + 64);
          *(v172 + 68) = *(v173 + 68);
          *(v172 + 72) = *(v173 + 72);
          *(v172 + 76) = *(v173 + 76);
          *(v172 + 80) = *(v173 + 80);

          goto LABEL_99;
        }
      }

      v182 = *(v173 + 16);
      *v172 = *v173;
      *(v172 + 16) = v182;
      v183 = *(v173 + 32);
      v184 = *(v173 + 48);
      v185 = *(v173 + 64);
      *(v172 + 80) = *(v173 + 80);
      *(v172 + 48) = v184;
      *(v172 + 64) = v185;
      *(v172 + 32) = v183;
LABEL_99:
      v186 = (v172 + 95) & 0xFFFFFFFFFFFFFFF8;
      v187 = (v173 + 95) & 0xFFFFFFFFFFFFFFF8;
      v188 = *v187;
      if (*v186 < 0xFFFFFFFFuLL)
      {
        if (v188 >= 0xFFFFFFFF)
        {
          v193 = *(v187 + 8);
          *v186 = v188;
          *(v186 + 8) = v193;
          *(v186 + 16) = *(v187 + 16);
          *(v186 + 24) = *(v187 + 24);
          v194 = *(v187 + 32);
          *(v186 + 32) = v194;
          *(v186 + 40) = *(v187 + 40);
          *(v186 + 48) = *(v187 + 48);
          *(v186 + 56) = *(v187 + 56);
          *(v186 + 64) = *(v187 + 64);
          *(v186 + 68) = *(v187 + 68);
          *(v186 + 72) = *(v187 + 72);
          *(v186 + 76) = *(v187 + 76);
          *(v186 + 80) = *(v187 + 80);
          v195 = v194;

          goto LABEL_106;
        }
      }

      else
      {
        if (v188 >= 0xFFFFFFFF)
        {
          v189 = *(v187 + 8);
          *v186 = v188;
          *(v186 + 8) = v189;
          *(v186 + 16) = *(v187 + 16);
          *(v186 + 24) = *(v187 + 24);
          v190 = *(v187 + 32);
          v191 = *(v186 + 32);
          *(v186 + 32) = v190;
          v192 = v190;

          *(v186 + 40) = *(v187 + 40);

          *(v186 + 48) = *(v187 + 48);
          *(v186 + 56) = *(v187 + 56);

          *(v186 + 64) = *(v187 + 64);
          *(v186 + 68) = *(v187 + 68);
          *(v186 + 72) = *(v187 + 72);
          *(v186 + 76) = *(v187 + 76);
          *(v186 + 80) = *(v187 + 80);

          goto LABEL_106;
        }
      }

      v196 = *(v187 + 16);
      *v186 = *v187;
      *(v186 + 16) = v196;
      v197 = *(v187 + 32);
      v198 = *(v187 + 48);
      v199 = *(v187 + 64);
      *(v186 + 80) = *(v187 + 80);
      *(v186 + 48) = v198;
      *(v186 + 64) = v199;
      *(v186 + 32) = v197;
LABEL_106:
      *(v186 + 88) = *(v187 + 88);
      v200 = (v172 + 191) & 0xFFFFFFFFFFFFFFF8;
      v201 = (v173 + 191) & 0xFFFFFFFFFFFFFFF8;
      v202 = *v201;
      if (*v200 < 0xFFFFFFFFuLL)
      {
        v4 = v154;
        v47 = v234;
        if (v202 >= 0xFFFFFFFF)
        {
          v207 = *(v201 + 8);
          *v200 = v202;
          *(v200 + 8) = v207;
          *(v200 + 16) = *(v201 + 16);
          *(v200 + 24) = *(v201 + 24);
          v208 = *(v201 + 32);
          *(v200 + 32) = v208;
          *(v200 + 40) = *(v201 + 40);
          *(v200 + 48) = *(v201 + 48);
          *(v200 + 56) = *(v201 + 56);
          *(v200 + 64) = *(v201 + 64);
          *(v200 + 68) = *(v201 + 68);
          *(v200 + 72) = *(v201 + 72);
          *(v200 + 76) = *(v201 + 76);
          *(v200 + 80) = *(v201 + 80);
          v209 = v208;

          goto LABEL_113;
        }
      }

      else
      {
        v4 = v154;
        v47 = v234;
        if (v202 >= 0xFFFFFFFF)
        {
          v203 = *(v201 + 8);
          *v200 = v202;
          *(v200 + 8) = v203;
          *(v200 + 16) = *(v201 + 16);
          *(v200 + 24) = *(v201 + 24);
          v204 = *(v201 + 32);
          v205 = *(v200 + 32);
          *(v200 + 32) = v204;
          v206 = v204;

          *(v200 + 40) = *(v201 + 40);

          *(v200 + 48) = *(v201 + 48);
          *(v200 + 56) = *(v201 + 56);

          *(v200 + 64) = *(v201 + 64);
          *(v200 + 68) = *(v201 + 68);
          *(v200 + 72) = *(v201 + 72);
          *(v200 + 76) = *(v201 + 76);
          *(v200 + 80) = *(v201 + 80);

LABEL_113:
          v43 = v231;
          v44 = v240;
          *(v200 + 88) = *(v201 + 88);
          goto LABEL_114;
        }
      }

      v210 = *(v201 + 16);
      *v200 = *v201;
      *(v200 + 16) = v210;
      v211 = *(v201 + 32);
      v212 = *(v201 + 48);
      v213 = *(v201 + 64);
      *(v200 + 80) = *(v201 + 80);
      *(v200 + 48) = v212;
      *(v200 + 64) = v213;
      *(v200 + 32) = v211;
      goto LABEL_113;
    }
  }

  if (v51)
  {
LABEL_61:
    memcpy(v43, v44, v47);
    goto LABEL_114;
  }

  v233 = v47;
  *v43 = *v44;
  *v48 = *v49;
  v65 = ((v48 + v41 + 8) & v235);
  v66 = ((v49 + v41 + 8) & v235);
  *v65 = *v66;
  v65[1] = v66[1];
  v65[2] = v66[2];
  v65[3] = v66[3];
  v67 = (v65 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v68 = (v66 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v66) = *v68;
  *(v67 + 4) = *(v68 + 4);
  *v67 = v66;
  v69 = v43;
  v70 = (v41 + 5 + v67) & v236;
  v71 = (v41 + 5 + v68) & v236;
  v72 = *(v239 + 16);

  v72(v70, v71, v237);
  *(v70 + v232) = *(v71 + v232);
  v73 = (v70 + v232) & 0xFFFFFFFFFFFFFFFCLL;
  v74 = (v71 + v232) & 0xFFFFFFFFFFFFFFFCLL;
  v75 = *(v74 + 4);
  *(v73 + 8) = *(v74 + 8);
  *(v73 + 4) = v75;
  v76 = v69;
  v77 = ((v69 + v238) & 0xFFFFFFFFFFFFFFF8);
  v78 = ((v44 + v238) & 0xFFFFFFFFFFFFFFF8);
  *v77 = *v78;
  v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = *(v80 + 8);

  v82 = v44;
  if (v81 > 1)
  {
    v104 = *v80;
    *(v79 + 8) = *(v80 + 8);
    *v79 = v104;
  }

  else
  {
    v83 = *v80;
    outlined copy of PlatformItemCollection.Storage(*v80, v81 & 1);
    *v79 = v83;
    *(v79 + 8) = v81 & 1;
  }

  v105 = (v77 + 31) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v78 + 31) & 0xFFFFFFFFFFFFFFF8;
  v107 = *(v106 + 8);
  v108 = v76;
  if (v107 > 1)
  {
    v111 = *v106;
    *(v105 + 8) = *(v106 + 8);
    *v105 = v111;
  }

  else
  {
    v109 = *v106;
    v110 = v107 & 1;
    outlined copy of PlatformItemCollection.Storage(*v106, v107 & 1);
    *v105 = v109;
    *(v105 + 8) = v110;
  }

  v112 = (v77 + 47) & 0xFFFFFFFFFFFFFFF8;
  v113 = (v78 + 47) & 0xFFFFFFFFFFFFFFF8;
  v114 = *v113;
  v115 = *(v113 + 8);
  v116 = *(v113 + 16);
  outlined copy of Text.Storage(*v113, v115, v116);
  *v112 = v114;
  *(v112 + 8) = v115;
  *(v112 + 16) = v116;
  *(v112 + 24) = *(v113 + 24);
  v117 = ((v112 + 39) & 0xFFFFFFFFFFFFFFF8);
  v118 = ((v113 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v117 = *v118;
  v117[1] = v118[1];
  v119 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
  v120 = (v118 + 23) & 0xFFFFFFFFFFFFFFF8;
  v121 = *v120;

  if (v121 < 0xFFFFFFFF)
  {
    v125 = *(v120 + 16);
    *v119 = *v120;
    *(v119 + 16) = v125;
    v126 = *(v120 + 32);
    v127 = *(v120 + 48);
    v128 = *(v120 + 64);
    *(v119 + 80) = *(v120 + 80);
    *(v119 + 48) = v127;
    *(v119 + 64) = v128;
    *(v119 + 32) = v126;
  }

  else
  {
    v122 = *(v120 + 8);
    *v119 = v121;
    *(v119 + 8) = v122;
    *(v119 + 16) = *(v120 + 16);
    *(v119 + 24) = *(v120 + 24);
    v123 = *(v120 + 32);
    *(v119 + 32) = v123;
    *(v119 + 40) = *(v120 + 40);
    *(v119 + 48) = *(v120 + 48);
    *(v119 + 56) = *(v120 + 56);
    *(v119 + 64) = *(v120 + 64);
    *(v119 + 68) = *(v120 + 68);
    *(v119 + 72) = *(v120 + 72);
    *(v119 + 76) = *(v120 + 76);
    *(v119 + 80) = *(v120 + 80);
    v124 = v123;
  }

  v129 = (v119 + 95) & 0xFFFFFFFFFFFFFFF8;
  v130 = (v120 + 95) & 0xFFFFFFFFFFFFFFF8;
  if (*v130 < 0xFFFFFFFFuLL)
  {
    v134 = *(v130 + 16);
    *v129 = *v130;
    *(v129 + 16) = v134;
    v135 = *(v130 + 32);
    v136 = *(v130 + 48);
    v137 = *(v130 + 64);
    *(v129 + 80) = *(v130 + 80);
    *(v129 + 48) = v136;
    *(v129 + 64) = v137;
    *(v129 + 32) = v135;
  }

  else
  {
    v131 = *(v130 + 8);
    *v129 = *v130;
    *(v129 + 8) = v131;
    *(v129 + 16) = *(v130 + 16);
    *(v129 + 24) = *(v130 + 24);
    v132 = *(v130 + 32);
    *(v129 + 32) = v132;
    *(v129 + 40) = *(v130 + 40);
    *(v129 + 48) = *(v130 + 48);
    *(v129 + 56) = *(v130 + 56);
    *(v129 + 64) = *(v130 + 64);
    *(v129 + 68) = *(v130 + 68);
    *(v129 + 72) = *(v130 + 72);
    *(v129 + 76) = *(v130 + 76);
    *(v129 + 80) = *(v130 + 80);
    v133 = v132;
  }

  *(v129 + 88) = *(v130 + 88);
  v138 = (v119 + 191) & 0xFFFFFFFFFFFFFFF8;
  v139 = (v120 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (*v139 < 0xFFFFFFFFuLL)
  {
    v143 = *(v139 + 16);
    *v138 = *v139;
    *(v138 + 16) = v143;
    v144 = *(v139 + 32);
    v145 = *(v139 + 48);
    v146 = *(v139 + 64);
    *(v138 + 80) = *(v139 + 80);
    *(v138 + 48) = v145;
    *(v138 + 64) = v146;
    *(v138 + 32) = v144;
  }

  else
  {
    v140 = *(v139 + 8);
    *v138 = *v139;
    *(v138 + 8) = v140;
    *(v138 + 16) = *(v139 + 16);
    *(v138 + 24) = *(v139 + 24);
    v141 = *(v139 + 32);
    *(v138 + 32) = v141;
    *(v138 + 40) = *(v139 + 40);
    *(v138 + 48) = *(v139 + 48);
    *(v138 + 56) = *(v139 + 56);
    *(v138 + 64) = *(v139 + 64);
    *(v138 + 68) = *(v139 + 68);
    *(v138 + 72) = *(v139 + 72);
    *(v138 + 76) = *(v139 + 76);
    *(v138 + 80) = *(v139 + 80);
    v142 = v141;
  }

  v44 = v82;
  v43 = v108;
  *(v138 + 88) = *(v139 + 88);
  v47 = v233;
LABEL_114:
  *(v43 + v47 + 7) = *(v44 + v47 + 7);

  v214 = ((v43 + v47 + 22) & 0xFFFFFFFFFFFFFFF8);
  v215 = ((v44 + v47 + 22) & 0xFFFFFFFFFFFFFFF8);
  *v214 = *v215;

  v216 = *(*(a3 + 16) - 8);
  v217 = v216 + 24;
  v218 = *(v216 + 80) & 0xF8;
  v219 = v218 + 15;
  v220 = v214 + v218 + 15;
  v221 = ~v218 & 0xFFFFFFFFFFFFFFF8;
  v222 = v220 & v221;
  v223 = (v215 + v219) & v221;
  (*(v216 + 24))(v220 & v221, v223);
  v224 = *(v217 + 40) + 7;
  v225 = ((v224 + v222) & 0xFFFFFFFFFFFFFFF8);
  v226 = ((v224 + v223) & 0xFFFFFFFFFFFFFFF8);
  v227 = v226[1];
  *v225 = *v226;
  v225[1] = v227;

  return v4;
}

uint64_t initializeWithTake for ToolbarReader.PrimitiveReader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = ((a1 + 79) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 79) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *(v6 + 41) = *(v7 + 41);
  v6[1] = v9;
  v6[2] = v10;
  *v6 = v8;
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = ((v6 + (v13 | 7) + 57) & ~(v13 | 7));
  v15 = (v7 + (v13 | 7) + 57) & ~(v13 | 7);
  v16 = *(v12 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v12 + 64);
  v18 = ((v13 + 16) & v16) + ((((v13 + 9) & ~v13) + v17) & 0xFFFFFFFFFFFFFFFCLL) + 16;
  v19 = ((((((((v18 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8;
  v20 = v15;
  v21 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v78 = ~v13;
  v79 = v11;
  if ((*(v12 + 84) & 0x80000000) == 0)
  {
    v22 = *v21;
    if (*v21 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    v23 = v19 + 89;
    if (v22 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v14 = *v20;
    v25 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v21;
    v26 = ((v25 + v13 + 8) & v16);
    v27 = ((v21 + v13 + 8) & v16);
    v24 = v20;
    *v26 = *v27;
    v26[1] = v27[1];
    v26[2] = v27[2];
    v26[3] = v27[3];
    v28 = (v26 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v29 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = *v29;
    *(v28 + 4) = *(v29 + 4);
    *v28 = v30;
    v31 = v13 + 5;
    v32 = (v13 + 5 + v28) & v78;
    v33 = (v31 + v29) & v78;
    (*(v12 + 32))(v32, v33, v79);
    *(v32 + v17) = *(v33 + v17);
    v34 = (v32 + v17) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = (v33 + v17) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *(v35 + 4);
    *(v34 + 8) = *(v35 + 8);
    *(v34 + 4) = v36;
    v37 = ((v14 + v18) & 0xFFFFFFFFFFFFFFF8);
    v38 = ((v24 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v37 = *v38;
    v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = *v40;
    *(v39 + 8) = *(v40 + 8);
    *v39 = v41;
    v42 = (v37 + 31) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v38 + 31) & 0xFFFFFFFFFFFFFFF8;
    LOBYTE(v39) = *(v43 + 8);
    *v42 = *v43;
    *(v42 + 8) = v39;
    v44 = ((v37 + 47) & 0xFFFFFFFFFFFFFFF8);
    v45 = ((v38 + 47) & 0xFFFFFFFFFFFFFFF8);
    v46 = v45[1];
    *v44 = *v45;
    v44[1] = v46;
    v47 = ((v44 + 39) & 0xFFFFFFFFFFFFFFF8);
    v48 = ((v45 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v47 = *v48;
    v49 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
    v51 = *(v50 + 16);
    *v49 = *v50;
    *(v49 + 16) = v51;
    v53 = *(v50 + 48);
    v52 = *(v50 + 64);
    v54 = *(v50 + 32);
    *(v49 + 80) = *(v50 + 80);
    *(v49 + 48) = v53;
    *(v49 + 64) = v52;
    *(v49 + 32) = v54;
    v55 = (v49 + 95) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v50 + 95) & 0xFFFFFFFFFFFFFFF8;
    v57 = *(v56 + 16);
    *v55 = *v56;
    *(v55 + 16) = v57;
    v59 = *(v56 + 48);
    v58 = *(v56 + 64);
    v60 = *(v56 + 32);
    *(v55 + 80) = *(v56 + 80);
    *(v55 + 48) = v59;
    *(v55 + 64) = v58;
    *(v55 + 32) = v60;
    *(v55 + 88) = *(v56 + 88);
    v61 = (v49 + 191) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v50 + 191) & 0xFFFFFFFFFFFFFFF8;
    v63 = *(v62 + 32);
    v64 = *(v62 + 48);
    v65 = *(v62 + 64);
    *(v61 + 80) = *(v62 + 80);
    *(v61 + 48) = v64;
    *(v61 + 64) = v65;
    *(v61 + 32) = v63;
    v66 = *(v62 + 16);
    *v61 = *v62;
    *(v61 + 16) = v66;
    *(v61 + 88) = *(v62 + 88);
    goto LABEL_8;
  }

  v23 = v19 + 89;
  if (!(*(v12 + 48))((v13 + ((((v21 + v13 + 8) & v16) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  v24 = v20;
  memcpy(v14, v20, v23);
LABEL_8:
  *(v14 + v23 + 7) = *(v24 + v23 + 7);
  v67 = ((v14 + v23 + 22) & 0xFFFFFFFFFFFFFFF8);
  v68 = ((v24 + v23 + 22) & 0xFFFFFFFFFFFFFFF8);
  *v67 = *v68;
  v69 = *(*(a3 + 16) - 8);
  v70 = v69 + 32;
  v71 = *(v69 + 80) & 0xF8;
  v72 = v71 + 15;
  v73 = v67 + v71 + 15;
  v74 = ~v71 & 0xFFFFFFFFFFFFFFF8;
  v75 = v73 & v74;
  v76 = (v68 + v72) & v74;
  (*(v69 + 32))(v73 & v74, v76);
  *((*(v70 + 32) + 7 + v75) & 0xFFFFFFFFFFFFFFF8) = *((*(v70 + 32) + 7 + v76) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ToolbarReader.PrimitiveReader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
      goto LABEL_6;
    }

    outlined destroy of ToolbarStorage?(a1 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948], type metadata accessor for ToolbarStorage?);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  v7 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
  v8 = (a2 + 79) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v7 + 24);
  }

  if (v10 - 1 >= 0)
  {
    goto LABEL_17;
  }

  v11 = *(v8 + 24);
  LODWORD(v12) = -1;
  if (v11 < 0xFFFFFFFF)
  {
    v12 = *(v8 + 24);
  }

  if (v12 - 1 >= 0)
  {
    if (v9)
    {
      outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
    }

    if (*(v7 + 32) != 1)
    {
    }

LABEL_17:
    v13 = *v8;
    v14 = *(v8 + 16);
    v15 = *(v8 + 32);
    *(v7 + 41) = *(v8 + 41);
    *(v7 + 16) = v14;
    *(v7 + 32) = v15;
    *v7 = v13;
    goto LABEL_18;
  }

  if (v9)
  {
    if (v11)
    {
      v107 = *(v8 + 16);
      v108 = *v7;
      v109 = *(v7 + 8);
      v110 = *(v7 + 16);
      *v7 = *v8;
      *(v7 + 16) = v107;
      outlined consume of Text.Storage(v108, v109, v110);
      *(v7 + 24) = *(v8 + 24);
    }

    else
    {
      outlined destroy of Text((a1 + 79) & 0xFFFFFFFFFFFFFFF8);
      v172 = *(v8 + 16);
      *v7 = *v8;
      *(v7 + 16) = v172;
    }
  }

  else
  {
    v111 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v111;
  }

  v173 = (v7 + 32);
  v174 = *(v8 + 32);
  if (*(v7 + 32) != 1)
  {
    if (v174 != 1)
    {
      *v173 = v174;

      goto LABEL_77;
    }

    outlined destroy of Transaction(v7 + 32);
    v174 = *(v8 + 32);
  }

  *v173 = v174;
LABEL_77:
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);

  *(v7 + 56) = *(v8 + 56);
LABEL_18:
  v16 = type metadata accessor for AttributedString();
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(v17 + 80);
  v20 = v8 + (v19 | 7);
  v21 = ((v7 + (v19 | 7) + 57) & ~(v19 | 7));
  v22 = (v20 + 57) & ~(v19 | 7);
  v23 = *(v17 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v17 + 64);
  v25 = (((v19 + 9) & ~v19) + v24) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = ((v19 + 16) & v23) + v25 + 16;
  v27 = (((((((((v26 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8) + 89;
  v28 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v184 = v22;
  v182 = v17;
  v183 = v16;
  v180 = v23;
  v181 = ~v19;
  if ((v18 & 0x80000000) != 0)
  {
    __na = (((((((((v26 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8) + 89;
    v177 = v21;
    v176 = ((v19 + 16) & v23) + v25 + 16;
    v43 = *(v17 + 48);
    v44 = v16;
    v45 = *(v17 + 80) & 0xFCLL ^ 0xFFFFFFFFFFFFFFFCLL;
    v46 = v43((v19 + 5 + ((((v28 + v19 + 8) & v23) + 7) & 0xFFFFFFFFFFFFFFFCLL)) & ~v19, v18, v16);
    v47 = v43;
    v175 = v46;
    v29 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    v27 = __na;
    v48 = v44;
    v26 = v176;
    v31 = v47((v19 + 5 + ((((v29 + v19 + 8) & v45) + 7) & 0xFFFFFFFFFFFFFFFCLL)) & ~v19, v18, v48);
    v21 = v177;
    if (!v175)
    {
      goto LABEL_22;
    }

LABEL_35:
    if (!v31)
    {
      *v21 = *v184;
      *v28 = *v29;
      v49 = ((v28 + v19 + 8) & v180);
      v50 = v29 + v19 + 8;
      v36 = v184;
      v51 = (v50 & v180);
      v52 = (v51 + 7);
      *v49 = *v51;
      v49[1] = v51[1];
      v49[2] = v51[2];
      v49[3] = v51[3];
      v53 = (v49 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v54 = v52 & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v52) = *(v52 & 0xFFFFFFFFFFFFFFFCLL);
      *(v53 + 4) = *(v54 + 4);
      *v53 = v52;
      v55 = (v19 + 5 + v53) & v181;
      v56 = (v19 + 5 + v54) & v181;
      (*(v182 + 32))(v55, v56, v183);
      *(v55 + v24) = *(v56 + v24);
      v57 = (v55 + v24) & 0xFFFFFFFFFFFFFFFCLL;
      v58 = (v56 + v24) & 0xFFFFFFFFFFFFFFFCLL;
      v59 = *(v58 + 4);
      *(v57 + 8) = *(v58 + 8);
      *(v57 + 4) = v59;
      v60 = ((v21 + v26) & 0xFFFFFFFFFFFFFFF8);
      v61 = ((v184 + v26) & 0xFFFFFFFFFFFFFFF8);
      *v60 = *v61;
      v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
      v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
      v64 = *v63;
      *(v62 + 8) = *(v63 + 8);
      *v62 = v64;
      v65 = (v60 + 31) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v61 + 31) & 0xFFFFFFFFFFFFFFF8;
      LOBYTE(v62) = *(v66 + 8);
      *v65 = *v66;
      *(v65 + 8) = v62;
      v67 = ((v60 + 47) & 0xFFFFFFFFFFFFFFF8);
      v68 = ((v61 + 47) & 0xFFFFFFFFFFFFFFF8);
      v69 = v68[1];
      *v67 = *v68;
      v67[1] = v69;
      v70 = ((v67 + 39) & 0xFFFFFFFFFFFFFFF8);
      v71 = ((v68 + 39) & 0xFFFFFFFFFFFFFFF8);
      *v70 = *v71;
      v72 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
      v74 = *(v73 + 16);
      *v72 = *v73;
      *(v72 + 16) = v74;
      v76 = *(v73 + 48);
      v75 = *(v73 + 64);
      v77 = *(v73 + 32);
      *(v72 + 80) = *(v73 + 80);
      *(v72 + 48) = v76;
      *(v72 + 64) = v75;
      *(v72 + 32) = v77;
      v78 = (v72 + 95) & 0xFFFFFFFFFFFFFFF8;
      v79 = (v73 + 95) & 0xFFFFFFFFFFFFFFF8;
      v80 = *(v79 + 16);
      *v78 = *v79;
      *(v78 + 16) = v80;
      v82 = *(v79 + 48);
      v81 = *(v79 + 64);
      v83 = *(v79 + 32);
      *(v78 + 80) = *(v79 + 80);
      *(v78 + 48) = v82;
      *(v78 + 64) = v81;
      *(v78 + 32) = v83;
      *(v78 + 88) = *(v79 + 88);
      v84 = (v72 + 191) & 0xFFFFFFFFFFFFFFF8;
      v85 = (v73 + 191) & 0xFFFFFFFFFFFFFFF8;
      v86 = *(v85 + 32);
      v87 = *(v85 + 48);
      v88 = *(v85 + 64);
      *(v84 + 80) = *(v85 + 80);
      *(v84 + 48) = v87;
      *(v84 + 64) = v88;
      *(v84 + 32) = v86;
      v89 = *(v85 + 16);
      *v84 = *v85;
      *(v84 + 16) = v89;
      *(v84 + 88) = *(v85 + 88);
      goto LABEL_70;
    }

    v41 = v21;
    v36 = v184;
    v42 = v184;
    goto LABEL_37;
  }

  v29 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = *v29;
  if (*v29 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v30) = -1;
  }

  v31 = v30 + 1;
  if (*v28 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_35;
  }

LABEL_22:
  __n = v27;
  if (v31)
  {

    (*(v182 + 8))((v19 + ((((v28 + v19 + 8) & v180) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v181, v183);
    v32 = (v21 + v26) & 0xFFFFFFFFFFFFFFF8;

    v33 = *(((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v33 <= 1)
    {
      outlined consume of PlatformItemCollection.Storage(*((v32 + 15) & 0xFFFFFFFFFFFFFFF8), v33 & 1);
    }

    v34 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
    v35 = *(v34 + 8);
    v36 = v184;
    if (v35 <= 1)
    {
      outlined consume of PlatformItemCollection.Storage(*v34, v35 & 1);
    }

    v37 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
    outlined consume of Text.Storage(*v37, *(v37 + 8), *(v37 + 16));

    v38 = (((v37 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    if (*v38 >= 0xFFFFFFFFuLL)
    {
    }

    v39 = (v38 + 95) & 0xFFFFFFFFFFFFFFF8;
    if (*v39 >= 0xFFFFFFFFuLL)
    {
    }

    v40 = (v38 + 191) & 0xFFFFFFFFFFFFFFF8;
    if (*v40 >= 0xFFFFFFFFuLL)
    {
    }

    v41 = v21;
    v42 = v184;
    v27 = __n;
LABEL_37:
    memcpy(v41, v42, v27);
    goto LABEL_70;
  }

  *v21 = *v184;

  *v28 = *v29;

  v90 = ((v28 + v19 + 8) & v180);
  v91 = v29 + v19 + 8;
  v36 = v184;
  v92 = (v91 & v180);
  v93 = (v92 + 7);
  *v90 = *v92;
  v90[1] = v92[1];
  v90[2] = v92[2];
  v90[3] = v92[3];
  v94 = (v90 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v95 = v93 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v93) = *(v93 & 0xFFFFFFFFFFFFFFFCLL);
  *(v94 + 4) = *(v95 + 4);
  *v94 = v93;
  v96 = (v19 + 5 + v94) & v181;
  v97 = (v19 + 5 + v95) & v181;
  (*(v182 + 40))(v96, v97, v183);
  *(v96 + v24) = *(v97 + v24);
  v98 = (v96 + v24) & 0xFFFFFFFFFFFFFFFCLL;
  v99 = (v97 + v24) & 0xFFFFFFFFFFFFFFFCLL;
  *(v98 + 4) = *(v99 + 4);
  *(v98 + 8) = *(v99 + 8);
  v100 = ((v21 + v26) & 0xFFFFFFFFFFFFFFF8);
  v101 = ((v184 + v26) & 0xFFFFFFFFFFFFFFF8);
  *v100 = *v101;

  v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = *(v102 + 8);
  if (v104 <= 1)
  {
    v105 = *(v103 + 8);
    if (v105 <= 1)
    {
      v106 = *v102;
      *v102 = *v103;
      *(v102 + 8) = v105 & 1;
      outlined consume of PlatformItemCollection.Storage(v106, v104 & 1);
      goto LABEL_48;
    }

    outlined consume of PlatformItemCollection.Storage(*v102, v104 & 1);
  }

  v112 = *v103;
  *(v102 + 8) = *(v103 + 8);
  *v102 = v112;
LABEL_48:
  v113 = a3;
  v114 = (v100 + 31) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v101 + 31) & 0xFFFFFFFFFFFFFFF8;
  v116 = *(v114 + 8);
  v117 = v21;
  if (v116 > 1)
  {
    v119 = v113;
  }

  else
  {
    v118 = *(v115 + 8);
    v119 = v113;
    if (v118 <= 1)
    {
      v120 = *v114;
      *v114 = *v115;
      *(v114 + 8) = v118 & 1;
      outlined consume of PlatformItemCollection.Storage(v120, v116 & 1);
      goto LABEL_54;
    }

    outlined consume of PlatformItemCollection.Storage(*v114, v116 & 1);
  }

  v121 = *v115;
  *(v114 + 8) = *(v115 + 8);
  *v114 = v121;
LABEL_54:
  v122 = (v100 + 47) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v101 + 47) & 0xFFFFFFFFFFFFFFF8;
  v124 = *(v123 + 16);
  v125 = *v122;
  v126 = *(v122 + 8);
  v127 = *(v122 + 16);
  *v122 = *v123;
  *(v122 + 16) = v124;
  outlined consume of Text.Storage(v125, v126, v127);
  *(v122 + 24) = *(v123 + 24);

  v128 = ((v122 + 39) & 0xFFFFFFFFFFFFFFF8);
  v129 = ((v123 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v128 = *v129;

  v128[1] = v129[1];

  v130 = (v128 + 23) & 0xFFFFFFFFFFFFFFF8;
  v131 = (v129 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v130 >= 0xFFFFFFFFuLL)
  {
    if (*v131 >= 0xFFFFFFFFuLL)
    {
      v132 = *(v131 + 8);
      *v130 = *v131;
      *(v130 + 8) = v132;
      *(v130 + 16) = *(v131 + 16);
      *(v130 + 24) = *(v131 + 24);
      v133 = *(v130 + 32);
      *(v130 + 32) = *(v131 + 32);

      *(v130 + 40) = *(v131 + 40);

      *(v130 + 48) = *(v131 + 48);
      *(v130 + 56) = *(v131 + 56);

      *(v130 + 64) = *(v131 + 64);
      *(v130 + 68) = *(v131 + 68);
      *(v130 + 72) = *(v131 + 72);
      *(v130 + 76) = *(v131 + 76);
      *(v130 + 80) = *(v131 + 80);

      goto LABEL_59;
    }
  }

  v134 = *(v131 + 16);
  *v130 = *v131;
  *(v130 + 16) = v134;
  v135 = *(v131 + 32);
  v136 = *(v131 + 48);
  v137 = *(v131 + 64);
  *(v130 + 80) = *(v131 + 80);
  *(v130 + 48) = v136;
  *(v130 + 64) = v137;
  *(v130 + 32) = v135;
LABEL_59:
  v138 = (v130 + 95) & 0xFFFFFFFFFFFFFFF8;
  v139 = (v131 + 95) & 0xFFFFFFFFFFFFFFF8;
  if (*v138 < 0xFFFFFFFFuLL)
  {
LABEL_63:
    v142 = *(v139 + 16);
    *v138 = *v139;
    *(v138 + 16) = v142;
    v143 = *(v139 + 32);
    v144 = *(v139 + 48);
    v145 = *(v139 + 64);
    *(v138 + 80) = *(v139 + 80);
    *(v138 + 48) = v144;
    *(v138 + 64) = v145;
    *(v138 + 32) = v143;
    goto LABEL_64;
  }

  if (*v139 < 0xFFFFFFFFuLL)
  {

    goto LABEL_63;
  }

  v140 = *(v139 + 8);
  *v138 = *v139;
  *(v138 + 8) = v140;
  *(v138 + 16) = *(v139 + 16);
  *(v138 + 24) = *(v139 + 24);
  v141 = *(v138 + 32);
  *(v138 + 32) = *(v139 + 32);

  *(v138 + 40) = *(v139 + 40);

  *(v138 + 48) = *(v139 + 48);
  *(v138 + 56) = *(v139 + 56);

  *(v138 + 64) = *(v139 + 64);
  *(v138 + 68) = *(v139 + 68);
  *(v138 + 72) = *(v139 + 72);
  *(v138 + 76) = *(v139 + 76);
  *(v138 + 80) = *(v139 + 80);

LABEL_64:
  *(v138 + 88) = *(v139 + 88);
  v146 = (v130 + 191) & 0xFFFFFFFFFFFFFFF8;
  v147 = (v131 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (*v146 < 0xFFFFFFFFuLL)
  {
    v151 = *(v147 + 16);
    *v146 = *v147;
    *(v146 + 16) = v151;
    v152 = *(v147 + 32);
    v153 = *(v147 + 48);
    v154 = *(v147 + 64);
    *(v146 + 80) = *(v147 + 80);
    *(v146 + 48) = v153;
    *(v146 + 64) = v154;
    *(v146 + 32) = v152;
    v148 = v119;
  }

  else
  {
    v148 = v119;
    if (*v147 < 0xFFFFFFFFuLL)
    {

      v155 = *(v147 + 16);
      *v146 = *v147;
      *(v146 + 16) = v155;
      v156 = *(v147 + 32);
      v157 = *(v147 + 48);
      v158 = *(v147 + 64);
      *(v146 + 80) = *(v147 + 80);
      *(v146 + 48) = v157;
      *(v146 + 64) = v158;
      *(v146 + 32) = v156;
    }

    else
    {
      v149 = *(v147 + 8);
      *v146 = *v147;
      *(v146 + 8) = v149;
      *(v146 + 16) = *(v147 + 16);
      *(v146 + 24) = *(v147 + 24);
      v150 = *(v146 + 32);
      *(v146 + 32) = *(v147 + 32);

      *(v146 + 40) = *(v147 + 40);

      *(v146 + 48) = *(v147 + 48);
      *(v146 + 56) = *(v147 + 56);

      *(v146 + 64) = *(v147 + 64);
      *(v146 + 68) = *(v147 + 68);
      *(v146 + 72) = *(v147 + 72);
      *(v146 + 76) = *(v147 + 76);
      *(v146 + 80) = *(v147 + 80);
    }
  }

  v21 = v117;
  *(v146 + 88) = *(v147 + 88);
  v27 = __n;
  a3 = v148;
LABEL_70:
  v159 = v21 + v27;
  v160 = v36 + v27;
  *(v159 + 7) = *(v160 + 7);

  v161 = ((v159 + 22) & 0xFFFFFFFFFFFFFFF8);
  v162 = ((v160 + 22) & 0xFFFFFFFFFFFFFFF8);
  *v161 = *v162;

  v163 = *(*(a3 + 16) - 8);
  v164 = v163 + 40;
  v165 = *(v163 + 80) & 0xF8;
  v166 = v165 + 15;
  v167 = v161 + v165 + 15;
  v168 = ~v165 & 0xFFFFFFFFFFFFFFF8;
  v169 = v167 & v168;
  v170 = (v162 + v166) & v168;
  (*(v163 + 40))(v167 & v168, v170);
  *((*(v164 + 24) + 7 + v169) & 0xFFFFFFFFFFFFFFF8) = *((*(v164 + 24) + 7 + v170) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarReader.PrimitiveReader(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AttributedString() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = v9 - 1;
  if (v11 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9 - 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = v12 | 7;
  v19 = v12 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v20 = (((((((((((v17 + 16) & v19) + ((((v17 + 9) & ~v17) + v13) & 0xFFFFFFFFFFFFFFFCLL) + 16) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v10 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 15;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v24 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v23 + ((v20 + ((v18 + 129) & ~v18) + 111) & 0xFFFFFFFFFFFFFFF8)) & v22) + 16;
  v25 = v24 & 0xFFFFFFF8;
  if ((v24 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v16 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = *(a1 + v24);
      if (!v29)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v29 = *(a1 + v24);
      if (!v29)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v31 = v29 - 1;
    if (v25)
    {
      v31 = 0;
      v32 = *a1;
    }

    else
    {
      v32 = 0;
    }

    return v16 + (v32 | v31) + 1;
  }

  if (v28)
  {
    v29 = *(a1 + v24);
    if (v29)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if ((v16 & 0x80000000) != 0)
  {
    v34 = (((a1 + 79) & 0xFFFFFFFFFFFFFFF8) + v18 + 57) & ~v18;
    if (v14 >= v15)
    {
      v37 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) != 0)
      {
        v39 = (*(v7 + 48))((v17 + ((((v37 + v17 + 8) & v19) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v17);
      }

      else
      {
        v38 = *v37;
        if (v38 >= 0xFFFFFFFF)
        {
          LODWORD(v38) = -1;
        }

        v39 = v38 + 1;
      }

      if (v39 >= 2)
      {
        return v39 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v35 = v23 + ((v34 + v20 + 111) & 0xFFFFFFFFFFFFFFF8);
      v36 = *(v10 + 48);

      return v36(v35 & v22, v11);
    }
  }

  else
  {
    v33 = *(a1 + 6);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    return (v33 + 1);
  }
}

void storeEnumTagSinglePayload for ToolbarReader.PrimitiveReader(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for AttributedString() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v13 + 80);
  v18 = v12 - 1;
  if (v14 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (v18 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v12 - 1;
  }

  v21 = *(v8 + 80);
  v22 = v15 | 7;
  v23 = v15 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v24 = ((((v15 + 9) & ~v15) + v16) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v25 = (((((((((((v15 + 16) & v23) + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 191) & 0xFFFFFFFFFFFFFFF8;
  v26 = ~(v17 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v17 & 0xF8) + 15;
  v28 = ((*(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v29 = ((v27 + ((v25 + ((v22 + 129) & ~v22) + 111) & 0xFFFFFFFFFFFFFFF8)) & v26) + v28;
  if (v20 >= a3)
  {
    v33 = 0;
    v34 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (v29)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34;
    }

    if (v29)
    {
      v36 = ~v20 + a2;
      bzero(a1, ((v27 + ((v25 + ((v22 + 129) & ~v22) + 111) & 0xFFFFFFFFFFFFFFF8)) & v26) + v28);
      *a1 = v36;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        *(a1 + v29) = v35;
      }

      else
      {
        *(a1 + v29) = v35;
      }
    }

    else if (v33)
    {
      *(a1 + v29) = v35;
    }

    return;
  }

  v30 = a3 - v20;
  if (v29)
  {
    v31 = 2;
  }

  else
  {
    v31 = v30 + 1;
  }

  if (v31 >= 0x10000)
  {
    v32 = 4;
  }

  else
  {
    v32 = 2;
  }

  if (v31 < 0x100)
  {
    v32 = 1;
  }

  if (v31 >= 2)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = a2 - v20;
  if (a2 > v20)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v33 > 1)
  {
    if (v33 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v29) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v33)
  {
    goto LABEL_41;
  }

  *(a1 + v29) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v20 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 10) = 0u;
      *(a1 + 6) = 0u;
      *(a1 + 2) = 0u;
      *(a1 + 14) = 0u;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(a1 + 6) = (a2 - 1);
    }

    return;
  }

  v37 = v25 + 89;
  v38 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
  v39 = ((v38 + v22 + 57) & ~v22);
  if (v18 < v19)
  {
    v40 = ((v27 + ((v39 + v37 + 22) & 0xFFFFFFFFFFFFFFF8)) & v26);
    if (v19 >= a2)
    {
      v44 = *(v13 + 56);

      v44(v40, a2, v14);
    }

    else if (v28)
    {
      v41 = ~v19 + a2;
      v42 = v40;
      bzero(v40, v28);
      *v42 = v41;
    }

    return;
  }

  if (v18 < a2)
  {
    v43 = a2 - v12;
    bzero(((v38 + v22 + 57) & ~v22), v37);
    if (v37 > 3)
    {
LABEL_58:
      *v39 = v43;
      return;
    }

LABEL_75:
    *v39 = v43;
    return;
  }

  v45 = a2 - v12;
  if (a2 >= v12)
  {
    bzero(((v38 + v22 + 57) & ~v22), v37);
    if (v37 <= 3)
    {
      *v39 = v45;
    }

    else
    {
      *v39 = v45;
    }

    return;
  }

  v46 = (a2 + 1);
  v47 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v46 & 0x80000000) != 0)
    {
      *v47 = (a2 - 0x7FFFFFFF);
    }

    else
    {
      *v47 = a2;
    }

    return;
  }

  v48 = v47 + v21 + 8;
  v39 = (v48 & v23);
  v49 = a2 >= v11;
  v43 = a2 - v11;
  if (v49)
  {
    bzero((v48 & v23), v24);
    if (v24 > 3)
    {
      goto LABEL_58;
    }

    goto LABEL_75;
  }

  v50 = *(v9 + 56);

  v50((v21 + ((v39 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v21, v46);
}

uint64_t assignWithCopy for ToolbarReader.ApplyUpdatesToExternalTarget(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  swift_weakCopyAssign();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t initializeWithCopy for ToolbarReader.ApplyUpdatesToExternalTarget(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  a4(a1 + 24, a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 37) = *(a2 + 37);
  return a1;
}

uint64_t assignWithTake for ToolbarReader.ApplyUpdatesToExternalTarget(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_weakTakeAssign();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

void type metadata completion function for ToolbarReader.ToolbarConfiguration()
{
  type metadata accessor for ToolbarStorage.SearchItem?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarReader.ToolbarConfiguration(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v5 + 16) & ~v5);

    return a1;
  }

  v6 = a3;
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v7;
  v8 = a2[3];

  if (v8)
  {
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v8;
    *(a1 + 32) = a2[4];
  }

  else
  {
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = a2[8];
  v10 = a2[12];

  if (!v10)
  {
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 88) = *(a2 + 11);
LABEL_11:
    v14 = a2[13];
    if (v14 != 1)
    {
    }

    *(a1 + 104) = v14;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = a2[15];
    *(a1 + 128) = *(a2 + 128);

    goto LABEL_14;
  }

  if (v10 != 1)
  {
    v11 = a2[9];
    v12 = a2[10];
    v13 = *(a2 + 88);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    *(a1 + 96) = a2[12];

    goto LABEL_11;
  }

  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 113) = *(a2 + 113);
LABEL_14:
  v15 = v6[14];
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18))
  {
    type metadata accessor for ToolbarStorage.SearchItem?(0);
    memcpy(v16, v17, *(*(v20 - 8) + 64));
  }

  else
  {
    v83 = v6;
    v81 = v17[1];
    v82 = v19;
    *v16 = *v17;
    v16[1] = v81;
    _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v22 = *(v21 + 32);
    v23 = v16 + v22;
    v24 = v17 + v22;
    *v23 = *(v17 + v22);
    v23[1] = *(v17 + v22 + 1);
    *(v23 + 1) = *(v17 + v22 + 2);
    v23[8] = *(v17 + v22 + 8);
    *(v23 + 1) = *(v17 + v22 + 4);
    v25 = type metadata accessor for SearchFieldState(0);
    v26 = v25[9];
    v27 = type metadata accessor for AttributedString();
    v84 = v18;
    v28 = *(*(v27 - 8) + 16);

    v28(&v23[v26], &v24[v26], v27);
    v23[v25[10]] = v24[v25[10]];
    v29 = v25[11];
    v30 = &v23[v29];
    v31 = &v24[v29];
    v30[4] = v31[4];
    *v30 = *v31;
    *(v16 + v84[5]) = *(v17 + v84[5]);
    v32 = v84[6];
    v33 = v16 + v32;
    v34 = v17 + v32;
    v35 = *(v17 + v32 + 8);

    if (v35 == 255)
    {
      *v33 = *v34;
      v33[8] = v34[8];
    }

    else
    {
      v36 = *v34;
      v37 = v35 & 1;
      outlined copy of PlatformItemCollection.Storage(*v34, v37);
      *v33 = v36;
      v33[8] = v37;
    }

    v38 = v84[7];
    v39 = v16 + v38;
    v40 = v17 + v38;
    v41 = v40[8];
    if (v41 == 255)
    {
      *v39 = *v40;
      v39[8] = v40[8];
    }

    else
    {
      v42 = *v40;
      v43 = v41 & 1;
      outlined copy of PlatformItemCollection.Storage(*v40, v41 & 1);
      *v39 = v42;
      v39[8] = v43;
    }

    v44 = v84[8];
    v45 = v16 + v44;
    v46 = v17 + v44;
    v47 = *(v17 + v44);
    v48 = *(v17 + v44 + 8);
    v49 = *(v17 + v44 + 16);
    outlined copy of Text.Storage(v47, v48, v49);
    *v45 = v47;
    *(v45 + 1) = v48;
    v45[16] = v49;
    *(v45 + 3) = *(v46 + 3);
    v50 = v84[9];
    v51 = (v16 + v50);
    v52 = (v17 + v50);
    v53 = v52[1];
    *v51 = *v52;
    v51[1] = v53;
    v54 = v84[10];
    v55 = v16 + v54;
    v56 = v17 + v54;
    v57 = *(v17 + v54);

    if (v57)
    {
      v58 = *(v56 + 1);
      *v55 = v57;
      *(v55 + 1) = v58;
      *(v55 + 4) = *(v56 + 4);
      v59 = *(v56 + 4);
      *(v55 + 3) = *(v56 + 3);
      *(v55 + 4) = v59;
      *(v55 + 5) = *(v56 + 5);
      *(v55 + 12) = *(v56 + 12);
      *(v55 + 7) = *(v56 + 7);
      *(v55 + 4) = *(v56 + 4);
      *(v55 + 10) = *(v56 + 10);
      v60 = v59;
    }

    else
    {
      v61 = *(v56 + 3);
      *(v55 + 2) = *(v56 + 2);
      *(v55 + 3) = v61;
      *(v55 + 4) = *(v56 + 4);
      *(v55 + 10) = *(v56 + 10);
      v62 = *(v56 + 1);
      *v55 = *v56;
      *(v55 + 1) = v62;
    }

    v63 = v84[11];
    v64 = v16 + v63;
    v65 = v17 + v63;
    if (*v65)
    {
      v66 = *(v65 + 1);
      *v64 = *v65;
      *(v64 + 1) = v66;
      *(v64 + 4) = *(v65 + 4);
      v67 = *(v65 + 4);
      *(v64 + 3) = *(v65 + 3);
      *(v64 + 4) = v67;
      *(v64 + 5) = *(v65 + 5);
      *(v64 + 12) = *(v65 + 12);
      *(v64 + 7) = *(v65 + 7);
      *(v64 + 4) = *(v65 + 4);
      *(v64 + 10) = *(v65 + 10);
      v68 = v67;
    }

    else
    {
      v69 = *(v65 + 3);
      *(v64 + 2) = *(v65 + 2);
      *(v64 + 3) = v69;
      *(v64 + 4) = *(v65 + 4);
      *(v64 + 10) = *(v65 + 10);
      v70 = *(v65 + 1);
      *v64 = *v65;
      *(v64 + 1) = v70;
    }

    *(v16 + v84[12]) = *(v17 + v84[12]);
    v71 = v84[13];
    v72 = v16 + v71;
    v73 = v17 + v71;
    if (*v73)
    {
      v74 = *(v73 + 1);
      *v72 = *v73;
      *(v72 + 1) = v74;
      *(v72 + 4) = *(v73 + 4);
      v75 = *(v73 + 4);
      *(v72 + 3) = *(v73 + 3);
      *(v72 + 4) = v75;
      *(v72 + 5) = *(v73 + 5);
      *(v72 + 12) = *(v73 + 12);
      *(v72 + 7) = *(v73 + 7);
      *(v72 + 4) = *(v73 + 4);
      *(v72 + 10) = *(v73 + 10);
      v76 = v75;
    }

    else
    {
      v77 = *(v73 + 3);
      *(v72 + 2) = *(v73 + 2);
      *(v72 + 3) = v77;
      *(v72 + 4) = *(v73 + 4);
      *(v72 + 10) = *(v73 + 10);
      v78 = *(v73 + 1);
      *v72 = *v73;
      *(v72 + 1) = v78;
    }

    v6 = v83;
    *(v16 + v84[14]) = *(v17 + v84[14]);
    (*(v82 + 56))(v16, 0, 1, v84);
  }

  v79 = v6[16];
  *(a1 + v6[15]) = *(a2 + v6[15]);
  *(a1 + v79) = *(a2 + v79);

  return a1;
}

uint64_t destroy for ToolbarReader.ToolbarConfiguration(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 24))
  {
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_9;
    }

    outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  if (*(a1 + 104) != 1)
  {
  }

LABEL_9:
  v5 = a1 + *(a2 + 56);
  v6 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {

    _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v8 = *(v7 + 32);
    v9 = v5 + *(type metadata accessor for SearchFieldState(0) + 36);
    v10 = type metadata accessor for AttributedString();
    (*(*(v10 - 8) + 8))(v9 + v8, v10);

    v11 = v5 + v6[6];
    v12 = *(v11 + 8);
    if (v12 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v11, v12 & 1);
    }

    v13 = v5 + v6[7];
    v14 = *(v13 + 8);
    if (v14 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v13, v14 & 1);
    }

    outlined consume of Text.Storage(*(v5 + v6[8]), *(v5 + v6[8] + 8), *(v5 + v6[8] + 16));

    v15 = v5 + v6[10];
    if (*v15)
    {
    }

    v16 = v5 + v6[11];
    if (*v16)
    {
    }

    v17 = v5 + v6[13];
    if (*v17)
    {
    }
  }
}

uint64_t initializeWithCopy for ToolbarReader.ToolbarConfiguration(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);

  if (v7)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v7;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v8 = *(a2 + 96);

  if (v8)
  {
    if (v8 == 1)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 113) = *(a2 + 113);
      goto LABEL_12;
    }

    v9 = *(a2 + 72);
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    outlined copy of Text.Storage(v9, v10, v11);
    *(a1 + 72) = v9;
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  v12 = *(a2 + 104);
  if (v12 != 1)
  {
  }

  *(a1 + 104) = v12;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

LABEL_12:
  v13 = a3[14];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    type metadata accessor for ToolbarStorage.SearchItem?(0);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v81 = a3;
    v79 = v15[1];
    v80 = v17;
    *v14 = *v15;
    v14[1] = v79;
    _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v20 = *(v19 + 32);
    v21 = v14 + v20;
    v22 = v15 + v20;
    *v21 = *(v15 + v20);
    v21[1] = *(v15 + v20 + 1);
    *(v21 + 1) = *(v15 + v20 + 2);
    v21[8] = *(v15 + v20 + 8);
    *(v21 + 1) = *(v15 + v20 + 4);
    v23 = type metadata accessor for SearchFieldState(0);
    v24 = v23[9];
    v25 = type metadata accessor for AttributedString();
    v82 = v16;
    v26 = *(*(v25 - 8) + 16);

    v26(&v21[v24], &v22[v24], v25);
    v21[v23[10]] = v22[v23[10]];
    v27 = v23[11];
    v28 = &v21[v27];
    v29 = &v22[v27];
    v28[4] = v29[4];
    *v28 = *v29;
    *(v14 + v82[5]) = *(v15 + v82[5]);
    v30 = v82[6];
    v31 = v14 + v30;
    v32 = v15 + v30;
    v33 = *(v15 + v30 + 8);

    if (v33 == 255)
    {
      *v31 = *v32;
      v31[8] = v32[8];
    }

    else
    {
      v34 = *v32;
      v35 = v33 & 1;
      outlined copy of PlatformItemCollection.Storage(*v32, v35);
      *v31 = v34;
      v31[8] = v35;
    }

    v36 = v82[7];
    v37 = v14 + v36;
    v38 = v15 + v36;
    v39 = v38[8];
    if (v39 == 255)
    {
      *v37 = *v38;
      v37[8] = v38[8];
    }

    else
    {
      v40 = *v38;
      v41 = v39 & 1;
      outlined copy of PlatformItemCollection.Storage(*v38, v39 & 1);
      *v37 = v40;
      v37[8] = v41;
    }

    v42 = v82[8];
    v43 = v14 + v42;
    v44 = v15 + v42;
    v45 = *(v15 + v42);
    v46 = *(v15 + v42 + 8);
    v47 = *(v15 + v42 + 16);
    outlined copy of Text.Storage(v45, v46, v47);
    *v43 = v45;
    *(v43 + 1) = v46;
    v43[16] = v47;
    *(v43 + 3) = *(v44 + 3);
    v48 = v82[9];
    v49 = (v14 + v48);
    v50 = (v15 + v48);
    v51 = v50[1];
    *v49 = *v50;
    v49[1] = v51;
    v52 = v82[10];
    v53 = v14 + v52;
    v54 = v15 + v52;
    v55 = *(v15 + v52);

    if (v55)
    {
      v56 = *(v54 + 1);
      *v53 = v55;
      *(v53 + 1) = v56;
      *(v53 + 4) = *(v54 + 4);
      v57 = *(v54 + 4);
      *(v53 + 3) = *(v54 + 3);
      *(v53 + 4) = v57;
      *(v53 + 5) = *(v54 + 5);
      *(v53 + 12) = *(v54 + 12);
      *(v53 + 7) = *(v54 + 7);
      *(v53 + 4) = *(v54 + 4);
      *(v53 + 10) = *(v54 + 10);
      v58 = v57;
    }

    else
    {
      v59 = *(v54 + 3);
      *(v53 + 2) = *(v54 + 2);
      *(v53 + 3) = v59;
      *(v53 + 4) = *(v54 + 4);
      *(v53 + 10) = *(v54 + 10);
      v60 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v60;
    }

    v61 = v82[11];
    v62 = v14 + v61;
    v63 = v15 + v61;
    if (*v63)
    {
      v64 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v64;
      *(v62 + 4) = *(v63 + 4);
      v65 = *(v63 + 4);
      *(v62 + 3) = *(v63 + 3);
      *(v62 + 4) = v65;
      *(v62 + 5) = *(v63 + 5);
      *(v62 + 12) = *(v63 + 12);
      *(v62 + 7) = *(v63 + 7);
      *(v62 + 4) = *(v63 + 4);
      *(v62 + 10) = *(v63 + 10);
      v66 = v65;
    }

    else
    {
      v67 = *(v63 + 3);
      *(v62 + 2) = *(v63 + 2);
      *(v62 + 3) = v67;
      *(v62 + 4) = *(v63 + 4);
      *(v62 + 10) = *(v63 + 10);
      v68 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v68;
    }

    *(v14 + v82[12]) = *(v15 + v82[12]);
    v69 = v82[13];
    v70 = v14 + v69;
    v71 = v15 + v69;
    if (*v71)
    {
      v72 = *(v71 + 1);
      *v70 = *v71;
      *(v70 + 1) = v72;
      *(v70 + 4) = *(v71 + 4);
      v73 = *(v71 + 4);
      *(v70 + 3) = *(v71 + 3);
      *(v70 + 4) = v73;
      *(v70 + 5) = *(v71 + 5);
      *(v70 + 12) = *(v71 + 12);
      *(v70 + 7) = *(v71 + 7);
      *(v70 + 4) = *(v71 + 4);
      *(v70 + 10) = *(v71 + 10);
      v74 = v73;
    }

    else
    {
      v75 = *(v71 + 3);
      *(v70 + 2) = *(v71 + 2);
      *(v70 + 3) = v75;
      *(v70 + 4) = *(v71 + 4);
      *(v70 + 10) = *(v71 + 10);
      v76 = *(v71 + 1);
      *v70 = *v71;
      *(v70 + 1) = v76;
    }

    a3 = v81;
    *(v14 + v82[14]) = *(v15 + v82[14]);
    (*(v80 + 56))(v14, 0, 1, v82);
  }

  v77 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v77) = *(a2 + v77);

  return a1;
}

uint64_t assignWithCopy for ToolbarReader.ToolbarConfiguration(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v6)
    {
      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      outlined destroy of ToolbarStorage?(a1 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948], type metadata accessor for ToolbarStorage?);
      v7 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v7;
    }
  }

  else if (v6)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v8 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v8;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  v9 = *(a1 + 96);
  v10 = *(a2 + 96);
  if (v9 != 1)
  {
    if (v10 == 1)
    {
      outlined destroy of NavigationTitleStorage(a1 + 72);
      v14 = *(a2 + 88);
      v15 = *(a2 + 104);
      v16 = *(a2 + 113);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 113) = v16;
      *(a1 + 104) = v15;
      *(a1 + 88) = v14;
      goto LABEL_35;
    }

    if (v9)
    {
      if (v10)
      {
        v17 = *(a2 + 72);
        v18 = *(a2 + 80);
        v19 = *(a2 + 88);
        outlined copy of Text.Storage(v17, v18, v19);
        v20 = *(a1 + 72);
        v21 = *(a1 + 80);
        v22 = *(a1 + 88);
        *(a1 + 72) = v17;
        *(a1 + 80) = v18;
        *(a1 + 88) = v19;
        outlined consume of Text.Storage(v20, v21, v22);
        *(a1 + 96) = *(a2 + 96);
      }

      else
      {
        outlined destroy of Text(a1 + 72);
        v31 = *(a2 + 88);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = v31;
      }
    }

    else if (v10)
    {
      v28 = *(a2 + 72);
      v29 = *(a2 + 80);
      v30 = *(a2 + 88);
      outlined copy of Text.Storage(v28, v29, v30);
      *(a1 + 72) = v28;
      *(a1 + 80) = v29;
      *(a1 + 88) = v30;
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v32 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v32;
    }

    v33 = (a1 + 104);
    v34 = *(a2 + 104);
    if (*(a1 + 104) == 1)
    {
      if (v34 != 1)
      {
        *v33 = v34;

        goto LABEL_34;
      }

      v35 = 1;
    }

    else
    {
      if (v34 != 1)
      {
        *v33 = v34;

        goto LABEL_34;
      }

      outlined destroy of Transaction(a1 + 104);
      v35 = *(a2 + 104);
    }

    *v33 = v35;
LABEL_34:
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);

    *(a1 + 128) = *(a2 + 128);
    goto LABEL_35;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = *(a2 + 72);
      v12 = *(a2 + 88);
      v13 = *(a2 + 104);
      *(a1 + 113) = *(a2 + 113);
      *(a1 + 104) = v13;
      *(a1 + 88) = v12;
      *(a1 + 72) = v11;
      goto LABEL_35;
    }

    v24 = *(a2 + 72);
    v25 = *(a2 + 80);
    v26 = *(a2 + 88);
    outlined copy of Text.Storage(v24, v25, v26);
    *(a1 + 72) = v24;
    *(a1 + 80) = v25;
    *(a1 + 88) = v26;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v23 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v23;
  }

  v27 = *(a2 + 104);
  if (v27 != 1)
  {
  }

  *(a1 + 104) = v27;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

LABEL_35:
  v36 = a3[14];
  v37 = (a1 + v36);
  v38 = (a2 + v36);
  v39 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v40 = *(v39 - 1);
  v41 = *(v40 + 48);
  v42 = v41(v37, 1, v39);
  v43 = v41(v38, 1, v39);
  if (v42)
  {
    if (!v43)
    {
      v230 = a3;
      *v37 = *v38;
      v227 = v40;
      v37[1] = v38[1];
      _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
      v45 = *(v44 + 32);
      v46 = v37 + v45;
      v228 = v37;
      v47 = v38 + v45;
      *v46 = *(v38 + v45);
      v46[1] = *(v38 + v45 + 1);
      v46[2] = *(v38 + v45 + 2);
      v46[3] = *(v38 + v45 + 3);
      LODWORD(v45) = *(v38 + v45 + 4);
      v46[8] = v47[8];
      *(v46 + 1) = v45;
      v48 = type metadata accessor for SearchFieldState(0);
      v49 = v38;
      v50 = v48[9];
      v229 = v39;
      v51 = type metadata accessor for AttributedString();
      v52 = *(*(v51 - 8) + 16);

      v53 = &v46[v50];
      v54 = &v47[v50];
      v55 = v49;
      v52(v53, v54, v51);
      v46[v48[10]] = v47[v48[10]];
      v56 = v48[11];
      v57 = &v46[v56];
      v58 = &v47[v56];
      v59 = v58[4];
      *v57 = *v58;
      v57[4] = v59;
      *(v228 + v229[5]) = *(v49 + v229[5]);
      v60 = v229[6];
      v61 = v228 + v60;
      v62 = v49 + v60;
      v63 = *(v49 + v60 + 8);

      if (v63 == 255)
      {
        v86 = *v62;
        v61[8] = v62[8];
        *v61 = v86;
      }

      else
      {
        v64 = *v62;
        v65 = v63 & 1;
        outlined copy of PlatformItemCollection.Storage(*v62, v65);
        *v61 = v64;
        v61[8] = v65;
      }

      v87 = v229[7];
      v88 = v228 + v87;
      v89 = v55 + v87;
      v90 = *(v89 + 8);
      if (v90 == 255)
      {
        v93 = *v89;
        v88[8] = *(v89 + 8);
        *v88 = v93;
      }

      else
      {
        v91 = *v89;
        v92 = v90 & 1;
        outlined copy of PlatformItemCollection.Storage(*v89, v90 & 1);
        *v88 = v91;
        v88[8] = v92;
      }

      v94 = v229[8];
      v95 = v228 + v94;
      v96 = v55 + v94;
      v97 = *(v55 + v94);
      v98 = *(v55 + v94 + 8);
      v99 = *(v55 + v94 + 16);
      outlined copy of Text.Storage(v97, v98, v99);
      *v95 = v97;
      *(v95 + 1) = v98;
      v95[16] = v99;
      *(v95 + 3) = *(v96 + 24);
      v100 = v229[9];
      v101 = (v228 + v100);
      v102 = (v55 + v100);
      *v101 = *v102;
      v101[1] = v102[1];
      v103 = v229[10];
      v104 = v228 + v103;
      v105 = v55 + v103;
      v106 = *(v55 + v103);

      if (v106)
      {
        v107 = *(v105 + 8);
        *v104 = v106;
        *(v104 + 1) = v107;
        *(v104 + 4) = *(v105 + 16);
        *(v104 + 3) = *(v105 + 24);
        v108 = *(v105 + 32);
        *(v104 + 4) = v108;
        *(v104 + 5) = *(v105 + 40);
        *(v104 + 12) = *(v105 + 48);
        *(v104 + 7) = *(v105 + 56);
        *(v104 + 16) = *(v105 + 64);
        *(v104 + 17) = *(v105 + 68);
        *(v104 + 18) = *(v105 + 72);
        *(v104 + 19) = *(v105 + 76);
        *(v104 + 10) = *(v105 + 80);
        v109 = v108;
      }

      else
      {
        v110 = *(v105 + 16);
        *v104 = *v105;
        *(v104 + 1) = v110;
        v111 = *(v105 + 32);
        v112 = *(v105 + 48);
        v113 = *(v105 + 64);
        *(v104 + 10) = *(v105 + 80);
        *(v104 + 3) = v112;
        *(v104 + 4) = v113;
        *(v104 + 2) = v111;
      }

      v114 = v229[11];
      v115 = v228 + v114;
      v116 = v55 + v114;
      if (*v116)
      {
        v117 = *(v116 + 8);
        *v115 = *v116;
        *(v115 + 1) = v117;
        *(v115 + 4) = *(v116 + 16);
        *(v115 + 3) = *(v116 + 24);
        v118 = *(v116 + 32);
        *(v115 + 4) = v118;
        *(v115 + 5) = *(v116 + 40);
        *(v115 + 12) = *(v116 + 48);
        *(v115 + 7) = *(v116 + 56);
        *(v115 + 16) = *(v116 + 64);
        *(v115 + 17) = *(v116 + 68);
        *(v115 + 18) = *(v116 + 72);
        *(v115 + 19) = *(v116 + 76);
        *(v115 + 10) = *(v116 + 80);
        v119 = v118;
      }

      else
      {
        v120 = *(v116 + 16);
        *v115 = *v116;
        *(v115 + 1) = v120;
        v121 = *(v116 + 32);
        v122 = *(v116 + 48);
        v123 = *(v116 + 64);
        *(v115 + 10) = *(v116 + 80);
        *(v115 + 3) = v122;
        *(v115 + 4) = v123;
        *(v115 + 2) = v121;
      }

      *(v228 + v229[12]) = *(v55 + v229[12]);
      v124 = v229[13];
      v125 = v228 + v124;
      v126 = v55 + v124;
      if (*v126)
      {
        v127 = *(v126 + 8);
        *v125 = *v126;
        *(v125 + 1) = v127;
        *(v125 + 4) = *(v126 + 16);
        *(v125 + 3) = *(v126 + 24);
        v128 = *(v126 + 32);
        *(v125 + 4) = v128;
        *(v125 + 5) = *(v126 + 40);
        *(v125 + 12) = *(v126 + 48);
        *(v125 + 7) = *(v126 + 56);
        *(v125 + 16) = *(v126 + 64);
        *(v125 + 17) = *(v126 + 68);
        *(v125 + 18) = *(v126 + 72);
        *(v125 + 19) = *(v126 + 76);
        *(v125 + 10) = *(v126 + 80);
        v129 = v128;
      }

      else
      {
        v130 = *(v126 + 16);
        *v125 = *v126;
        *(v125 + 1) = v130;
        v131 = *(v126 + 32);
        v132 = *(v126 + 48);
        v133 = *(v126 + 64);
        *(v125 + 10) = *(v126 + 80);
        *(v125 + 3) = v132;
        *(v125 + 4) = v133;
        *(v125 + 2) = v131;
      }

      a3 = v230;
      *(v228 + v229[14]) = *(v55 + v229[14]);
      (*(v227 + 56))(v228, 0, 1, v229);
      goto LABEL_92;
    }

LABEL_41:
    type metadata accessor for ToolbarStorage.SearchItem?(0);
    memcpy(v37, v38, *(*(v66 - 8) + 64));
    goto LABEL_92;
  }

  if (v43)
  {
    outlined destroy of ToolbarStorage.GroupItem(v37, type metadata accessor for ToolbarStorage.SearchItem);
    goto LABEL_41;
  }

  v231 = a3;
  *v37 = *v38;

  v37[1] = v38[1];

  _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v68 = *(v67 + 32);
  v69 = v37 + v68;
  v70 = v38 + v68;
  *v69 = *(v38 + v68);
  v69[1] = *(v38 + v68 + 1);
  v69[2] = *(v38 + v68 + 2);
  v69[3] = *(v38 + v68 + 3);
  LODWORD(v68) = *(v38 + v68 + 4);
  v69[8] = v70[8];
  *(v69 + 1) = v68;
  v71 = type metadata accessor for SearchFieldState(0);
  v72 = v71[9];
  v73 = type metadata accessor for AttributedString();
  (*(*(v73 - 8) + 24))(&v69[v72], &v70[v72], v73);
  v69[v71[10]] = v70[v71[10]];
  v74 = v71[11];
  v75 = &v69[v74];
  v76 = &v70[v74];
  *v75 = *v76;
  v75[4] = v76[4];
  *(v37 + v39[5]) = *(v38 + v39[5]);

  v77 = v39[6];
  v78 = v37 + v77;
  v79 = v38 + v77;
  v80 = *(v37 + v77 + 8);
  v81 = *(v38 + v77 + 8);
  if (v80 == 255)
  {
    if (v81 == 255)
    {
      v137 = *v79;
      *(v78 + 8) = v79[8];
      *v78 = v137;
    }

    else
    {
      v134 = *v79;
      v135 = v81 & 1;
      outlined copy of PlatformItemCollection.Storage(*v79, v81 & 1);
      *v78 = v134;
      *(v78 + 8) = v135;
    }
  }

  else if (v81 == 255)
  {
    outlined destroy of PlatformItemCollection(v78);
    v136 = v79[8];
    *v78 = *v79;
    *(v78 + 8) = v136;
  }

  else
  {
    v82 = *v79;
    v83 = v81 & 1;
    outlined copy of PlatformItemCollection.Storage(*v79, v81 & 1);
    v84 = *v78;
    v85 = *(v78 + 8);
    *v78 = v82;
    *(v78 + 8) = v83;
    outlined consume of PlatformItemCollection.Storage(v84, v85);
  }

  v138 = v39[7];
  v139 = v37 + v138;
  v140 = v38 + v138;
  v141 = *(v37 + v138 + 8);
  v142 = *(v38 + v138 + 8);
  if (v141 == 255)
  {
    if (v142 == 255)
    {
      v150 = *v140;
      *(v139 + 8) = v140[8];
      *v139 = v150;
    }

    else
    {
      v147 = *v140;
      v148 = v142 & 1;
      outlined copy of PlatformItemCollection.Storage(*v140, v142 & 1);
      *v139 = v147;
      *(v139 + 8) = v148;
    }
  }

  else if (v142 == 255)
  {
    outlined destroy of PlatformItemCollection(v139);
    v149 = v140[8];
    *v139 = *v140;
    *(v139 + 8) = v149;
  }

  else
  {
    v143 = *v140;
    v144 = v142 & 1;
    outlined copy of PlatformItemCollection.Storage(*v140, v142 & 1);
    v145 = *v139;
    v146 = *(v139 + 8);
    *v139 = v143;
    *(v139 + 8) = v144;
    outlined consume of PlatformItemCollection.Storage(v145, v146);
  }

  v151 = v39[8];
  v152 = v37 + v151;
  v153 = v39;
  v154 = v38 + v151;
  v155 = *(v38 + v151);
  v156 = *(v38 + v151 + 8);
  v157 = *(v38 + v151 + 16);
  outlined copy of Text.Storage(v155, v156, v157);
  v158 = *v152;
  v159 = *(v152 + 1);
  v160 = v152[16];
  *v152 = v155;
  *(v152 + 1) = v156;
  v152[16] = v157;
  outlined consume of Text.Storage(v158, v159, v160);
  v161 = *(v154 + 3);
  v162 = v153;
  *(v152 + 3) = v161;

  v163 = v153[9];
  v164 = v37 + v163;
  v165 = v38 + v163;
  *(v37 + v163) = *(v38 + v163);

  *(v164 + 1) = *(v165 + 1);

  v166 = v153[10];
  v167 = v37 + v166;
  v168 = v38 + v166;
  v169 = *(v37 + v166);
  v170 = *(v38 + v166);
  if (v169)
  {
    if (v170)
    {
      v171 = *(v168 + 1);
      *v167 = v170;
      *(v167 + 8) = v171;
      *(v167 + 16) = *(v168 + 4);
      *(v167 + 24) = *(v168 + 3);
      v172 = *(v168 + 4);
      v173 = *(v167 + 32);
      *(v167 + 32) = v172;
      v174 = v172;

      *(v167 + 40) = *(v168 + 5);

      *(v167 + 48) = *(v168 + 12);
      *(v167 + 56) = *(v168 + 7);

      *(v167 + 64) = *(v168 + 16);
      *(v167 + 68) = *(v168 + 17);
      *(v167 + 72) = *(v168 + 18);
      *(v167 + 76) = *(v168 + 19);
      *(v167 + 80) = *(v168 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v167);
      v178 = *(v168 + 1);
      *v167 = *v168;
      *(v167 + 16) = v178;
      v180 = *(v168 + 3);
      v179 = *(v168 + 4);
      v181 = *(v168 + 2);
      *(v167 + 80) = *(v168 + 10);
      *(v167 + 48) = v180;
      *(v167 + 64) = v179;
      *(v167 + 32) = v181;
    }
  }

  else if (v170)
  {
    v175 = *(v168 + 1);
    *v167 = v170;
    *(v167 + 8) = v175;
    *(v167 + 16) = *(v168 + 4);
    *(v167 + 24) = *(v168 + 3);
    v176 = *(v168 + 4);
    *(v167 + 32) = v176;
    *(v167 + 40) = *(v168 + 5);
    *(v167 + 48) = *(v168 + 12);
    *(v167 + 56) = *(v168 + 7);
    *(v167 + 64) = *(v168 + 16);
    *(v167 + 68) = *(v168 + 17);
    *(v167 + 72) = *(v168 + 18);
    *(v167 + 76) = *(v168 + 19);
    *(v167 + 80) = *(v168 + 10);
    v177 = v176;

    v162 = v153;
  }

  else
  {
    v182 = *(v168 + 1);
    *v167 = *v168;
    *(v167 + 16) = v182;
    v183 = *(v168 + 2);
    v184 = *(v168 + 3);
    v185 = *(v168 + 4);
    *(v167 + 80) = *(v168 + 10);
    *(v167 + 48) = v184;
    *(v167 + 64) = v185;
    *(v167 + 32) = v183;
  }

  a3 = v231;
  v186 = v162[11];
  v187 = v37 + v186;
  v188 = v38 + v186;
  v189 = *(v37 + v186);
  v190 = *(v38 + v186);
  if (v189)
  {
    if (v190)
    {
      v191 = *(v188 + 1);
      *v187 = v190;
      *(v187 + 8) = v191;
      *(v187 + 16) = *(v188 + 4);
      *(v187 + 24) = *(v188 + 3);
      v192 = *(v188 + 4);
      v193 = *(v187 + 32);
      *(v187 + 32) = v192;
      v194 = v192;

      *(v187 + 40) = *(v188 + 5);

      *(v187 + 48) = *(v188 + 12);
      *(v187 + 56) = *(v188 + 7);

      *(v187 + 64) = *(v188 + 16);
      *(v187 + 68) = *(v188 + 17);
      *(v187 + 72) = *(v188 + 18);
      *(v187 + 76) = *(v188 + 19);
      *(v187 + 80) = *(v188 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v187);
      v198 = *(v188 + 1);
      *v187 = *v188;
      *(v187 + 16) = v198;
      v200 = *(v188 + 3);
      v199 = *(v188 + 4);
      v201 = *(v188 + 2);
      *(v187 + 80) = *(v188 + 10);
      *(v187 + 48) = v200;
      *(v187 + 64) = v199;
      *(v187 + 32) = v201;
    }
  }

  else if (v190)
  {
    v195 = *(v188 + 1);
    *v187 = v190;
    *(v187 + 8) = v195;
    *(v187 + 16) = *(v188 + 4);
    *(v187 + 24) = *(v188 + 3);
    v196 = *(v188 + 4);
    *(v187 + 32) = v196;
    *(v187 + 40) = *(v188 + 5);
    *(v187 + 48) = *(v188 + 12);
    *(v187 + 56) = *(v188 + 7);
    *(v187 + 64) = *(v188 + 16);
    *(v187 + 68) = *(v188 + 17);
    *(v187 + 72) = *(v188 + 18);
    *(v187 + 76) = *(v188 + 19);
    *(v187 + 80) = *(v188 + 10);
    v197 = v196;

    a3 = v231;

    v162 = v153;
  }

  else
  {
    v202 = *(v188 + 1);
    *v187 = *v188;
    *(v187 + 16) = v202;
    v203 = *(v188 + 2);
    v204 = *(v188 + 3);
    v205 = *(v188 + 4);
    *(v187 + 80) = *(v188 + 10);
    *(v187 + 48) = v204;
    *(v187 + 64) = v205;
    *(v187 + 32) = v203;
  }

  *(v37 + v162[12]) = *(v38 + v162[12]);
  v206 = v162[13];
  v207 = v37 + v206;
  v208 = v38 + v206;
  v209 = *(v37 + v206);
  v210 = *(v38 + v206);
  if (v209)
  {
    if (v210)
    {
      v211 = *(v208 + 1);
      *v207 = v210;
      *(v207 + 8) = v211;
      *(v207 + 16) = *(v208 + 4);
      *(v207 + 24) = *(v208 + 3);
      v212 = *(v208 + 4);
      v213 = *(v207 + 32);
      *(v207 + 32) = v212;
      v214 = v212;

      *(v207 + 40) = *(v208 + 5);

      *(v207 + 48) = *(v208 + 12);
      *(v207 + 56) = *(v208 + 7);

      *(v207 + 64) = *(v208 + 16);
      *(v207 + 68) = *(v208 + 17);
      *(v207 + 72) = *(v208 + 18);
      *(v207 + 76) = *(v208 + 19);
      *(v207 + 80) = *(v208 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v207);
      v218 = *(v208 + 1);
      *v207 = *v208;
      *(v207 + 16) = v218;
      v220 = *(v208 + 3);
      v219 = *(v208 + 4);
      v221 = *(v208 + 2);
      *(v207 + 80) = *(v208 + 10);
      *(v207 + 48) = v220;
      *(v207 + 64) = v219;
      *(v207 + 32) = v221;
    }
  }

  else if (v210)
  {
    v215 = *(v208 + 1);
    *v207 = v210;
    *(v207 + 8) = v215;
    *(v207 + 16) = *(v208 + 4);
    *(v207 + 24) = *(v208 + 3);
    v216 = *(v208 + 4);
    *(v207 + 32) = v216;
    *(v207 + 40) = *(v208 + 5);
    *(v207 + 48) = *(v208 + 12);
    *(v207 + 56) = *(v208 + 7);
    *(v207 + 64) = *(v208 + 16);
    *(v207 + 68) = *(v208 + 17);
    *(v207 + 72) = *(v208 + 18);
    *(v207 + 76) = *(v208 + 19);
    *(v207 + 80) = *(v208 + 10);
    v217 = v216;

    a3 = v231;

    v162 = v153;
  }

  else
  {
    v222 = *(v208 + 1);
    *v207 = *v208;
    *(v207 + 16) = v222;
    v223 = *(v208 + 2);
    v224 = *(v208 + 3);
    v225 = *(v208 + 4);
    *(v207 + 80) = *(v208 + 10);
    *(v207 + 48) = v224;
    *(v207 + 64) = v225;
    *(v207 + 32) = v223;
  }

  *(v37 + v162[14]) = *(v38 + v162[14]);
LABEL_92:
  *(a1 + a3[15]) = *(a2 + a3[15]);

  *(a1 + a3[16]) = *(a2 + a3[16]);

  return a1;
}

uint64_t initializeWithTake for ToolbarReader.ToolbarConfiguration(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v8 = a3[14];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *(a1 + 113) = *(a2 + 113);
  v11 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v12 = *(v11 - 1);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for ToolbarStorage.SearchItem?(0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = v10[1];
    *v9 = *v10;
    v9[1] = v14;
    _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v16 = *(v15 + 32);
    v17 = v9 + v16;
    v18 = v10 + v16;
    *v17 = *(v10 + v16);
    v17[1] = *(v10 + v16 + 1);
    *(v17 + 1) = *(v10 + v16 + 2);
    v17[8] = *(v10 + v16 + 8);
    *(v17 + 1) = *(v10 + v16 + 4);
    v52 = v12;
    v19 = type metadata accessor for SearchFieldState(0);
    v20 = v19[9];
    v21 = type metadata accessor for AttributedString();
    (*(*(v21 - 8) + 32))(&v17[v20], &v18[v20], v21);
    v17[v19[10]] = v18[v19[10]];
    v22 = v19[11];
    v23 = &v17[v22];
    v24 = &v18[v22];
    v23[4] = v24[4];
    *v23 = *v24;
    *(v9 + v11[5]) = *(v10 + v11[5]);
    v25 = v11[6];
    v26 = v9 + v25;
    v27 = v10 + v25;
    v26[8] = v27[8];
    *v26 = *v27;
    v28 = v11[7];
    v29 = v9 + v28;
    v30 = v10 + v28;
    v29[8] = v30[8];
    *v29 = *v30;
    v31 = v11[8];
    v32 = (v9 + v31);
    v33 = (v10 + v31);
    v34 = v33[1];
    *v32 = *v33;
    v32[1] = v34;
    *(v9 + v11[9]) = *(v10 + v11[9]);
    v35 = v11[10];
    v36 = v9 + v35;
    v37 = v10 + v35;
    v38 = *(v37 + 1);
    *v36 = *v37;
    *(v36 + 1) = v38;
    *(v36 + 10) = *(v37 + 10);
    v39 = *(v37 + 4);
    *(v36 + 3) = *(v37 + 3);
    *(v36 + 4) = v39;
    *(v36 + 2) = *(v37 + 2);
    v40 = v11[11];
    v41 = v9 + v40;
    v42 = v10 + v40;
    v43 = *(v42 + 3);
    *(v41 + 2) = *(v42 + 2);
    *(v41 + 3) = v43;
    *(v41 + 4) = *(v42 + 4);
    *(v41 + 10) = *(v42 + 10);
    v44 = *(v42 + 1);
    *v41 = *v42;
    *(v41 + 1) = v44;
    *(v9 + v11[12]) = *(v10 + v11[12]);
    v45 = v11[13];
    v46 = v9 + v45;
    v47 = v10 + v45;
    *(v46 + 10) = *(v47 + 10);
    v48 = *(v47 + 4);
    *(v46 + 3) = *(v47 + 3);
    *(v46 + 4) = v48;
    v49 = *(v47 + 2);
    *(v46 + 1) = *(v47 + 1);
    *(v46 + 2) = v49;
    *v46 = *v47;
    *(v9 + v11[14]) = *(v10 + v11[14]);
    (*(v52 + 56))(v9, 0, 1, v11);
  }

  v50 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v50) = *(a2 + v50);
  return a1;
}

uint64_t assignWithTake for ToolbarReader.ToolbarConfiguration(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
      goto LABEL_6;
    }

    outlined destroy of ToolbarStorage?(a1 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948], type metadata accessor for ToolbarStorage?);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  v7 = *(a1 + 96);
  if (v7 == 1)
  {
LABEL_9:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 113) = *(a2 + 113);
    goto LABEL_21;
  }

  v8 = *(a2 + 96);
  if (v8 == 1)
  {
    outlined destroy of NavigationTitleStorage(a1 + 72);
    goto LABEL_9;
  }

  if (v7)
  {
    if (v8)
    {
      v9 = *(a2 + 88);
      v10 = *(a1 + 72);
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 96) = *(a2 + 96);

      goto LABEL_15;
    }

    outlined destroy of Text(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
LABEL_15:
  v13 = (a1 + 104);
  v14 = *(a2 + 104);
  if (*(a1 + 104) != 1)
  {
    if (v14 != 1)
    {
      *v13 = v14;

      goto LABEL_20;
    }

    outlined destroy of Transaction(a1 + 104);
    v14 = *(a2 + 104);
  }

  *v13 = v14;
LABEL_20:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
LABEL_21:
  v15 = a3[14];
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 48);
  v21 = v20(v16, 1, v18);
  v22 = v20(v17, 1, v18);
  if (!v21)
  {
    if (v22)
    {
      outlined destroy of ToolbarStorage.GroupItem(v16, type metadata accessor for ToolbarStorage.SearchItem);
      goto LABEL_26;
    }

    *v16 = *v17;

    v16[1] = v17[1];

    _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v65 = *(v64 + 32);
    v66 = v16 + v65;
    v67 = v17 + v65;
    *v66 = *(v17 + v65);
    v66[1] = *(v17 + v65 + 1);
    *(v66 + 1) = *(v17 + v65 + 2);
    v66[8] = *(v17 + v65 + 8);
    *(v66 + 1) = *(v17 + v65 + 4);
    v68 = type metadata accessor for SearchFieldState(0);
    v69 = v68[9];
    v70 = type metadata accessor for AttributedString();
    (*(*(v70 - 8) + 40))(&v66[v69], &v67[v69], v70);
    v66[v68[10]] = v67[v68[10]];
    v71 = v68[11];
    v72 = &v66[v71];
    v73 = &v67[v71];
    *v72 = *v73;
    v72[4] = v73[4];
    *(v16 + v18[5]) = *(v17 + v18[5]);

    v74 = v18[6];
    v75 = v16 + v74;
    v76 = v17 + v74;
    v77 = *(v16 + v74 + 8);
    if (v77 != 255)
    {
      v78 = v76[8];
      if (v78 != 255)
      {
        v79 = *v75;
        *v75 = *v76;
        *(v75 + 8) = v78 & 1;
        outlined consume of PlatformItemCollection.Storage(v79, v77 & 1);
        goto LABEL_33;
      }

      outlined destroy of PlatformItemCollection(v75);
    }

    *v75 = *v76;
    *(v75 + 8) = v76[8];
LABEL_33:
    v80 = v18[7];
    v81 = v16 + v80;
    v82 = v17 + v80;
    v83 = *(v16 + v80 + 8);
    if (v83 != 255)
    {
      v84 = v82[8];
      if (v84 != 255)
      {
        v85 = *v81;
        *v81 = *v82;
        *(v81 + 8) = v84 & 1;
        outlined consume of PlatformItemCollection.Storage(v85, v83 & 1);
        goto LABEL_38;
      }

      outlined destroy of PlatformItemCollection(v81);
    }

    *v81 = *v82;
    *(v81 + 8) = v82[8];
LABEL_38:
    v86 = v18[8];
    v87 = v16 + v86;
    v88 = v17 + v86;
    LOBYTE(v86) = *(v17 + v86 + 16);
    v89 = *v87;
    v90 = *(v87 + 1);
    v91 = v87[16];
    *v87 = *v88;
    v87[16] = v86;
    outlined consume of Text.Storage(v89, v90, v91);
    *(v87 + 3) = *(v88 + 3);

    v92 = v18[9];
    v93 = v16 + v92;
    v94 = v17 + v92;
    *(v16 + v92) = *(v17 + v92);

    *(v93 + 1) = *(v94 + 1);

    v95 = v18[10];
    v96 = v16 + v95;
    v97 = v17 + v95;
    if (*(v16 + v95))
    {
      if (*v97)
      {
        v98 = *(v97 + 1);
        *v96 = *v97;
        *(v96 + 8) = v98;
        *(v96 + 16) = *(v97 + 4);
        v99 = *(v97 + 4);
        v100 = *(v96 + 32);
        *(v96 + 24) = *(v97 + 3);
        *(v96 + 32) = v99;

        *(v96 + 40) = *(v97 + 5);

        *(v96 + 48) = *(v97 + 12);
        *(v96 + 56) = *(v97 + 7);

        *(v96 + 64) = *(v97 + 4);
        *(v96 + 80) = *(v97 + 10);

        goto LABEL_43;
      }

      outlined destroy of BoundInputsView(v96);
    }

    v101 = *(v97 + 3);
    *(v96 + 32) = *(v97 + 2);
    *(v96 + 48) = v101;
    *(v96 + 64) = *(v97 + 4);
    *(v96 + 80) = *(v97 + 10);
    v102 = *(v97 + 1);
    *v96 = *v97;
    *(v96 + 16) = v102;
LABEL_43:
    v103 = v18[11];
    v104 = v16 + v103;
    v105 = v17 + v103;
    if (*(v16 + v103))
    {
      if (*v105)
      {
        v106 = *(v105 + 1);
        *v104 = *v105;
        *(v104 + 8) = v106;
        *(v104 + 16) = *(v105 + 4);
        v107 = *(v105 + 4);
        v108 = *(v104 + 32);
        *(v104 + 24) = *(v105 + 3);
        *(v104 + 32) = v107;

        *(v104 + 40) = *(v105 + 5);

        *(v104 + 48) = *(v105 + 12);
        *(v104 + 56) = *(v105 + 7);

        *(v104 + 64) = *(v105 + 4);
        *(v104 + 80) = *(v105 + 10);

        goto LABEL_48;
      }

      outlined destroy of BoundInputsView(v104);
    }

    v109 = *(v105 + 3);
    *(v104 + 32) = *(v105 + 2);
    *(v104 + 48) = v109;
    *(v104 + 64) = *(v105 + 4);
    *(v104 + 80) = *(v105 + 10);
    v110 = *(v105 + 1);
    *v104 = *v105;
    *(v104 + 16) = v110;
LABEL_48:
    *(v16 + v18[12]) = *(v17 + v18[12]);
    v111 = v18[13];
    v112 = v16 + v111;
    v113 = v17 + v111;
    if (*(v16 + v111))
    {
      if (*v113)
      {
        v114 = *(v113 + 1);
        *v112 = *v113;
        *(v112 + 8) = v114;
        *(v112 + 16) = *(v113 + 4);
        v115 = *(v113 + 4);
        v116 = *(v112 + 32);
        *(v112 + 24) = *(v113 + 3);
        *(v112 + 32) = v115;

        *(v112 + 40) = *(v113 + 5);

        *(v112 + 48) = *(v113 + 12);
        *(v112 + 56) = *(v113 + 7);

        *(v112 + 64) = *(v113 + 4);
        *(v112 + 80) = *(v113 + 10);

LABEL_53:
        *(v16 + v18[14]) = *(v17 + v18[14]);
        goto LABEL_27;
      }

      outlined destroy of BoundInputsView(v112);
    }

    v117 = *(v113 + 3);
    *(v112 + 32) = *(v113 + 2);
    *(v112 + 48) = v117;
    *(v112 + 64) = *(v113 + 4);
    *(v112 + 80) = *(v113 + 10);
    v118 = *(v113 + 1);
    *v112 = *v113;
    *(v112 + 16) = v118;
    goto LABEL_53;
  }

  if (v22)
  {
LABEL_26:
    type metadata accessor for ToolbarStorage.SearchItem?(0);
    memcpy(v16, v17, *(*(v62 - 8) + 64));
    goto LABEL_27;
  }

  v23 = v17[1];
  *v16 = *v17;
  v16[1] = v23;
  _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v25 = *(v24 + 32);
  v26 = v16 + v25;
  v27 = v17 + v25;
  *v26 = *(v17 + v25);
  v26[1] = *(v17 + v25 + 1);
  *(v26 + 1) = *(v17 + v25 + 2);
  v26[8] = *(v17 + v25 + 8);
  *(v26 + 1) = *(v17 + v25 + 4);
  v28 = type metadata accessor for SearchFieldState(0);
  v119 = v19;
  v29 = a3;
  v30 = v28[9];
  v31 = type metadata accessor for AttributedString();
  v32 = &v26[v30];
  v33 = &v27[v30];
  a3 = v29;
  (*(*(v31 - 8) + 32))(v32, v33, v31);
  v26[v28[10]] = v27[v28[10]];
  v34 = v28[11];
  v35 = &v26[v34];
  v36 = &v27[v34];
  v35[4] = v36[4];
  *v35 = *v36;
  *(v16 + v18[5]) = *(v17 + v18[5]);
  v37 = v18[6];
  v38 = v16 + v37;
  v39 = v17 + v37;
  v38[8] = v39[8];
  *v38 = *v39;
  v40 = v18[7];
  v41 = v16 + v40;
  v42 = v17 + v40;
  v41[8] = v42[8];
  *v41 = *v42;
  v43 = v18[8];
  v44 = (v16 + v43);
  v45 = (v17 + v43);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(v16 + v18[9]) = *(v17 + v18[9]);
  v47 = v18[10];
  v48 = v16 + v47;
  v49 = v17 + v47;
  v50 = *(v49 + 1);
  *v48 = *v49;
  *(v48 + 1) = v50;
  *(v48 + 10) = *(v49 + 10);
  v51 = *(v49 + 4);
  *(v48 + 3) = *(v49 + 3);
  *(v48 + 4) = v51;
  *(v48 + 2) = *(v49 + 2);
  v52 = v18[11];
  v53 = v16 + v52;
  v54 = v17 + v52;
  v55 = *(v54 + 3);
  *(v53 + 2) = *(v54 + 2);
  *(v53 + 3) = v55;
  *(v53 + 4) = *(v54 + 4);
  *(v53 + 10) = *(v54 + 10);
  v56 = *(v54 + 1);
  *v53 = *v54;
  *(v53 + 1) = v56;
  *(v16 + v18[12]) = *(v17 + v18[12]);
  v57 = v18[13];
  v58 = v16 + v57;
  v59 = v17 + v57;
  *(v58 + 10) = *(v59 + 10);
  v60 = *(v59 + 4);
  *(v58 + 3) = *(v59 + 3);
  *(v58 + 4) = v60;
  v61 = *(v59 + 2);
  *(v58 + 1) = *(v59 + 1);
  *(v58 + 2) = v61;
  *v58 = *v59;
  *(v16 + v18[14]) = *(v17 + v18[14]);
  (*(v119 + 56))(v16, 0, 1, v18);
LABEL_27:
  *(a1 + a3[15]) = *(a2 + a3[15]);

  *(a1 + a3[16]) = *(a2 + a3[16]);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<BarItemWidthModifier>, ToolbarItemMinimumWidthLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BarItemWidthModifier>, ToolbarItemMinimumWidthLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BarItemWidthModifier>, ToolbarItemMinimumWidthLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<BarItemWidthModifier>, ToolbarItemMinimumWidthLayout>, type metadata accessor for _ViewModifier_Content<BarItemWidthModifier>);
    lazy protocol witness table accessor for type [ToolbarStorage.Entry] and conformance [A](&lazy protocol witness table cache variable for type _ViewModifier_Content<BarItemWidthModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<BarItemWidthModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BarItemWidthModifier>, ToolbarItemMinimumWidthLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<BarItemWidthModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<BarItemWidthModifier>)
  {
    lazy protocol witness table accessor for type BarItemWidthModifier and conformance BarItemWidthModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<BarItemWidthModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout()
{
  result = lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout;
  if (!lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout;
  if (!lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout;
  if (!lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout;
  if (!lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemMinimumWidthLayout and conformance ToolbarItemMinimumWidthLayout);
  }

  return result;
}

void *specialized ToolbarBridge.filterAndSortMatchingItems(in:newStorage:context:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v80 = a1;
  v4 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ToolbarStorage.Entry(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  v92 = MEMORY[0x1E69E7CC0];
  v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14ToolbarStorageV5EntryV2IDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v17 = ToolbarStorage.toolbarEntries.getter();
  v18 = v17;
  v82 = *(v17 + 16);
  if (!v82)
  {
LABEL_92:

    specialized MutableCollection<>.sort(by:)(&v92, v71);

    return v92;
  }

  v19 = 0;
  v77 = BYTE4(a3);
  v66 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v81 = v17 + v66;
  v76 = a3 & 1;
  v75 = (a3 >> 8) & 1;
  v74 = WORD1(a3) & 1;
  v73 = BYTE3(a3) & 1;
  v78 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CD0];
  v79 = a3;
  v21 = HIWORD(a3) & 1;
  v68 = v8;
  v69 = v12;
  v72 = v17;
  v67 = v21;
  while (v19 < *(v18 + 16))
  {
    v22 = *(v12 + 72);
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v81 + v22 * v19, v16, type metadata accessor for ToolbarStorage.Entry);
    _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v16, v10, type metadata accessor for ToolbarStorage.Entry.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v24 = v65;
        _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v10, v65, type metadata accessor for ToolbarStorage.GroupItem);
        outlined init with copy of ToolbarItemPlacement.Role(v24 + 80, v89);
        v25 = type metadata accessor for ToolbarStorage.GroupItem;
      }

      else
      {
        v24 = v64;
        _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v10, v64, type metadata accessor for ToolbarStorage.Item);
        outlined init with copy of ToolbarItemPlacement.Role(v24 + 112, v89);
        v25 = type metadata accessor for ToolbarStorage.Item;
      }

      outlined destroy of ToolbarStorage.GroupItem(v24, v25);
LABEL_16:
      if (v89[40] == 255)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v26 = v10[3];
      v86 = v10[2];
      v27 = v10[4];
      v87 = v26;
      v88 = v27;
      v28 = *v10;
      v85 = v10[1];
      v84 = v28;
      outlined init with copy of ToolbarItemPlacement.Role(&v84 + 8, v89);
      outlined destroy of ToolbarStorage.SpacerItem(&v84);
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 3)
    {
      memset(v89, 0, 40);
      v89[40] = -1;
LABEL_4:
      outlined destroy of ToolbarStorage.GroupItem(v16, type metadata accessor for ToolbarStorage.Entry);
      outlined destroy of ToolbarStorage?(v89, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
      goto LABEL_5;
    }

    *v89 = 29;
    memset(&v89[8], 0, 32);
    v89[40] = 2;
LABEL_17:
    v90 = *v89;
    *v91 = *&v89[16];
    *&v91[9] = *&v89[25];
    LOBYTE(v84) = v76;
    BYTE1(v84) = v75;
    BYTE2(v84) = v74;
    BYTE3(v84) = v73;
    BYTE4(v84) = v77;
    BYTE5(v84) = BYTE5(v79);
    BYTE6(v84) = v21;
    v29 = Toolbar.BarLocation.priority(for:context:)(&v90, &v84);
    if ((v30 & 1) == 0)
    {
      v31 = v29;
      if (*(v20 + 16))
      {
        Hasher.init(_seed:)();
        ToolbarItemPlacement.Role.hash(into:)();
        v32 = Hasher._finalize()();
        v33 = -1 << *(v20 + 32);
        v34 = v32 & ~v33;
        if ((*(v20 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          while (1)
          {
            outlined init with copy of ToolbarItemPlacement.Role(*(v20 + 48) + 48 * v34, &v84);
            v36 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(&v84, &v90);
            outlined destroy of ToolbarItemPlacement.Role(&v84);
            if (v36)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v20 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          outlined destroy of ToolbarItemPlacement.Role(&v90);
          outlined destroy of ToolbarStorage.GroupItem(v16, type metadata accessor for ToolbarStorage.Entry);
          v12 = v69;
LABEL_64:
          v18 = v72;
          LOBYTE(v21) = v67;
          goto LABEL_5;
        }
      }

LABEL_24:
      outlined init with copy of ToolbarItemPlacement.Role(&v90, &v84);
      if (BYTE8(v86))
      {
        if (BYTE8(v86) == 1)
        {
          outlined destroy of ToolbarItemPlacement.Role(&v84);
LABEL_49:
          ToolbarStorage.Entry.id.getter(&v84);
          v40 = v71;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v89 = v40;
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(&v84);
          v44 = *(v40 + 16);
          v45 = (v42 & 1) == 0;
          v46 = v44 + v45;
          if (__OFADD__(v44, v45))
          {
            goto LABEL_94;
          }

          v47 = v42;
          if (*(v40 + 24) >= v46)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
            v48 = specialized __RawDictionaryStorage.find<A>(_:)(&v84);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_96;
            }

            v43 = v48;
          }

          v12 = v69;
          v50 = *v89;
          if (v47)
          {
            *(*(*v89 + 56) + 8 * v43) = v31;
            outlined destroy of ToolbarStorage.Entry.ID(&v84);
          }

          else
          {
            *(*v89 + 8 * (v43 >> 6) + 64) |= 1 << v43;
            outlined init with copy of ToolbarStorage.Entry.ID(&v84, v50[6] + 88 * v43);
            *(v50[7] + 8 * v43) = v31;
            outlined destroy of ToolbarStorage.Entry.ID(&v84);
            v51 = v50[2];
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_95;
            }

            v50[2] = v53;
          }

          _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_0(v16, v70, type metadata accessor for ToolbarStorage.Entry);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v71 = v50;
          if ((v54 & 1) == 0)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
          }

          v56 = v78[2];
          v55 = v78[3];
          if (v56 >= v55 >> 1)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v78);
          }

          outlined destroy of ToolbarItemPlacement.Role(&v90);
          outlined destroy of ToolbarStorage.GroupItem(v16, type metadata accessor for ToolbarStorage.Entry);
          v57 = v78;
          v78[2] = v56 + 1;
          _s7SwiftUI14ToolbarStorageV4ItemVWObTm_0(v70, v57 + v66 + v56 * v22, type metadata accessor for ToolbarStorage.Entry);
          v92 = v57;
          goto LABEL_64;
        }

        if (*(&v85 + 1) | v86 | v84 | v85 | *(&v84 + 1))
        {
          v37 = *(&v85 + 1) | v86 | v85 | *(&v84 + 1);
          if ((v84 - 1) > 7 || v37)
          {
            if ((v84 - 9) <= 1 && !v37)
            {
              goto LABEL_49;
            }

            if (v84 != 11 || v37)
            {
              v58 = v84 & 0xFFFFFFFFFFFFFFFELL;
              v59 = v84 & 0xFFFFFFFFFFFFFFFCLL;
              v60 = (v84 & 0xFFFFFFFFFFFFFFFELL) == 0x14 || v59 == 16;
              v61 = v60 || v59 == 12;
              if (v61 && !v37)
              {
                goto LABEL_49;
              }

              v62 = v58 == 22 || v84 == 24;
              if ((!v62 || v37) && ((v84 - 25) <= 3 && !v37 || (v84 != 29 || v37) && v58 == 30 && !v37))
              {
                goto LABEL_49;
              }
            }
          }
        }
      }

      outlined init with copy of Toolbar.BarLocation(v80, &v84);
      if (*(&v85 + 1) > 5)
      {
        v38 = v79;
        if (*(&v85 + 1) > 0x14uLL)
        {
          goto LABEL_35;
        }

        if (((1 << SBYTE8(v85)) & 0xFE600) != 0)
        {
          goto LABEL_49;
        }

        if (((1 << SBYTE8(v85)) & 0x1800) == 0)
        {
          if (*(&v85 + 1) == 20)
          {
            goto LABEL_49;
          }

LABEL_35:
          if ((*(&v85 + 1) - 7) >= 2)
          {
            if (*(&v85 + 1) != 6)
            {
              goto LABEL_91;
            }

LABEL_45:
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
            lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
            if ((static SemanticFeature.isEnabled.getter() & 1) != 0 || v77 == 2 || (v38 & 0x100000000) != 0)
            {
              goto LABEL_49;
            }
          }
        }

LABEL_48:
        outlined init with copy of ToolbarItemPlacement.Role(&v90, v89);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v20;
        specialized _NativeSet.update(with:isUnique:)(v89, v39, &v84);
        outlined destroy of ToolbarStorage?(&v84, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
        v20 = v83;
        goto LABEL_49;
      }

      v38 = v79;
      if (*(&v85 + 1) > 2)
      {
        if ((*(&v85 + 1) - 4) < 2)
        {
          goto LABEL_48;
        }

        if (*(&v85 + 1) == 3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (*(&v85 + 1) < 2uLL)
        {
          goto LABEL_48;
        }

        if (*(&v85 + 1) == 2)
        {
          goto LABEL_49;
        }
      }

LABEL_91:
      outlined destroy of Toolbar.BarLocation(&v84);
      goto LABEL_49;
    }

    outlined destroy of ToolbarItemPlacement.Role(&v90);
    outlined destroy of ToolbarStorage.GroupItem(v16, type metadata accessor for ToolbarStorage.Entry);
    v18 = v72;
LABEL_5:
    if (++v19 == v82)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for (ToolbarStorage.Entry.ID?, ToolbarStorage.Entry.ID?)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t partial apply for closure #1 in ToolbarReader.ApplyUpdatesToExternalTarget.updateValue()()
{
  type metadata accessor for ToolbarReader.ToolbarConfiguration();

  return closure #1 in ToolbarReader.ApplyUpdatesToExternalTarget.updateValue()();
}

void type metadata accessor for (ToolbarStorage.Entry?, ToolbarStorage.Entry?)()
{
  if (!lazy cache variable for type metadata for (ToolbarStorage.Entry?, ToolbarStorage.Entry?))
  {
    type metadata accessor for ToolbarStorage.Entry?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ToolbarStorage.Entry?, ToolbarStorage.Entry?));
    }
  }
}

uint64_t specialized ToolbarReader.UpdateToolbarBridge.configure(bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = static ToolbarEdges.bars.getter(a2, a4);
  v21 = MEMORY[0x1E69E7CD0];
  memset(v20, 0, sizeof(v20));
  v6 = specialized Set.contains(_:)(v20, v5);
  outlined destroy of ToolbarPlacement.Role(v20);
  if (v6)
  {
    type metadata accessor for ToolbarStorage?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Toolbar.BarLocation>, &type metadata for Toolbar.BarLocation, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CDD3F30;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
    *(inited + 32) = 0;
    *(inited + 56) = 6;
    *(inited + 64) = 0u;
    *(inited + 80) = 0u;
    *(inited + 96) = 3;
    *(inited + 104) = 0u;
    *(inited + 120) = 0u;
    *(inited + 136) = 0u;
    specialized Set.formUnion<A>(_:)(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  memset(v20, 0, 24);
  *&v20[3] = xmmword_18CD79D60;
  v8 = specialized Set.contains(_:)(v20, v5);
  outlined destroy of ToolbarPlacement.Role(v20);
  if (v8)
  {
    v9 = v21;
  }

  else
  {
    memset(v20, 0, 24);
    *&v20[3] = xmmword_18CD6A6D0;
    v10 = specialized Set.contains(_:)(v20, v5);
    outlined destroy of ToolbarPlacement.Role(v20);
    v9 = v21;
    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = xmmword_18CDD7FB0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeSet.update(with:isUnique:)(&v16, isUniquelyReferenced_nonNull_native, v20);
  outlined destroy of ToolbarStorage?(v20, &lazy cache variable for type metadata for Toolbar.BarLocation?, &type metadata for Toolbar.BarLocation, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
LABEL_7:
  memset(v20, 0, 24);
  *&v20[3] = xmmword_18CD7DD20;
  v12 = specialized Set.contains(_:)(v20, v5);

  outlined destroy of ToolbarPlacement.Role(v20);
  if (v12)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = xmmword_18CD90760;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeSet.update(with:isUnique:)(&v16, v13, v20);
    outlined destroy of ToolbarStorage?(v20, &lazy cache variable for type metadata for Toolbar.BarLocation?, &type metadata for Toolbar.BarLocation, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage?);
  }

  v14 = direct field offset for ToolbarBridge.allowedLocations;
  swift_beginAccess();
  *(a1 + v14) = v9;
}