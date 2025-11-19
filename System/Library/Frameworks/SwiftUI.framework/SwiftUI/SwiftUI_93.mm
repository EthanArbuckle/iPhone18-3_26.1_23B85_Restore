uint64_t BindingStorage.selection.setter(uint64_t a1)
{
  v3 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of BindingStorage.Storage(v1, v11, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    v13 = *&v11[*(v12 + 48)];
    v14 = *(*v13 + *MEMORY[0x1E697DAC8] + 8);
    swift_beginAccess();
    outlined assign with take of AttributedTextSelection(a1, v13 + v14, type metadata accessor for AttributedTextSelection);
    swift_endAccess();
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    outlined init with take of AttributedTextSelection(&v11[*(v15 + 48)], v8, type metadata accessor for Binding<AttributedTextSelection>);
    outlined init with copy of BindingStorage.Storage(a1, v5, type metadata accessor for AttributedTextSelection);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for AttributedTextSelection);
    outlined destroy of AttributedTextSelection.Indices(v5, type metadata accessor for AttributedTextSelection);
    outlined destroy of AttributedTextSelection.Indices(v8, type metadata accessor for Binding<AttributedTextSelection>);
  }

  return outlined destroy of AttributedTextSelection.Indices(v11, type metadata accessor for Binding<AttributedString>);
}

uint64_t AttributedStringUpdates.isExpecting(text:selection:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for AttributedTextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v95[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v95[-v9];
  v113 = type metadata accessor for AttributedTextSelection(0);
  v102 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v104 = &v95[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AttributedTextSelection?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v95[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v95[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v95[-v18];
  type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?)();
  v110 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v95[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95[-v22];
  type metadata accessor for AttributedStringUpdates.Element?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v95[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v95[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v95[-v30];
  v32 = type metadata accessor for AttributedStringUpdates.Element(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v112 = &v95[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v95[-v36];
  v38 = *(type metadata accessor for AttributedStringUpdates(0) + 20);
  outlined init with copy of BindingStorage.Storage(v3 + v38, v31, type metadata accessor for AttributedStringUpdates.Element?);
  v39 = (*(v33 + 48))(v31, 1, v32);
  v109 = v33;
  if (v39 != 1)
  {
    outlined init with take of AttributedTextSelection(v31, v37, type metadata accessor for AttributedStringUpdates.Element);
    type metadata accessor for AttributedString();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    if ((AttributedString.Index.isValid<A>(within:)() & 1) == 0)
    {
      v40 = type metadata accessor for AttributedStringUpdates.Element;
      v41 = v37;
      goto LABEL_8;
    }

    v111 = v32;
    v42 = *(v102 + 48);
    v43 = v113;
    v44 = v42(a2, 1, v113);
    v97 = v42;
    if (v44 == 1)
    {
      goto LABEL_5;
    }

    v107 = v26;
    v78 = a1;
    v98 = v37;
    v79 = *(v111 + 20);
    v80 = *(v110 + 48);
    outlined init with copy of BindingStorage.Storage(a2, v23, type metadata accessor for AttributedTextSelection?);
    v81 = &v98[v79];
    v37 = v98;
    v43 = v113;
    outlined init with copy of BindingStorage.Storage(v81, &v23[v80], type metadata accessor for AttributedTextSelection?);
    if (v42(v23, 1, v43) == 1)
    {
      if (v42(&v23[v80], 1, v43) == 1)
      {
        outlined destroy of AttributedTextSelection.Indices(v23, type metadata accessor for AttributedTextSelection?);
        a1 = v78;
        v26 = v107;
LABEL_5:
        v99 = *(v111 + 20);
        v45 = &v37[v99];
        v46 = v37;
        v47 = v114;
        outlined init with copy of BindingStorage.Storage(v45, v114, type metadata accessor for AttributedTextSelection?);
        if (v42(v47, 1, v43) == 1)
        {
          outlined destroy of AttributedTextSelection.Indices(v47, type metadata accessor for AttributedTextSelection?);
          goto LABEL_41;
        }

        v82 = v101;
        outlined init with copy of BindingStorage.Storage(v47, v101, type metadata accessor for AttributedTextSelection.Indices?);
        outlined destroy of AttributedTextSelection.Indices(v47, type metadata accessor for AttributedTextSelection);
        v83 = type metadata accessor for AttributedTextSelection.Indices(0);
        if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
        {
          outlined destroy of AttributedTextSelection.Indices(v82, type metadata accessor for AttributedTextSelection.Indices?);
          goto LABEL_41;
        }

        v87 = specialized AttributedTextSelection.Indices.areValid<A>(within:)(a1);
        outlined destroy of AttributedTextSelection.Indices(v82, type metadata accessor for AttributedTextSelection.Indices);
        if (v87)
        {
LABEL_41:
          v88 = v46;
          v89 = v106;
          outlined init with copy of BindingStorage.Storage(v46 + v99, v106, type metadata accessor for AttributedTextSelection?);
          if (v97(v89, 1, v113) == 1)
          {
            outlined destroy of AttributedTextSelection.Indices(v46, type metadata accessor for AttributedStringUpdates.Element);
            v76 = type metadata accessor for AttributedTextSelection?;
            v77 = v89;
          }

          else
          {
            v64 = v100;
            outlined init with copy of BindingStorage.Storage(v89, v100, type metadata accessor for AttributedTextSelection.Indices?);
            outlined destroy of AttributedTextSelection.Indices(v89, type metadata accessor for AttributedTextSelection);
            v90 = type metadata accessor for AttributedTextSelection.Indices(0);
            v91 = (*(*(v90 - 8) + 48))(v64, 1, v90);
            v32 = v111;
            if (v91 != 1)
            {
              v92 = specialized AttributedTextSelection.Indices.areValid<A>(within:)(a1);
              outlined destroy of AttributedTextSelection.Indices(v88, type metadata accessor for AttributedStringUpdates.Element);
              outlined destroy of AttributedTextSelection.Indices(v64, type metadata accessor for AttributedTextSelection.Indices);
              v33 = v109;
              if ((v92 & 1) == 0)
              {
                goto LABEL_9;
              }

              return 1;
            }

            outlined destroy of AttributedTextSelection.Indices(v88, type metadata accessor for AttributedStringUpdates.Element);
            v84 = type metadata accessor for AttributedTextSelection.Indices?;
LABEL_45:
            v76 = v84;
            v77 = v64;
          }

LABEL_46:
          outlined destroy of AttributedTextSelection.Indices(v77, v76);
          return 1;
        }

        v86 = v46;
LABEL_53:
        outlined destroy of AttributedTextSelection.Indices(v86, type metadata accessor for AttributedStringUpdates.Element);
        v32 = v111;
        v33 = v109;
        goto LABEL_9;
      }
    }

    else
    {
      v85 = v99;
      outlined init with copy of BindingStorage.Storage(v23, v99, type metadata accessor for AttributedTextSelection?);
      if (v42(&v23[v80], 1, v43) != 1)
      {
        v93 = &v23[v80];
        v94 = v104;
        outlined init with take of AttributedTextSelection(v93, v104, type metadata accessor for AttributedTextSelection);
        v96 = specialized static AttributedTextSelection.== infix(_:_:)(v85, v94);
        outlined destroy of AttributedTextSelection.Indices(v94, type metadata accessor for AttributedTextSelection);
        v43 = v113;
        outlined destroy of AttributedTextSelection.Indices(v85, type metadata accessor for AttributedTextSelection);
        outlined destroy of AttributedTextSelection.Indices(v23, type metadata accessor for AttributedTextSelection?);
        a1 = v78;
        v26 = v107;
        v42 = v97;
        v37 = v98;
        if (v96)
        {
          goto LABEL_5;
        }

LABEL_39:
        v86 = v37;
        goto LABEL_53;
      }

      outlined destroy of AttributedTextSelection.Indices(v85, type metadata accessor for AttributedTextSelection);
      v37 = v98;
    }

    outlined destroy of AttributedTextSelection.Indices(v23, type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?));
    a1 = v78;
    v26 = v107;
    goto LABEL_39;
  }

  v40 = type metadata accessor for AttributedStringUpdates.Element?;
  v41 = v31;
LABEL_8:
  outlined destroy of AttributedTextSelection.Indices(v41, v40);
LABEL_9:
  v48 = v103;
  AttributedString.startIndex.getter();
  outlined init with copy of BindingStorage.Storage(a2, v48 + *(v32 + 20), type metadata accessor for AttributedTextSelection?);
  v114 = *(v33 + 56);
  (v114)(v48, 0, 1, v32);
  outlined assign with take of AttributedTextSelection(v48, v3 + v38, type metadata accessor for AttributedStringUpdates.Element?);
  v49 = v112;
  if (*(*v3 + 24) < 1)
  {
LABEL_29:
    (v114)(v26, 1, 1, v32);
    outlined destroy of AttributedTextSelection.Indices(v26, type metadata accessor for AttributedStringUpdates.Element?);
    return 0;
  }

  v50 = (v102 + 48);
  v106 = (v33 + 56);
  v107 = v26;
  v111 = v32;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized Deque._Storage._makeUniqueCopy()();
    }

    v51 = *v3;
    result = outlined init with take of AttributedTextSelection(*v3 + ((*(v33 + 80) + 40) & ~*(v33 + 80)) + *(v33 + 72) * *(*v3 + 32), v26, type metadata accessor for AttributedStringUpdates.Element);
    v53 = v51[4];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      break;
    }

    v56 = v51[3];
    if (v55 >= v51[2])
    {
      v55 = 0;
    }

    v51[4] = v55;
    if (__OFSUB__(v56, 1))
    {
      goto LABEL_55;
    }

    v51[3] = v56 - 1;
    (v114)(v26, 0, 1, v32);
    outlined init with take of AttributedTextSelection(v26, v49, type metadata accessor for AttributedStringUpdates.Element);
    type metadata accessor for AttributedString();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
    if (AttributedString.Index.isValid<A>(within:)())
    {
      v57 = *v50;
      if ((*v50)(a2, 1, v113) == 1)
      {
        v76 = type metadata accessor for AttributedStringUpdates.Element;
        v77 = v112;
        goto LABEL_46;
      }

      v58 = a1;
      v59 = a2;
      v60 = v3;
      v61 = *(v32 + 20);
      v62 = *(v110 + 48);
      v63 = v59;
      v64 = v108;
      outlined init with copy of BindingStorage.Storage(v59, v108, type metadata accessor for AttributedTextSelection?);
      v65 = v112;
      v66 = &v112[v61];
      v67 = v113;
      outlined init with copy of BindingStorage.Storage(v66, &v64[v62], type metadata accessor for AttributedTextSelection?);
      if (v57(v64, 1, v67) == 1)
      {
        outlined destroy of AttributedTextSelection.Indices(v65, type metadata accessor for AttributedStringUpdates.Element);
        v68 = v57(&v64[v62], 1, v67);
        v3 = v60;
        a2 = v63;
        v49 = v65;
        if (v68 == 1)
        {
          v84 = type metadata accessor for AttributedTextSelection?;
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      v69 = v105;
      outlined init with copy of BindingStorage.Storage(v64, v105, type metadata accessor for AttributedTextSelection?);
      v70 = v57(&v64[v62], 1, v67);
      v3 = v60;
      if (v70 == 1)
      {
        v49 = v112;
        outlined destroy of AttributedTextSelection.Indices(v112, type metadata accessor for AttributedStringUpdates.Element);
        outlined destroy of AttributedTextSelection.Indices(v69, type metadata accessor for AttributedTextSelection);
        a2 = v63;
LABEL_26:
        outlined destroy of AttributedTextSelection.Indices(v64, type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?));
        a1 = v58;
        v26 = v107;
        v32 = v111;
        v33 = v109;
        goto LABEL_12;
      }

      v71 = &v64[v62];
      v72 = v104;
      outlined init with take of AttributedTextSelection(v71, v104, type metadata accessor for AttributedTextSelection);
      v73 = v69;
      v74 = specialized static AttributedTextSelection.== infix(_:_:)(v69, v72);
      outlined destroy of AttributedTextSelection.Indices(v72, type metadata accessor for AttributedTextSelection);
      v75 = v112;
      outlined destroy of AttributedTextSelection.Indices(v112, type metadata accessor for AttributedStringUpdates.Element);
      v49 = v75;
      outlined destroy of AttributedTextSelection.Indices(v73, type metadata accessor for AttributedTextSelection);
      outlined destroy of AttributedTextSelection.Indices(v64, type metadata accessor for AttributedTextSelection?);
      a2 = v63;
      a1 = v58;
      v26 = v107;
      v32 = v111;
      v33 = v109;
      if (v74)
      {
        return 1;
      }
    }

    else
    {
      outlined destroy of AttributedTextSelection.Indices(v49, type metadata accessor for AttributedStringUpdates.Element);
    }

LABEL_12:
    if (*(*v3 + 24) <= 0)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t BindingStorage.update(to:)(uint64_t a1)
{
  v3 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TextEditor.Storage.AttributedText(0);
  outlined init with copy of BindingStorage.Storage(a1 + *(v17 + 20), v11, type metadata accessor for Binding<AttributedTextSelection>?);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    outlined destroy of AttributedTextSelection.Indices(v11, type metadata accessor for Binding<AttributedTextSelection>?);
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    v19 = *(v18 + 48);
    outlined init with copy of BindingStorage.Storage(a1, v8, type metadata accessor for Binding<AttributedString>);
    BindingStorage.selection.getter(v5);
    type metadata accessor for MutableBox<AttributedTextSelection>(0);
    v20 = swift_allocObject();
    outlined init with take of AttributedTextSelection(v5, v20 + *(*v20 + *MEMORY[0x1E697DAC8] + 8), type metadata accessor for AttributedTextSelection);
    *&v8[v19] = v20;
    swift_storeEnumTagMultiPayload();
    return outlined assign with take of AttributedTextSelection(v8, v1, type metadata accessor for BindingStorage.Storage);
  }

  else
  {
    outlined init with take of AttributedTextSelection(v11, v16, type metadata accessor for Binding<AttributedTextSelection>);
    outlined destroy of AttributedTextSelection.Indices(v1, type metadata accessor for BindingStorage.Storage);
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v23 = *(v22 + 48);
    outlined init with copy of BindingStorage.Storage(a1, v1, type metadata accessor for Binding<AttributedString>);
    outlined init with take of AttributedTextSelection(v16, v1 + v23, type metadata accessor for Binding<AttributedTextSelection>);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t specialized AttributedTextStorage.updateEditorSelection(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for Range<AttributedString.Index>, MEMORY[0x1E69E66A8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v28 = type metadata accessor for AttributedTextSelection(0);
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  outlined init with copy of BindingStorage.Storage(a1, &v27 - v16, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v30[0] = *&v17[*(v12 + 44)];
  type metadata accessor for AtomicBox<ChangedValues>();
  AtomicBox.wrappedValue.getter();
  v18 = v31;
  outlined destroy of AttributedTextSelection.Indices(v17, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  if ((v18 & 3) != 0)
  {
    goto LABEL_13;
  }

  v29 = a3;
  v19 = *(v12 + 48);
  if (*(a1 + v19) == 1)
  {
    PlatformTextViewEditorStorage.commit()();
  }

  *(a1 + v19) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = Strong;
  v22 = [Strong textStorage];

  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [v22 beginEditing];

  PlatformTextViewEditorStorage.selection.getter(v10);
  outlined destroy of AttributedTextSelection.Indices(v10, type metadata accessor for AttributedTextSelection);
  outlined init with copy of Range<AttributedString.Index>(v27, v7);
  AttributedTextSelection.init(range:)(v7, v10);
  PlatformTextViewEditorStorage.selection.setter(v10);
  outlined init with copy of BindingStorage.Storage(a1, v14, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v31 = *&v14[*(v12 + 44)];
  v24 = AtomicBox.wrappedValue.modify();
  if ((*v23 & 8) == 0)
  {
    *v23 |= 8u;
  }

  v24(v30, 0);
  outlined destroy of AttributedTextSelection.Indices(v14, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v25 = v29;
  PlatformTextViewEditorStorage.selection.getter(v29);
  return (*(v8 + 56))(v25, 0, 1, v28);
}

uint64_t specialized AttributedTextStorage.updateEditorSelection(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v5 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v48 - v8;
  _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_0(0, &lazy cache variable for type metadata for AttributeContainer?, MEMORY[0x1E69688E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v48 - v10;
  v63 = type metadata accessor for AttributedString.Index();
  v54 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedTextSelection(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  outlined init with copy of BindingStorage.Storage(a1, &v48 - v20, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v64[0] = *&v21[v17[11]];
  type metadata accessor for AtomicBox<ChangedValues>();
  v58 = v22;
  AtomicBox.wrappedValue.getter();
  v23 = v65;
  outlined destroy of AttributedTextSelection.Indices(v21, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  if ((v23 & 3) != 0)
  {
    goto LABEL_16;
  }

  v24 = v17[12];
  if (*(a1 + v24) == 1)
  {
    PlatformTextViewEditorStorage.commit()();
  }

  *(a1 + v24) = 1;
  v55 = v17;
  v25 = a1 + v17[10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = Strong;
  v28 = [Strong textStorage];

  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = v14;
  v51 = v13;
  v52 = a1;
  v53 = a3;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [v28 beginEditing];

  v29 = v62;
  v61 = v25;
  PlatformTextViewEditorStorage.selection.getter(v62);
  outlined destroy of AttributedTextSelection.Indices(v29, type metadata accessor for AttributedTextSelection);
  type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for Range<AttributedString.Index>, MEMORY[0x1E69E66A8]);
  v31 = v54;
  (*(v54 + 16))(v12, &v57[*(v30 + 36)], v63);
  v32 = type metadata accessor for AttributeContainer();
  v33 = *(v32 - 8);
  v34 = v56;
  v57 = *(v33 + 56);
  (v57)(v56, 1, 1, v32);
  v35 = type metadata accessor for AttributedTextSelection.Indices(0);
  v36 = *(*(v35 - 8) + 56);
  v36(v29, 1, 1, v35);
  outlined destroy of AttributedTextSelection.Indices(v29, type metadata accessor for AttributedTextSelection.Indices?);
  (*(v31 + 32))(v29, v12, v63);
  swift_storeEnumTagMultiPayload();
  v36(v29, 0, 1, v35);
  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    v37 = v60;
    (v57)(v60, 1, 1, v32);
  }

  else
  {
    v38 = v49;
    (*(v33 + 32))(v49, v34, v32);
    (v57)(v38, 0, 1, v32);
    v37 = v60;
    outlined init with take of AttributedTextSelection(v38, v60, type metadata accessor for AttributedTextSelection.TypingAttributes);
  }

  v39 = v52;
  v40 = v53;
  v41 = v51;
  v42 = v59;
  v43 = v62;
  outlined init with take of AttributedTextSelection(v37, v62 + *(v51 + 20), type metadata accessor for AttributedTextSelection.TypingAttributes);
  *(v43 + *(v41 + 24)) = 0;
  PlatformTextViewEditorStorage.selection.setter(v43);
  outlined init with copy of BindingStorage.Storage(v39, v42, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v65 = *(v42 + v55[11]);
  v45 = AtomicBox.wrappedValue.modify();
  v46 = v50;
  if ((*v44 & 8) == 0)
  {
    *v44 |= 8u;
  }

  v45(v64, 0);
  outlined destroy of AttributedTextSelection.Indices(v42, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  PlatformTextViewEditorStorage.selection.getter(v40);
  return (*(v46 + 56))(v40, 0, 1, v41);
}

void type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>()
{
  if (!lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>)
  {
    v0 = type metadata accessor for AttributedTextStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AttributedTextStorage<PlatformTextViewEditorStorage>);
    }
  }
}

void type metadata accessor for AtomicBox<ChangedValues>()
{
  if (!lazy cache variable for type metadata for AtomicBox<ChangedValues>)
  {
    v0 = type metadata accessor for AtomicBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>);
    }
  }
}

void type metadata accessor for RangeSet<AttributedString.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_2(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for BindingStorage(char *a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for BindingStorage.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v6;
    type metadata accessor for Binding<AttributedString>();
    v8 = *(v7 + 32);
    v9 = type metadata accessor for AttributedString();
    v10 = *(*(v9 - 8) + 16);

    v10(&a1[v8], a2 + v8, v9);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v11 + 48)] = *(a2 + *(v11 + 48));
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v14 = *(v13 + 48);
      v15 = &a1[v14];
      v16 = a2 + v14;
      v17 = *(a2 + v14 + 8);
      *v15 = *(a2 + v14);
      *(v15 + 1) = v17;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v19 = *(v18 + 32);
      v20 = &v15[v19];
      v21 = &v16[v19];
      v22 = type metadata accessor for AttributedTextSelection.Indices(0);
      v23 = *(v22 - 8);
      v24 = *(v23 + 48);

      if (v24(v21, 1, v22))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v20, v21, *(*(v25 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v27 = v26;
        }

        else
        {
          v27 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v27 - 8) + 16))(v20, v21);
        swift_storeEnumTagMultiPayload();
        (*(v23 + 56))(v20, 0, 1, v22);
      }

      v28 = type metadata accessor for AttributedTextSelection(0);
      v29 = *(v28 + 20);
      v30 = type metadata accessor for AttributeContainer();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(&v21[v29], 1, v30))
      {
        v32 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v20[v29], &v21[v29], *(*(v32 - 8) + 64));
      }

      else
      {
        (*(v31 + 16))(&v20[v29], &v21[v29], v30);
        (*(v31 + 56))(&v20[v29], 0, 1, v30);
      }

      v20[*(v28 + 24)] = v21[*(v28 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for BindingStorage(uint64_t a1)
{
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  type metadata accessor for Binding<AttributedString>();
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v8 = a1 + *(v7 + 48);

    type metadata accessor for Binding<AttributedTextSelection>(0);
    v10 = v8 + *(v9 + 32);
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v13 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v14 = type metadata accessor for AttributeContainer();
    v16 = *(v14 - 8);
    result = (*(v16 + 48))(v10 + v13, 1, v14);
    if (!result)
    {
      v15 = *(v16 + 8);

      return v15(v10 + v13, v14);
    }
  }

  return result;
}

char *initializeWithCopy for BindingStorage(char *a1, char *a2)
{
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  type metadata accessor for Binding<AttributedString>();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v10 + 48)] = *&a2[*(v10 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v12 = *(v11 + 48);
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = *&a2[v12 + 8];
    *v13 = *&a2[v12];
    *(v13 + 1) = v15;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v17 = *(v16 + 32);
    v18 = &v13[v17];
    v19 = &v14[v17];
    v20 = type metadata accessor for AttributedTextSelection.Indices(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);

    if (v22(v19, 1, v20))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v25 = v24;
      }

      else
      {
        v25 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v25 - 8) + 16))(v18, v19);
      swift_storeEnumTagMultiPayload();
      (*(v21 + 56))(v18, 0, 1, v20);
    }

    v26 = type metadata accessor for AttributedTextSelection(0);
    v27 = *(v26 + 20);
    v28 = type metadata accessor for AttributeContainer();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(&v19[v27], 1, v28))
    {
      v30 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v18[v27], &v19[v27], *(*(v30 - 8) + 64));
    }

    else
    {
      (*(v29 + 16))(&v18[v27], &v19[v27], v28);
      (*(v29 + 56))(&v18[v27], 0, 1, v28);
    }

    v18[*(v26 + 24)] = v19[*(v26 + 24)];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for BindingStorage(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    type metadata accessor for BindingStorage.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>();
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 16);

    v8(&a1[v6], &a2[v6], v7);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = &a2[v11];
      *v12 = *&a2[v11];
      *(v12 + 1) = *&a2[v11 + 8];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = *(v14 + 32);
      v16 = &v12[v15];
      v17 = &v13[v15];
      v18 = type metadata accessor for AttributedTextSelection.Indices(0);
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);

      if (v20(v17, 1, v18))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v16, v17, *(*(v21 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v23 = v22;
        }

        else
        {
          v23 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v23 - 8) + 16))(v16, v17);
        swift_storeEnumTagMultiPayload();
        (*(v19 + 56))(v16, 0, 1, v18);
      }

      v24 = type metadata accessor for AttributedTextSelection(0);
      v25 = *(v24 + 20);
      v26 = type metadata accessor for AttributeContainer();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v17[v25], 1, v26))
      {
        v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v16[v25], &v17[v25], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v27 + 16))(&v16[v25], &v17[v25], v26);
        (*(v27 + 56))(&v16[v25], 0, 1, v26);
      }

      v16[*(v24 + 24)] = v17[*(v24 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for BindingStorage(char *a1, char *a2)
{
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  type metadata accessor for Binding<AttributedString>();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
    *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v11 = *(v10 + 48);
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = *&a2[v11 + 8];
    *v12 = *&a2[v11];
    *(v12 + 1) = v14;
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v16 = *(v15 + 32);
    v17 = &v12[v16];
    v18 = &v13[v16];
    v19 = type metadata accessor for AttributedTextSelection.Indices(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for AttributedTextSelection.Indices?(0);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
        v23 = v22;
      }

      else
      {
        v23 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v23 - 8) + 32))(v17, v18);
      swift_storeEnumTagMultiPayload();
      (*(v20 + 56))(v17, 0, 1, v19);
    }

    v24 = type metadata accessor for AttributedTextSelection(0);
    v25 = *(v24 + 20);
    v26 = type metadata accessor for AttributeContainer();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(&v18[v25], 1, v26))
    {
      v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v17[v25], &v18[v25], *(*(v28 - 8) + 64));
    }

    else
    {
      (*(v27 + 32))(&v17[v25], &v18[v25], v26);
      (*(v27 + 56))(&v17[v25], 0, 1, v26);
    }

    v17[*(v24 + 24)] = v18[*(v24 + 24)];
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for BindingStorage(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextSelection.Indices(a1, type metadata accessor for BindingStorage.Storage);
    type metadata accessor for BindingStorage.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    type metadata accessor for Binding<AttributedString>();
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);
      *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    }

    else
    {
      type metadata accessor for (Binding<AttributedString>, Binding<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = &a2[v11];
      v14 = *&a2[v11 + 8];
      *v12 = *&a2[v11];
      *(v12 + 1) = v14;
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v16 = *(v15 + 32);
      v17 = &v12[v16];
      v18 = &v13[v16];
      v19 = type metadata accessor for AttributedTextSelection.Indices(0);
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v18, 1, v19))
      {
        type metadata accessor for AttributedTextSelection.Indices?(0);
        memcpy(v17, v18, *(*(v21 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
          v23 = v22;
        }

        else
        {
          v23 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v23 - 8) + 32))(v17, v18);
        swift_storeEnumTagMultiPayload();
        (*(v20 + 56))(v17, 0, 1, v19);
      }

      v24 = type metadata accessor for AttributedTextSelection(0);
      v25 = *(v24 + 20);
      v26 = type metadata accessor for AttributeContainer();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v18[v25], 1, v26))
      {
        v28 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v17[v25], &v18[v25], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v27 + 32))(&v17[v25], &v18[v25], v26);
        (*(v27 + 56))(&v17[v25], 0, 1, v26);
      }

      v17[*(v24 + 24)] = v18[*(v24 + 24)];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for BindingStorage()
{
  result = type metadata accessor for BindingStorage.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ChangedValues and conformance ChangedValues()
{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues;
  if (!lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChangedValues and conformance ChangedValues);
  }

  return result;
}

void _s7SwiftUI23AttributedTextSelectionV7IndicesOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined assign with take of AttributedTextSelection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (AttributedTextSelection?, AttributedTextSelection?)()
{
  if (!lazy cache variable for type metadata for (AttributedTextSelection?, AttributedTextSelection?))
  {
    type metadata accessor for AttributedTextSelection?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedTextSelection?, AttributedTextSelection?));
    }
  }
}

uint64_t outlined init with copy of BindingStorage.Storage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttributedTextSelection.Indices(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LimitedAvailabilityToolbarContent.init<A>(erasing:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized LimitedAvailabilityToolbarContent.init<A>(erasing:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t static LimitedAvailabilityToolbarContent._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a2 + 60);
  v6 = a2[3];
  v28 = a2[2];
  *v29 = v6;
  *&v29[12] = v5;
  v7 = a2[1];
  v26 = *a2;
  v27 = v7;
  v8 = *&v29[16];
  *&v14 = v6;
  DWORD2(v14) = DWORD2(v6);

  PreferencesInputs.makeIndirectOutputs()();

  v9 = *&v22[0];
  v10 = DWORD2(v22[0]);
  v11 = AGSubgraphGetCurrent();
  if (!v11)
  {
    __break(1u);
  }

  *&v23[12] = *&v29[12];
  v22[3] = v28;
  *v23 = *v29;
  LODWORD(v22[0]) = v4;
  *(&v22[0] + 1) = v11;
  *&v24 = v9;
  DWORD2(v24) = v10;
  v25 = *&v29[16];
  v18 = *v29;
  v19 = *&v23[16];
  v20 = v24;
  v21 = *&v29[16];
  v22[1] = v26;
  v22[2] = v27;
  v14 = v22[0];
  v15 = v26;
  v16 = v27;
  v17 = v28;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(&v26, v13);
  lazy protocol witness table accessor for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityToolbarContent.IndirectOutputs(v22);
  *&v14 = v9;
  DWORD2(v14) = v10;

  v13[0] = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  return result;
}

void LimitedAvailabilityToolbarContent.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 120))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 120) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityToolbarContent.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityToolbarContent.IndirectOutputs.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = v2;
  v29[0] = *(a1 + 64);
  *(v29 + 12) = *(a1 + 76);
  v25 = v3;
  v26 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v24 = *(a1 + 88);
  v22 = v5;
  v23 = v6;
  v21 = v4;
  swift_beginAccess();
  v7 = *(v27 + 48);
  v30[1] = *(v27 + 32);
  v30[2] = v7;
  v8 = *(v27 + 80);
  v30[3] = *(v27 + 64);
  v30[4] = v8;
  v30[0] = *(v27 + 16);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v9 = swift_allocObject();
  memmove((v9 + 16), (v27 + 16), 0x50uLL);
  outlined init with copy of _ToolbarInputs(&v26, &v19);
  outlined init with copy of CachedEnvironment(v30, &v19);

  v10 = *(a1 + 96);
  v11 = *(a1 + 104);

  v12 = *AGGraphGetValue();
  LODWORD(v15) = *a1;
  v31 = v25;
  *v32 = v9;
  *&v32[8] = v21;
  *&v32[24] = v22;
  *&v32[40] = v23;
  *&v32[56] = v24;
  *&v20[16] = *&v32[16];
  *&v20[32] = *&v32[32];
  *&v20[44] = *&v32[44];
  v19 = v25;
  *v20 = *v32;
  v13 = *(*v12 + 80);

  outlined init with copy of _ToolbarInputs(&v31, v33);
  v13(&v17, &v15, &v19);

  v33[2] = *&v20[16];
  v34[0] = *&v20[32];
  *(v34 + 12) = *&v20[44];
  v33[0] = v19;
  v33[1] = *v20;
  outlined destroy of _ToolbarInputs(v33);
  *&v19 = v10;
  DWORD2(v19) = v11;
  v15 = v17;
  v16 = v18;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v19 = v25;
  *v20 = v9;
  *&v20[8] = v21;
  *&v20[24] = v22;
  *&v20[40] = v23;
  *&v20[56] = v24;
  return outlined destroy of _ToolbarInputs(&v19);
}

uint64_t LimitedAvailabilityToolbarContentStorage._makeToolbar(content:inputs:)(int *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = a2[3];
  v12[2] = a2[2];
  v13[0] = v5;
  *(v13 + 12) = *(a2 + 60);
  v6 = a2[1];
  v12[0] = *a2;
  v12[1] = v6;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  v11 = v4;
  type metadata accessor for LimitedAvailabilityToolbarContentStorage.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(v8 + 32))(v10, v12, v7, v8);
}

uint64_t LimitedAvailabilityToolbarContentStorage.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilityToolbarContentStorage();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(*(a1 - 8) + 16);
  v6 = v4 + *(*v4 + 112);

  return v5(a2, v6, a1);
}

uint64_t specialized LimitedAvailabilityToolbarContent.init<A>(erasing:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilityToolbarContentStorage();
  (*(v4 + 16))(v6, a1, a2);
  return LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v6);
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityToolbarContent.IndirectOutputs and conformance LimitedAvailabilityToolbarContent.IndirectOutputs);
  }

  return result;
}

void destroy for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1)
{

  v2 = *(a1 + 120);
}

uint64_t initializeWithCopy for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  v7 = v3;

  v8 = v6;
  return a1;
}

uint64_t assignWithCopy for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a1 + 120);
  v8 = *(a2 + 120);
  *(a1 + 120) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for LimitedAvailabilityToolbarContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v4 = *(a1 + 120);
  v5 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v5;

  return a1;
}

uint64_t View.navigationBarTitle(_:displayMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a4;
  v24 = a8;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  LOBYTE(a5) = *a5;
  View.navigationTitle(_:)(a1, a2, a3 & 1, v23, a6, a7, &v22 - v16);
  v29[0] = a5;
  v27 = a7;
  v28 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v19 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v25 = WitnessTable;
  v26 = v19;
  v20 = swift_getWitnessTable();
  View.navigationBarTitleDisplayMode(_:)(v29, v14, v20, v24);
  return (*(v15 + 8))(v17, v14);
}

uint64_t View.navigationBarTitle<A>(_:displayMode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18 = a5;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  LOBYTE(a2) = *a2;
  View.navigationTitle<A>(_:)(a1, a3, a4, &v17 - v11);
  v23 = a2;
  v21 = a4;
  v22 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v14 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v19 = WitnessTable;
  v20 = v14;
  v15 = swift_getWitnessTable();
  View.navigationBarTitleDisplayMode(_:)(&v23, v9, v15, v18);
  return (*(v10 + 8))(v12, v9);
}

uint64_t View.navigationBarBanner<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a1;
  v10[7] = a2;
  type metadata accessor for ToolbarItem();
  v8 = type metadata accessor for TupleToolbarContent();
  return View.toolbar<A>(content:)(partial apply for closure #1 in View.navigationBarBanner<A>(_:), v10, a3, v8, a5);
}

uint64_t closure #1 in View.navigationBarBanner<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ToolbarItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  if (one-time initialization token for principal != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.principal, v15);
  ToolbarItem<>.init(placement:content:)(v15, a1, a4, v9);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v9, v6, &protocol witness table for ToolbarItem<A, B>);
  v13 = *(v7 + 8);
  v13(v9, v6);
  static ToolbarContentBuilder.buildBlock<A>(_:)(v12, v6, &protocol witness table for ToolbarItem<A, B>);
  return (v13)(v12, v6);
}

Swift::Int NavigationBarItem.TitleDisplayMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode()
{
  result = lazy protocol witness table cache variable for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode;
  if (!lazy protocol witness table cache variable for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBarItem.TitleDisplayMode and conformance NavigationBarItem.TitleDisplayMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey>, &type metadata for NavigationBarBackButtonHiddenKey, &protocol witness table for NavigationBarBackButtonHiddenKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationBarBackButtonHiddenKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t destroy for UIKitPasteControl(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 25));
  outlined consume of Environment<Color?>.Content(*(a1 + 32), *(a1 + 40));
  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));
}

uint64_t initializeWithCopy for UIKitPasteControl(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 25);
  v8 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 25) = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  outlined copy of Environment<Color?>.Content(v9, v10);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  v13 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v13;

  return a1;
}

uint64_t assignWithCopy for UIKitPasteControl(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 25);
  v10 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = *(a1 + 16);
  v12 = *(a1 + 25);
  *(a1 + 16) = v8;
  v13 = *(a1 + 24);
  *(a1 + 24) = v10;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v11, v13, v12);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  outlined copy of Environment<Color?>.Content(v14, v15);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  outlined consume of Environment<Color?>.Content(v16, v17);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v18, v19);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  *(a1 + 64) = *(a2 + 64);

  v22 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v22;

  return a1;
}

uint64_t assignWithTake for UIKitPasteControl(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = *(a1 + 16);
  v11 = *(a1 + 25);
  *(a1 + 16) = a2[2];
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v10, v12, v11);
  v13 = *(a2 + 40);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v13;
  outlined consume of Environment<Color?>.Content(v14, v15);
  v16 = *(a2 + 56);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v16;
  outlined consume of Environment<Selector?>.Content(v17, v18);

  v19 = a2[10];
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = v19;

  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitPasteControl(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitPasteControl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIKitPasteControl.makeUIView(context:)(uint64_t a1)
{
  type metadata accessor for UIButton.Configuration.CornerStyle?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *(a1 + 40);
  v13 = *v1;
  v14 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = v12;
  v15 = *(v1 + 24);
  v16 = *(v1 + 25);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCD48]) init];
  specialized Environment.wrappedValue.getter(v13, v14, &v32);
  if (v32 != 0.0)
  {
    v31 = v32;
    v18 = EffectiveLabelStyle.displayMode.getter();
    if ((v19 & 1) == 0)
    {
      [v17 setDisplayMode_];
    }
  }

  v20 = v15 | (v16 << 8);
  v21 = v29;
  specialized Environment.wrappedValue.getter(v29, v20, &v32);
  if (v33 != 1)
  {
    v22 = MEMORY[0x1E69DC510];
    goto LABEL_9;
  }

  v22 = MEMORY[0x1E69DC508];
  if (*&v32 <= 1)
  {
    if (v32 == 0.0)
    {
      goto LABEL_11;
    }

LABEL_9:
    (*(v7 + 104))(v5, *v22, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v11, v5, v6);
    (*(v7 + 16))(v28, v11, v6);
    UIPasteControlConfiguration.cornerStyle.setter();
    (*(v7 + 8))(v11, v6);
    goto LABEL_12;
  }

  if (*&v32 != 2)
  {
    goto LABEL_9;
  }

LABEL_11:
  (*(v7 + 56))(v5, 1, 1, v6);
  outlined destroy of UIButton.Configuration.CornerStyle?(v5);
LABEL_12:
  specialized Environment.wrappedValue.getter(v21, v20, &v32);
  if ((v33 & 1) == 0)
  {
    [v17 setCornerRadius_];
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69DCD40]) initWithConfiguration_];
  [v23 setTarget_];
  LODWORD(v24) = 1144750080;
  [v23 setContentHuggingPriority:0 forAxis:v24];
  LODWORD(v25) = 1144750080;
  [v23 setContentHuggingPriority:1 forAxis:v25];

  return v23;
}

uint64_t EffectiveLabelStyle.displayMode.getter()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  outlined consume of Environment<CGFloat?>.Content(KeyPath, 0, 0);
  outlined consume of Environment<CGFloat?>.Content(v3, 0, 0);
  outlined consume of Environment<CGFloat?>.Content(v4, 0, 0);
  if (v1 == &type metadata for TitleAndIconLabelStyle)
  {
    return 0;
  }

  if (v1 == &type metadata for TitleOnlyLabelStyle)
  {
    return 2;
  }

  return v1 == &type metadata for IconOnlyLabelStyle;
}

uint64_t UIKitPasteControl.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  type metadata accessor for UIButton.Configuration.CornerStyle?();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v37 - v13;
  v14 = *(a2 + 40);
  v15 = *v2;
  v16 = *(v2 + 8);
  v38 = *(v2 + 16);
  v17 = *(v2 + 24);
  v18 = *(v2 + 25);
  v40 = *(v2 + 32);
  v39 = *(v2 + 40);
  v42 = *(v2 + 48);
  v41 = *(v2 + 56);
  v43 = *(v2 + 64);
  v19 = *(v2 + 80);
  v44 = v14;
  v45 = v19;
  v46 = a1;
  v20 = [a1 configuration];
  specialized Environment.wrappedValue.getter(v15, v16, &v48);
  if (v48 != 0.0)
  {
    v47 = *&v48;
    v21 = EffectiveLabelStyle.displayMode.getter();
    if ((v22 & 1) == 0 && v21 != [v20 displayMode])
    {
      MEMORY[0x18D009810](0xD000000000000025, 0x800000018CD48050);
    }
  }

  v23 = v17 | (v18 << 8);
  v24 = v38;
  specialized Environment.wrappedValue.getter(v38, v23, &v48);
  if (v49 == 1)
  {
    v25 = MEMORY[0x1E69DC508];
    v26 = v37;
    if (*&v48 > 1)
    {
      if (*&v48 == 2)
      {
LABEL_14:
        (*(v9 + 56))(v7, 1, 1, v8);
        outlined destroy of UIButton.Configuration.CornerStyle?(v7);
        goto LABEL_15;
      }
    }

    else if (v48 == 0.0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69DC510];
    v26 = v37;
  }

  (*(v9 + 104))(v7, *v25, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v26, v7, v8);
  UIPasteControlConfiguration.cornerStyle.getter();
  lazy protocol witness table accessor for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v9 + 8);
  v28(v11, v8);
  if ((v27 & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000002CLL, 0x800000018CD47FF0);
  }

  v28(v26, v8);
LABEL_15:
  specialized Environment.wrappedValue.getter(v24, v23, &v48);
  if ((v49 & 1) == 0)
  {
    v29 = v48;
    [v20 cornerRadius];
    if (v29 != v30)
    {
      MEMORY[0x18D009810](0xD000000000000027, 0x800000018CD48020);
    }
  }

  v31 = specialized Environment.wrappedValue.getter(v40, v39);
  if (v31)
  {
    type metadata accessor for UIColor();
    v31 = UIColor.init(_:)(v31);
  }

  v32 = v46;
  [v46 setTintColor_];

  [v32 setEnabled_];
  v33 = v45;
  v34 = v44 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper;
  v35 = *(v44 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  *v34 = v43;
  *(v34 + 16) = v33;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  PasteHelper.ConfigurationSupport.pasteHelper.didset(v35);
  outlined consume of OnInsertConfiguration?(v35);
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitPasteControl@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for PasteHelper.ConfigurationSupport();
  v10 = *(v1 + 64);
  v5 = objc_allocWithZone(v4);

  v6 = [v5 init];
  v7 = &v6[OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper];
  v8 = *&v6[OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper];
  *v7 = v10;
  *(v7 + 2) = v3;

  PasteHelper.ConfigurationSupport.pasteHelper.didset(v8);
  outlined consume of OnInsertConfiguration?(v8);

  *a1 = v6;
  return result;
}

void type metadata accessor for UIButton.Configuration.CornerStyle?()
{
  if (!lazy cache variable for type metadata for UIButton.Configuration.CornerStyle?)
  {
    type metadata accessor for UIButton.Configuration.CornerStyle();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIButton.Configuration.CornerStyle?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle()
{
  result = lazy protocol witness table cache variable for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle;
  if (!lazy protocol witness table cache variable for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle)
  {
    type metadata accessor for UIButton.Configuration.CornerStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIButton.Configuration.CornerStyle and conformance UIButton.Configuration.CornerStyle);
  }

  return result;
}

uint64_t outlined destroy of UIButton.Configuration.CornerStyle?(uint64_t a1)
{
  type metadata accessor for UIButton.Configuration.CornerStyle?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WindowContentShapeSizingBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WindowContentShapeSizingBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for WindowContentShapeSizingBehavior.Value(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for WindowContentShapeSizingBehavior.Value(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t TabContent.dropDestination<A>(for:action:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x18D009810](0xD00000000000003FLL, 0x800000018CD480C0);
  v5 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v4, a1, v5, a2);
}

uint64_t TabContent.visibility(_:for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x18D009810](0xD000000000000035, 0x800000018CD48100);
  v5 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v4, a1, v5, a2);
}

uint64_t TabView.init<A>(selection:sidebarVisibility:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v25[1] = a5;
  v26 = a4;
  v27 = a3;
  v28 = a2;
  v29 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(a8, 1, 1, v16);
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 8))(a8, v19);
  (*(v17 + 16))(a8, a1, v16);
  v20 = (v18)(a8, 0, 1, v16);
  v26(v20);

  (*(v17 + 8))(a1, v16);
  v30 = a6;
  v31 = a7;
  v21 = v29;
  v32 = a9;
  v33 = v29;
  v22 = type metadata accessor for TabContentBuilder.Content();
  WitnessTable = swift_getWitnessTable();
  v30 = a6;
  v31 = v22;
  v32 = a9;
  v33 = WitnessTable;
  type metadata accessor for TabView();
  return PickerBuilder.Content.init(_:)(v15, a6, a7, a9, v21);
}

uint64_t TabView.init<A>(sidebarVisibility:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  a4[1] = 0;
  v10(v7);

  v11 = MEMORY[0x1E69E73E0];
  v16 = MEMORY[0x1E69E73E0];
  v17 = a2;
  v12 = MEMORY[0x1E69E73F0];
  v18 = MEMORY[0x1E69E73F0];
  v19 = a3;
  v13 = type metadata accessor for TabContentBuilder.Content();
  WitnessTable = swift_getWitnessTable();
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = WitnessTable;
  type metadata accessor for TabView();
  return PickerBuilder.Content.init(_:)(v9, v11, a2, v12, a3);
}

uint64_t static AdaptiveTabViewStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for AdaptableTabViewRoot();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for AdaptiveTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static AdaptiveTabViewStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for AdaptableTabViewRoot();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for AdaptiveTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<InAdaptableTabViewContext> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t AdaptiveTabViewStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _TabViewValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t AdaptiveTabViewStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  type metadata accessor for Binding();
  v24 = type metadata accessor for Optional();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v23 - v8;
  v32 = &type metadata for AdaptiveTabViewStyle;
  v33 = a2;
  v34 = &protocol witness table for AdaptiveTabViewStyle;
  v35 = a3;
  v10 = type metadata accessor for _TabViewValue();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for AdaptableTabViewRoot();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v23 = type metadata accessor for TabViewStyleConfiguration.Content();
  v16 = type metadata accessor for _VariadicView.Tree();
  v25 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  AdaptiveTabViewStyle.Body.base.getter(v12);
  (*(v7 + 32))(v9, v12, v24);
  v19 = default argument 0 of AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)();
  AdaptableTabViewRoot.init(clientSidebarVisibility:selection:adaptationMode:)(v19, v21, v20 & 0x1FF, v9, 1, v15);
  v27 = a2;
  v28 = a3;
  v29 = a1;
  _VariadicView.Tree.init(_:content:)();
  WitnessTable = swift_getWitnessTable();
  v31 = &protocol witness table for TabViewStyleConfiguration<A>.Content;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  View.input<A>(_:)();
  return (*(v25 + 8))(v18, v16);
}

uint64_t closure #1 in AdaptiveTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for AdaptiveTabViewStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for AdaptiveTabViewStyle;
  v10[3] = a3;
  v3 = type metadata accessor for _TabViewValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  AdaptiveTabViewStyle.Body.base.getter(v10 - v5);
  (*(v4 + 8))(v6, v3);
  v7 = type metadata accessor for TabViewStyleConfiguration.Content();
  v8 = static ViewBuilder.buildExpression<A>(_:)(v7, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
  return static ViewBuilder.buildExpression<A>(_:)(v8, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance AdaptiveTabViewStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AdaptableTabViewRoot();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<InAdaptableTabViewContext>, lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext, &type metadata for InAdaptableTabViewContext, MEMORY[0x1E697FD28]);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t TabGroup<>.init<>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(v11);
  a1(v15);
  return TabSection.init(header:content:footer:)(v13, v9, v16, a2, a3, MEMORY[0x1E6981E70], a4);
}

uint64_t TabGroup<>.init<>(content:header:compact:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v25 = a3;
  v26 = a2;
  v24 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19(v16);
  v21 = a1(v20);
  v26(v21);
  return TabSection.init(header:content:footer:)(v18, v14, v11, a4, a5, a7, v24);
}

uint64_t TabGroup<>.init<>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8(v5);
  return TabSection.init(header:content:footer:)(v9, v7, v10, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3);
}

uint64_t outlined consume of Label<Text, Image>?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t TabGroup<>.init<>(_:image:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v19 = a3;
  v20 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = Image.init(_:bundle:)();
  v16 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v21[0] = v8;
  v21[1] = v10;
  v21[2] = v12 & 1;
  v21[3] = v14;
  v21[4] = v15;
  v22 = 1;
  a2(v16);
  return TabSection.init(header:content:footer:)(v21, v7, v17, &type metadata for DefaultTabLabel, a5, MEMORY[0x1E6981E70], v20);
}

uint64_t TabGroup<>.init<>(_:image:content:)@<X0>(char *a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v30[1] = a3;
  v31 = a2;
  v32 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - v15;
  v17 = *(v10 + 16);
  v17(v30 - v15, a1, v9, v14);
  (v17)(v12, v16, v9);
  v18 = Text.init(_:)();
  v20 = v19;
  v22 = v21;
  LOBYTE(v35[0]) = v23 & 1;
  v24 = Image.init(_:bundle:)();
  v25 = *(v10 + 8);
  v25(v16, v9);
  v26 = LOBYTE(v35[0]);
  v27 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v35[0] = v18;
  v35[1] = v20;
  v35[2] = v26;
  v35[3] = v22;
  v35[4] = v24;
  v36 = 1;
  v31(v27);
  v25(a1, v9);
  return TabSection.init(header:content:footer:)(v35, v8, v28, &type metadata for DefaultTabLabel, v33, MEMORY[0x1E6981E70], v32);
}

uint64_t TabGroup<>.init<>(_:image:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[2] = a3;
  v26 = a2;
  v27 = a4;
  v28 = a9;
  v25[0] = a5;
  v25[1] = a6;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = Image.init(_:bundle:)();
  v22 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v29[0] = v14;
  v29[1] = v16;
  v29[2] = v18 & 1;
  v29[3] = v20;
  v29[4] = v21;
  v30 = 1;
  v23 = v26(v22);
  (v25[0])(v23);
  return TabSection.init(header:content:footer:)(v29, v13, v10, &type metadata for DefaultTabLabel, a7, a8, v27);
}

uint64_t TabGroup<>.init<>(_:image:content:compact:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v40 = a7;
  v41 = a4;
  v43 = a6;
  v44 = a5;
  v42 = a3;
  v38 = a1;
  v39 = a2;
  v46 = a8;
  v47 = a9;
  v45 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v24 = *(v17 + 16);
  v24(&v37 - v22, a1, v16, v21);
  (v24)(v19, v23, v16);
  v25 = Text.init(_:)();
  v27 = v26;
  v29 = v28;
  LOBYTE(v48[0]) = v30 & 1;
  v31 = Image.init(_:bundle:)();
  v32 = *(v17 + 8);
  v32(v23, v16);
  v33 = LOBYTE(v48[0]);
  v34 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v48[0] = v25;
  v48[1] = v27;
  v48[2] = v33;
  v48[3] = v29;
  v48[4] = v31;
  v49 = 1;
  v35 = v42(v34);
  v44(v35);
  v32(v38, v16);
  return TabSection.init(header:content:footer:)(v48, v15, v12, &type metadata for DefaultTabLabel, v40, v47, v46);
}

uint64_t TabGroup<>.init<A>(_:image:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v37 = a9;
  v38 = a7;
  v35 = a5;
  v36 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v25, a1, v26, v23);
  a13(&v39, v25, a2, a3, a8, a12);
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = 1;
  v36(v32);
  (*(v21 + 8))(a1, a8);
  return TabSection.init(header:content:footer:)(&v39, v19, v33, &type metadata for DefaultTabLabel, a6, MEMORY[0x1E6981E70], v37);
}

uint64_t TabGroup<>.init<A>(_:image:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t *__return_ptr, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v39 = a8;
  v40 = a5;
  v42 = a7;
  v43 = a6;
  v41 = a4;
  v45 = a9;
  v46 = a11;
  v44 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a12 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v29, a1, a12, v27);
  a17(&v47, v29, a2, a3, a12, a16);
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v34 = v50;
  v33 = v51;
  v35 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v50 = v34;
  v51 = v33;
  v52 = 1;
  v36 = v41(v35);
  v43(v36);
  (*(v25 + 8))(a1, a12);
  return TabSection.init(header:content:footer:)(&v47, v24, v21, &type metadata for DefaultTabLabel, v39, v44, v45);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, void (*a4)(uint64_t)@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  specialized Image.init(systemName:)(a2, a3);
  v20 = v19;
  v21 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v26[0] = v12;
  v26[1] = v14;
  v26[2] = v16 & 1;
  v26[3] = v18;
  v26[4] = v20;
  v27 = 1;
  a4(v21);
  return TabSection.init(header:content:footer:)(v26, v11, v22, &type metadata for DefaultTabLabel, a7, MEMORY[0x1E6981E70], v25);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a6;
  v40 = a7;
  v36[1] = a5;
  v37 = a4;
  v38 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v36 - v19;
  v21 = *(v14 + 16);
  v21(v36 - v19, a1, v13, v18);
  (v21)(v16, v20, v13);
  v22 = Text.init(_:)();
  v24 = v23;
  v26 = v25;
  LOBYTE(v41[0]) = v27 & 1;
  v28 = specialized Image.init(systemName:)(a2, a3);
  v30 = v29;
  v31 = *(v14 + 8);
  v31(v20, v13, v28);
  v32 = LOBYTE(v41[0]);
  v33 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v41[0] = v22;
  v41[1] = v24;
  v41[2] = v32;
  v41[3] = v26;
  v41[4] = v30;
  v42 = 1;
  v37(v33);
  (v31)(a1, v13);
  return TabSection.init(header:content:footer:)(v41, v12, v34, &type metadata for DefaultTabLabel, v39, MEMORY[0x1E6981E70], v38);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t (*a4)(uint64_t)@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30[2] = a5;
  v31 = a4;
  v32 = a6;
  v33 = a11;
  v30[0] = a7;
  v30[1] = a8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  specialized Image.init(systemName:)(a2, a3);
  v26 = v25;
  v27 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v34[0] = v18;
  v34[1] = v20;
  v34[2] = v22 & 1;
  v34[3] = v24;
  v34[4] = v26;
  v35 = 1;
  v28 = v31(v27);
  (v30[0])(v28);
  return TabSection.init(header:content:footer:)(v34, v17, v14, &type metadata for DefaultTabLabel, a9, a10, v32);
}

uint64_t TabGroup<>.init<>(_:systemImage:content:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v45 = a5;
  v47 = a7;
  v48 = a6;
  v46 = a4;
  v42 = a1;
  v43 = a3;
  v50 = a9;
  v51 = a10;
  v49 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocalizedStringResource();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v26 = *(v19 + 16);
  v26(&v41 - v24, a1, v18, v23);
  (v26)(v21, v25, v18);
  v27 = Text.init(_:)();
  v29 = v28;
  v31 = v30;
  LOBYTE(v52[0]) = v32 & 1;
  v33 = specialized Image.init(systemName:)(a2, v43);
  v35 = v34;
  v36 = *(v19 + 8);
  v36(v25, v18, v33);
  v37 = LOBYTE(v52[0]);
  v38 = outlined consume of Label<Text, Image>?(0, 0, 0, 0);
  v52[0] = v27;
  v52[1] = v29;
  v52[2] = v37;
  v52[3] = v31;
  v52[4] = v35;
  v53 = 1;
  v39 = v46(v38);
  v48(v39);
  (v36)(v42, v18);
  return TabSection.init(header:content:footer:)(v52, v17, v14, &type metadata for DefaultTabLabel, v44, v51, v50);
}

uint64_t TabContent.customizationBehavior(_:for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x18D009810](0xD000000000000040, 0x800000018CD48140);
  v5 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v4, a1, v5, a2);
}

uint64_t TabContent.defaultVisibility(_:for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x18D009810](0xD00000000000003CLL, 0x800000018CD48190);
  v5 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v4, a1, v5, a2);
}

void View.tabViewSidebarCustomization(_:)()
{
  MEMORY[0x18D009810](0xD000000000000042, 0x800000018CD481D0);

  JUMPOUT(0x18D00A570);
}

unint64_t TabSidebarCustomization.init()@<X0>(uint64_t a1@<X8>)
{
  UUID.init()();
  v2 = type metadata accessor for TabViewCustomization();
  v3 = *(v2 + 20);
  v4 = MEMORY[0x1E69E7CC0];
  *(a1 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = *(v2 + 24);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(v4);
  *(a1 + v5) = result;
  return result;
}

uint64_t TabSidebarCustomization.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for TabViewCustomization() + 20));
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, 0), (v7 & 1) != 0))
  {
    return *(*(v5 + 56) + 2 * v6);
  }

  else
  {
    return 0;
  }
}

uint64_t key path setter for TabSidebarCustomization.subscript(visibility:) : TabSidebarCustomization(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  specialized TabViewCustomization.subscript.setter(v5, v3, v4);
}

uint64_t TabSidebarCustomization.subscript.setter(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  specialized TabViewCustomization.subscript.setter(a1, a2, a3);
}

uint64_t (*TabSidebarCustomization.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = TabSidebarCustomization.subscript.getter(a2, a3);
  return TabSidebarCustomization.subscript.modify;
}

uint64_t TabSidebarCustomization.subscript.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 24);

  specialized TabViewCustomization.subscript.setter(v3, v2, v1);
}

uint64_t TabSidebarCustomization.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for TabViewCustomization() + 24));
  v8 = MEMORY[0x1E69E7CC0];
  if (*(v7 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, 0);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = TabSectionCustomizationEntry.clientOrder.getter(v11);

  if (v12)
  {
    v14 = *(v12 + 16);
    if (v14)
    {
      v22 = a3;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v15 = v8;
      v16 = (v12 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);

        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 24 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        *(v21 + 48) = 0;
        v16 += 2;
        --v14;
      }

      while (v14);

      a3 = v22;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  return result;
}

uint64_t key path setter for TabSidebarCustomization.subscript(groupID:) : TabSidebarCustomization(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;

  return TabSidebarCustomization.subscript.setter(&v6, v3, v4);
}

uint64_t TabSidebarCustomization.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (*(v6 + 16))
  {
    v7 = *(type metadata accessor for TabViewCustomization() + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + v7);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, a3, 0, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v10;
  }

  else
  {

    type metadata accessor for TabViewCustomization();
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, 0, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }

  return result;
}

uint64_t (*TabSidebarCustomization.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  TabSidebarCustomization.subscript.getter(a2, a3, a1);
  return TabSidebarCustomization.subscript.modify;
}

uint64_t TabSidebarCustomization.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);
  v5 = a1[2];
  v6 = a1[3];
  if (a2)
  {
    if (v4)
    {
      v7 = *(type metadata accessor for TabViewCustomization() + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v6 + v7);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v2, v5, 0, isUniquelyReferenced_nonNull_native);

      *(v6 + v7) = v12;
    }

    else
    {

      type metadata accessor for TabViewCustomization();
      specialized Dictionary._Variant.removeValue(forKey:)(v2, v5, 0, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
    }
  }

  else
  {
    if (v4)
    {
      v9 = *(type metadata accessor for TabViewCustomization() + 24);

      v10 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v6 + v9);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v2, v5, 0, v10);

      *(v6 + v9) = v13;
      return result;
    }

    type metadata accessor for TabViewCustomization();
    specialized Dictionary._Variant.removeValue(forKey:)(v2, v5, 0, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }
}

Swift::Void __swiftcall TabSidebarCustomization.reset()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for TabViewCustomization();
  v4 = *(v3 + 20);

  *(v0 + v4) = v2;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(v1);
  v6 = *(v3 + 24);

  *(v0 + v6) = v5;
}

Swift::Void __swiftcall TabSidebarCustomization.resetVisibility()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = *(type metadata accessor for TabViewCustomization() + 20);

  *(v0 + v2) = v1;
}

Swift::Void __swiftcall TabSidebarCustomization.resetGroupOrder(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *(type metadata accessor for TabViewCustomization() + 24);

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object, 0);
  v8 = v7;

  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + v5);
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    outlined consume of TabCustomizationID.Base();

    specialized _NativeDictionary._delete(at:)(v6, v10);
    *(v2 + v5) = v10;
  }
}

Swift::Void __swiftcall TabSidebarCustomization.resetGroupOrder()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = *(type metadata accessor for TabViewCustomization() + 24);

  *(v0 + v2) = v1;
}

BOOL static TabSidebarCustomization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v4 = type metadata accessor for TabViewCustomization();
    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0dE5EntryVTt1g5(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0d7SectionE5EntryVTt1g5(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))))
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TabSidebarCustomization.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000018CD48310 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabSidebarCustomization.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabSidebarCustomization.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabSidebarCustomization.encode(to:)(void *a1)
{
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabSidebarCustomization.CodingKeys>, lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for TabViewCustomization();
  lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabViewCustomization and conformance TabViewCustomization, type metadata accessor for TabViewCustomization);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t TabSidebarCustomization.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for TabViewCustomization();
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabSidebarCustomization.CodingKeys>, lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TabSidebarCustomization();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = *(v3 + 20);
  v13 = MEMORY[0x1E69E7CC0];
  *&v11[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = *(v3 + 24);
  *&v11[v14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();
  v15 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v21;
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabViewCustomization and conformance TabViewCustomization, type metadata accessor for TabViewCustomization);
    v17 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined assign with take of TabViewCustomization(v17, v11);
    outlined init with copy of TabSidebarCustomization(v11, v20, type metadata accessor for TabSidebarCustomization);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TabSidebarCustomization(v11, type metadata accessor for TabSidebarCustomization);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v4 = type metadata accessor for TabViewCustomization();
    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0dE5EntryVTt1g5(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0d7SectionE5EntryVTt1g5(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))))
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TabSidebarCustomization(void *a1)
{
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabSidebarCustomization.CodingKeys>, lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys, &unk_1EFFBBD40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for TabViewCustomization();
  lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabViewCustomization and conformance TabViewCustomization, type metadata accessor for TabViewCustomization);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void TabGroupCustomizationEntry.childrenOrder.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v6 = (v1 + 48 + 24 * v3);
    while (v2 != v3)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      ++v3;
      v7 = v6 + 24;
      v8 = *v6;
      v6 += 24;
      if ((v8 & 1) == 0)
      {
        v10 = *(v7 - 5);
        v9 = *(v7 - 4);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
        }

        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        }

        *(v5 + 16) = v12 + 1;
        v13 = v5 + 24 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        *(v13 + 48) = 0;
        goto LABEL_3;
      }
    }

    v14 = *(v5 + 16);
    if (v14)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v15 = v5 + 48;
      do
      {
        v16 = *(v15 - 16);
        v17 = *(v15 - 8);
        outlined copy of TabCustomizationID.Base();
        v19 = *(v4 + 16);
        v18 = *(v4 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        }

        *(v4 + 16) = v19 + 1;
        v20 = v4 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v15 += 24;
        --v14;
      }

      while (v14);
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TabGroupCustomizationEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6572646C696863 && a2 == 0xEB00000000734449)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabGroupCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabGroupCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TabGroupCustomizationEntry.encode(to:)(void *a1)
{
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabGroupCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[3] = v8;
  type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for [TabCustomizationID], &type metadata for TabCustomizationID, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [TabCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TabCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t TabGroupCustomizationEntry.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x18D00F6F0](v2);
  if (v2)
  {
    v4 = (v1 + 48);
    do
    {
      v5 = *v4;
      v4 += 24;
      MEMORY[0x18D00F6F0](v5);

      String.hash(into:)();
      result = outlined consume of TabCustomizationID.Base();
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int TabGroupCustomizationEntry.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t TabGroupCustomizationEntry.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabGroupCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys, &unk_1EFFBBCB0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v12;
    type metadata accessor for [TabCustomizationID](0, &lazy cache variable for type metadata for [TabCustomizationID], &type metadata for TabCustomizationID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [TabCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TabCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TabGroupCustomizationEntry()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TabGroupCustomizationEntry()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t SceneStorage.init<A>(wrappedValue:_:store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for SceneStorage<TabSidebarCustomization>, type metadata accessor for TabSidebarCustomization, type metadata accessor for SceneStorage);
  v10 = v9;
  a5[2] = 0;
  a5[3] = 0;
  *(a5 + *(v9 + 36)) = 0;
  *a5 = a2;
  a5[1] = a3;
  outlined init with take of TabSidebarCustomization(a1, a5 + *(v9 + 32), type metadata accessor for TabSidebarCustomization);
  type metadata accessor for TransformBox<TabSidebarCustomizationTransform>(0, &lazy cache variable for type metadata for TransformBox<TabSidebarCustomizationTransform>, &unk_1EFFBBC20, &protocol witness table for TabSidebarCustomizationTransform, type metadata accessor for TransformBox);
  result = swift_allocObject();
  *(a5 + *(v10 + 40)) = result;
  return result;
}

{

  type metadata accessor for SceneStorage<TabViewCustomization>(0, &lazy cache variable for type metadata for SceneStorage<TabViewCustomization>, type metadata accessor for TabViewCustomization, type metadata accessor for SceneStorage);
  v10 = v9;
  a5[2] = 0;
  a5[3] = 0;
  *(a5 + *(v9 + 36)) = 0;
  *a5 = a2;
  a5[1] = a3;
  outlined init with take of TabViewCustomization(a1, a5 + *(v9 + 32), type metadata accessor for TabViewCustomization);
  type metadata accessor for TransformBox<TabViewCustomizationTransform>();
  result = swift_allocObject();
  *(a5 + *(v10 + 40)) = result;
  return result;
}

uint64_t TabSidebarCustomizationTransform.readValue(from:key:read:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  *a4 = 1;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v7, v13);
    outlined destroy of AnyHashable(v12);
    result = swift_dynamicCast();
    if (result)
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      *(a5 + 24) = type metadata accessor for TabSidebarCustomization();
      __swift_allocate_boxed_opaque_existential_1(a5);
      lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      outlined consume of Data._Representation(a2, a3);
    }
  }

  else
  {
    result = outlined destroy of AnyHashable(v12);
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

void static TabSidebarCustomizationTransform.readValue(from:key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x18D00C850](a2, a3);
  v7 = [a1 dataForKey_];

  if (v7)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    *(a4 + 24) = type metadata accessor for TabSidebarCustomization();
    __swift_allocate_boxed_opaque_existential_1(a4);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v8, v10);
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

uint64_t TabContent.pinned(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x18D009810](0xD00000000000002DLL, 0x800000018CD48220);
  v5 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v4, a1, v5, a2);
}

uint64_t TabContent.sidebarOnly(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x18D009810](0xD000000000000032, 0x800000018CD48250);
  v5 = MEMORY[0x1E697E108];

  return TabContent.modifier<A>(_:)(v4, a1, v5, a2);
}

void View.tabViewMode(content:)()
{
  MEMORY[0x18D009810](0xD000000000000038, 0x800000018CD48290);

  JUMPOUT(0x18D00A570);
}

uint64_t Tab<>.init<>(systemItem:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D009810](0xD000000000000033, 0x800000018CD482D0, v16);
  v19 = (*(v14 + 16))(v18, a2, a4);
  a3(v19);
  Tab.init<>(value:content:)(v18, v12, a4, a5, a6);
  return (*(v14 + 8))(a2, a4);
}

uint64_t Tab<>.init<A>(systemItem:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  MEMORY[0x18D009810](0xD000000000000033, 0x800000018CD482D0, v14);
  v17 = *(a5 - 8);
  (*(v17 + 16))(v16, a2, a5);
  v18 = (*(v17 + 56))(v16, 0, 1, a5);
  a3(v18);
  Tab.init<>(value:content:)(v16, v12, v13, a4, a6);
  return (*(v17 + 8))(a2, a5);
}

uint64_t Tab<>.init<>(systemItem:content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  MEMORY[0x18D009810](0xD000000000000033, 0x800000018CD482D0);

  return Tab<>.init<>(content:)(a1, a2, a3);
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

unint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    outlined destroy of AnyHashable(*(v10 + 48) + 40 * v8);
    *a2 = *(*(v10 + 56) + 8 * v8);
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    outlined destroy of IdentifiedDocumentGroupConfiguration(*(v10 + 48) + (v8 << 7));
    outlined init with take of WeakBox<Swift.AnyObject>(*(v10 + 56) + 8 * v8, a2, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78], type metadata accessor for SceneStorage<TabSidebarCustomization>);
    result = specialized _NativeDictionary._delete(at:)(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, char a3)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, a3, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of SceneID, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, a3, specialized __RawDictionaryStorage.find<A>(_:), outlined consume of TabCustomizationID.Base, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

unint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v10;
    }

    outlined destroy of HashableWeakBox<UIViewController>(*(v9 + 48) + 16 * v7);
    *a2 = *(*(v9 + 56) + v7);
    result = specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), void (*a5)(void, void, void), void (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v11 = v7;
  v12 = a4(a1, a2, a3 & 1);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v7;
  v19 = *v11;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a7();
    v16 = v19;
  }

  a5(*(*(v16 + 48) + 24 * v14), *(*(v16 + 48) + 24 * v14 + 8), *(*(v16 + 48) + 24 * v14 + 16));
  v17 = *(*(v16 + 56) + 8 * v14);
  a6(v14, v16);
  *v11 = v16;
  return v17;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for CommandOperation();
    v18 = *(v11 - 8);
    outlined init with take of TabSidebarCustomization(v10 + *(v18 + 72) * v7, a2, type metadata accessor for CommandOperation);
    specialized _NativeDictionary._delete(at:)(v7, v9, type metadata accessor for CommandOperation);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for CommandOperation();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((*(v9 + 56) + 40 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v15;
    }

    outlined destroy of TableRowID(*(v9 + 48) + 48 * v7);
    v10 = *(v9 + 56) + 56 * v7;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = *(v10 + 48);
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v13;
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    *(a2 + 49) = 0;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 256;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, void (*a2)(int64_t, _OWORD *)@<X1>, void (*a3)(void, double)@<X2>, uint64_t (*a4)(_BYTE *, unint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()(a3, a4);
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = type metadata accessor for CodingUserInfoKey();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    a2(*(v15 + 56) + 32 * v13, a5);
    specialized _NativeDictionary._delete(at:)(v13, v15);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 24 * v8);
  specialized _NativeDictionary._delete(at:)(v8, v10);
  *v5 = v10;
  return v11;
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
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      if ((v9 - 2) >= 3)
      {
        MEMORY[0x18D00F6F0](0);
        v10 = v9 & 1;
      }

      else
      {
        v10 = v9 - 1;
      }

      MEMORY[0x18D00F6F0](v10);
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
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
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
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);
      if ((v12 - 2) >= 3)
      {
        MEMORY[0x18D00F6F0](0);
        v13 = v12 & 1;
      }

      else
      {
        v13 = v12 - 1;
      }

      MEMORY[0x18D00F6F0](v13);
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
        goto LABEL_13;
      }

      if (v3 >= v14)
      {
LABEL_13:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + v9);
        if (16 * v3 != v9 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
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
      MEMORY[0x18D00F6F0](v12);
      MEMORY[0x18D00F6F0](v13);
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
    v31 = v4;
    do
    {
      v11 = v7;
      v12 = v2;
      v13 = *(v2 + 48) + 48 * v6;
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v15);
      if (v16 == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v14);
        MEMORY[0x18D00F6F0](v16);
        MEMORY[0x18D00F6F0](v17);
      }

      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v7 = v11;
      v19 = result & v11;
      v2 = v12;
      if (v3 >= v8)
      {
        v4 = v31;
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v31;
        if (v19 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v19)
      {
LABEL_13:
        v20 = *(v12 + 48);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v23 = *v22;
          v24 = v22[2];
          v21[1] = v22[1];
          v21[2] = v24;
          *v21 = v23;
        }

        v25 = *(v12 + 56);
        v26 = v25 + 40 * v3;
        v27 = (v25 + 40 * v6);
        if (v3 != v6 || v26 >= v27 + 40)
        {
          v9 = *v27;
          v10 = v27[1];
          *(v26 + 32) = *(v27 + 4);
          *v26 = v9;
          *(v26 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
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
    v28 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v4;
    do
    {
      v8 = v7;
      v9 = v2;
      v10 = *(v2 + 48) + 48 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v12);
      if (v13 == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v11);
        MEMORY[0x18D00F6F0](v13);
        MEMORY[0x18D00F6F0](v14);
      }

      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v7 = v8;
      v16 = result & v8;
      v2 = v9;
      if (v3 >= v28)
      {
        v4 = v29;
        if (v16 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v29;
        if (v16 >= v28)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v16)
      {
LABEL_13:
        v17 = *(v9 + 48);
        v18 = (v17 + 48 * v3);
        v19 = (v17 + 48 * v6);
        if (v3 != v6 || v18 >= v19 + 3)
        {
          v20 = *v19;
          v21 = v19[2];
          v18[1] = v19[1];
          v18[2] = v21;
          *v18 = v20;
        }

        v22 = *(v9 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
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
      MEMORY[0x18D00F6F0](v10);
      MEMORY[0x18D00F6F0](v11);
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
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v4;
    do
    {
      v9 = v2;
      v10 = (*(v2 + 48) + 16 * v6);
      v11 = v7;
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      v16 = v8;
      Hasher.init(_seed:)();
      v17 = v12;
      v7 = v11;
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v13);
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v8 = v16;
      v18 = result & v11;
      if (v3 >= v16)
      {
        if (v18 < v16)
        {
          v4 = v28;
          v2 = v9;
        }

        else
        {
          v4 = v28;
          v2 = v9;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v28;
        v2 = v9;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 16 * v3);
          v21 = (v19 + 16 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
          }

          v22 = *(v2 + 56);
          v23 = (v22 + 16 * v3);
          v24 = (v22 + 16 * v6);
          if (v3 != v6 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v11;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
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
      v9 = *(*(a2 + 48) + 4 * v6);
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
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);
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
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (40 * v3 < (40 * v6) || v17 >= v18 + 40 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
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
        v15 = (v14 + v3);
        v16 = (v14 + v6);
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
      Hasher.init(_seed:)();
      Selector.hash(into:)();
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
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (v3 != v6 || v16 >= v17 + 40)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
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
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v27 = v4;
    do
    {
      v10 = 32 * v6;
      v11 = v2;
      v12 = *(v2 + 48) + 32 * v6;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v15 = v8;
      Hasher.init(_seed:)();
      String.hash(into:)();
      MEMORY[0x18D00F6F0](v13);
      MEMORY[0x18D00F6F0](v14);
      result = Hasher._finalize()();
      v8 = v15;
      v16 = result & v7;
      if (v3 >= v15)
      {
        if (v16 < v15)
        {
          v4 = v27;
          v2 = v11;
        }

        else
        {
          v4 = v27;
          v2 = v11;
          if (v3 >= v16)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v27;
        v2 = v11;
        if (v16 >= v8 || v3 >= v16)
        {
LABEL_11:
          v17 = *(v2 + 48);
          v18 = (v17 + 32 * v3);
          v19 = (v17 + v10);
          if (32 * v3 != v10 || v18 >= v19 + 2)
          {
            v20 = v19[1];
            *v18 = *v19;
            v18[1] = v20;
          }

          v21 = *(v2 + 56);
          v22 = v21 + 24 * v3;
          v23 = (v21 + 24 * v6);
          if (v3 != v6 || v22 >= v23 + 24)
          {
            v9 = *v23;
            *(v22 + 16) = *(v23 + 2);
            *v22 = v9;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v9);
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
      v11 = *(v9 + 1);
      Hasher.init(_seed:)();
      if (v10 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v10);
      }

      MEMORY[0x18D00F6F0](v11);
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
        goto LABEL_13;
      }

      if (v3 >= v12)
      {
LABEL_13:
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
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v11);
      MEMORY[0x18D00F6F0](v12);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
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
    v28 = v4;
    do
    {
      v9 = v7;
      v10 = v2;
      v11 = *(v2 + 48) + 48 * v6;
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v13);
      if (v14 == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v12);
        MEMORY[0x18D00F6F0](v14);
        MEMORY[0x18D00F6F0](v15);
      }

      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v7 = v9;
      v17 = result & v9;
      v2 = v10;
      if (v3 >= v8)
      {
        v4 = v28;
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v28;
        if (v17 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v17)
      {
LABEL_13:
        v18 = *(v10 + 48);
        v19 = (v18 + 48 * v3);
        v20 = (v18 + 48 * v6);
        if (v3 != v6 || v19 >= v20 + 3)
        {
          v21 = *v20;
          v22 = v20[2];
          v19[1] = v20[1];
          v19[2] = v22;
          *v19 = v21;
        }

        v23 = *(v10 + 56);
        result = v23 + 72 * v3;
        v24 = (v23 + 72 * v6);
        if (v3 != v6 || result >= v24 + 72)
        {
          result = memmove(result, v24, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
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
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v10);
      MEMORY[0x18D00F6F0](v11);
      MEMORY[0x18D00F6F0](v12);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = v14 + 24 * v3;
        v16 = (v14 + 24 * v6);
        if (v3 != v6 || v15 >= v16 + 24)
        {
          v17 = *v16;
          *(v15 + 16) = *(v16 + 2);
          *v15 = v17;
        }

        v18 = *(a2 + 56);
        result = v18 + 360 * v3;
        v19 = (v18 + 360 * v6);
        if (360 * v3 < (360 * v6) || result >= v19 + 360 || v3 != v6)
        {
          result = memmove(result, v19, 0x168uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
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
      MEMORY[0x18D00F6F0](v9);
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
        result = v14 + 96 * v3;
        v15 = (v14 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v15 + 96 || v3 != v6)
        {
          result = memmove(result, v15, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
    while (1)
    {
      v9 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 4 * v3);
      v13 = (v11 + 4 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 184 * v3;
      if (184 * v3 < (184 * v6) || result >= v14 + 184 * v6 + 184)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
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
    while (1)
    {
      outlined init with copy of NavigationLinkSelectionIdentifier(*(a2 + 48) + (v6 << 6), v30);
      Hasher.init(_seed:)();
      outlined init with copy of WeakBox<Swift.AnyObject>(v30, &v27, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
      if (*(&v28 + 1))
      {
        v24 = v27;
        v25 = v28;
        v26 = v29;
        Hasher._combine(_:)(1u);
        v9 = *(&v25 + 1);
        v10 = v26;
        __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
        (*(v10 + 24))(v23, v9, v10);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v23);
        outlined destroy of AnyNavigationLinkPresentedValue(&v24);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*(&v31 + 1) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v27 = v31;
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](v32);
      v11 = Hasher._finalize()();
      result = outlined destroy of NavigationLinkSelectionIdentifier(v30);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v13 = *(a2 + 48);
      v14 = (v13 + (v3 << 6));
      v15 = (v13 + (v6 << 6));
      if (v3 != v6 || v14 >= v15 + 4)
      {
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[3];
        v14[2] = v15[2];
        v14[3] = v18;
        *v14 = v16;
        v14[1] = v17;
      }

      v19 = *(a2 + 56);
      result = v19 + 192 * v3;
      if (v3 < v6 || result >= v19 + 192 * v6 + 192)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_24:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
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
      MEMORY[0x18D00F6F0](v9);
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
        result = v14 + 96 * v3;
        v15 = (v14 + 96 * v6);
        if (96 * v3 < (96 * v6) || result >= v15 + 96 || v3 != v6)
        {
          result = memmove(result, v15, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
      v9 = *(*(a2 + 48) + 4 * v6);
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
        v12 = (v11 + 4 * v3);
        v13 = (v11 + 4 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = v14 + 120 * v3;
        v15 = (v14 + 120 * v6);
        if (v3 != v6 || result >= v15 + 120)
        {
          result = memmove(result, v15, 0x78uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 8 * v3;
      if (v3 < v6 || result >= v14 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
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
    v32 = v2;
    v33 = v4;
    v31 = v7;
    do
    {
      v34 = 48 * v6;
      v9 = *(v2 + 48) + 48 * v6;
      v10 = v8;
      v11 = *v9;
      v12 = *(v9 + 8);
      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
      v15 = *(v9 + 32);
      v16 = v3;
      v17 = *(v9 + 40);
      Hasher.init(_seed:)();
      v18 = v11;
      v8 = v10;
      MEMORY[0x18D00F6F0](v18);
      MEMORY[0x18D00F6F0](v12);
      MEMORY[0x18D00F6F0](v13);
      MEMORY[0x18D00F6F0](v14);
      MEMORY[0x18D00F6F0](v15);
      v19 = v17;
      v3 = v16;
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = result & v31;
      if (v16 >= v10)
      {
        if (v20 < v10)
        {
          v2 = v32;
          v4 = v33;
          goto LABEL_4;
        }

        v2 = v32;
        if (v16 >= v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v2 = v32;
        if (v20 >= v10 || v16 >= v20)
        {
LABEL_11:
          v21 = *(v2 + 48);
          v22 = (v21 + 48 * v16);
          v23 = (v21 + v34);
          if (48 * v16 < v34 || v22 >= v23 + 3 || v16 != v6)
          {
            v24 = *v23;
            v25 = v23[2];
            v22[1] = v23[1];
            v22[2] = v25;
            *v22 = v24;
          }

          v26 = *(v2 + 56);
          result = v26 + 176 * v16;
          v27 = (v26 + 176 * v6);
          v4 = v33;
          if (176 * v16 < (176 * v6) || result >= v27 + 176 || v16 != v6)
          {
            result = memmove(result, v27, 0xB0uLL);
            v3 = v6;
          }

          goto LABEL_4;
        }
      }

      v4 = v33;
LABEL_4:
      v6 = (v6 + 1) & v31;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x18D00F6C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 192 * v3;
          v16 = (v15 + 192 * v6);
          if (192 * v3 < (192 * v6) || result >= v16 + 192 || v3 != v6)
          {
            result = memmove(result, v16, 0xC0uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
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
      outlined init with copy of ToolbarPlacement.Role(*(a2 + 48) + 40 * v6, v27);
      Hasher.init(_seed:)();
      outlined init with copy of ToolbarPlacement.Role(v27, &v24);
      if (*(&v25 + 1) <= 2)
      {
        if (*(&v25 + 1))
        {
          if (*(&v25 + 1) == 1)
          {
            v9 = 1;
          }

          else
          {
            if (*(&v25 + 1) != 2)
            {
              goto LABEL_17;
            }

            v9 = 2;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else if (*(&v25 + 1) > 4)
      {
        if (*(&v25 + 1) == 5)
        {
          v9 = 5;
        }

        else
        {
          if (*(&v25 + 1) != 6)
          {
LABEL_17:
            v22[0] = v24;
            v22[1] = v25;
            v23 = v26;
            MEMORY[0x18D00F6F0](6);
            AnyHashable.hash(into:)();
            outlined destroy of AnyHashable(v22);
            goto LABEL_22;
          }

          v9 = 7;
        }
      }

      else if (*(&v25 + 1) == 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      MEMORY[0x18D00F6F0](v9);
LABEL_22:
      v10 = Hasher._finalize()();
      result = outlined destroy of ToolbarPlacement.Role(v27);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_27;
      }

      if (v3 >= v11)
      {
LABEL_27:
        v12 = *(a2 + 48);
        v13 = v12 + 40 * v3;
        v14 = (v12 + 40 * v6);
        if (v3 != v6 || v13 >= v14 + 40)
        {
          v15 = *v14;
          v16 = v14[1];
          *(v13 + 32) = *(v14 + 4);
          *v13 = v15;
          *(v13 + 16) = v16;
        }

        v17 = *(a2 + 56);
        result = (v17 + 80 * v3);
        v18 = (v17 + 80 * v6);
        if (80 * v3 < (80 * v6) || result >= v18 + 80 || v3 != v6)
        {
          result = memmove(result, v18, 0x50uLL);
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 288 * v3);
        v15 = (v14 + 288 * v6);
        if (288 * v3 < (288 * v6) || result >= v15 + 288 || v3 != v6)
        {
          result = memmove(result, v15, 0x120uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
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
    while (1)
    {
      v9 = v6 << 7;
      outlined init with copy of IdentifiedDocumentGroupConfiguration(*(a2 + 48) + (v6 << 7), v18);
      Hasher.init(_seed:)();
      v10 = v20;
      if (v21)
      {
        MEMORY[0x18D00F6F0](v19);
        Hasher._combine(_:)(v10);
      }

      else
      {
        String.hash(into:)();
      }

      v11 = Hasher._finalize()();
      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v18);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_13;
      }

LABEL_14:
      v13 = *(a2 + 48);
      result = (v13 + (v3 << 7));
      v14 = (v13 + v9);
      if (v3 << 7 != v9 || result >= v14 + 128)
      {
        result = memmove(result, v14, 0x80uLL);
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        type metadata accessor for SceneStorage<TabSidebarCustomization>(0, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
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
      v9 = v6 << 7;
      outlined init with copy of IdentifiedDocumentGroupConfiguration(*(a2 + 48) + (v6 << 7), v21);
      Hasher.init(_seed:)();
      v10 = v23;
      if (v24)
      {
        MEMORY[0x18D00F6F0](v22);
        Hasher._combine(_:)(v10);
      }

      else
      {
        String.hash(into:)();
      }

      v11 = Hasher._finalize()();
      result = outlined destroy of IdentifiedDocumentGroupConfiguration(v21);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v12)
      {
LABEL_13:
        v13 = *(a2 + 48);
        result = (v13 + (v3 << 7));
        v14 = (v13 + v9);
        if (v3 << 7 != v9 || result >= v14 + 128)
        {
          result = memmove(result, v14, 0x80uLL);
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
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

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 48 * v3);
          v22 = (v20 + 48 * v6);
          if (v3 != v6 || v21 >= v22 + 3)
          {
            v9 = *v22;
            v10 = v22[2];
            v21[1] = v22[1];
            v21[2] = v10;
            *v21 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v12 = v11;
      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
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
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
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
}

{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

{
  specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E69E8450]);
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v7);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v9;
      if (v4 >= v10)
      {
        if (v14 < v10 || v4 < v14)
        {
          goto LABEL_5;
        }
      }

      else if (v14 < v10 && v4 < v14)
      {
        goto LABEL_5;
      }

      v17 = *(a2 + 48);
      v18 = (v17 + 8 * v4);
      v19 = (v17 + 8 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      v23 = v20 + v21 * v4;
      v24 = v21 * v7;
      v25 = v20 + v21 * v7 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v34 = type metadata accessor for IntelligenceDataSourceItem();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - v4;
  type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v41 = type metadata accessor for IntelligenceAppIntentsPayload();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for IntelligenceDataSourceItem();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>();
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(void (*a1)(void, double), uint64_t (*a2)(_BYTE *, unint64_t))
{
  v37 = a2;
  v4 = v2;
  v36 = type metadata accessor for CodingUserInfoKey();
  v39 = *(v36 - 8);
  v5 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0, v5);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v32 = v4;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v7 + 16);
    v38 = v9;
    *(v9 + 16) = v15;
    v16 = 1 << *(v7 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v7 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v35;
        v27 = v36;
        (*(v39 + 16))(v35, *(v7 + 48) + v25, v36);
        v23 *= 32;
        outlined init with copy of Any(*(v7 + 56) + v23, v41);
        v28 = v7;
        v29 = v38;
        (*(v24 + 32))(*(v38 + 48) + v25, v26, v27);
        v30 = *(v29 + 56);
        v7 = v28;
        result = v37(v41, v30 + v23);
        v18 = v40;
      }

      while (v40);
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

        v4 = v32;
        v9 = v38;
        goto LABEL_21;
      }

      v22 = *(v11 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v9;
  }

  return result;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18D00F6F0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      v5 += 24;
      MEMORY[0x18D00F6F0](v6);

      String.hash(into:)();
      result = outlined consume of TabCustomizationID.Base();
      --v3;
    }

    while (v3);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x18D00F6F0](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v6));
      --v3;
    }

    while (v3);
  }
}

uint64_t specialized TabSidebarCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for TabSidebarCustomization?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TabSidebarCustomization();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v27);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v9, 0, 1, v10);
    outlined init with take of TabSidebarCustomization(v9, v13, type metadata accessor for TabSidebarCustomization);
    TabViewCustomization.removeTransientIdentifiers()();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization);
    v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v20 = v19;

    v23 = a3;
    v24 = a4;

    AnyHashable.init<A>(_:)();
    if (v20 >> 60 == 15)
    {
      v18 = 0;
      v20 = 0;
      v21 = 0;
      v25 = 0;
    }

    else
    {
      v21 = MEMORY[0x1E6969080];
    }

    v23 = v18;
    v24 = v20;
    v26 = v21;
    specialized Dictionary.subscript.setter(&v23, v27);
    v16 = type metadata accessor for TabSidebarCustomization;
    v17 = v13;
  }

  else
  {
    v15(v9, 1, 1, v10);
    v16 = type metadata accessor for TabSidebarCustomization?;
    v17 = v9;
  }

  return outlined destroy of TabSidebarCustomization(v17, v16);
}

uint64_t specialized static TabSidebarCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27[0] = a2;
  type metadata accessor for TabSidebarCustomization?(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  outlined init with copy of WeakBox<Swift.AnyObject>(a1, v28, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (v29)
  {
    v16 = type metadata accessor for TabSidebarCustomization();
    v17 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(v15, v17 ^ 1u, 1, v16);
  }

  else
  {
    outlined destroy of Any?(v28);
    v16 = type metadata accessor for TabSidebarCustomization();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  type metadata accessor for TabSidebarCustomization();
  v18 = *(*(v16 - 8) + 48);
  if (!v18(v15, 1, v16))
  {
    TabViewCustomization.removeTransientIdentifiers()();
  }

  outlined init with copy of TabSidebarCustomization(v15, v12, type metadata accessor for TabSidebarCustomization?);
  v19 = v18(v12, 1, v16);
  outlined destroy of TabSidebarCustomization(v12, type metadata accessor for TabSidebarCustomization?);
  if (v19 == 1)
  {
    v20 = MEMORY[0x18D00C850](a3, a4);
    [v27[0] removeObjectForKey_];
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    outlined init with copy of TabSidebarCustomization(v15, v9, type metadata accessor for TabSidebarCustomization?);
    lazy protocol witness table accessor for type TabSidebarCustomization? and conformance <A> A?();
    v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v23 = v22;
    outlined destroy of TabSidebarCustomization(v9, type metadata accessor for TabSidebarCustomization?);

    outlined copy of Data._Representation(v21, v23);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v21, v23);
    v25 = MEMORY[0x18D00C850](a3, a4);
    [v27[0] setObject:isa forKey:v25];
    swift_unknownObjectRelease();

    outlined consume of Data?(v21, v23);
  }

  return outlined destroy of TabSidebarCustomization(v15, type metadata accessor for TabSidebarCustomization?);
}

unint64_t lazy protocol witness table accessor for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization.CodingKeys and conformance TabSidebarCustomization.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for TabSidebarCustomization()
{
  result = type metadata singleton initialization cache for TabSidebarCustomization;
  if (!type metadata singleton initialization cache for TabSidebarCustomization)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of TabViewCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabViewCustomization();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry.CodingKeys and conformance TabGroupCustomizationEntry.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TabCustomizationID] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [TabCustomizationID](255, &lazy cache variable for type metadata for [TabCustomizationID], &type metadata for TabCustomizationID, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for <> AuxiliaryContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> TabGroup<A, B, C, D>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry()
{
  result = lazy protocol witness table cache variable for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabGroupCustomizationEntry and conformance TabGroupCustomizationEntry);
  }

  return result;
}

uint64_t type metadata completion function for AuxiliaryContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for TabGroup()
{
  result = type metadata accessor for TabSection();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TabGroup(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = a3[4];
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  v11 = *(v7 + 64);
  v12 = *(v6 - 8);
  v13 = *(v12 + 80);
  v14 = v11 + v13;
  v15 = ((v11 + v13 + v10) & ~v13) + *(v12 + 64);
  v16 = (*(v7 + 80) | *(v4 + 80) | *(v12 + 80));
  if (v16 <= 7 && v15 <= 0x18 && ((*(v7 + 80) | *(v4 + 80) | *(v12 + 80)) & 0x100000) == 0)
  {
    v20 = ~v8;
    v21 = ~v13;
    v25 = a3[3];
    (*(v4 + 16))(a1);
    v23 = (a2 + v9) & v20;
    (*(v7 + 16))((v3 + v9) & v20, v23, v25);
    (*(v12 + 16))((((v3 + v9) & v20) + v14) & v21, (v23 + v14) & v21, v6);
  }

  else
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + ((v16 + 16) & ~v16));
  }

  return v3;
}

uint64_t destroy for TabGroup(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(a2[4] - 8);
  v10 = *(v9 + 8);
  v11 = (v8 + *(v7 + 56) + *(v9 + 80)) & ~*(v9 + 80);

  return v10(v11);
}

uint64_t initializeWithCopy for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 16))((*(v8 + 48) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 48) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithCopy for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 24))((*(v8 + 40) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 40) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t initializeWithTake for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 32))((*(v8 + 32) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 32) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithTake for TabGroup(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 40))((*(v8 + 24) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 24) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TabGroup(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *storeEnumTagSinglePayload for TabGroup(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TabSidebarCustomization(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TabViewCustomization();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    *(a1 + *(v6 + 24)) = *(a2 + *(v6 + 24));
  }

  return a1;
}

uint64_t destroy for TabSidebarCustomization(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  type metadata accessor for TabViewCustomization();
}

uint64_t initializeWithCopy for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t assignWithCopy for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t initializeWithTake for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));
  return a1;
}

uint64_t assignWithTake for TabSidebarCustomization(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for TabViewCustomization();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));

  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t type metadata completion function for TabSidebarCustomization()
{
  result = type metadata accessor for TabViewCustomization();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode()
{
  result = lazy protocol witness table cache variable for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode;
  if (!lazy protocol witness table cache variable for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentDisplayMode.ContentMode and conformance TabViewContentDisplayMode.ContentMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabItemKind.Item and conformance TabItemKind.Item()
{
  result = lazy protocol witness table cache variable for type TabItemKind.Item and conformance TabItemKind.Item;
  if (!lazy protocol witness table cache variable for type TabItemKind.Item and conformance TabItemKind.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabItemKind.Item and conformance TabItemKind.Item);
  }

  return result;
}

uint64_t outlined destroy of TabSidebarCustomization(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for [TabCustomizationID](0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TabSidebarCustomization? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TabSidebarCustomization? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TabSidebarCustomization? and conformance <A> A?)
  {
    type metadata accessor for TabSidebarCustomization?(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type TabSidebarCustomization and conformance TabSidebarCustomization, type metadata accessor for TabSidebarCustomization);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabSidebarCustomization? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for Anchor<CGRect?>, type metadata accessor for CGRect?, MEMORY[0x1E6981798]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>)
  {
    type metadata accessor for [Binding<Bool>]();
    lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ViewIdentity, (_:)>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, (_:)>)
  {
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, (_:)>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>)
  {
    type metadata accessor for IntelligenceDataSourceItem();
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>);
    }
  }
}

uint64_t outlined init with copy of WeakBox<PlatformDocument>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for SceneStorage<TabSidebarCustomization>(0, a3, a4, MEMORY[0x1E6981A78]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>)
  {
    type metadata accessor for UIMenuIdentifier(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>)
  {
    type metadata accessor for UIMenuIdentifier(255);
    _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(255, &lazy cache variable for type metadata for [UIMenuElement], &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>);
    }
  }
}

void _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UIMenuElement, CommandOperation>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIMenuElement, CommandOperation>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIMenuElement);
    type metadata accessor for CommandOperation();
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIMenuElement and conformance NSObject, &lazy cache variable for type metadata for UIMenuElement);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UIMenuElement, CommandOperation>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<KeyCommandID, ()>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<KeyCommandID, ()>)
  {
    type metadata accessor for ()();
    lazy protocol witness table accessor for type KeyCommandID and conformance KeyCommandID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<KeyCommandID, ()>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Selector, CommandAction>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Selector, CommandAction>)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for CommandAction);
    lazy protocol witness table accessor for type Selector and conformance Selector();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Selector, CommandAction>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Selector and conformance Selector()
{
  result = lazy protocol witness table cache variable for type Selector and conformance Selector;
  if (!lazy protocol witness table cache variable for type Selector and conformance Selector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Selector and conformance Selector);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>)
  {
    type metadata accessor for (Int, (CountingIndex<Int>, CountingIndex<Int>))(255);
    lazy protocol witness table accessor for type TableRowID and conformance TableRowID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>)
  {
    type metadata accessor for ToolbarContentDescription(255);
    lazy protocol witness table accessor for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
    lazy protocol witness table accessor for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for [WeakBox<DocumentViewController>], type metadata accessor for WeakBox<DocumentViewController>, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<CGPoint, Bool>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CGPoint, Bool>)
  {
    type metadata accessor for CGPoint(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CGPoint, Bool>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>();
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>);
    }
  }
}

unint64_t type metadata accessor for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>()
{
  result = lazy cache variable for type metadata for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>;
  if (!lazy cache variable for type metadata for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>)
  {
    result = swift_getExtendedExistentialTypeMetadata_unique();
    atomic_store(result, &lazy cache variable for type metadata for any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<TableRowDescriptor>, lazy protocol witness table accessor for type TableRowDescriptor and conformance TableRowDescriptor, &type metadata for TableRowDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableRowDescriptor and conformance TableRowDescriptor()
{
  result = lazy protocol witness table cache variable for type TableRowDescriptor and conformance TableRowDescriptor;
  if (!lazy protocol witness table cache variable for type TableRowDescriptor and conformance TableRowDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowDescriptor and conformance TableRowDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyboardShortcut and conformance KeyboardShortcut()
{
  result = lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut;
  if (!lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut;
  if (!lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcut and conformance KeyboardShortcut);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<TableColumnDescriptor>, lazy protocol witness table accessor for type TableColumnDescriptor and conformance TableColumnDescriptor, &type metadata for TableColumnDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableColumnDescriptor and conformance TableColumnDescriptor()
{
  result = lazy protocol witness table cache variable for type TableColumnDescriptor and conformance TableColumnDescriptor;
  if (!lazy protocol witness table cache variable for type TableColumnDescriptor and conformance TableColumnDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnDescriptor and conformance TableColumnDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>)
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper, type metadata accessor for HashableCommandGroupPlacementWrapper);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<NavigationDestinationDescriptor>, lazy protocol witness table accessor for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor, &type metadata for NavigationDestinationDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor()
{
  result = lazy protocol witness table cache variable for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor;
  if (!lazy protocol witness table cache variable for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<AccessibilityRotorContentDescriptor>, lazy protocol witness table accessor for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor, &type metadata for AccessibilityRotorContentDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor()
{
  result = lazy protocol witness table cache variable for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor;
  if (!lazy protocol witness table cache variable for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<WidgetDescriptor>, lazy protocol witness table accessor for type WidgetDescriptor and conformance WidgetDescriptor, &type metadata for WidgetDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetDescriptor and conformance WidgetDescriptor()
{
  result = lazy protocol witness table cache variable for type WidgetDescriptor and conformance WidgetDescriptor;
  if (!lazy protocol witness table cache variable for type WidgetDescriptor and conformance WidgetDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetDescriptor and conformance WidgetDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for Set<AccessibilityRelationshipScope.Key>, lazy protocol witness table accessor for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key, &type metadata for AccessibilityRelationshipScope.Key, MEMORY[0x1E69E64E8]);
    lazy protocol witness table accessor for type AccessibilityRelationshipScope.NodeRelation and conformance AccessibilityRelationshipScope.NodeRelation();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>)
  {
    type metadata accessor for AGAttribute(255);
    type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])();
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for Set<UniqueID>, lazy protocol witness table accessor for type UniqueID and conformance UniqueID, MEMORY[0x1E6981D00], MEMORY[0x1E69E64E8]);
    lazy protocol witness table accessor for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<EventID, [KeyPress.Handler]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<EventID, [KeyPress.Handler]>)
  {
    type metadata accessor for SceneStorage<TabSidebarCustomization>(255, &lazy cache variable for type metadata for [KeyPress.Handler], type metadata accessor for KeyPress.Handler, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, [KeyPress.Handler]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>)
  {
    type metadata accessor for AGAttribute(255);
    lazy protocol witness table accessor for type UISplitViewControllerColumn and conformance UISplitViewControllerColumn(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>)
  {
    type metadata accessor for (_ViewList_ID.Canonical, AccessibilitySectionContext?)();
    lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>);
    }
  }
}

void type metadata accessor for (_ViewList_ID.Canonical, AccessibilitySectionContext?)()
{
  if (!lazy cache variable for type metadata for (_ViewList_ID.Canonical, AccessibilitySectionContext?))
  {
    type metadata accessor for [TabCustomizationID](255, &lazy cache variable for type metadata for AccessibilitySectionContext?, MEMORY[0x1E6980778], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ViewList_ID.Canonical, AccessibilitySectionContext?));
    }
  }
}

CGSize __swiftcall _ViewTest.initSize()()
{
  v0 = 100.0;
  v1 = 100.0;
  result.height = v1;
  result.width = v0;
  return result;
}

{
  v0 = 100.0;
  v1 = 100.0;
  result.height = v1;
  result.width = v0;
  return result;
}

Swift::Void __swiftcall _ViewTest.setUpTest()()
{
  v3 = v1;
  v4 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15[-v7];
  EnvironmentValues.init()();
  v19[0] = v19[2];
  v19[1] = v19[3];
  MEMORY[0x18D00B430](v19);

  v9 = (*(v3 + 48))(v4, v3);
  specialized _ViewTest.setSize(_:)(v9, v10);
  static EdgeInsets.zero.getter();
  specialized _ViewTest.setSafeAreaInsets(_:)(v11, v12, v13, v14);
  (*(v3 + 40))(v4, v3);
  swift_getAssociatedConformanceWitness();
  _ViewTest.setRootTestView<A>(_:)(v8, v4, AssociatedTypeWitness, v3);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  static TestRenderOptions.simple.getter();
  v16 = v4;
  v17 = v3;
  v18 = v2;
  withRenderOptions(_:_:)();
}

uint64_t _ViewTest.setRootTestView<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = _ViewTest.findState()(a2, a4, &v13);
  v5 = v14;
  if (v14)
  {
    v6 = *&v13;
    v7 = v15;
    v8 = v16;
    if (static _TestApp.host.getter())
    {
      ObjectType = swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = *(v10 + 8);
        (*(v11 + 16))(&v13, ObjectType, v11);
        v13 = ceil(v13 + 1.0);
        (*(v11 + 24))(&v13, ObjectType, v11);
      }

      swift_unknownObjectRelease();
    }

    v13 = *&v6;
    v14 = v5;
    v15 = v7;
    v16 = v8;
    type metadata accessor for Binding<_TestApp.RootView.StateType>();
    MEMORY[0x18D00ACC0](&v12);
    _TestApp.RootView.StateType.setTestView<A>(_:)();
    dispatch thunk of AnyLocation.set(_:transaction:)();

    return outlined consume of Binding<_TestApp.RootView.StateType>?(v6, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall _ViewTest.tearDownTest()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x1EEE9AC00])();
  v7 = specialized _ViewTest.resetEvents()();
  _ViewTest.setRootTestView<A>(_:)(v7, v4, MEMORY[0x1E6981E70], v3);
  v8 = objc_opt_self();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  (*(v5 + 32))(v10 + v9, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in _ViewTest.tearDownTest();
  *(v11 + 24) = v10;
  aBlock[4] = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_26;
  v12 = _Block_copy(aBlock);

  [v8 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _ViewTest.tearDownTestWithError()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  if (([v6 areAnimationsEnabled] & 1) == 0)
  {
    [v6 setAnimationsEnabled_];
    (*(v3 + 16))(v5, v1, v2);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t _ViewTest.findState()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for <<opaque return type of static _TestApp.rootViewIdentifier>>.0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static _TestApp.rootViewIdentifier.getter();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
  v16 = a1;
  v17 = v7;
  v18 = MEMORY[0x1E6981D30];
  v19 = MEMORY[0x1E6981D40];
  v20 = a2;
  v21 = OpaqueTypeConformance2;
  v22 = v12;
  v23 = v10;
  v13 = type metadata accessor for Binding();
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:), v13, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t _ViewTest.rootViewID.getter(uint64_t a1, uint64_t a2)
{
  result = _ViewTest.findState()(a1, a2, &v7);
  v3 = v8;
  if (v8)
  {
    v4 = v7;
    v6[2] = v7;
    v6[3] = v8;
    v6[4] = v9;
    v6[5] = v10;
    type metadata accessor for Binding<_TestApp.RootView.StateType>();
    MEMORY[0x18D00ACC0](v6);
    outlined consume of Binding<_TestApp.RootView.StateType>?(v4, v3);
    v5 = v6[0];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ViewTest.rootView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14[-1] - v8;
  v14[0] = _ViewTest.rootViewID.getter(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14[3] = a1;
  v14[4] = AssociatedTypeWitness;
  v14[5] = MEMORY[0x1E69E6530];
  v14[6] = a2;
  v14[7] = AssociatedConformanceWitness;
  v14[8] = MEMORY[0x1E69E6540];
  v14[9] = v14;
  v14[10] = AssociatedTypeWitness;
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.viewForIdentifier<A, B>(_:_:), AssociatedTypeWitness, v9);
  v11 = *(AssociatedTypeWitness - 8);
  result = (*(v11 + 48))(v9, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v11 + 32))(a3, v9, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in _ViewTest.viewForIdentifier<A, B>(_:_:)()
{
  result = static _TestApp.host.getter();
  if (result)
  {
    swift_getObjectType();
    _BenchmarkHost.viewForIdentifier<A, B>(_:_:)();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ViewTest.withRenderIfNeeded<A>(_:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  a1(v8);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    result = static _TestApp.host.getter();
    if (result)
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      (*(*(v14 + 8) + 8))(ObjectType, 0.0);
      v16 = swift_unknownObjectRelease();
      return (a1)(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v11 + 32))(a3, v10, a2);
    return (*(v11 + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:)()
{
  result = static _TestApp.host.getter();
  if (result)
  {
    swift_getObjectType();
    _BenchmarkHost.stateForIdentifier<A, B, C>(_:type:in:)();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall _ViewTest.renderAsync(seconds:)(Swift::Double seconds)
{
  v2 = static _TestApp.host.getter();
  if (v2)
  {
    v6 = 2;
    v4 = specialized _ViewTest.render(host:seconds:options:)(seconds, v2, v3, &v6);
    swift_unknownObjectRelease();
    LOBYTE(v2) = v4 & 1;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

Swift::Void __swiftcall _ViewTest.renderRecursively(seconds:)(Swift::Double seconds)
{
  v2 = static _TestApp.host.getter();
  if (v2)
  {
    v4 = 1;
    specialized _ViewTest.render(host:seconds:options:)(seconds, v2, v3, &v4);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in _ViewTest.render(host:seconds:options:)(double a1, uint64_t a2, uint64_t a3, char *a4, char a5)
{
  ObjectType = swift_getObjectType();
  if ((a5 & 2) != 0)
  {
    result = (*(*(a3 + 8) + 16))(ObjectType, a1);
    if ((result & 1) == 0)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    result = (*(a3 + 128))(ObjectType, a3, a1);
  }

  v11 = *a4;
LABEL_6:
  *a4 = v11;
  return result;
}

Swift::Void __swiftcall _ViewTest.turnRunloop(times:)(Swift::Int times)
{
  v16 = type metadata accessor for Date();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (times < 0)
  {
    __break(1u);
  }

  else if (times)
  {
    v5 = objc_opt_self();
    v6 = *MEMORY[0x1E695D918];
    v7 = *MEMORY[0x1E695DA28];
    v8 = (v2 + 8);
    do
    {

      v17 = v6;
      v18 = v7;
      type metadata accessor for NSRunLoopMode(0);
      v9 = v6;
      v10 = v7;
      v11 = v9;
      swift_arrayDestroy();
      v12 = [v5 currentRunLoop];
      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v8)(v4, v16);
      v14 = [v12 runMode:v11 beforeDate:isa];

      if ((v14 & 1) == 0)
      {
        [objc_opt_self() sleepForTimeInterval_];
      }

      --times;
    }

    while (times);
  }
}

uint64_t _ViewTest.systemColorScheme.getter()
{
  result = static _TestApp.host.getter();
  if (result)
  {
    objc_opt_self();
    v1 = [swift_dynamicCastObjCClassUnconditional() window];
    swift_unknownObjectRelease();
    if (v1 && (v2 = [v1 windowScene], v1, v2))
    {
      v3 = [v2 _systemUserInterfaceStyle];

      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _ViewTest.updateEnvironment(_:)(void (*a1)(void *))
{
  EnvironmentValues.init()();
  a1(v4);
  v3[0] = v4[0];
  v3[1] = v4[1];

  MEMORY[0x18D00B430](v3);
  outlined consume of EnvironmentValues?(v3[0]);
}

Swift::Void __swiftcall _ViewTest.loop()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized _ViewTest.render(seconds:)(0.0166666667);
  v4 = objc_opt_self();

  v5 = *MEMORY[0x1E695DA28];
  v16[0] = *MEMORY[0x1E695D918];
  v16[1] = v5;
  v6 = (v1 + 8);
  v7 = v16[0];
  v8 = v5;
  v9 = 0;
  do
  {
    v11 = v16[v9 & 1];
    v12 = [v4 currentRunLoop];
    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*v6)(v3, v0);
    v14 = [v12 runMode:v11 beforeDate:isa];

    if ((v14 & 1) == 0)
    {
      [objc_opt_self() sleepForTimeInterval_];
    }
  }

  while (!__OFADD__(v9++, 1));
  __break(1u);
}

uint64_t _ViewTest.rootState<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18[-1] - v10;
  v18[0] = _ViewTest.rootViewID.getter(a1, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18[3] = a1;
  v18[4] = MEMORY[0x1E69E6530];
  v18[5] = a2;
  v18[6] = AssociatedTypeWitness;
  v18[7] = a3;
  v18[8] = MEMORY[0x1E69E6540];
  v18[9] = AssociatedConformanceWitness;
  v18[10] = v18;
  v14 = type metadata accessor for Binding();
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:), v14, v11);
  v15 = *(v8 - 8);
  result = (*(v15 + 48))(v11, 1, v8);
  if (result != 1)
  {
    return (*(v15 + 32))(a4, v11, v8);
  }

  __break(1u);
  return result;
}

uint64_t _ViewTest.rootState<A, B>(type:in:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20[-1] - v14;
  v20[0] = _ViewTest.rootViewID.getter(a1, a4);
  v20[3] = a1;
  v20[4] = MEMORY[0x1E69E6530];
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = MEMORY[0x1E69E6540];
  v20[9] = a5;
  v20[10] = v20;
  v16 = type metadata accessor for Binding();
  _ViewTest.withRenderIfNeeded<A>(_:)(partial apply for closure #1 in _ViewTest.stateForIdentifier<A, B, C>(_:type:in:), v16, v15);
  v17 = *(v12 - 8);
  result = (*(v17 + 48))(v15, 1, v12);
  if (result != 1)
  {
    return (*(v17 + 32))(a6, v15, v12);
  }

  __break(1u);
  return result;
}

uint64_t _ViewTest.set<A>(_:to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a2;
  v5 = (*a1 + *MEMORY[0x1E69E6CE8]);
  v6 = *v5;
  v22 = *(*v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for Binding();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - v17;
  _ViewTest.rootState<A>(type:)(a3, v6, v20, &v20 - v17);
  (*(v11 + 16))(v14, v21, v10);
  MEMORY[0x18D00ACC0](v15);
  swift_setAtWritableKeyPath();
  dispatch thunk of AnyLocation.set(_:transaction:)();
  (*(v22 + 8))(v8, v6);
  return (*(v16 + 8))(v18, v15);
}

uint64_t _ViewTest.get<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v6 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - v8;
  v10 = type metadata accessor for Binding();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - v12;
  _ViewTest.rootState<A>(type:)(a2, v6, a3, v15 - v12);
  MEMORY[0x18D00ACC0](v10);
  (*(v11 + 8))(v13, v10);
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, v6);
}

uint64_t specialized _ViewTest.sendEvents(_:)(uint64_t a1)
{
  result = static _TestApp.host.getter();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 40))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _ViewTest.setSize(_:)(double a1, double a2)
{
  result = static _TestApp.host.getter();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(ObjectType, v6, a1, a2);
    swift_unknownObjectRelease();
    result = static _TestApp.comparisonHost.getter();
    if (result)
    {
      v9 = v8;
      v10 = swift_getObjectType();
      (*(v9 + 16))(v10, v9, a1, a2);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}