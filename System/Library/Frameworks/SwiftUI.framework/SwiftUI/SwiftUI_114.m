void @objc NSSwiftMutableAttributedString.removeAttribute(_:range:)(void *a1, uint64_t a2, void *a3, Swift::Int a4, Swift::Int a5)
{
  v8 = a3;
  v10 = a1;
  v9.location = a4;
  v9.length = a5;
  NSSwiftMutableAttributedString.removeAttribute(_:range:)(v8, v9);
}

void @objc NSSwiftMutableAttributedString.insert(_:at:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  NSSwiftMutableAttributedString.insert(_:at:)(v6, a4);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.append(_:)(NSAttributedString a1)
{
  NSAttributedString.range.getter();
  v3 = v2;
  v4 = 0;

  NSSwiftMutableAttributedString.replaceCharacters(in:with:)(*&v3, a1);
}

void @objc NSSwiftMutableAttributedString.append(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NSSwiftMutableAttributedString.append(_:)(v4);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.deleteCharacters(in:)(__C::_NSRange in)
{
  length = in.length;
  location = in.location;
  v3 = NSSwiftMutableAttributedString._mutableStringProxy.getter();
  [v3 deleteCharactersInRange_];
}

void @objc NSSwiftMutableAttributedString.deleteCharacters(in:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v7 = a1;
  v6.location = a3;
  v6.length = a4;
  NSSwiftMutableAttributedString.deleteCharacters(in:)(v6);
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.setAttributedString(_:)(NSAttributedString a1)
{
  v2 = NSSwiftMutableAttributedString.length.getter();
  v3 = 0;

  NSSwiftMutableAttributedString.replaceCharacters(in:with:)(*&v3, a1);
}

void @objc NSSwiftMutableAttributedString.setAttributedString(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NSSwiftMutableAttributedString.setAttributedString(_:)(v4);
}

id @objc NSSwiftMutableAttributedString._nsAttributedSubstring(from:)(void *a1, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v6 = a1;
  v7.location = a3;
  v7.length = a4;
  v8 = NSSwiftMutableAttributedString._nsAttributedSubstring(from:)(v7);

  return v8;
}

void @objc NSSwiftMutableAttributedString.beginEditing()(void *a1)
{
  v1 = a1;
  NSSwiftMutableAttributedString.beginEditing()();
}

Swift::Void __swiftcall NSSwiftMutableAttributedString.endEditing()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_endEditing);
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v3 = v2[2];
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = v2[2];
  if (v3)
  {
LABEL_4:
    v4 = v3 - 1;
    v5 = type metadata accessor for AttributedString();
    (*(*(v5 - 8) + 8))(v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4, v5);
    v2[2] = v4;
    *(v0 + v1) = v2;
    swift_endAccess();
    return;
  }

LABEL_7:
  __break(1u);
}

void @objc NSSwiftMutableAttributedString.endEditing()(void *a1)
{
  v1 = a1;
  NSSwiftMutableAttributedString.endEditing()();
}

uint64_t specialized AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a1;
  v121 = a2;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v104 - v5;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v119 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v104 - v9;
  v10 = type metadata accessor for AttributedString.Index();
  v125 = *(v10 - 8);
  v126 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v111 = (&v104 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v104 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v124 = &v104 - v17;
  v18 = type metadata accessor for AttributedString.Runs();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v104 - v23;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v114 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v104 - v28;
  v30 = type metadata accessor for AttributeContainer();
  v122 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v113 = (&v104 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v104 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v128 = &v104 - v38;
  v39 = type metadata accessor for AttributedSubstring();
  v123 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  specialized BidirectionalCollection.last.getter(v29);
  v40 = *(v19 + 8);
  v115 = (v19 + 8);
  v116 = v18;
  v40(v24, v18);
  v41 = type metadata accessor for AttributedString.Runs.Run();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(v29, 1, v41);
  v127 = v39;
  if (v44 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v29, type metadata accessor for AttributedString.Runs.Run?);
    v46 = v125;
    v45 = v126;
    v47 = v124;
LABEL_5:
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    v50 = v117;
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v52 = *(v46 + 32);
      v53 = v118;
      v52(v118, v47, v45);
      v54 = v119;
      v52((v53 + *(v119 + 48)), v50, v45);
      v55 = v120;
      outlined init with copy of Range<AttributedString.Index>(v53, v120, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v56 = *(v54 + 48);
      v57 = v121;
      v52(v121, v55, v45);
      v58 = *(v46 + 8);
      v58(v55 + v56, v45);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v53, v55, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v59 = *(v54 + 48);
      type metadata accessor for Range<AttributedString.Index>();
      v52(&v57[*(v60 + 36)], (v55 + v59), v45);
      return (v58)(v55, v45);
    }

    __break(1u);
    goto LABEL_19;
  }

  v106 = v40;
  AttributedString.Runs.Run.attributes.getter();
  v105 = *(v42 + 8);
  v105(v29, v41);
  v104 = *(v122 + 32);
  v104(v128, v36, v30);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  v48 = v114;
  specialized BidirectionalCollection.last.getter(v114);
  v106(v21, v116);
  v49 = v30;
  if (v43(v48, 1, v41) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v48, type metadata accessor for AttributedString.Runs.Run?);
    (*(v122 + 8))(v128, v30);
    v46 = v125;
    v45 = v126;
    v47 = v124;
    goto LABEL_5;
  }

  v61 = v109;
  AttributedString.Runs.Run.attributes.getter();
  v105(v48, v41);
  v62 = v113;
  v116 = v49;
  v63 = (v104)(v113, v61, v49);
  MEMORY[0x1EEE9AC00](v63);
  *(&v104 - 2) = v128;
  *(&v104 - 1) = v62;
  v64 = v110;

  v65 = specialized Sequence.filter(_:)(partial apply for closure #1 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:), (&v104 - 4), v64);
  v67 = v125;
  v66 = v126;
  v68 = v124;
  if (*(v65 + 16))
  {
    v69 = v129;
    v70 = v65;
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    v71 = v111;
    AttributedStringProtocol.index(beforeCharacter:)();
    v72 = *(v67 + 8);
    v117 = (v67 + 8);
    v115 = v72;
    v73 = (v72)(v68, v66);
    MEMORY[0x1EEE9AC00](v73);
    *(&v104 - 2) = v71;
    *(&v104 - 1) = v69;
    v74 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation19AttributedStringKey_pXpG_AF0eF0V5IndexVs5NeverOTg5(partial apply for specialized closure #2 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:), (&v104 - 4), v70);

    v75 = v112;
    specialized Sequence<>.min()(v74, v112);

    v76 = v108;
    outlined init with copy of Range<AttributedString.Index>(v75, v108, type metadata accessor for AttributedString.Index?);
    v77 = *(v67 + 48);
    if (v77(v76, 1, v66) == 1)
    {
      v78 = v107;
      dispatch thunk of AttributedStringProtocol.startIndex.getter();
      v79 = v77(v76, 1, v66);
      v80 = v78;
      if (v79 != 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v76, type metadata accessor for AttributedString.Index?);
      }
    }

    else
    {
      v80 = v107;
      (*(v67 + 32))(v107, v76, v66);
    }

    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v91 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = outlined destroy of Range<AttributedString.Index>?(v112, type metadata accessor for AttributedString.Index?);
    if ((v91 & 1) == 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v92 = v68;
    v93 = *(v67 + 32);
    v94 = v118;
    v93(v118, v80, v66);
    v95 = v119;
    v93((v94 + *(v119 + 48)), v92, v66);
    v96 = v120;
    outlined init with copy of Range<AttributedString.Index>(v94, v120, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v97 = *(v95 + 48);
    v98 = v121;
    v93(v121, v96, v66);
    v99 = v115;
    v115(v96 + v97, v66);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v94, v96, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v100 = *(v95 + 48);
    type metadata accessor for Range<AttributedString.Index>();
    v93(&v98[*(v101 + 36)], (v96 + v100), v66);
    v99(v96, v66);
    v99(v111, v66);
  }

  else
  {

    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    v81 = v117;
    dispatch thunk of AttributedStringProtocol.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v82 = *(v67 + 32);
    v83 = v118;
    v82(v118, v68, v66);
    v84 = v119;
    v82((v83 + *(v119 + 48)), v81, v66);
    v85 = v120;
    outlined init with copy of Range<AttributedString.Index>(v83, v120, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v86 = *(v84 + 48);
    v87 = v121;
    v82(v121, v85, v66);
    v88 = *(v67 + 8);
    v88(v85 + v86, v66);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v83, v85, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v89 = *(v84 + 48);
    type metadata accessor for Range<AttributedString.Index>();
    v82(&v87[*(v90 + 36)], (v85 + v89), v66);
    v88(v85, v66);
  }

  v102 = *(v122 + 8);
  v103 = v116;
  v102(v113, v116);
  return (v102)(v128, v103);
}

uint64_t specialized AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a1;
  v111 = a2;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v91 - v5;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v109 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v91 - v9;
  v10 = type metadata accessor for AttributedString.Index();
  v115 = *(v10 - 8);
  v116 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v91 - v17;
  v18 = type metadata accessor for AttributedString.Runs();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v103 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v91 - v27;
  v29 = type metadata accessor for AttributeContainer();
  v112 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v101 = &v91 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v91 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v117 = &v91 - v37;
  v38 = type metadata accessor for AttributedSubstring();
  v39 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  specialized Collection.first.getter(v28);
  v40 = *(v19 + 8);
  v104 = v19 + 8;
  v105 = v18;
  v40(v23, v18);
  v41 = type metadata accessor for AttributedString.Runs.Run();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(v28, 1, v41);
  v113 = v39;
  v114 = v38;
  if (v44 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v28, type metadata accessor for AttributedString.Runs.Run?);
LABEL_5:
    v48 = v115;
    v47 = v116;
    v49 = v106;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    v50 = v107;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v52 = *(v48 + 32);
      v53 = v108;
      v52(v108, v49, v47);
      v54 = v109;
      v52((v53 + *(v109 + 48)), v50, v47);
      v55 = v110;
      outlined init with copy of Range<AttributedString.Index>(v53, v110, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v56 = *(v54 + 48);
      v57 = v111;
      v52(v111, v55, v47);
      v58 = *(v48 + 8);
      v58(v55 + v56, v47);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v53, v55, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v59 = *(v54 + 48);
      type metadata accessor for Range<AttributedString.Index>();
      v52(&v57[*(v60 + 36)], (v55 + v59), v47);
      return (v58)(v55, v47);
    }

    __break(1u);
    goto LABEL_19;
  }

  v94 = v40;
  AttributedString.Runs.Run.attributes.getter();
  v93 = *(v42 + 8);
  v93(v28, v41);
  v92 = *(v112 + 32);
  v92(v117, v35, v29);
  v45 = v102;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  v46 = v103;
  specialized Collection.first.getter(v103);
  v94(v45, v105);
  if (v43(v46, 1, v41) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v46, type metadata accessor for AttributedString.Runs.Run?);
    (*(v112 + 8))(v117, v29);
    goto LABEL_5;
  }

  v61 = v99;
  AttributedString.Runs.Run.attributes.getter();
  v93(v46, v41);
  v62 = v101;
  v63 = (v92)(v101, v61, v29);
  MEMORY[0x1EEE9AC00](v63);
  *(&v91 - 2) = v117;
  *(&v91 - 1) = v62;
  v64 = v100;

  v65 = specialized Sequence.filter(_:)(partial apply for closure #1 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:), (&v91 - 4), v64);
  v66 = *(v65 + 16);
  v68 = v115;
  v67 = v116;
  v91 = v29;
  if (v66)
  {
    MEMORY[0x1EEE9AC00](v65);
    *(&v91 - 2) = v118;
    v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation19AttributedStringKey_pXpG_AF0eF0V5IndexVs5NeverOTg5(partial apply for specialized closure #2 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:), (&v91 - 4), v69);

    v71 = v97;
    specialized Sequence<>.max()(v70, v97);

    v72 = v98;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    v73 = v96;
    outlined init with copy of Range<AttributedString.Index>(v71, v96, type metadata accessor for AttributedString.Index?);
    v74 = *(v68 + 48);
    if (v74(v73, 1, v67) == 1)
    {
      v75 = v95;
      dispatch thunk of AttributedStringProtocol.endIndex.getter();
      v76 = v74(v73, 1, v67);
      v77 = v75;
      v72 = v98;
      if (v76 != 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v73, type metadata accessor for AttributedString.Index?);
      }
    }

    else
    {
      v77 = v95;
      (*(v68 + 32))(v95, v73, v67);
    }

    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v81 = dispatch thunk of static Comparable.<= infix(_:_:)();
    result = outlined destroy of Range<AttributedString.Index>?(v71, type metadata accessor for AttributedString.Index?);
    if ((v81 & 1) == 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v79 = *(v68 + 32);
    v80 = v108;
    v79(v108, v72, v67);
  }

  else
  {

    v78 = v106;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    v77 = v107;
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v79 = *(v68 + 32);
    v80 = v108;
    v79(v108, v78, v67);
  }

  v82 = v109;
  v79((v80 + *(v109 + 48)), v77, v67);
  v83 = v110;
  outlined init with copy of Range<AttributedString.Index>(v80, v110, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v84 = *(v82 + 48);
  v85 = v111;
  v79(v111, v83, v67);
  v86 = *(v68 + 8);
  v86(v83 + v84, v67);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v80, v83, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v87 = *(v82 + 48);
  type metadata accessor for Range<AttributedString.Index>();
  v79(&v85[*(v88 + 36)], (v83 + v87), v67);
  v86(v83, v67);
  v89 = *(v112 + 8);
  v90 = v91;
  v89(v101, v91);
  return (v89)(v117, v90);
}

void @objc NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(void *a1, uint64_t a2, NSTextStorageEditActions a3, Swift::Int a4, Swift::Int a5, Swift::Int a6)
{
  v11 = a1;
  v10.location = a4;
  v10.length = a5;
  NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(a3, v10, a6);
}

void @objc NSSwiftMutableAttributedString.init(data:options:documentAttributes:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  specialized NSSwiftMutableAttributedString.init(data:options:documentAttributes:)();
}

void sub_18C6AF0C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(__contentsOfMarkdownFileAt:options:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v9, v13, v10);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v9, v15, 1, v10);
  v16 = a4;
  specialized NSSwiftMutableAttributedString.init(__contentsOfMarkdownFileAt:options:baseURL:)();
}

void sub_18C6AF310(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(__markdown:options:baseURL:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-v13];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  specialized NSSwiftMutableAttributedString.init(__markdown:options:baseURL:)();
}

void sub_18C6AF554(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    if (v20)
    {
      v22 = _convertErrorToNSError(_:)();

      v23 = v22;
      *v20 = v22;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(__markdownString:options:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15[-v12];
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  v14 = a4;
  specialized NSSwiftMutableAttributedString.init(__markdownString:options:baseURL:)();
}

void sub_18C6AF778(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v19)
  {
    if (v18)
    {
      v20 = _convertErrorToNSError(_:)();

      v21 = v20;
      *v18 = v20;
    }

    else
    {
    }
  }
}

void @objc NSSwiftMutableAttributedString.init(attributedString:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  specialized NSSwiftMutableAttributedString.init(attributedString:)();
}

void @objc NSSwiftMutableAttributedString.init(html:options:documentAttributes:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  specialized NSSwiftMutableAttributedString.init(html:options:documentAttributes:)();
}

uint64_t @objc NSSwiftMutableAttributedString.init(url:options:documentAttributes:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, void, void))
{
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return a7(v12, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58));
}

void @objc NSSwiftMutableAttributedString.__ivar_destroyer(char *a1)
{
  swift_getObjectType();
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x68)]);

  v7 = *((*v3 & *a1) + 0x78);
  swift_getWitnessTable();
  type metadata accessor for NSSwiftAttributedSubstring.CopyOnWriteState();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&a1[v7], v8);

  v9 = *&a1[*((*v3 & *a1) + 0x98)];
}

id NSSwiftMutableAttributedString.StringImplementation.copy()@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  NSSwiftMutableAttributedString.mutableCopy()(v5);
  type metadata accessor for NSSwiftMutableAttributedString();
  swift_dynamicCast();
  result = NSSwiftMutableAttributedString.StringImplementation.__allocating_init(_:)(v4);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation.length.getter(void *a1)
{
  v1 = a1;
  v2 = NSSwiftMutableAttributedString.StringImplementation.length.getter();

  return v2;
}

uint64_t NSSwiftMutableAttributedString.StringImplementation.length.getter()
{
  v1 = type metadata accessor for AttributedString.UTF16View();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, *(v0 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str) + *((*MEMORY[0x1E69E7D40] & **(v0 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str)) + 0x60), v5, v7);
  AttributedString.utf16.getter();
  (*(v6 + 8))(v9, v5);
  v10 = AttributedString.UTF16View.count.getter();
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t NSSwiftMutableAttributedString.StringImplementation.character(at:)(uint64_t a1)
{
  v40 = a1;
  v41 = type metadata accessor for AttributedString.Index();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v32 - v4;
  v35 = type metadata accessor for AttributedString.UTF16View();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v32 - v7;
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = *(v1 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str);
  v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x60);
  v18 = *(v9 + 16);
  v18(&v32 - v14, &v16[v17], v8, v13);
  AttributedString.utf16.getter();
  v19 = *(v9 + 8);
  v19(v15, v8);
  (v18)(v11, &v16[v17], v8);
  v20 = v34;
  AttributedString.utf16.getter();
  v19(v11, v8);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810]);
  v21 = v35;
  v22 = v36;
  dispatch thunk of Collection.startIndex.getter();
  v23 = v37;
  v24 = v21;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v25 = *(v39 + 8);
  v26 = v22;
  v27 = v41;
  v25(v26, v41);
  v28 = *(v38 + 8);
  v28(v20, v24);
  v29 = v33;
  v30 = AttributedString.UTF16View.subscript.getter();
  v25(v23, v27);
  v28(v29, v24);
  return v30;
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation.character(at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOWORD(a3) = NSSwiftMutableAttributedString.StringImplementation.character(at:)(a3);

  return a3;
}

uint64_t NSSwiftMutableAttributedString.StringImplementation.getCharacters(_:range:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v103 = a2;
  v118 = a1;
  type metadata accessor for IndexingIterator<AttributedString.UTF16View>();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v106 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v92 - v11;
  type metadata accessor for Range<AttributedString.Index>();
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString.UTF16View();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v92 - v18;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  v116 = v19;
  v117 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AttributedString.Index();
  v107 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v92 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v92 - v27;
  v28 = type metadata accessor for OSSignpostID();
  v112 = *(v28 - 8);
  v113 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for signposter != -1)
  {
    v91 = v34;
    swift_once();
    v34 = v91;
  }

  v109 = v15;
  v37 = __swift_project_value_buffer(v34, signposter);
  outlined init with copy of Range<AttributedString.Index>(v37, v36, type metadata accessor for OSSignposter?);
  v38 = type metadata accessor for OSSignposter();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 48))(v36, 1, v38);
  v100 = v5;
  v102 = a3;
  v120 = v22;
  if (v40 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v36, type metadata accessor for OSSignposter?);
    v93 = 0;
    v41 = v114;
  }

  else
  {
    static OSSignpostID.new.getter(v32);
    v42 = OSSignposter.logHandle.getter();
    LODWORD(v95) = static os_signpost_type_t.begin.getter();
    v43 = OS_os_log.signpostsEnabled.getter();
    v110 = v38;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v121[0] = v45;
      *v44 = 136315138;
      v46 = _NSRange.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v121);

      *(v44 + 4) = v48;
      v49 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v42, v95, v49, "StringImplementation.getCharacters", "range: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x18D0110E0](v45, -1, -1);
      MEMORY[0x18D0110E0](v44, -1, -1);
    }

    v50 = v32;
    v51 = v112;
    v52 = v32;
    v53 = v113;
    (*(v112 + 16))(v111, v52, v113);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v93 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v51 + 8))(v50, v53);
    (*(v39 + 8))(v36, v110);
    v41 = v114;
    v22 = v120;
  }

  v110 = *&v41[direct field offset for NSSwiftMutableAttributedString.StringImplementation.str];
  v55 = v116;
  v54 = v117;
  v56 = *(v117 + 16);
  v112 = *((*MEMORY[0x1E69E7D40] & *v110) + 0x60);
  v113 = v117 + 16;
  v114 = v56;
  v57 = v101;
  (v56)(v101, v110 + v112, v116);
  v58 = v108;
  AttributedString.utf16.getter();
  v111 = *(v54 + 8);
  v117 = v54 + 8;
  (v111)(v57, v55);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810]);
  v59 = v119;
  dispatch thunk of Collection.startIndex.getter();
  v60 = v105;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v61 = *(v107 + 8);
  v95 = v107 + 8;
  v94 = v61;
  (v61)(v59, v22);
  v62 = v109 + 8;
  v63 = *(v109 + 8);
  v63(v58, v14);
  v64 = v116;
  (v114)(v57, v110 + v112, v116);
  AttributedString.utf16.getter();
  (v111)(v57, v64);
  AttributedString.UTF16View.index(_:offsetBy:)();
  v103 = v62;
  v102 = v63;
  v63(v58, v14);
  v65 = v120;
  v66 = v116;
  (v114)(v57, v110 + v112, v116);
  AttributedString.utf16.getter();
  (v111)(v57, v66);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v68 = v107;
    v69 = *(v107 + 16);
    v70 = v97;
    v69(v97, v60, v65);
    v71 = v106;
    v69((v70 + *(v106 + 48)), v115, v65);
    v72 = v99;
    outlined init with copy of Range<AttributedString.Index>(v70, v99, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v73 = *(v71 + 48);
    v117 = *(v68 + 32);
    v74 = v98;
    (v117)(v98, v72, v65);
    v75 = v94;
    (v94)(v72 + v73, v65);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v70, v72, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    (v117)(v74 + *(v96 + 36), v72 + *(v106 + 48), v65);
    v76 = v72;
    v77 = v75;
    (v75)(v76, v65);
    v78 = v104;
    v79 = v108;
    AttributedString.UTF16View.subscript.getter();
    outlined destroy of Range<AttributedString.Index>?(v74, type metadata accessor for Range<AttributedString.Index>);
    v102(v79, v14);
    (*(v109 + 16))(v7, v78, v14);
    dispatch thunk of Collection.startIndex.getter();
    v80 = 0;
    while (1)
    {
      v81 = v119;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      v82 = v120;
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = v82;
      v85 = v77;
      (v77)(v81, v84);
      if (v83)
      {
        break;
      }

      v85 = v7;
      v86 = dispatch thunk of Collection.subscript.read();
      v88 = *v87;
      v86(v121, 0);
      dispatch thunk of Collection.formIndex(after:)();
      *(v118 + 2 * v80) = v88;
      if (__OFADD__(v80++, 1))
      {
        __break(1u);
        break;
      }
    }

    outlined destroy of Range<AttributedString.Index>?(v7, type metadata accessor for IndexingIterator<AttributedString.UTF16View>);
    v102(v104, v14);
    v90 = v120;
    (v85)(v115, v120);
    (v85)(v105, v90);
    $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v93, "StringImplementation.getCharacters");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void @objc NSSwiftMutableAttributedString.StringImplementation.getCharacters(_:range:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v8 = a1;
  NSSwiftMutableAttributedString.StringImplementation.getCharacters(_:range:)(a3, a4, a5);
}

void NSSwiftMutableAttributedString.StringImplementation.replaceCharacters(in:with:)(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v18 = *(v4 + direct field offset for NSSwiftMutableAttributedString.StringImplementation.str);
  NSSwiftMutableAttributedString.beginEditing()();
  (*(v7 + 16))(v9, &v18[*((*MEMORY[0x1E69E7D40] & *v18) + 0x60)], v6);
  v19 = v28;
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  Range<>.init<A>(_:in:)();
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v12, v17, type metadata accessor for Range<AttributedString.Index>);
    v21 = v26;
    v20 = v27;
    v30 = v26;
    v31 = v27;
    v22 = AttributedString.characters.modify();
    lazy protocol witness table accessor for type String and conformance String();
    AttributedString.CharacterView.replaceSubrange<A>(_:with:)();
    v22(v29, 0);
    NSSwiftMutableAttributedString.invalidateStringCache()();
    v23 = MEMORY[0x18D00CA30](v21, v20);
    if (!__OFSUB__(v23, a2))
    {
      v24.location = v19;
      v24.length = a2;
      NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(2uLL, v24, v23 - a2);
      outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for Range<AttributedString.Index>);
      NSSwiftMutableAttributedString.endEditing()();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t @objc NSSwiftMutableAttributedString.replaceCharacters(in:with:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a1;
  a6(a3, a4, v10, v12);
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation._fastCStringContents(_:)(void *a1)
{
  v1 = a1;
  v2 = specialized NSSwiftMutableAttributedString.StringImplementation._fastCStringContents(_:)();

  return v2;
}

uint64_t @objc NSSwiftMutableAttributedString.StringImplementation._fastCharacterContents()(void *a1)
{
  v1 = a1;
  v2 = NSSwiftMutableAttributedString.StringImplementation._fastCharacterContents()();

  return v2;
}

uint64_t AttributedString.Runs.Validated.init(definition:base:range:reversed:longestEffectiveRangeNotRequired:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v83 = a4;
  LODWORD(v84) = a5;
  v88 = a2;
  v89 = a1;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v80 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v65 - v15;
  v16 = type metadata accessor for AttributedString.Index();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v65 - v20;
  type metadata accessor for Range<AttributedString.Index>();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v73 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DefaultIndices<AttributedString.UnicodeScalarView>();
  v71 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<AttributedString.UnicodeScalarView>();
  v69 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AttributedString.UnicodeScalarView();
  v67 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a7;
  v32 = a8;
  v33 = type metadata accessor for AttributedString.Runs.Validated();
  v34 = v33[14];
  v87 = v17;
  v35 = v17[7];
  v35(&v34[v32], 1, 1, v16);
  v75 = *(a6 - 8);
  v36 = *(v75 + 16);
  v82 = a6;
  v36(v32, v89, a6);
  *(v32 + v33[9]) = v88;
  outlined init with copy of Range<AttributedString.Index>(a3, v32 + v33[11], type metadata accessor for Range<AttributedString.Index>);
  v37 = v83;
  *(v32 + v33[12]) = v83;
  v76 = v33;
  *(v32 + v33[13]) = v84;
  v84 = v22;
  v38 = *(v22 + 36);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  v90 = a3;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v70 = v38;
    outlined destroy of Range<AttributedString.Index>?(&v34[v32], type metadata accessor for AttributedString.Index?);
    v35(&v34[v32], 1, 1, v16);
    v39 = v90;
    v41 = v86;
    v40 = v87;
    v42 = v16;
    if (v37)
    {
      goto LABEL_12;
    }

    v43 = v87[2];
    v44 = (v87 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    goto LABEL_8;
  }

  v66 = v35;
  v45 = v16;
  if ((v37 & 1) == 0)
  {
    outlined destroy of Range<AttributedString.Index>?(&v34[v32], type metadata accessor for AttributedString.Index?);
    v40 = v87;
    v43 = v87[2];
    v44 = (v87 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42 = v45;
    v39 = v90;
    v43(&v34[v32]);
    v66(&v34[v32], 0, 1, v42);
    v41 = v86;
LABEL_8:
    v34 = v85;
    (v43)(v85, v39, v42);
    (v43)(v41, v39, v42);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
LABEL_13:
      v54 = v40[4];
      v55 = v78;
      v54(v78, v34, v42);
      v56 = v80;
      v54((v55 + *(v80 + 48)), v41, v42);
      v57 = v79;
      outlined init with copy of Range<AttributedString.Index>(v55, v79, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v58 = *(v56 + 48);
      v59 = v77;
      v54(v77, v57, v42);
      v88 = v32;
      v60 = v40[1];
      v60(v57 + v58, v42);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v55, v57, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v54((v59 + *(v84 + 36)), (v57 + *(v56 + 48)), v42);
      v60(v57, v42);
      v61 = v76;
      v62 = v88;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v59, v88 + v76[15], type metadata accessor for Range<AttributedString.Index>);
      v63 = v82;
      v64 = v89;
      (*(*(v81 + 8) + 8))(&v91, v82);
      outlined destroy of Range<AttributedString.Index>?(v90, type metadata accessor for Range<AttributedString.Index>);
      result = (*(v75 + 8))(v64, v63);
      *(v62 + v61[10]) = v91;
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  v70 = v38;
  AttributedString.unicodeScalars.getter();
  v46 = v68;
  AttributedString.UnicodeScalarView.subscript.getter();
  (*(v67 + 8))(v31, v74);
  v44 = v72;
  Slice.indices.getter();
  outlined destroy of Range<AttributedString.Index>?(v46, type metadata accessor for Slice<AttributedString.UnicodeScalarView>);
  v42 = v16;
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = v86;
  if ((v47 & 1) == 0)
  {
LABEL_10:
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0]);
    v49 = v73;
    dispatch thunk of BidirectionalCollection.index(before:)();
    v48 = 0;
    goto LABEL_11;
  }

  v48 = 1;
  v49 = v73;
LABEL_11:
  v50 = v66;
  outlined destroy of Range<AttributedString.Index>?(v44, type metadata accessor for DefaultIndices<AttributedString.UnicodeScalarView>);
  v50(v49, v48, 1, v42);
  outlined assign with take of AttributedString.Index?(v49, &v34[v32]);
  v39 = v90;
  v40 = v87;
LABEL_12:
  v51 = v40[2];
  v52 = v70;
  v34 = v85;
  v51(v85, v39 + v70, v42);
  v51(v41, v39 + v52, v42);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ValidatingTextAttributeDefinition.enumerate(fixing:in:options:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v38 = a2;
  v39 = a4;
  v28 = a3;
  v30 = a1;
  v36 = a6;
  type metadata accessor for Range<AttributedString.Index>();
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributeContainer();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.Runs.Run();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AttributedString.Runs();
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v19 + 16);
  v27(v22, a3, v18, v20);
  AttributedString.runs.getter();
  (*(v19 + 8))(v22, v18);
  v23 = v30;
  AttributedString.Runs.subscript.getter();
  (*(v15 + 8))(v17, v29);
  AttributedString.Runs.Run.attributes.getter();
  (*(v31 + 8))(v14, v32);
  v24 = v36;
  (*(*(v37 + 8) + 16))(v11, v39);
  (*(v33 + 8))(v11, v34);
  outlined init with copy of Range<AttributedString.Index>(v23, v35, type metadata accessor for Range<AttributedString.Index>);
  (v27)(v22, v28, v18);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  result = _NSRange.init<A, B>(_:in:)();
  *(v24 + 32) = result;
  *(v24 + 40) = v26;
  return result;
}

uint64_t AttributedString.Runs.Validated.tailRange.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v60 - v7;
  v8 = type metadata accessor for AttributedString();
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - v14;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString.Index();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  outlined init with copy of Range<AttributedString.Index>(v2 + a1[14], v17, type metadata accessor for AttributedString.Index?);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for AttributedString.Index?);
    v28 = v2 + a1[11];
    if (*(v2 + a1[12]) == 1)
    {
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v30 = *(v19 + 16);
        v31 = v65;
        v30(v65, v28, v18);
        v32 = v66;
        v30((v31 + *(v66 + 48)), v28, v18);
LABEL_10:
        v40 = v67;
        outlined init with copy of Range<AttributedString.Index>(v31, v67, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v41 = *(v32 + 48);
        v42 = *(v19 + 32);
        v43 = v63;
        v42(v63, v40, v18);
        v44 = *(v19 + 8);
        v44(v40 + v41, v18);
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v31, v40, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
        v42(&v43[*(v69 + 36)], v40 + *(v32 + 48), v18);
        v44(v40, v18);
        v45 = v43;
        return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v45, v68, type metadata accessor for Range<AttributedString.Index>);
      }

      __break(1u);
    }

    else
    {
      v38 = *(v69 + 36);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v39 = *(v19 + 16);
        v31 = v65;
        v39(v65, v28 + v38, v18);
        v32 = v66;
        v39((v31 + *(v66 + 48)), v28 + v38, v18);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v33 = *(v19 + 32);
  v63 = (v19 + 32);
  v61 = v33;
  v33(v27, v17, v18);
  v34 = v2 + a1[11];
  if (*(v2 + a1[12]) != 1)
  {
    v46 = *(v69 + 36);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v47 = v65;
      v48 = v61;
      v61(v65, v27, v18);
      v49 = v66;
      (*(v19 + 16))(v47 + *(v66 + 48), v34 + v46, v18);
      v50 = v67;
      outlined init with copy of Range<AttributedString.Index>(v47, v67, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v51 = *(v49 + 48);
      v45 = v64;
      v48(v64, v50, v18);
      v52 = *(v19 + 8);
      v52(v50 + v51, v18);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v47, v50, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v48((v45 + *(v69 + 36)), v50 + *(v49 + 48), v18);
      v52(v50, v18);
      return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v45, v68, type metadata accessor for Range<AttributedString.Index>);
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = *(v2 + a1[9]);
  v36 = v62;
  (*(v62 + 16))(v10, v35, v8);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  AttributedStringProtocol.index(afterCharacter:)();
  (*(v36 + 8))(v10, v8);
  v37 = *(v69 + 36);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v19 + 8))(v21, v18);
    (*(v19 + 16))(v24, v34 + v37, v18);
  }

  else
  {
    v61(v24, v21, v18);
  }

  v53 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v54 = *(v19 + 8);
  result = v54(v27, v18);
  if (v53)
  {
    v55 = v65;
    (*(v19 + 16))(v65, v34, v18);
    v56 = v66;
    v57 = v61;
    v61((v55 + *(v66 + 48)), v24, v18);
    v58 = v67;
    outlined init with copy of Range<AttributedString.Index>(v55, v67, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v59 = *(v56 + 48);
    v45 = v64;
    v57(v64, v58, v18);
    v54((v58 + v59), v18);
    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v55, v58, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v57((v45 + *(v69 + 36)), v58 + *(v56 + 48), v18);
    v54(v58, v18);
    return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v45, v68, type metadata accessor for Range<AttributedString.Index>);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.Validated.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v198 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v174 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v173 = &v145 - v7;
  v157 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v189 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of AttributedString.AttributeDependencies.makeIterator()>>.0);
  v214 = v9;
  v188 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v183 = &v145 - v10;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v205 = a1;
  swift_getAssociatedTypeWitness();
  v207 = v12;
  v208 = v11;
  swift_getAssociatedConformanceWitness();
  v182 = type metadata accessor for TextAttributeValidationRecord();
  v168 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v202 = &v145 - v13;
  v215 = type metadata accessor for AttributeContainer();
  v164 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v15 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v210 = &v145 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v145 - v19;
  v181 = type metadata accessor for AttributedString.Runs();
  v166 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for AttributedSubstring();
  v167 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v179 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for AttributedString.Runs.Run();
  v161 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v213 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v211 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v212 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v199 = &v145 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v145 - v30;
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v153 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v204 = &v145 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v145 - v37;
  v193 = type metadata accessor for AttributedString.Index();
  v39 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v178 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v201 = &v145 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v203 = &v145 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v145 - v46;
  v171 = type metadata accessor for OSSignpostID();
  v191 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v155 = &v145 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v170 = &v145 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v145 - v52;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v54);
  v192 = &v145 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v145 - v58;
  v187 = v31;
  v186 = v47;
  if (one-time initialization token for signposter != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v159 = v25;
    v60 = v38;
    v177 = __swift_project_value_buffer(v57, signposter);
    outlined init with copy of Range<AttributedString.Index>(v177, v59, type metadata accessor for OSSignposter?);
    v61 = type metadata accessor for OSSignposter();
    v190 = *(v61 - 8);
    v62 = *(v190 + 6);
    v196 = v61;
    v176 = v190 + 48;
    v175 = v62;
    v63 = (v62)(v59, 1);
    v160 = a2;
    v200 = v20;
    if (v63 == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v59, type metadata accessor for OSSignposter?);
      v158 = 0;
    }

    else
    {
      v64 = v47;
      v154 = v39;
      static OSSignpostID.new.getter(v53);
      v65 = OSSignposter.logHandle.getter();
      v66 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        v68 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18BD4A000, v65, v66, v68, "AttributedString.Runs.Validated.next", "", v67, 2u);
        v64 = v186;
        MEMORY[0x18D0110E0](v67, -1, -1);
      }

      v69 = v191;
      v70 = v171;
      (*(v191 + 16))(v170, v53, v171);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v158 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v69 + 8))(v53, v70);
      (*(v190 + 1))(v59, v196);
      v31 = v187;
      v39 = v154;
      a2 = v160;
      v47 = v64;
    }

    v71 = v205;
    v72 = v206;
    v73 = v205[14];
    outlined init with copy of Range<AttributedString.Index>(v206 + v73, v60, type metadata accessor for AttributedString.Index?);
    v74 = *(v39 + 48);
    v75 = v193;
    v185 = v39 + 48;
    v184 = v74;
    if (v74(v60, 1, v193) == 1)
    {
      outlined destroy of Range<AttributedString.Index>?(v60, type metadata accessor for AttributedString.Index?);
      v76 = 1;
LABEL_11:
      v82 = v159;
      v83 = v158;
      goto LABEL_42;
    }

    v146 = v73;
    v77 = v39 + 32;
    v197 = *(v39 + 32);
    v197(v47, v60, v75);
    v78 = *(v72 + v71[10]);
    v216 = v78;
    AttributedString.Keys.init()();
    v79 = v39;
    v80 = static AttributedString.Keys.== infix(_:_:)();

    if (v80)
    {
      (*(v79 + 8))(v47, v75);
      v81 = v146;
      outlined destroy of Range<AttributedString.Index>?(v72 + v146, type metadata accessor for AttributedString.Index?);
      (*(v79 + 56))(v72 + v81, 1, 1, v75);
      a2 = v160;
      outlined init with copy of Range<AttributedString.Index>(v72 + v71[11], v160, type metadata accessor for Range<AttributedString.Index>);
      v76 = 0;
      goto LABEL_11;
    }

    v154 = v79;
    v169 = v78;
    v216 = v78;
    AttributedString.Runs.Validated.run(of:at:)(&v216, v47, v71, v31);
    v84 = v72 + v71[15];
    swift_beginAccess();
    v85 = v204;
    v195 = v84;
    v86 = v84;
    v87 = v72;
    AttributedString.Runs.Validated.index(following:)(v86, v71, v204);
    v88 = v184(v85, 1, v75);
    v89 = v197;
    v90 = v203;
    v91 = v71;
    v92 = v75;
    if (v88 == 1)
    {
      break;
    }

    ++v167;
    ++v166;
    v152 = (v191 + 16);
    v151 = (v191 + 8);
    v150 = (v190 + 8);
    v165 = v208 + 32;
    v25 = v164 + 1;
    v164 = (v188 + 8);
    v149 = *MEMORY[0x1E69686E8];
    v148 = v189 + 104;
    v147 = (v189 + 8);
    v163 = (v168 + 1);
    v162 = (v154 + 16);
    v168 = (v154 + 8);
    ++v161;
    v194 = v77;
    while (1)
    {
      v93 = v90;
      v89(v90, v204, v92);
      if ((specialized getter of runMightBeDirty #1 in AttributedString.Runs.Validated.next()(v87, v31) & 1) == 0 && ((*(v87 + v91[13]) & 1) != 0 || (specialized getter of runMightBeBrokenByDirt #1 in AttributedString.Runs.Validated.next()(v87, v31) & 1) == 0))
      {
        v92 = v193;
        (*v168)(v93, v193);
        goto LABEL_41;
      }

      v94 = v199;
      AttributedString.Runs.Validated.tailRange.getter(v91, v199);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      v95 = v179;
      AttributedString.subscript.getter();
      outlined destroy of Range<AttributedString.Index>?(v94, type metadata accessor for Range<AttributedString.Index>);
      v96 = v180;
      AttributedSubstring.runs.getter();
      (*v167)(v95, v209);
      AttributedString.Runs.subscript.getter();
      (*v166)(v96, v181);
      v20 = v200;
      AttributedString.Runs.Run.attributes.getter();
      v97 = v192;
      outlined init with copy of Range<AttributedString.Index>(v177, v192, type metadata accessor for OSSignposter?);
      if (v175(v97, 1, v196) == 1)
      {
        outlined destroy of Range<AttributedString.Index>?(v97, type metadata accessor for OSSignposter?);
        v191 = 0;
        v98 = v183;
      }

      else
      {
        v99 = v155;
        static OSSignpostID.new.getter(v155);
        v100 = OSSignposter.logHandle.getter();
        v101 = static os_signpost_type_t.begin.getter();
        v102 = OS_os_log.signpostsEnabled.getter();
        v98 = v183;
        if (v102)
        {
          v103 = swift_slowAlloc();
          LODWORD(v191) = v101;
          v104 = v103;
          *v103 = 0;
          v105 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18BD4A000, v100, v191, v105, "AttributedString.Runs.Validated.run -> fixup", "", v104, 2u);
          MEMORY[0x18D0110E0](v104, -1, -1);
        }

        v106 = v171;
        (*v152)(v170, v99, v171);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v191 = OSSignpostIntervalState.init(id:isOpen:)();
        (*v151)(v99, v106);
        (*v150)(v192, v196);
      }

      v107 = v202;
      (*(v208 + 32))(v20, v207);
      v216 = *(v107 + 1);

      AttributedString.Keys.init(_:)();
      AttributedString.Runs.Validated.run(of:at:)(&v218, v203, v205, v212);

      AttributeContainer.init()();
      v216 = *(v107 + 1);

      AttributedString.AttributeDependencies.makeIterator()();

      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
      v108 = v216;
      if (v216)
      {
        v109 = v217;
        do
        {
          AttributedString.Runs.Run.attributes.getter();
          v110 = static AttributedStringKey.isEqual(between:and:)(v20, v15, v108, v109);
          v111 = *v25;
          (*v25)(v15, v215);
          if ((v110 & 1) == 0)
          {
            AttributeContainer.init()();
            v112 = static AttributedStringKey.isEqual(between:and:)(v20, v15, v108, v109);
            v111(v15, v215);
            if (v112)
            {
              v113 = AttributedString.subscript.modify();
              lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
              static AttributedStringKey.copy<A>(from:to:)();
              v113(&v216, 0);
            }

            else
            {
              static AttributedStringKey.copy(from:to:)();
            }
          }

          swift_getOpaqueTypeConformance2();
          dispatch thunk of IteratorProtocol.next()();
          v108 = v216;
          v109 = v217;
        }

        while (v216);
      }

      (*v164)(v98, v214);
      AttributeContainer.init()();
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributeContainer and conformance AttributeContainer, MEMORY[0x1E69688E0]);
      v114 = v210;
      v115 = v215;
      v116 = dispatch thunk of static Equatable.== infix(_:_:)();
      v117 = *v25;
      (*v25)(v15, v115);
      if ((v116 & 1) == 0)
      {
        v118 = AttributedString.subscript.modify();
        v119 = v156;
        v120 = v157;
        (*v148)(v156, v149, v157);
        AttributedSubstring.mergeAttributes(_:mergePolicy:)();
        (*v147)(v119, v120);
        v118(&v216, 0);
      }

      v190 = v117;
      v117(v114, v215);
      (*v163)(v202, v182);
      $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v191, "AttributedString.Runs.Validated.run -> fixup");

      v53 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
      v121 = v212;
      a2 = v195;
      v39 = v193;
      v122 = dispatch thunk of static Comparable.< infix(_:_:)();
      v59 = v162;
      v123 = *v162;
      if (v122)
      {
        v124 = v201;
        v125 = v121;
      }

      else
      {
        v124 = v201;
        v125 = a2;
      }

      v123(v124, v125, v39);
      v126 = *(v211 + 36);
      v127 = (dispatch thunk of static Comparable.>= infix(_:_:)() & 1) != 0 ? v121 + v126 : a2 + v126;
      v38 = v178;
      v123(v178, v127, v39);
      v128 = v201;
      v57 = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((v57 & 1) == 0)
      {
        break;
      }

      v129 = a2;
      v130 = v173;
      v131 = v197;
      v197(v173, v128, v39);
      v191 = v126;
      v132 = v198;
      v131(v130 + *(v198 + 48), v38, v39);
      v92 = v39;
      v133 = v174;
      outlined init with copy of Range<AttributedString.Index>(v130, v174, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v188 = *(v132 + 48);
      v189 = type metadata accessor for Range<AttributedString.Index>;
      outlined destroy of Range<AttributedString.Index>?(v129, type metadata accessor for Range<AttributedString.Index>);
      v131(v129, v133, v39);
      v134 = *v168;
      (*v168)(v133 + v188, v39);
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v130, v133, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v131(v129 + v191, (v133 + *(v198 + 48)), v39);
      v134(v133, v39);
      v216 = v169;
      v135 = v199;
      v136 = v205;
      v87 = v206;
      AttributedString.Runs.Validated.run(of:at:)(&v216, v186, v205, v199);
      v137 = v189;
      outlined destroy of Range<AttributedString.Index>?(v212, v189);
      v190(v200, v215);
      (*v161)(v213, v172);
      v138 = v203;
      v134(v203, v92);
      v91 = v136;
      v31 = v187;
      outlined destroy of Range<AttributedString.Index>?(v187, v137);
      v139 = v204;
      _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v135, v31, type metadata accessor for Range<AttributedString.Index>);
      AttributedString.Runs.Validated.index(following:)(v195, v91, v139);
      v140 = v184(v139, 1, v92);
      v89 = v197;
      v90 = v138;
      if (v140 == 1)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_44:
    v154 = v39;
    v143 = v25;
    v144 = v57;
    swift_once();
    v57 = v144;
    v25 = v143;
    v31 = v187;
    v39 = v154;
    v47 = v186;
  }

LABEL_39:
  outlined destroy of Range<AttributedString.Index>?(v204, type metadata accessor for AttributedString.Index?);
LABEL_41:
  v83 = v158;
  swift_beginAccess();
  v141 = v153;
  AttributedString.Runs.Validated.index(following:)(v31, v91, v153);
  (*(v154 + 8))(v186, v92);
  outlined assign with take of AttributedString.Index?(v141, v87 + v146);
  a2 = v160;
  outlined init with copy of Range<AttributedString.Index>(v31, v160, type metadata accessor for Range<AttributedString.Index>);
  swift_endAccess();
  outlined destroy of Range<AttributedString.Index>?(v31, type metadata accessor for Range<AttributedString.Index>);
  v76 = 0;
  v82 = v159;
LABEL_42:
  (v82[7])(a2, v76, 1, v211);
  $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v83, "AttributedString.Runs.Validated.next");
}

uint64_t AttributedString.Runs.Validated.run(of:at:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v130 = a2;
  v120 = a4;
  v5 = type metadata accessor for AttributeContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AttributedString.Runs.NSAttributesSlice();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for AttributedString.Runs();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v129 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedSubstring();
  v127 = *(v10 - 8);
  v128 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString();
  v124 = *(v12 - 8);
  v125 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v122 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95 - v22;
  type metadata accessor for <<opaque return type of static _TestApp.comparisonViewIdentifier>>.0(0, &lazy cache variable for type metadata for <<opaque return type of AttributedString.Keys.makeIterator()>>.0);
  v25 = v24;
  v121 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v95 - v29;
  v106 = type metadata accessor for OSSignpostID();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v114 = &v95 - v33;
  type metadata accessor for OSSignposter?(0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  if (one-time initialization token for signposter != -1)
  {
    v93 = v38;
    v94 = v35;
    swift_once();
    v35 = v94;
    v38 = v93;
  }

  v39 = __swift_project_value_buffer(v35, signposter);
  outlined init with copy of Range<AttributedString.Index>(v39, v37, type metadata accessor for OSSignposter?);
  v40 = type metadata accessor for OSSignposter();
  v102 = *(v40 - 8);
  v41 = *(v102 + 48);
  v103 = v40;
  v42 = v41(v37, 1);
  v43 = MEMORY[0x1E69E7CC0];
  v113 = v5;
  v112 = v6;
  v115 = v23;
  if (v42 == 1)
  {
    outlined destroy of Range<AttributedString.Index>?(v37, type metadata accessor for OSSignposter?);
    v44 = 0;
  }

  else
  {
    v45 = v114;
    static OSSignpostID.new.getter(v114);

    v46 = v38;
    v47 = OSSignposter.logHandle.getter();
    v99 = static os_signpost_type_t.begin.getter();

    v48 = OS_os_log.signpostsEnabled.getter();
    v101 = v46;
    v100 = v37;
    if (v48)
    {
      v98 = v47;
      v131 = v20;
      v49 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v133[0] = v96;
      v97 = v49;
      *v49 = 136315138;
      v136 = v43;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
      v50 = v136;
      v138 = v46;

      AttributedString.Keys.makeIterator()();

      while (1)
      {
        swift_getOpaqueTypeConformance2();
        dispatch thunk of IteratorProtocol.next()();
        if (!v138)
        {
          break;
        }

        v51 = dispatch thunk of static AttributedStringKey.name.getter();
        v53 = v52;
        v136 = v50;
        v55 = *(v50 + 16);
        v54 = *(v50 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
          v50 = v136;
        }

        *(v50 + 16) = v55 + 1;
        v56 = v50 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v53;
      }

      (*(v121 + 8))(v30, v25);
      v138 = v50;
      type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v57 = BidirectionalCollection<>.joined(separator:)();
      v59 = v58;

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v133);

      v61 = v97;
      *(v97 + 1) = v60;
      v45 = v114;
      v62 = OSSignpostID.rawValue.getter();
      v63 = v98;
      _os_signpost_emit_with_name_impl(&dword_18BD4A000, v98, v99, v62, "AttributedString.Runs.Validated.run", "dependencies: %s", v61, 0xCu);
      v64 = v96;
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x18D0110E0](v64, -1, -1);
      MEMORY[0x18D0110E0](v61, -1, -1);

      v20 = v131;
    }

    else
    {
    }

    v65 = v105;
    v66 = v106;
    (*(v105 + 16))(v104, v45, v106);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v44 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v65 + 8))(v45, v66);
    (*(v102 + 8))(v100, v103);
    v38 = v101;
  }

  v138 = 0;
  v139 = 0;
  v140 = v43;
  v133[0] = v38;

  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  dispatch thunk of IteratorProtocol.next()();
  v67 = v136;
  if (v136)
  {
    do
    {
      v135[0] = v67;
      v135[1] = v137;
      closure #2 in AttributedString.Runs.Validated.run(of:at:)(&v138, v135, v133);

      v68 = v133[0];
      v43 = v134;
      v138 = v133[0];
      v139 = v133[1];
      v140 = v134;
      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
      v67 = v136;
    }

    while (v136);
  }

  else
  {
    v68 = 0;
  }

  (*(v121 + 8))(v27, v25);
  if (v68)
  {
    v69 = v132;
    v70 = v117;
    v71 = *(v117 + v132[9]);
    v121 = v44;
    v73 = v124;
    v72 = v125;
    v74 = *(v124 + 16);
    v131 = v20;
    v75 = v123;
    v74(v123, v71, v125);
    v76 = v107;
    AttributedString.Runs.Validated.tailRange.getter(v69, v107);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    v77 = v126;
    AttributedString.subscript.getter();
    outlined destroy of Range<AttributedString.Index>?(v76, type metadata accessor for Range<AttributedString.Index>);
    (*(v73 + 8))(v75, v72);
    v78 = v129;
    AttributedSubstring.runs.getter();
    (*(v127 + 8))(v77, v128);
    static AttributedStringKey.run(at:in:)(v130);
    v79 = v118;
    v80 = v78;
    v44 = v121;
    v81 = v116;
    v20 = v131;
    v82 = v115;
    v83 = v119;
    (*(v118 + 8))(v80, v119);
  }

  else
  {
    v70 = v117;
    AttributedString.Runs.Validated.tailRange.getter(v132, v20);
    v83 = v119;
    v79 = v118;
    v81 = v116;
    v82 = v115;
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v20, v82, type metadata accessor for Range<AttributedString.Index>);
  if (*(v43 + 16))
  {
    v84 = v82;
    v85 = v123;
    v86 = v124;
    v87 = v125;
    (*(v124 + 16))(v123, *(v70 + v132[9]), v125);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    v88 = v126;
    AttributedString.subscript.getter();
    (*(v86 + 8))(v85, v87);
    v89 = v129;
    AttributedSubstring.runs.getter();
    (*(v127 + 8))(v88, v128);
    v90 = v108;
    AttributedString.Runs.subscript.getter();

    (*(v79 + 8))(v89, v83);
    v91 = v110;
    AttributedString.Runs.NSAttributesSlice.subscript.getter();
    (*(v112 + 8))(v91, v113);
    (*(v109 + 8))(v90, v111);
    outlined destroy of Range<AttributedString.Index>?(v84, type metadata accessor for Range<AttributedString.Index>);
  }

  else
  {

    _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v82, v81, type metadata accessor for Range<AttributedString.Index>);
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v81, v120, type metadata accessor for Range<AttributedString.Index>);
  $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(v44, "AttributedString.Runs.Validated.run");
}

uint64_t specialized getter of runMightBeDirty #1 in AttributedString.Runs.Validated.next()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AttributedString.Runs.Validated();
  outlined init with copy of Range<AttributedString.Index>(a1 + *(v10 + 60), v9, type metadata accessor for Range<AttributedString.Index>);
  swift_beginAccess();
  outlined init with copy of Range<AttributedString.Index>(a2, v6, type metadata accessor for Range<AttributedString.Index>);
  type metadata accessor for AttributedString.Index();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v11 = dispatch thunk of static Comparable.>= infix(_:_:)() ^ 1;
  }

  else
  {
    v11 = 1;
  }

  outlined destroy of Range<AttributedString.Index>?(v6, type metadata accessor for Range<AttributedString.Index>);
  outlined destroy of Range<AttributedString.Index>?(v9, type metadata accessor for Range<AttributedString.Index>);
  return v11 & 1;
}

uint64_t specialized getter of runMightBeBrokenByDirt #1 in AttributedString.Runs.Validated.next()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Index();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AttributedString.Runs.Validated();
  v12 = a1 + *(v11 + 60);
  if (*(a1 + *(v11 + 48)) == 1)
  {
    v13 = *(v5 + 16);
    v13(v10, v12, v4);
    swift_beginAccess();
    v13(v7, a2, v4);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v14 = dispatch thunk of static Comparable.>= infix(_:_:)();
  }

  else
  {
    type metadata accessor for Range<AttributedString.Index>();
    v16 = v15;
    v17 = *(v5 + 16);
    v17(v10, v12 + *(v15 + 36), v4);
    swift_beginAccess();
    v17(v7, a2 + *(v16 + 36), v4);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v14 = dispatch thunk of static Comparable.<= infix(_:_:)();
  }

  v18 = v14;
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  return v18 & 1;
}

uint64_t AttributedString.Runs.Validated.index(following:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v35 = a1;
  v5 = type metadata accessor for AttributedString.UnicodeScalarView();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Index?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  if (*(v3 + a2[12]) == 1)
  {
    v21 = a2[11];
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v29 = v21;
    v30 = v3;
    if (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      v22 = a2[9];
      v23 = v31;
      (*(v31 + 16))(v10, *(v30 + v22), v8);
      AttributedString.unicodeScalars.getter();
      (*(v23 + 8))(v10, v8);
      AttributedString.UnicodeScalarView.index(before:)();
      (*(v32 + 8))(v7, v33);
      v24 = v29;
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        (*(v12 + 8))(v14, v11);
        (*(v12 + 16))(v20, v30 + v24, v11);
      }

      else
      {
        (*(v12 + 32))(v20, v14, v11);
      }

      (*(v12 + 56))(v20, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v20, 1, 1, v11);
    }
  }

  else
  {
    type metadata accessor for Range<AttributedString.Index>();
    v26 = *(v25 + 36);
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      (*(v12 + 56))(v17, 1, 1, v11);
    }

    else
    {
      (*(v12 + 16))(v17, v35 + v26, v11);
      (*(v12 + 56))(v17, 0, 1, v11);
    }

    v20 = v17;
  }

  return _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v20, v34, type metadata accessor for AttributedString.Index?);
}

uint64_t static AttributedStringKey.isEqual(between:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v34 - v7;
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v34 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  AttributeContainer.subscript.getter();
  v37 = a4;
  v38 = a3;
  AttributeContainer.subscript.getter();
  v40 = TupleTypeMetadata2;
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = *(v12 + 16);
  v22(v11, v20, v8);
  v22(&v11[v21], v17, v8);
  v41 = v6;
  v23 = *(v6 + 48);
  if (v23(v11, 1, AssociatedTypeWitness) != 1)
  {
    v35 = v20;
    v22(v42, v11, v8);
    v26 = AssociatedTypeWitness;
    if (v23(&v11[v21], 1, AssociatedTypeWitness) != 1)
    {
      v28 = v41;
      v29 = v36;
      (*(v41 + 32))(v36, &v11[v21], v26);
      swift_getAssociatedConformanceWitness();
      v30 = v42;
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v28 + 8);
      v31(v29, v26);
      v32 = *(v12 + 8);
      v32(v17, v8);
      v32(v35, v8);
      v31(v30, v26);
      v32(v11, v8);
      return v25 & 1;
    }

    v27 = *(v12 + 8);
    v27(v17, v8);
    v27(v35, v8);
    (*(v41 + 8))(v42, v26);
    goto LABEL_6;
  }

  v24 = *(v12 + 8);
  v24(v17, v8);
  v24(v20, v8);
  if (v23(&v11[v21], 1, AssociatedTypeWitness) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v11, v40);
    v25 = 0;
    return v25 & 1;
  }

  v24(v11, v8);
  v25 = 1;
  return v25 & 1;
}

uint64_t static AttributedStringKey.copy<A>(from:to:)()
{
  swift_getAssociatedTypeWitness();
  v0 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v0 - 8);
  AttributeContainer.subscript.getter();
  return dispatch thunk of AttributedStringProtocol.subscript.setter();
}

uint64_t static AttributedStringKey.copy(from:to:)()
{
  swift_getAssociatedTypeWitness();
  v0 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v0 - 8);
  AttributeContainer.subscript.getter();
  return AttributeContainer.subscript.setter();
}

void $defer #1 <A>() in NSSwiftMutableAttributedString.attributes(location:effectiveRange:rangeLimit:)(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OSSignposter?(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v28 = v5;
    v29 = v9;
    v16 = one-time initialization token for signposter;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v13, signposter);
    outlined init with copy of Range<AttributedString.Index>(v17, v15, type metadata accessor for OSSignposter?);
    v18 = type metadata accessor for OSSignposter();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {

      outlined destroy of Range<AttributedString.Index>?(v15, type metadata accessor for OSSignposter?);
    }

    else
    {
      v27 = a2;
      v20 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v26 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v21 = v28;
        if ((*(v28 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
        {
          v22 = "[Error] Interval already ended";
        }

        else
        {
          (*(v21 + 8))(v7, v4);
          v22 = "";
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18BD4A000, v20, v26, v24, v27, v22, v23, 2u);
        MEMORY[0x18D0110E0](v23, -1, -1);
      }

      (*(v29 + 8))(v11, v8);
      (*(v19 + 8))(v15, v18);
    }
  }
}

void *closure #2 in AttributedString.Runs.Validated.run(of:at:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v5 = type metadata accessor for AttributedString.AttributeRunBoundaries();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.AttributeRunBoundaries?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = *a1;
  v41 = a1[1];
  v42 = v21;
  v43 = a1[2];
  v22 = a2[1];
  v23 = *a2;
  v39 = v22;
  v40 = v23;
  dispatch thunk of static AttributedStringKey.runBoundaries.getter();
  (*(v6 + 104))(v17, *MEMORY[0x1E6968710], v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v24 = *(v9 + 56);
  outlined init with copy of Range<AttributedString.Index>(v20, v11, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  outlined init with copy of Range<AttributedString.Index>(v17, &v11[v24], type metadata accessor for AttributedString.AttributeRunBoundaries?);
  v25 = *(v6 + 48);
  if (v25(v11, 1, v5) != 1)
  {
    outlined init with copy of Range<AttributedString.Index>(v11, v14, type metadata accessor for AttributedString.AttributeRunBoundaries?);
    if (v25(&v11[v24], 1, v5) != 1)
    {
      v30 = &v11[v24];
      v31 = v38;
      (*(v6 + 32))(v38, v30, v5);
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries, MEMORY[0x1E6968718]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v6 + 8);
      v33(v31, v5);
      outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for AttributedString.AttributeRunBoundaries?);
      outlined destroy of Range<AttributedString.Index>?(v20, type metadata accessor for AttributedString.AttributeRunBoundaries?);
      v33(v14, v5);
      outlined destroy of Range<AttributedString.Index>?(v11, type metadata accessor for AttributedString.AttributeRunBoundaries?);
      if (v32)
      {
        goto LABEL_9;
      }

LABEL_7:
      v26 = v44;
      v27 = v41;
      *v44 = v42;
      v26[1] = v27;
      _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSAttributedStringKey>, type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18CD63400;
      *(inited + 32) = static AttributedStringKey.nsAttributedStringKey.getter();
      v45 = v43;

      result = specialized Array.append<A>(contentsOf:)(inited);
      v26[2] = v45;
      return result;
    }

    outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for AttributedString.AttributeRunBoundaries?);
    outlined destroy of Range<AttributedString.Index>?(v20, type metadata accessor for AttributedString.AttributeRunBoundaries?);
    (*(v6 + 8))(v14, v5);
LABEL_6:
    outlined destroy of Range<AttributedString.Index>?(v11, type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    goto LABEL_7;
  }

  outlined destroy of Range<AttributedString.Index>?(v17, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  outlined destroy of Range<AttributedString.Index>?(v20, type metadata accessor for AttributedString.AttributeRunBoundaries?);
  if (v25(&v11[v24], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Range<AttributedString.Index>?(v11, type metadata accessor for AttributedString.AttributeRunBoundaries?);
LABEL_9:
  v34 = v44;
  if (v42)
  {
    *v44 = v42;
    v35 = v41;
  }

  else
  {
    v35 = v39;
    *v44 = v40;
  }

  v36 = v43;
  v34[1] = v35;
  v34[2] = v36;
}

uint64_t static AttributedStringKey.run(at:in:)(uint64_t a1)
{
  v10[1] = a1;
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - v3;
  v5 = type metadata accessor for AttributedString.Runs.AttributesSlice1();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  AttributedString.Runs.subscript.getter();
  AttributedString.Runs.AttributesSlice1.subscript.getter();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t NSSwiftMutableAttributedString.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

uint64_t NSSwiftMutableAttributedString.content.setter(char *a1)
{
  v2 = v1;
  v70 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v69 = *MEMORY[0x1E69E7D40];
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v53 - v8;
  v9 = type metadata accessor for AttributedString.Index();
  v72 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  type metadata accessor for Range<AttributedString.Index>();
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  NSSwiftMutableAttributedString.beginEditing()();
  v23 = *((*v4 & *v1) + 0x60);
  v60 = *(v18 + 16);
  v61 = v18 + 16;
  v60(v22, v1 + v23, v17);
  v58 = v18;
  v24 = *(v18 + 24);
  v68 = a1;
  v66 = v17;
  v24(v1 + v23, a1, v17);
  NSSwiftMutableAttributedString.invalidateStringCache()();
  v25 = [v1 string];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  swift_beginAccess();
  (*(*(*((v69 & v70) + 0x58) + 8) + 56))(v26, v28, *((v69 & v70) + 0x50));
  swift_endAccess();

  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  v29 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  v69 = v14;
  v70 = v11;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v53 = v2;
  v31 = v72;
  v32 = *(v72 + 32);
  v59 = v29;
  v33 = v64;
  v32(v64, v69, v9);
  v34 = v67;
  v32((v33 + *(v67 + 48)), v70, v9);
  v35 = v63;
  outlined init with copy of Range<AttributedString.Index>(v33, v63, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v36 = *(v34 + 48);
  v32(v71, v35, v9);
  v37 = *(v31 + 8);
  v37(v35 + v36, v9);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v33, v35, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v32(&v71[*(v65 + 36)], v35 + *(v34 + 48), v9);
  v72 = v31 + 8;
  v57 = v37;
  v37(v35, v9);
  v54 = v22;
  v60(v62, v22, v66);
  v38 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v56 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v39 = _NSRange.init<A, B>(_:in:)();
  v55 = v40;
  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v59 = v39;
  v41 = v64;
  v32(v64, v69, v9);
  v42 = v67;
  v32((v41 + *(v67 + 48)), v70, v9);
  v70 = v38;
  v43 = v63;
  outlined init with copy of Range<AttributedString.Index>(v41, v63, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v44 = *(v42 + 48);
  v45 = v71;
  v32(v71, v43, v9);
  v46 = v57;
  v57(v43 + v44, v9);
  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v41, v43, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v32(&v45[*(v65 + 36)], v43 + *(v42 + 48), v9);
  v46(v43, v9);
  v47 = v55;
  v48 = v66;
  v60(v62, v68, v66);
  result = _NSRange.init<A, B>(_:in:)();
  v50 = v49 - v47;
  if (!__OFSUB__(v49, v47))
  {
    v51.location = v59;
    v51.length = v47;
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(3uLL, v51, v50);
    v52 = *(v58 + 8);
    v52(v54, v48);
    NSSwiftMutableAttributedString.endEditing()();
    return (v52)(v68, v48);
  }

LABEL_7:
  __break(1u);
  return result;
}

void NSSwiftMutableAttributedString.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v37 = *v4;
  v7 = MEMORY[0x1E69E7D40];
  v36 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSwiftMutableAttributedString.beginEditing()();
  v35 = type metadata accessor for Range<AttributedString.Index>;
  v27 = a1;
  outlined init with copy of Range<AttributedString.Index>(a1, v14, type metadata accessor for Range<AttributedString.Index>);
  v15 = *((*v7 & *v4) + 0x60);
  v34 = *(v9 + 16);
  v34(v11, &v4[v15], v8);
  v29 = lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  v26 = _NSRange.init<A, B>(_:in:)();
  v28 = v16;
  AttributedString.replaceSubrange<A>(_:with:)();
  NSSwiftMutableAttributedString.invalidateStringCache()();
  v17 = [v4 string];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  swift_beginAccess();
  (*(*(*((v36 & v37) + 0x58) + 8) + 56))(v18, v20, *((v36 & v37) + 0x50));
  swift_endAccess();

  outlined init with copy of Range<AttributedString.Index>(v27, v14, v35);
  v34(v11, &v5[v15], v8);
  _NSRange.init<A, B>(_:in:)();
  v21 = v28;
  v23 = v22 - v28;
  if (__OFSUB__(v22, v28))
  {
    __break(1u);
  }

  else
  {
    v24 = v26;
    NSSwiftMutableAttributedString.edited(_:range:changeInLength:)(3uLL, *(&v21 - 1), v23);
    NSSwiftMutableAttributedString.endEditing()();
  }
}

uint64_t NSSwiftMutableAttributedString.update(with:)(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v12 = *a1;
  swift_beginAccess();
  v7 = (*(*(*((v6 & v5) + 0x58) + 8) + 48))(&v12, *((v6 & v5) + 0x50));
  swift_endAccess();
  if (v7)
  {
    v8 = NSAttributedString.range.getter();
    v11.receiver = v2;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel_edited_range_changeInLength_, 1, v8, v9, 0);
  }

  return v7 & 1;
}

uint64_t NSSwiftMutableAttributedString.clean(_:)(uint64_t a1)
{
  v15 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - v6;
  v8 = *((v3 & v2) + 0x58);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for TextAttributeValidationRecord();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((v3 & v2) + 0x68);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  (*(v8 + 40))(v15, v4, v8);
  (*(v5 + 8))(v7, v4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t NSSwiftMutableAttributedString.runs(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = closure #1 in NSSwiftMutableAttributedString.runs(for:in:)(&v3[*((*MEMORY[0x1E69E7D40] & *v3) + 0x60)], v3, a1, a2, &v6);
  *a3 = v6;
  return result;
}

uint64_t closure #1 in NSSwiftMutableAttributedString.runs(for:in:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a4;
  v20 = a5;
  v8 = *a2;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - v12;
  v14 = *((v9 & v8) + 0x68);
  swift_beginAccess();
  (*(v11 + 16))(v13, &a2[v14], v10);
  (*(*((v9 & v8) + 0x58) + 32))(v21, a3, v10);
  (*(v11 + 8))(v13, v10);
  v15 = v22;
  v16 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v17 = ValidatingTextAttributeDefinition.runs(fixing:in:options:)(a1, v19, 0, v15, v16);
  *v20 = v17;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t ValidatingTextAttributeDefinition.runs(fixing:in:options:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a2;
  v23 = a1;
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString.Runs.Validated();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v22 - v19;
  (*(v13 + 16))(v16, v6, a4, v18);
  outlined init with copy of Range<AttributedString.Index>(v22, v12, type metadata accessor for Range<AttributedString.Index>);
  AttributedString.Runs.Validated.init(definition:base:range:reversed:longestEffectiveRangeNotRequired:)(v16, v23, v12, (a3 >> 1) & 1, (a3 >> 20) & 1, a4, a5, v20);
  swift_getWitnessTable();
  return AnySequence.init<A>(_:)();
}

uint64_t protocol witness for NSSwiftAttributedStringProtocol.init(wrapping:resolver:) in conformance NSSwiftMutableAttributedString<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = specialized NSSwiftMutableAttributedString.__allocating_init(wrapping:resolver:)(a1, a2);
  result = (*(*(*(a3 + 80) - 8) + 8))(a2);
  *a4 = v7;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSSwiftMutableAttributedString<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  type metadata accessor for OSSignposter?(0);
  v14 = v13;
  __swift_allocate_value_buffer(v13, signposter);
  v15 = __swift_project_value_buffer(v14, signposter);
  static Log.textEditor.getter();
  outlined init with copy of Range<AttributedString.Index>(v12, v9, type metadata accessor for Logger?);
  v16 = 1;
  if ((*(v1 + 48))(v9, 1, v0) != 1)
  {
    (*(v1 + 32))(v6, v9, v0);
    (*(v1 + 16))(v3, v6, v0);
    OSSignposter.init(logger:)();
    (*(v1 + 8))(v6, v0);
    v16 = 0;
  }

  v17 = type metadata accessor for OSSignposter();
  (*(*(v17 - 8) + 56))(v15, v16, 1, v17);
  return outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for Logger?);
}

void type metadata accessor for PartialRangeFrom<AttributedString.Index>()
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v0 = type metadata accessor for PartialRangeFrom();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeFrom<AttributedString.Index>);
    }
  }
}

void type metadata accessor for PartialRangeUpTo<AttributedString.Index>()
{
  if (!lazy cache variable for type metadata for PartialRangeUpTo<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v0 = type metadata accessor for PartialRangeUpTo();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeUpTo<AttributedString.Index>);
    }
  }
}

uint64_t outlined init with copy of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized closure #2 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for AttributedString.Runs();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributedString.Index();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(a1 + 8);
  type metadata accessor for AttributedSubstring();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
  dispatch thunk of AttributedStringProtocol.startIndex.getter();
  dispatch thunk of AttributedStringProtocol.runs.getter();
  static AttributedStringKey.run(at:in:)(v8);
  (*(v17 + 8))(v5, v18);
  v13 = v16;
  (*(v6 + 8))(v8, v16);
  (*(v6 + 16))(v19, &v12[*(v10 + 44)], v13);
  return outlined destroy of Range<AttributedString.Index>?(v12, type metadata accessor for Range<AttributedString.Index>);
}

uint64_t specialized closure #2 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = type metadata accessor for AttributedString.Runs();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedSubstring();
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedSubstring and conformance AttributedSubstring, MEMORY[0x1E6968968]);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  static AttributedStringKey.run(at:in:)(a1);
  (*(v4 + 8))(v6, v3);
  v10 = type metadata accessor for AttributedString.Index();
  (*(*(v10 - 8) + 16))(v13, v9, v10);
  return outlined destroy of Range<AttributedString.Index>?(v9, type metadata accessor for Range<AttributedString.Index>);
}

BOOL partial apply for closure #1 in AttributedStringProtocol.suffix<A>(whereValueIn:differsComparedTo:)(uint64_t *a1)
{
  return (static AttributedStringKey.isEqual(between:and:)(*(v1 + 16), *(v1 + 24), *a1, a1[1]) & 1) == 0;
}

{
  return partial apply for closure #1 in AttributedStringProtocol.prefix<A>(whereValueIn:differsComparedTo:)(a1);
}

void type metadata accessor for DefaultIndices<AttributedString.UnicodeScalarView>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<AttributedString.UnicodeScalarView>)
  {
    type metadata accessor for AttributedString.UnicodeScalarView();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0]);
    v0 = type metadata accessor for DefaultIndices();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultIndices<AttributedString.UnicodeScalarView>);
    }
  }
}

void type metadata accessor for Slice<AttributedString.UnicodeScalarView>()
{
  if (!lazy cache variable for type metadata for Slice<AttributedString.UnicodeScalarView>)
  {
    type metadata accessor for AttributedString.UnicodeScalarView();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView, MEMORY[0x1E69686C0]);
    v0 = type metadata accessor for Slice();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Slice<AttributedString.UnicodeScalarView>);
    }
  }
}

uint64_t outlined assign with take of AttributedString.Index?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttributedString.Index?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id specialized NSSwiftMutableAttributedString.init(value:resolver:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x70)] = MEMORY[0x1E69E7CC0];
  v9 = &v2[*((*v7 & *v2) + 0x78)];
  *v9 = 0;
  *(v9 + 1) = 0;
  AttributedString.CStringCache.init()();
  AttributedString.UTF16Cache.init()();
  *&v2[*((*v7 & *v2) + 0x90)] = 0;
  *&v2[*((*v7 & *v2) + 0x98)] = 0;
  v10 = *((*v7 & *v2) + 0x60);
  v11 = type metadata accessor for AttributedString();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v2[v10], a1, v11);
  (*(*(*((v8 & v6) + 0x50) - 8) + 16))(&v2[*((*v7 & *v2) + 0x68)], a2);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v12 + 8))(a1, v11);
  return v13;
}

id specialized NSSwiftMutableAttributedString.__allocating_init(wrapping:resolver:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = objc_allocWithZone(v3);
  v12 = specialized NSSwiftMutableAttributedString.init(value:resolver:)(v10, a2);
  v13 = [v12 string];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  swift_beginAccess();
  (*(*(*(v3 + 11) + 8) + 56))(v14, v16, *(v3 + 10));
  swift_endAccess();

  (*(v7 + 8))(a1, v6);
  return v12;
}

void specialized NSSwiftMutableAttributedString.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + *((*v1 & *v0) + 0x78));
  *v2 = 0;
  v2[1] = 0;
  AttributedString.CStringCache.init()();
  AttributedString.UTF16Cache.init()();
  *(v0 + *((*v1 & *v0) + 0x90)) = 0;
  *(v0 + *((*v1 & *v0) + 0x98)) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for IndexingIterator<AttributedString.UTF16View>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF16View>)
  {
    type metadata accessor for AttributedString.UTF16View();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.UTF16View and conformance AttributedString.UTF16View, MEMORY[0x1E6968810]);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<AttributedString.UTF16View>);
    }
  }
}

void type metadata accessor for (NSAttributedStringKey, Any)()
{
  if (!lazy cache variable for type metadata for (NSAttributedStringKey, Any))
  {
    type metadata accessor for NSAttributedStringKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSAttributedStringKey, Any));
    }
  }
}

void type metadata accessor for (value: Any?, range: _NSRange)()
{
  if (!lazy cache variable for type metadata for (value: Any?, range: _NSRange))
  {
    type metadata accessor for PPTTestCase?(255, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    type metadata accessor for _NSRange(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: Any?, range: _NSRange));
    }
  }
}

void type metadata accessor for ClosedRange<AttributedString.Index>()
{
  if (!lazy cache variable for type metadata for ClosedRange<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    lazy protocol witness table accessor for type AttributedString and conformance AttributedString(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<AttributedString.Index>);
    }
  }
}

uint64_t partial apply for closure #2 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  result = outlined assign with copy of Any?(a1, v8);
  *v9 = a2;
  v9[1] = a3;
  *a4 = 1;
  return result;
}

void partial apply for closure #3 in NSSwiftMutableAttributedString.attribute(attrName:location:effectiveRange:rangeLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4[2];
  v6 = *(v5 + 8);
  v7 = __OFADD__(v6, a3);
  v8 = v6 + a3;
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v4[3];
  v9 = v4[4];
  v7 = __OFSUB__(v10, v9);
  v11 = v10 - v9;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = __OFSUB__(v8, v11);
  v12 = v8 - v11;
  if (!v7)
  {
    *(v5 + 8) = v12;
    *a4 = 1;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t outlined assign with copy of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata completion function for AttributedString.Runs.Validated()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Range<AttributedString.Index>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttributedString.Index?(319);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AttributedString.Runs.Validated(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for AttributedString.Index();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = v11 + v10;
  v13 = ((v11 + v10) & ~v10) + v11;
  if (*(v9 + 84))
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = v11 + 1;
  }

  v15 = v10 | *(v6 + 80) & 0xF8;
  if (v15 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v14 + v10 + ((v10 + 2 + v13 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10)) & ~v10)) & ~v10) + v13 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    v19 = v18 + (((v15 | 7) + 16) & ~(v15 | 7));
  }

  else
  {
    __n = v14;
    v36 = v10 + 2;
    v37 = v14 + v10;
    v20 = ~v10;
    v21 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v22 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v22 += 15;
    v24 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v24 = v23;
    v24 += 15;
    v25 = (v22 & 0xFFFFFFFFFFFFFFF8) + 8;
    *(v24 & 0xFFFFFFFFFFFFFFF8) = *(v22 & 0xFFFFFFFFFFFFFFF8);
    v26 = (v24 & 0xFFFFFFFFFFFFFFF8) + 8;
    v27 = *(v9 + 16);

    v27(v26, v25, v21);
    v27((v12 + v26) & v20, (v12 + v25) & v20, v21);
    v28 = (v13 + v26);
    v29 = v13 + v25;
    *v28 = *(v13 + v25);
    v28[1] = *(v13 + v25 + 1);
    v30 = ((v36 + v13 + v26) & v20);
    v31 = ((v36 + v29) & v20);
    v32 = v21;
    if ((*(v9 + 48))(v31, 1, v21))
    {
      memcpy(v30, v31, __n);
    }

    else
    {
      v27(v30, v31, v21);
      (*(v9 + 56))(v30, 0, 1, v21);
    }

    v33 = (v30 + v37) & v20;
    v27(v33, (v31 + v37) & v20, v32);
    v27((v12 + v33) & v20, (v12 + ((v31 + v37) & v20)) & v20, v32);
    return a1;
  }

  return v19;
}

uint64_t destroy for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for AttributedString.Index();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = (v4 + v8 + 8) & ~v8;
  v16 = *(v6 + 8);
  v16(v10, v5);
  v11 = *(v6 + 64) + v8;
  v16((v11 + v10) & ~v8, v5);
  v12 = (v11 + v10 + (v11 & ~v8) + 2) & ~v8;
  if (!(*(v7 + 48))(v12, 1, v5))
  {
    v16(v12, v5);
  }

  v13 = v11 + v12;
  if (!*(v7 + 84))
  {
    ++v13;
  }

  v14 = v13 & v9;
  v16(v13 & v9, v5);

  return (v16)((v11 + v14) & v9, v5);
}

uint64_t initializeWithCopy for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v34 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v33 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 16);

  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v32 = v17;
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v19 = v11;
  v20 = ((v18 + v14) & ~v14) + v18;
  v21 = (v20 + v15);
  v22 = (v20 + v16);
  *v21 = *v22;
  v21[1] = v22[1];
  v23 = (&v21[v14 + 2] & ~v14);
  v24 = (&v22[v14 + 2] & ~v14);
  if ((*(v13 + 48))(v24, 1, v19))
  {
    v25 = *(v13 + 84);
    if (v25)
    {
      v26 = v18;
    }

    else
    {
      v26 = v18 + 1;
    }

    memcpy(v23, v24, v26);
    v27 = v32;
  }

  else
  {
    v27 = v32;
    v32(v23, v24, v19);
    (*(v13 + 56))(v23, 0, 1, v19);
    v25 = *(v13 + 84);
  }

  if (v25)
  {
    v28 = v18;
  }

  else
  {
    v28 = v18 + 1;
  }

  v29 = (v23 + v14 + v28) & v33;
  v30 = (v24 + v14 + v28) & v33;
  v27(v29, v30, v19);
  v27((v18 + v14 + v29) & v33, (v18 + v14 + v30) & v33, v19);
  return v34;
}

uint64_t assignWithCopy for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v38 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v37 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 24);
  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v19 = v18 + v14;
  v36 = v17;
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v35 = v18;
  v20 = ((v18 + v14) & ~v14) + v18;
  v21 = (v20 + v15);
  v22 = (v20 + v16);
  *v21 = *v22;
  v21[1] = v22[1];
  v23 = (&v21[v14 + 2] & ~v14);
  v24 = (&v22[v14 + 2] & ~v14);
  v25 = *(v13 + 48);
  LODWORD(v16) = v25(v23, 1, v11);
  v26 = v25(v24, 1, v11);
  if (v16)
  {
    if (!v26)
    {
      (*(v13 + 16))(v23, v24, v11);
      (*(v13 + 56))(v23, 0, 1, v11);
      v28 = v35;
      v30 = v36;
      goto LABEL_12;
    }

    v27 = *(v13 + 84);
  }

  else
  {
    if (!v26)
    {
      v30 = v17;
      v17(v23, v24, v11);
      v28 = v35;
      goto LABEL_12;
    }

    (*(v13 + 8))(v23, v11);
    v27 = *(v13 + 84);
  }

  v28 = v35;
  if (v27)
  {
    v29 = v35;
  }

  else
  {
    v29 = v35 + 1;
  }

  memcpy(v23, v24, v29);
  v30 = v36;
LABEL_12:
  if (*(v13 + 84))
  {
    v31 = v28;
  }

  else
  {
    v31 = v28 + 1;
  }

  v32 = (v23 + v14 + v31) & v37;
  v33 = (v24 + v14 + v31) & v37;
  v30(v32, v33, v11);
  v30((v19 + v32) & v37, (v19 + v33) & v37, v11);
  return v38;
}

uint64_t initializeWithTake for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v31 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v30 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 32);
  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v19 = ((v18 + v14) & ~v14) + v18;
  v20 = (v19 + v15);
  v21 = (v19 + v16);
  *v20 = *v21;
  v20[1] = v21[1];
  v22 = (&v20[v14 + 2] & ~v14);
  v23 = (&v21[v14 + 2] & ~v14);
  if ((*(v13 + 48))(v23, 1, v11))
  {
    v24 = *(v13 + 84);
    if (v24)
    {
      v25 = v18;
    }

    else
    {
      v25 = v18 + 1;
    }

    memcpy(v22, v23, v25);
  }

  else
  {
    v17(v22, v23, v11);
    (*(v13 + 56))(v22, 0, 1, v11);
    v24 = *(v13 + 84);
  }

  if (v24)
  {
    v26 = v18;
  }

  else
  {
    v26 = v18 + 1;
  }

  v27 = (v22 + v14 + v26) & v30;
  v28 = (v23 + v14 + v26) & v30;
  v17(v27, v28, v11);
  v17((v18 + v14 + v27) & v30, (v18 + v14 + v28) & v30, v11);
  return v31;
}

uint64_t assignWithTake for AttributedString.Runs.Validated(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v38 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = type metadata accessor for AttributedString.Index();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v37 = ~v14;
  v15 = (v9 + v14 + 8) & ~v14;
  v16 = (v10 + v14 + 8) & ~v14;
  v17 = *(v12 + 40);
  v17(v15, v16, v11);
  v18 = *(v12 + 64);
  v19 = v18 + v14;
  v36 = v17;
  v17((v18 + v14 + v15) & ~v14, (v18 + v14 + v16) & ~v14, v11);
  v35 = v18;
  v20 = ((v18 + v14) & ~v14) + v18;
  v21 = (v20 + v15);
  v22 = (v20 + v16);
  *v21 = *v22;
  v21[1] = v22[1];
  v23 = (&v21[v14 + 2] & ~v14);
  v24 = (&v22[v14 + 2] & ~v14);
  v25 = *(v13 + 48);
  LODWORD(v16) = v25(v23, 1, v11);
  v26 = v25(v24, 1, v11);
  if (v16)
  {
    if (!v26)
    {
      (*(v13 + 32))(v23, v24, v11);
      (*(v13 + 56))(v23, 0, 1, v11);
      v28 = v35;
      v30 = v36;
      goto LABEL_12;
    }

    v27 = *(v13 + 84);
  }

  else
  {
    if (!v26)
    {
      v30 = v17;
      v17(v23, v24, v11);
      v28 = v35;
      goto LABEL_12;
    }

    (*(v13 + 8))(v23, v11);
    v27 = *(v13 + 84);
  }

  v28 = v35;
  if (v27)
  {
    v29 = v35;
  }

  else
  {
    v29 = v35 + 1;
  }

  memcpy(v23, v24, v29);
  v30 = v36;
LABEL_12:
  if (*(v13 + 84))
  {
    v31 = v28;
  }

  else
  {
    v31 = v28 + 1;
  }

  v32 = (v23 + v14 + v31) & v37;
  v33 = (v24 + v14 + v31) & v37;
  v30(v32, v33, v11);
  v30((v19 + v32) & v37, (v19 + v33) & v37, v11);
  return v38;
}

uint64_t getEnumTagSinglePayload for AttributedString.Runs.Validated(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v36 = *(v5 - 8);
  v6 = *(v36 + 84);
  v7 = type metadata accessor for AttributedString.Index();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v36 + 64);
  if (v6 <= v9)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v6;
  }

  v12 = v9 - 1;
  if (!v9)
  {
    v12 = 0;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v14 + v13;
  if (v9)
  {
    v18 = v14 + v13;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v13 + 8;
  v20 = (v17 & ~v13) + v14;
  v21 = v13 + v20 + 2;
  if (a2 <= v16)
  {
    goto LABEL_40;
  }

  v22 = ((v18 + ((v21 + ((v19 + ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v13) + v20;
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_20;
  }

  v25 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v25))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_27;
    }

LABEL_40:
    if (v6 == v16)
    {
      v29 = *(v36 + 48);

      return v29(a1, v6, v5);
    }

    v31 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v15 & 0x80000000) == 0)
    {
      v32 = *v31;
      if (*v31 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }

    v33 = (v31 + v19) & ~v13;
    if (v9 == v16)
    {
      v34 = *(v8 + 48);

      return v34(v33);
    }

    if (v9 >= 2)
    {
      v35 = (*(v8 + 48))((v21 + v33) & ~v13);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

  if (v25 < 2)
  {
    goto LABEL_40;
  }

LABEL_20:
  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_40;
  }

LABEL_27:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v16 + (v28 | v26) + 1;
}

void storeEnumTagSinglePayload for AttributedString.Runs.Validated(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v36 = *(v7 - 8);
  v8 = *(v36 + 84);
  v9 = 0;
  v10 = *(type metadata accessor for AttributedString.Index() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = *(v36 + 64);
  if (v8 <= v12)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  v15 = v12 - 1;
  if (!v12)
  {
    v15 = 0;
  }

  if (v14 > v15)
  {
    v15 = v14;
  }

  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v15 <= v12)
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v15;
  }

  v19 = v16 + 8;
  v20 = v17 + v16;
  v21 = ((v17 + v16) & ~v16) + v17;
  v22 = v16 + v21 + 2;
  if (!v12)
  {
    ++v20;
  }

  v23 = ((v20 + ((v22 + ((v16 + 8 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16)) & ~v16) + v21;
  if (a3 <= v18)
  {
    goto LABEL_29;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v9 = 4;
      if (v18 < a2)
      {
        goto LABEL_30;
      }

LABEL_18:
      if (v9 > 1)
      {
        if (v9 != 2)
        {
          *&a1[v23] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *&a1[v23] = 0;
      }

      else if (v9)
      {
        a1[v23] = 0;
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v8 == v18)
        {
          v28 = *(v36 + 56);

          v28(a1, a2, v8, v7);
        }

        else
        {
          v30 = (((&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) != 0)
          {
            v32 = ~v16;
            v33 = (v30 + v19) & v32;
            v34 = *(v11 + 56);
            if (v12 == v18)
            {
              v35 = a2;
            }

            else
            {
              v33 = (v22 + v33) & v32;
              v35 = (a2 + 1);
            }

            v34(v33, v35);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v31 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v31 = (a2 - 1);
            }

            *v30 = v31;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v9 = v25;
    }

    else
    {
      v9 = 0;
    }

LABEL_29:
    if (v18 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v9 = 1;
  if (v18 >= a2)
  {
    goto LABEL_18;
  }

LABEL_30:
  v26 = ~v18 + a2;
  if (v23 < 4)
  {
    v27 = (v26 >> (8 * v23)) + 1;
    if (v23)
    {
      v29 = v26 & ~(-1 << (8 * v23));
      bzero(a1, v23);
      if (v23 != 3)
      {
        if (v23 == 2)
        {
          *a1 = v29;
          if (v9 <= 1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *a1 = v26;
          if (v9 <= 1)
          {
            goto LABEL_58;
          }
        }

LABEL_32:
        if (v9 == 2)
        {
          *&a1[v23] = v27;
        }

        else
        {
          *&a1[v23] = v27;
        }

        return;
      }

      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    if (v9 <= 1)
    {
      goto LABEL_58;
    }

    goto LABEL_32;
  }

  bzero(a1, v23);
  *a1 = v26;
  v27 = 1;
  if (v9 > 1)
  {
    goto LABEL_32;
  }

LABEL_58:
  if (v9)
  {
    a1[v23] = v27;
  }
}

void type metadata accessor for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?)()
{
  if (!lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?))
  {
    type metadata accessor for AttributedString.AttributeRunBoundaries?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.AttributeRunBoundaries?, AttributedString.AttributeRunBoundaries?));
    }
  }
}

uint64_t outlined destroy of Range<AttributedString.Index>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _sSny10Foundation16AttributedStringV5IndexVGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DynamicViewContent.onMove(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = a2;
    v8 = swift_allocObject();
    a2 = v7;
    v9 = v8;
    a1 = v6;
    *(v9 + 16) = v6;
    *(v9 + 24) = a2;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13[0] = v10;
  v13[1] = v9;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveTraitKey>);
  MEMORY[0x18D00A570](v13, a3, v11, *(a4 + 8));
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10);
}

uint64_t DynamicViewContent.onMove(clipBackground:perform:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a6;
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveTraitKey>);
  v11 = v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v17 = thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ()partial apply;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v29[0] = v17;
  v29[1] = v16;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  v18 = *(a5 + 8);
  MEMORY[0x18D00A570](v29, a4, v11, v18);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17);
  LOBYTE(v29[0]) = v25 & 1;
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveClipBackgroundTraitKey>);
  v20 = v19;
  v21 = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnMoveTraitKey>);
  v27 = v18;
  v28 = v21;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](v29, v12, v20, WitnessTable);
  return (*(v13 + 8))(v15, v12);
}

Swift::Void __swiftcall MoveInteraction.move(to:)(Swift::Int to)
{
  v3 = type metadata accessor for MoveInteraction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  if (*v1)
  {
    v7 = v1[1];

    v14 = IndexSet.integerLessThan(_:)(to);
    if (v14.is_nil || (v8 = __OFADD__(to, 1), ++to, !v8))
    {
      v13[16] = 17;
      outlined init with copy of MoveInteraction(v1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      *(v10 + 24) = v7;
      outlined init with take of MoveInteraction(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
      *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = to;

      static Update.enqueueAction(reason:_:)();
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);

      return;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(62);
  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD4DE40);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v11);

  MEMORY[0x18D00C9B0](0x209286E220, 0xA500000000000000);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v12);

  MEMORY[0x18D00C9B0](0xD000000000000021, 0x800000018CD4DE60);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t MoveInteraction.description.getter()
{
  _StringGuts.grow(_:)(42);

  type metadata accessor for MoveInteraction();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0x6E65746E6F63202CLL, 0xED0000203A444974);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0xD000000000000018;
}

_OWORD *initializeBufferWithCopyOfBuffer for MoveInteraction(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *v4 = *a2;
    v4 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (*a2)
    {
      v7 = a2[1];
      *v4 = *a2;
      *(v4 + 1) = v7;
    }

    else
    {
      *a1 = *a2;
    }

    *(v4 + 16) = *(a2 + 16);
    v9 = *(a3 + 24);
    v10 = type metadata accessor for IndexSet();
    (*(*(v10 - 8) + 16))(v4 + v9, a2 + v9, v10);
    *(v4 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return v4;
}

uint64_t initializeWithCopy for MoveInteraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
  }

  else
  {
    *a1 = *a2;
  }

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for IndexSet();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithCopy for MoveInteraction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (!*a1)
  {
    if (v6)
    {
      v8 = a2[1];
      *a1 = v6;
      *(a1 + 8) = v8;

      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = a2[1];
  *a1 = v6;
  *(a1 + 8) = v7;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for IndexSet();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t initializeWithTake for MoveInteraction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithTake for MoveInteraction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (!*a1)
  {
    if (v6)
    {
      v8 = a2[1];
      *a1 = v6;
      *(a1 + 8) = v8;
      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = a2[1];
  *a1 = v6;
  *(a1 + 8) = v7;

LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for IndexSet();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

unint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet()
{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    type metadata accessor for IndexSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

uint64_t outlined init with copy of MoveInteraction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MoveInteraction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in MoveInteraction.move(to:)()
{
  v1 = type metadata accessor for MoveInteraction();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  return (*(v0 + 16))(v0 + *(v1 + 24) + v3, *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t static Group.create(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return Group.init(_content:)();
}

uint64_t destroy for SwiftUIAnySortComparator(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
}

uint64_t initializeWithCopy for SwiftUIAnySortComparator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  (**(v5 - 8))(a1 + 32, a2 + 32);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 112);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  *(a1 + 112) = v6;

  return a1;
}

uint64_t *assignWithCopy for SwiftUIAnySortComparator(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 4, a2 + 4);
  v4 = a2[10];
  a1[9] = a2[9];
  a1[10] = v4;

  v5 = a2[12];
  a1[11] = a2[11];
  a1[12] = v5;

  v6 = a2[14];
  a1[13] = a2[13];
  a1[14] = v6;

  return a1;
}

uint64_t assignWithTake for SwiftUIAnySortComparator(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for SwiftUIAnySortComparator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for SwiftUIAnySortComparator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SwiftUIAnySortComparator.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v9);
  AnyHashable.init<A>(_:)();
  a4[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 32))(boxed_opaque_existential_1, a1, a2);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  a4[9] = partial apply for closure #1 in SwiftUIAnySortComparator.init<A>(_:);
  a4[10] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  a4[11] = partial apply for closure #2 in SwiftUIAnySortComparator.init<A>(_:);
  a4[12] = v13;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  a4[13] = partial apply for closure #3 in SwiftUIAnySortComparator.init<A>(_:);
  a4[14] = result;
  return result;
}

uint64_t closure #1 in SwiftUIAnySortComparator.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v25);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v24);
  swift_dynamicCast();
  outlined init with copy of Any(v22, v23);
  swift_dynamicCast();
  v18 = dispatch thunk of SortComparator.compare(_:_:)();
  v19 = *(v8 + 8);
  v19(v10, AssociatedTypeWitness);
  v19(v13, AssociatedTypeWitness);
  (*(v14 + 8))(v17, a4);
  return v18;
}

uint64_t closure #2 in SwiftUIAnySortComparator.init<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  outlined init with take of Any(v11, v15);
  swift_dynamicCast();
  dispatch thunk of SortComparator.order.setter();
  a1[3] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v13 = *(v5 + 16);
  v13(boxed_opaque_existential_1, v10, a3);
  v13(v7, v10, a3);
  AnyHashable.init<A>(_:)();
  return (*(v5 + 8))(v10, a3);
}

uint64_t closure #3 in SwiftUIAnySortComparator.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(v6, v9);
  swift_dynamicCast();
  v7 = dispatch thunk of SortComparator.order.getter();
  (*(v3 + 8))(v5, a2);
  return v7 & 1;
}

void (*protocol witness for SortComparator.order.modify in conformance SwiftUIAnySortComparator(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = (*(v1 + 104))(v1) & 1;
  return protocol witness for SortComparator.order.modify in conformance SwiftUIAnySortComparator;
}

void protocol witness for SortComparator.order.modify in conformance SwiftUIAnySortComparator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  (*(v2 + 88))(v2, *(*a1 + 48));
  outlined assign with take of AnyHashable(v1, v2 + 32);

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwiftUIAnySortComparator()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftUIAnySortComparator()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator()
{
  result = lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator;
  if (!lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator;
  if (!lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAnySortComparator and conformance SwiftUIAnySortComparator);
  }

  return result;
}

uint64_t View.scrollContentBackground<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v19 = a5;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  swift_getKeyPath();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  v16 = v19;
  *(v15 + 4) = a4;
  *(v15 + 5) = v16;
  (*(v11 + 32))(&v15[v14], v13, v10);
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t EnvironmentValues.scrollContentBackground.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t closure #1 in View.scrollContentBackground<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in closure #1 in View.scrollContentBackground<A>(_:), v10, MEMORY[0x1E69E73E0], MEMORY[0x1E697E0B8], v7, &v11);
  v8 = v11;

  *a1 = v8;
  return result;
}

uint64_t partial apply for closure #1 in View.scrollContentBackground<A>(_:)(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for Optional() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in View.scrollContentBackground<A>(_:)(a1, v8, v3, v4, v5, v6);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>);
    }
  }
}

uint64_t assignWithCopy for ScrollContentBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for ScrollContentBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollContentBackground(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for ScrollContentBackground(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t implicit closure #1 in closure #1 in View.scrollContentBackground<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = AnyShapeStyle.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ScrollContentBackgroundModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = KeyPath;
  a1[1] = partial apply for closure #1 in ScrollContentBackgroundModifier.body(content:);
  a1[2] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ScrollContentBackgroundModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<ScrollContentBackgroundModifier>);
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>)
  {
    type metadata accessor for _ViewModifier_Content<ScrollContentBackgroundModifier>();
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScrollContentBackgroundModifier>, _EnvironmentKeyTransformModifier<ScrollContentBackground>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ScrollContentBackgroundModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ScrollContentBackgroundModifier>)
  {
    lazy protocol witness table accessor for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<ScrollContentBackgroundModifier>);
    }
  }
}

uint64_t PlatformViewControllerRepresentableAdaptor._identifiedViewTree(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  v6 = *(v5 + 80);
  a3[3] = &type metadata for _IdentifiedViewTree;
  *a3 = swift_allocObject();
  return v6(a1, *(a2 + 16), v5);
}

void specialized View.bodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL closure #1 in Array<A>.sort(priorities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ToolbarStorage.Entry.id.getter(v11);
  if (*(a3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v5 & 1) != 0) && (v6 = *(*(a3 + 56) + 8 * v4), outlined destroy of ToolbarStorage.Entry.ID(v11), ToolbarStorage.Entry.id.getter(v11), *(a3 + 16)) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v8 & 1) != 0))
  {
    v9 = *(*(a3 + 56) + 8 * v7);
    outlined destroy of ToolbarStorage.Entry.ID(v11);
    return v6 < v9;
  }

  else
  {
    outlined destroy of ToolbarStorage.Entry.ID(v11);
    return 0;
  }
}

uint64_t PlatterButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (a2)
  {
    v7 = static Color.white.getter();
  }

  else
  {
    v7 = static Color.primary.getter();
  }

  v8 = v7;
  result = swift_getKeyPath();
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 2) = a2 & 1;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = 257;
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  return result;
}

uint64_t BackgroundShapeStyle._apply(to:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return TintShapeStyle._apply(to:)();
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v5[4] = closure #1 in static Color.clarityUIButtonBackground.getter;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
  v5[3] = &block_descriptor_44;
  v4 = _Block_copy(v5);
  [v3 initWithDynamicProvider_];
  _Block_release(v4);

  type metadata accessor for UIKitPlatformColorDefinition();
  Color.init(_platformColor:definition:)();
  Color.opacity(_:)();

  Color._apply(to:)();
}

unint64_t lazy protocol witness table accessor for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>()
{
  result = lazy protocol witness table cache variable for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>;
  if (!lazy protocol witness table cache variable for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>)
  {
    type metadata accessor for PlatterButtonStyleView<BackgroundShapeStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterButtonStyleView<BackgroundShapeStyle> and conformance PlatterButtonStyleView<A>);
  }

  return result;
}

void type metadata accessor for PlatterButtonStyleView<BackgroundShapeStyle>()
{
  if (!lazy cache variable for type metadata for PlatterButtonStyleView<BackgroundShapeStyle>)
  {
    v0 = type metadata accessor for PlatterButtonStyleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatterButtonStyleView<BackgroundShapeStyle>);
    }
  }
}

uint64_t static DefaultPickerStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for DefaultPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<HostingConfigurationContext>);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<ListMenuPickerStyle>, &type metadata for ListMenuPickerStyle, &protocol witness table for ListMenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<ListMenuPickerStyle>, &type metadata for ListMenuPickerStyle, &protocol witness table for ListMenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<NavigationLinkPickerStyle>, &type metadata for NavigationLinkPickerStyle, &protocol witness table for NavigationLinkPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<InlinePickerStyle>, &type metadata for InlinePickerStyle, &protocol witness table for InlinePickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<MenuPickerStyle>, &type metadata for MenuPickerStyle, &protocol witness table for MenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<MenuPickerStyle>, &type metadata for MenuPickerStyle, &protocol witness table for MenuPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<HostingConfigurationContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<HostingConfigurationContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList()
{
  result = lazy protocol witness table cache variable for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList;
  if (!lazy protocol witness table cache variable for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetGroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar()
{
  result = lazy protocol witness table cache variable for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar;
  if (!lazy protocol witness table cache variable for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DefaultPickerStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for DefaultPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t DefaultPickerStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _PickerValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t DefaultPickerStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a1;
  v113 = a4;
  v92 = type metadata accessor for PickerStyleConfiguration();
  v6 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v87 = &v81 - v7;
  v134[0] = &type metadata for DefaultPickerStyle;
  v134[1] = a2;
  v134[2] = &protocol witness table for DefaultPickerStyle;
  v134[3] = a3;
  v8 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v81 - v9;
  v82 = type metadata accessor for ResolvedPicker();
  v86 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v11 = &v81 - v10;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  v12 = type metadata accessor for ModifiedContent();
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  v15 = type metadata accessor for ModifiedContent();
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v81 - v16;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  v17 = type metadata accessor for ModifiedContent();
  v99 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v81 - v18;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  v90 = type metadata accessor for ModifiedContent();
  v102 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v85 = &v81 - v19;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  v94 = type metadata accessor for ModifiedContent();
  v104 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v81 - v20;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  v98 = type metadata accessor for ModifiedContent();
  v105 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v91 = &v81 - v21;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>();
  v100 = type metadata accessor for ModifiedContent();
  v107 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = &v81 - v22;
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  v103 = type metadata accessor for ModifiedContent();
  v109 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v97 = &v81 - v23;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  v108 = type metadata accessor for ModifiedContent();
  v111 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v101 = &v81 - v24;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  v110 = type metadata accessor for ModifiedContent();
  v112 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = &v81 - v25;
  v26 = v83;
  DefaultPickerStyle.Body.base.getter(v83);
  v27 = v87;
  (*(v6 + 32))(v87, v26, v92);
  v28 = ResolvedPicker.init(configuration:)(v27, v11);
  v29 = v82;
  View.pickerStyle<A, B>(_:in:)(v28, v30, v82, &type metadata for ListMenuPickerStyle, MEMORY[0x1E69807C8], &protocol witness table for ResolvedPicker<A>, MEMORY[0x1E69807C0], v14);
  (*(v86 + 8))(v11, v29);
  v31 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v132 = &protocol witness table for ResolvedPicker<A>;
  v133 = v31;
  WitnessTable = swift_getWitnessTable();
  v33 = lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList();
  v34 = v81;
  View.pickerStyle<A, B>(_:if:)(v33, v12, &type metadata for ListMenuPickerStyle, WitnessTable, v33, v81);
  (*(v89 + 8))(v14, v12);
  LOBYTE(v134[0]) = 2;
  v35 = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInList and conformance UseMenuPickerStyleInList);
  v130 = WitnessTable;
  v131 = v35;
  v36 = swift_getWitnessTable();
  v37 = lazy protocol witness table accessor for type GroupedListStyleContext and conformance GroupedListStyleContext();
  v38 = v84;
  View.pickerStyle<A, B>(_:in:)(v134, v39, v15, &type metadata for NavigationLinkPickerStyle, &type metadata for GroupedListStyleContext, v36, v37, v84);
  (*(v96 + 8))(v34, v15);
  LOBYTE(v134[0]) = 2;
  v40 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v128 = v36;
  v129 = v40;
  v41 = swift_getWitnessTable();
  v42 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  v43 = v85;
  View.pickerStyle<A, B>(_:in:)(v134, v44, v17, &type metadata for NavigationLinkPickerStyle, &type metadata for InsetGroupedListStyleContext, v41, v42, v85);
  (*(v99 + 8))(v38, v17);
  LOBYTE(v134[0]) = 2;
  v45 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v126 = v41;
  v127 = v45;
  v46 = v90;
  v47 = swift_getWitnessTable();
  v48 = lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext();
  v49 = v88;
  View.pickerStyle<A, B>(_:in:)(v134, v50, v46, &type metadata for NavigationLinkPickerStyle, &type metadata for SidebarListStyleContext, v47, v48, v88);
  (*(v102 + 8))(v43, v46);
  LOBYTE(v134[0]) = 2;
  v51 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v124 = v47;
  v125 = v51;
  v52 = v94;
  v53 = swift_getWitnessTable();
  v54 = lazy protocol witness table accessor for type GroupedFormStyleContext and conformance GroupedFormStyleContext();
  v55 = v91;
  View.pickerStyle<A, B>(_:in:)(v134, v56, v52, &type metadata for NavigationLinkPickerStyle, &type metadata for GroupedFormStyleContext, v53, v54, v91);
  (*(v104 + 8))(v49, v52);
  v57 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v122 = v53;
  v123 = v57;
  v58 = v98;
  v59 = swift_getWitnessTable();
  v60 = v95;
  View.pickerStyle<A, B>(_:in:)(v59, v61, v58, &type metadata for InlinePickerStyle, MEMORY[0x1E697EA18], v59, MEMORY[0x1E697EA10], v95);
  (*(v105 + 8))(v55, v58);
  v62 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v120 = v59;
  v121 = v62;
  v63 = v100;
  v64 = swift_getWitnessTable();
  v65 = lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar();
  v66 = v97;
  View.pickerStyle<A, B>(_:if:)(v65, v63, &type metadata for MenuPickerStyle, v64, v65, v97);
  (*(v107 + 8))(v60, v63);
  v67 = lazy protocol witness table accessor for type StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>, lazy protocol witness table accessor for type UseMenuPickerStyleInToolbar and conformance UseMenuPickerStyleInToolbar);
  v118 = v64;
  v119 = v67;
  v68 = v103;
  v69 = swift_getWitnessTable();
  v70 = v101;
  View.pickerStyle<A, B>(_:in:)(v69, v71, v68, &type metadata for SegmentedPickerStyle, MEMORY[0x1E697F860], v69, MEMORY[0x1E697F858], v101);
  (*(v109 + 8))(v66, v68);
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  v72 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v116 = v69;
  v117 = v72;
  v73 = v108;
  v74 = swift_getWitnessTable();
  v75 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  v76 = v106;
  View.pickerStyle<A, B>(_:if:)(v75, v73, &type metadata for MenuPickerStyle, v74, v75, v106);
  (*(v111 + 8))(v70, v73);
  v77 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v114 = v74;
  v115 = v77;
  v78 = v110;
  v79 = swift_getWitnessTable();
  View.pickerStyle<A>(_:)(v79, v78, &type metadata for WheelPickerStyle, v79);
  return (*(v112 + 8))(v76, v78);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DefaultPickerStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<HostingConfigurationContext>, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInList, PickerStyleWriter<ListMenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, PickerStyleWriter<NavigationLinkPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PickerStyleWriter<InlinePickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<UseMenuPickerStyleInToolbar, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PickerStyleWriter<SegmentedPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, PickerStyleWriter<MenuPickerStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(255, &lazy cache variable for type metadata for PickerStyleWriter<WheelPickerStyle>, &type metadata for WheelPickerStyle, &protocol witness table for WheelPickerStyle, type metadata accessor for PickerStyleWriter);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseMenuPickerStyleInList()
{
  if ((static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0 && (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  return static SemanticFeature.isEnabled.getter() & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseMenuPickerStyleInToolbar()
{
  if ((static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  return static SemanticFeature.isEnabled.getter() & 1;
}

void type metadata accessor for PickerStyleWriter<ListMenuPickerStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t DismissImmersiveSpaceAction.callAsFunction()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction(id:destination:), v1, v0);
}

uint64_t PresentationSizing.proposedSize(for:context:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  swift_unknownObjectWeakLoadStrong();
  v14 = *(a1 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v10 = (*(a4 + 16))(v13, v12, a3, a4);
  outlined destroy of weak FallbackResponderProvider?(v13);
  return v10;
}

{
  return PresentationSizing.proposedSize(for:context:)(a1, a2, a3, a4);
}

uint64_t PresentationSizing.proposedSize(for:context:)(uint64_t a1, __int128 *a2)
{
  return specialized PresentationSizing.proposedSize(for:context:)(a1, a2);
}

{
  return specialized PresentationSizing.proposedSize(for:context:)(a1, a2);
}

void PresentationSizing.sizingOptions(context:)(void *a1@<X8>)
{
  PresentationSizing.sizingOptions(context:)(a1);
}

{
  *a1 = 0;
}

double PresentationSubview.sizeThatFits(_:)()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0.0;
  }

  swift_getObjectType();
  _ProposedSize.init(_:)();
  ViewRendererHost.sizeThatFits(_:)();
  v1 = v0;
  swift_unknownObjectRelease();
  return v1;
}

double PresentationSizingRoot.sizeThatFits(_:)(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    _ProposedSize.init(_:)();
    ViewRendererHost.sizeThatFits(_:)();
    v5 = v4;
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    return 10.0;
  }

  else
  {
    return *&a1;
  }

  return v5;
}

uint64_t PresentationSizing.sticky(horizontal:vertical:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | v7;
  (*(v6 + 16))(v10, v3, v8);
  (*(v6 + 32))(a3, v10, a2);
  result = type metadata accessor for StickyPresentationSizing();
  *(a3 + *(result + 36)) = v13;
  return result;
}

uint64_t PresentationSizing.fitted(horizontal:vertical:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, v10);
  (*(v9 + 32))(a4, v12, a3);
  result = type metadata accessor for _FittedPresentationSizing();
  *(a4 + *(result + 36)) = v7;
  *(a4 + *(result + 40)) = a2;
  return result;
}

uint64_t SharedBuiltinSheetMetrics.proposedSize.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  if (*v0)
  {
    if (*v0 != 1)
    {
      *&result = COERCE_DOUBLE(static ProposedViewSize.unspecified.getter());
      return result;
    }

    _UISheetPageSize();
  }

  else
  {
    v7 = [*(v0 + 8) window];
    if (!v7 || (v8 = v7, v9 = [v7 screen], v8, !v9))
    {
      v9 = [objc_opt_self() mainScreen];
    }

    v10 = objc_opt_self();
    [v9 bounds];
    v12 = v11;
    v14 = v13;

    [v10 defaultFormSheetSizeForScreenSize_];
  }

  v15 = 0.0;
  v16 = v2;
  v17 = 240.0;
  if (v3)
  {
    v18 = 240.0;
  }

  else
  {
    v18 = v2;
  }

  if (!v5)
  {
    v17 = v4;
  }

  v19 = v18 + v17;
  if (v3)
  {
    v16 = 240.0;
  }

  if (v1 == 2)
  {
    v15 = v16;
  }

  if (v1 == 3)
  {
    v15 = v19;
  }

  *&result = v6 + v15;
  return result;
}

uint64_t AutomaticPresentationSizing.proposedSize(for:context:)(uint64_t a1, _OWORD *a2, char a3)
{
  v3 = a2[1];
  v4 = a2[3];
  v14 = a2[2];
  v15 = v4;
  v5 = a2[5];
  v6 = a2[3];
  v16 = a2[4];
  v17 = v5;
  v7 = a2[1];
  v13[0] = *a2;
  v13[1] = v7;
  *&v12[7] = v13[0];
  *&v12[87] = a2[5];
  *&v12[23] = v3;
  *&v12[71] = v16;
  *&v12[55] = v6;
  *&v12[39] = v14;
  v18[0] = a3;
  *&v18[33] = *&v12[32];
  *&v18[17] = *&v12[16];
  *&v18[1] = *v12;
  *&v18[96] = *&v12[95];
  *&v18[81] = *&v12[80];
  *&v18[65] = *&v12[64];
  *&v18[49] = *&v12[48];
  v10[10] = *&v18[64];
  v10[11] = *&v18[80];
  v11 = *&v18[96];
  v10[6] = *v18;
  v10[7] = *&v18[16];
  v10[8] = *&v18[32];
  v10[9] = *&v18[48];
  outlined init with copy of PresentationSizingContext(v13, v10);
  v8 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of SharedBuiltinSheetMetrics(v18);
  return v8;
}

uint64_t PagePresentationSizing.sizingOptions(context:)@<X0>(uint64_t *a1@<X8>)
{
  result = AnyInterfaceIdiom.accepts<A>(_:)();
  v3 = 2;
  if (result)
  {
    v3 = 4;
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for PresentationSizing.sizingOptions(context:) in conformance PagePresentationSizing@<X0>(uint64_t *a1@<X8>)
{
  result = AnyInterfaceIdiom.accepts<A>(_:)();
  v3 = 2;
  if (result)
  {
    v3 = 4;
  }

  *a1 = v3;
  return result;
}

uint64_t FittedPresentationSizing.proposedSize(for:context:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for PresentationSizing.proposedSize(for:context:) in conformance FittedPresentationSizing(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  swift_unknownObjectWeakLoadStrong();
  v7 = *(a1 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  outlined destroy of weak FallbackResponderProvider?(v6);
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

{
  v2 = *(a2 + 16);
  if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t _FittedPresentationSizing.proposedSize(for:context:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v6 = a2[5];
  v9[4] = a2[4];
  v9[5] = v6;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  result = (*(*(a3 + 24) + 16))(a1, v9, *(a3 + 16));
  if (*(v3 + *(a3 + 36)))
  {
    return 0;
  }

  return result;
}

uint64_t View.presentationSizing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  View.transformPreference<A>(_:_:)();
}

uint64_t closure #1 in View.presentationSizing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[3] = a4;
  v11[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  return outlined assign with take of PresentationSizing?(v11, a1 + 96);
}

uint64_t StickyPresentationSizing.proposedSize(for:context:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v14 = *a2;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 32);
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = *(a2 + 33);
  v19 = *(a2 + 49);
  v20[0] = *(a2 + 65);
  *(v20 + 15) = a2[5];
  v6 = COERCE_DOUBLE((*(*(a3 + 24) + 16))(a1, &v14, *(a3 + 16)));
  v8 = v7;
  if ((v5 & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      LOBYTE(v14) = v8 & 1;
      _ProposedSize.init(_:)();
      ViewRendererHost.sizeThatFits(_:)();
      v10 = v9;
      swift_unknownObjectRelease();
    }

    else if (v8)
    {
      v10 = 10.0;
    }

    else
    {
      v10 = v6;
    }

    v11 = Axis.Set.contains(_:)();
    if (v10 < v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = v10;
    }

    if (v11)
    {
      v6 = v12;
    }

    Axis.Set.contains(_:)();
  }

  return *&v6;
}

uint64_t _FittedPresentationSizing.sizingOptions(context:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(*(a2 + 24) + 24))(v6, *(a2 + 16));
}

uint64_t FormPresentationSizing.sizingOptions(context:)@<X0>(uint64_t *a1@<X8>)
{
  result = AnyInterfaceIdiom.accepts<A>(_:)();
  if (result)
  {
    v3 = 4;
  }

  else
  {
    result = AnyInterfaceIdiom.accepts<A>(_:)();
    v3 = 2;
    if (result)
    {
      v3 = 4;
    }
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for PresentationSizing.proposedSize(for:context:) in conformance FormPresentationSizing(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2[3];
  v19 = a2[2];
  v20 = v7;
  v8 = a2[5];
  v21 = a2[4];
  v22 = v8;
  v9 = a2[1];
  v17 = *a2;
  v18 = v9;
  swift_unknownObjectWeakLoadStrong();
  v16 = *(a1 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *&v14[7] = v17;
  *&v14[23] = v18;
  *&v14[39] = v19;
  *&v14[87] = v22;
  *&v14[71] = v21;
  *&v14[55] = v20;
  v23[0] = a5;
  *&v23[33] = *&v14[32];
  *&v23[17] = *&v14[16];
  *&v23[1] = *v14;
  *&v23[96] = *(&v22 + 1);
  *&v23[81] = *&v14[80];
  *&v23[65] = *&v14[64];
  *&v23[49] = *&v14[48];
  v12[10] = *&v23[64];
  v12[11] = *&v23[80];
  v13 = *&v23[96];
  v12[6] = *v23;
  v12[7] = *&v23[16];
  v12[8] = *&v23[32];
  v12[9] = *&v23[48];
  outlined init with copy of PresentationSizingContext(&v17, v12);
  v10 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of weak FallbackResponderProvider?(v15);
  outlined destroy of SharedBuiltinSheetMetrics(v23);
  return v10;
}

uint64_t protocol witness for PresentationSizing.proposedSize(for:context:) in conformance FormPresentationSizing(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2[1];
  v6 = a2[3];
  v16 = a2[2];
  v17 = v6;
  v7 = a2[5];
  v8 = a2[3];
  v18 = a2[4];
  v19 = v7;
  v9 = a2[1];
  v15[0] = *a2;
  v15[1] = v9;
  *&v14[7] = v15[0];
  *&v14[87] = a2[5];
  *&v14[23] = v5;
  *&v14[71] = v18;
  *&v14[55] = v8;
  *&v14[39] = v16;
  v20[0] = a5;
  *&v20[33] = *&v14[32];
  *&v20[17] = *&v14[16];
  *&v20[1] = *v14;
  *&v20[96] = *&v14[95];
  *&v20[81] = *&v14[80];
  *&v20[65] = *&v14[64];
  *&v20[49] = *&v14[48];
  v12[10] = *&v20[64];
  v12[11] = *&v20[80];
  v13 = *&v20[96];
  v12[6] = *v20;
  v12[7] = *&v20[16];
  v12[8] = *&v20[32];
  v12[9] = *&v20[48];
  outlined init with copy of PresentationSizingContext(v15, v12);
  v10 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of SharedBuiltinSheetMetrics(v20);
  return v10;
}

id *specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v1 + 88);
  v43[2] = *(v1 + 72);
  v43[3] = v5;
  v6 = *(v1 + 120);
  v43[4] = *(v1 + 104);
  v43[5] = v6;
  v7 = *(v1 + 56);
  v43[0] = *(v1 + 40);
  v43[1] = v7;
  v8 = *(v1 + 88);
  v39 = *(v1 + 72);
  v40 = v8;
  v9 = *(v1 + 120);
  v41 = *(v1 + 104);
  v42 = v9;
  v10 = *(v1 + 56);
  v37 = *(v1 + 40);
  v38 = v10;
  v11 = *(v4 + 16);
  outlined init with copy of PresentationSizingContext(v43, v44);
  v11(a1, &v37, v3, v4);
  v13 = v12;
  v44[2] = v39;
  v44[3] = v40;
  v44[4] = v41;
  v44[5] = v42;
  v44[0] = v37;
  v44[1] = v38;
  outlined destroy of OpenURLOptions(v44);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    LOBYTE(v37) = v13 & 1;
    _ProposedSize.init(_:)();
    *&v31 = v37;
    BYTE8(v31) = BYTE8(v37);
    *&v32 = v38;
    BYTE8(v32) = BYTE8(v38);
    ViewRendererHost.sizeThatFits(_:)();
    swift_unknownObjectRelease();
  }

  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v14);
  v16 = *(v1 + 88);
  v33 = *(v1 + 72);
  v34 = v16;
  v17 = *(v1 + 120);
  v35 = *(v1 + 104);
  v36 = v17;
  v18 = *(v1 + 56);
  v31 = *(v1 + 40);
  v32 = v18;
  v19 = *(v1 + 88);
  v26 = *(v1 + 72);
  v27 = v19;
  v20 = *(v1 + 120);
  v28 = *(v1 + 104);
  v29 = v20;
  v21 = *(v1 + 56);
  v24 = *(v1 + 40);
  v25 = v21;
  v22 = *(v15 + 24);
  outlined init with copy of PresentationSizingContext(&v31, &v37);
  v22(&v30, &v24, v14, v15);
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v37 = v24;
  v38 = v25;
  return outlined destroy of OpenURLOptions(&v37);
}

uint64_t specialized PresentationSizing.proposedSize(for:context:)(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v15 = a2[2];
  v16 = v2;
  v3 = a2[5];
  v17 = a2[4];
  v18 = v3;
  v4 = a2[1];
  v13 = *a2;
  v14 = v4;
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CD63400;
  _StringGuts.grow(_:)(38);

  v6 = StaticString.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](58, 0xE100000000000000);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = 0xD00000000000007ALL;
  *(v5 + 40) = 0x800000018CD4DEB0;
  print(_:separator:terminator:)();

  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  *&v12[87] = v18;
  *&v12[71] = v17;
  *&v12[55] = v16;
  v19[0] = 0;
  *&v19[33] = *&v12[32];
  *&v19[17] = *&v12[16];
  *&v19[1] = *v12;
  *&v19[96] = *(&v18 + 1);
  *&v19[81] = *&v12[80];
  *&v19[65] = *&v12[64];
  *&v19[49] = *&v12[48];
  v10[10] = *&v19[64];
  v10[11] = *&v19[80];
  v11 = *&v19[96];
  v10[6] = *v19;
  v10[7] = *&v19[16];
  v10[8] = *&v19[32];
  v10[9] = *&v19[48];
  outlined init with copy of PresentationSizingContext(&v13, v10);
  v8 = SharedBuiltinSheetMetrics.proposedSize.getter();
  outlined destroy of SharedBuiltinSheetMetrics(v19);
  return v8;
}

uint64_t outlined init with copy of PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  v5 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 16) = v5;
  v6 = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 40) = v6;
  v7 = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 56) = v7;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  v8 = v3;
  return a2;
}

uint64_t dispatch thunk of PresentationSizing.proposedSize(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))();
}

{
  return (*(a4 + 16))();
}

uint64_t initializeWithCopy for PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v7;
  v8 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  v9 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v9;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for PresentationSizingContext(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationSizingContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for PresentationSizingContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PresentationSizeBehaviorContext(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for PresentationSizeBehaviorContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v7;
  return a1;
}

uint64_t assignWithTake for PresentationSizeBehaviorContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t type metadata completion function for _FittedPresentationSizing()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _FittedPresentationSizing(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 2) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    v11 = v3 + v5;
    *v11 = *(a2 + v5);
    v11[1] = *(a2 + v5 + 1);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithCopy for _FittedPresentationSizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t initializeWithTake for _FittedPresentationSizing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for _FittedPresentationSizing(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for _FittedPresentationSizing(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t type metadata completion function for StickyPresentationSizing()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickyPresentationSizing(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
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

char *storeEnumTagSinglePayload for StickyPresentationSizing(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 1;
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
      if (*(v5 + 64) != -1)
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

uint64_t initializeWithCopy for SharedBuiltinSheetMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for SharedBuiltinSheetMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v8;
  v9 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v9;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for SharedBuiltinSheetMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options()
{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options;
  if (!lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationSizingOptions.Options and conformance PresentationSizingOptions.Options);
  }

  return result;
}

uint64_t outlined assign with take of PresentationSizing?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PresentationSizing?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for PresentationSizing()
{
  result = lazy cache variable for type metadata for PresentationSizing;
  if (!lazy cache variable for type metadata for PresentationSizing)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PresentationSizing);
  }

  return result;
}

void destroy for SheetSizing(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v2 = *(a1 + 40);
}

uint64_t initializeWithCopy for SheetSizing(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for SheetSizing(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  v8 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v8;
  v9 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v9;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t assignWithTake for SheetSizing(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for SheetSizing(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for SheetSizing(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing()
{
  result = lazy protocol witness table cache variable for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing;
  if (!lazy protocol witness table cache variable for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing and conformance SharedBuiltinSheetMetrics.BuiltinPresentationSizeSizing);
  }

  return result;
}

uint64_t type metadata accessor for ControlWidgetTemplateGraph()
{
  result = type metadata singleton initialization cache for ControlWidgetTemplateGraph;
  if (!type metadata singleton initialization cache for ControlWidgetTemplateGraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in ControlWidgetTemplateGraph.init<A>(_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v14[0] = a1[2];
  *(v14 + 12) = *(a1 + 44);
  v11[2] = a3;
  v8 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, closure #1 in Attribute.init(value:)partial apply, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  _GraphValue.init(_:)();
  return (*(a4 + 40))(&v12, v13, a3, a4);
}

Swift::Void __swiftcall ControlWidgetTemplateGraph.uninstantiateOutputs()()
{
  swift_beginAccess();
  *(v0 + 132) = AGCreateWeakAttribute();
  swift_endAccess();
}

uint64_t ControlWidgetTemplateGraph.__deallocating_deinit()
{
  GraphHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized ControlWidgetTemplateGraph.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, a2, v9);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, a2);
  *(v3 + 176) = partial apply for closure #1 in ControlWidgetTemplateGraph.init<A>(_:);
  *(v3 + 184) = v12;
  GraphHost.Data.init()();
  v13 = AGSubgraphGetCurrent();
  v14 = *(&v29[0] + 1);
  AGSubgraphSetCurrent();
  v15 = v14;
  static CustomEventTrace.instantiateBegin(_:)();

  v20[2] = a2;
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v20, a2, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  *(v3 + 192) = v22;
  v26 = v29[4];
  v27 = v29[5];
  v28 = v30;
  v22 = v29[0];
  v23 = v29[1];
  v24 = v29[2];
  v25 = v29[3];
  outlined init with copy of GraphHost.Data(v29, &v21);
  v18 = GraphHost.init(data:)();

  AGSubgraphSetCurrent();
  static CustomEventTrace.instantiateEnd(_:)();

  outlined destroy of GraphHost.Data(v29);
  return v18;
}

uint64_t static ClarityUIInterfaceIdiomModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v25 = a2[2];
  v26 = v4;
  v6 = a2[3];
  v27 = a2[4];
  v7 = a2[1];
  v23 = *a2;
  v24 = v7;
  v19 = v25;
  v20 = v6;
  v21 = a2[4];
  v28 = *(a2 + 20);
  v22 = *(a2 + 20);
  v17 = v23;
  v18 = v5;
  outlined init with copy of _ViewInputs(&v23, v33);
  AnyInterfaceIdiom.init<A>(_:)();
  v31[0] = v33[0];
  PropertyList.subscript.setter();
  v8 = v24;
  swift_beginAccess();
  LODWORD(v33[0]) = *(v8 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ClarityUIEnvironment and conformance ClarityUIEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v30 = v22;
  v29[0] = v17;
  v29[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v29, v33);
  a3(v9, &v11);
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v32 = v16;
  v31[0] = v11;
  v31[1] = v12;
  outlined destroy of _ViewInputs(v31);
  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v34 = v22;
  v33[0] = v17;
  v33[1] = v18;
  return outlined destroy of _ViewInputs(v33);
}

double ClarityUIEnvironment.value.getter@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  *&v14 = v6;
  *(&v14 + 1) = v5;

  EnvironmentValues.dynamicTypeSize.getter();
  if (v13[0] <= 6u)
  {
    v13[0] = 7;
    EnvironmentValues.dynamicTypeSize.setter();
  }

  v7 = EnvironmentValues.dividerThickness.setter();
  LODWORD(v12[0]) = a1;
  MEMORY[0x1EEE9AC00](v7);
  v8 = lazy protocol witness table accessor for type ClarityUIEnvironment and conformance ClarityUIEnvironment();
  MEMORY[0x18D000B90](&unk_1EFFD1A58, &type metadata for ScrollEnvironmentProperties, v8);
  Rule.withObservation<A>(observationCenter:do:)();

  v13[120] = 2;
  v13[144] = 2;
  outlined init with copy of ScrollEnvironmentProperties(v13, v12);
  type metadata accessor for ScrollEnvironmentStorage();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  swift_allocObject();
  v12[0] = ScrollEnvironmentStorage.init(_:transform:)(v12, v10);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

  PropertyList.subscript.setter();
  if (*(&v14 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    outlined destroy of ScrollEnvironmentProperties(v13);
  }

  else
  {
    outlined destroy of ScrollEnvironmentProperties(v13);
  }

  result = *&v14;
  *a2 = v14;
  return result;
}

uint64_t closure #1 in ClarityUIEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
    PropertyList.subscript.getter();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v9[0] + 16, a2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v9[0] + 280, v9);
  if (v9[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v9, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 8))(a2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }
}

unint64_t lazy protocol witness table accessor for type ClarityUIEnvironment and conformance ClarityUIEnvironment()
{
  result = lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment;
  if (!lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment;
  if (!lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIEnvironment and conformance ClarityUIEnvironment);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.alwaysOnFrameSpecifier.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnFrameSpecifier> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnFrameSpecifier> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.alwaysOnInvalidationHandler.getter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnInvalidationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnInvalidationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>);

    PropertyList.subscript.getter();
  }
}

Swift::Void __swiftcall AlwaysOnBridge.invalidate(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = specialized UIHostingController.host.getter();

    v6 = [v5 window];
    if (v6)
    {
      v7 = [v6 windowScene];

      if (v7)
      {
        v8 = [v7 _backlightSceneEnvironment];

        if (v8)
        {
          v9 = MEMORY[0x18D00C850](countAndFlagsBits, object);
          [v8 invalidateAllTimelinesForReason_];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t AlwaysOnBridge.update(environment:)(uint64_t a1)
{
  if (AlwaysOnBridge.isActiveHost.getter())
  {
    v6 = *(v1 + 32);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnFrameSpecifier> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnFrameSpecifier>);
    v3 = v6;

    PropertyList.subscript.setter();
    if (*(a1 + 8))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  swift_weakInit();
  outlined init with copy of TimelineInvalidationAction(&v6, &v5);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AlwaysOnInvalidationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AlwaysOnInvalidationKey>);

  PropertyList.subscript.setter();
  if (*(a1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of weak AnyGestureResponder?(&v6);
  result = EnvironmentValues.isLuminanceReduced.getter();
  *(v1 + 40) = result & 1;
  return result;
}

uint64_t AlwaysOnBridge.update(with:)(void *a1)
{
  v2 = v1;
  *(v1 + 41) = 1;
  v3 = *(v1 + 32);
  *(v2 + 32) = a1;
  v4 = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = specialized UIHostingController.host.getter();

  _UIHostingView.viewGraph.getter();
  Transaction.disablesAnimations.setter();
  Transaction.disablesContentTransitions.setter();
  GraphHost.emptyTransaction(_:)();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = specialized UIHostingController.host.getter();

  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = specialized UIHostingController.host.getter();

    [v11 layoutIfNeeded];

    *(v2 + 41) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AlwaysOnBridge.timelines(for:)()
{
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BLSAlwaysOnTimeline);

    v2 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BLSAlwaysOnTimeline);
    v2 = v1;
  }

  return v2;
}

uint64_t AlwaysOnBridge.configureTransaction(_:)()
{
  ++*(v0 + 24);

  Transaction.addAnimationListener(allFinished:)();
}

uint64_t closure #1 in AlwaysOnBridge.configureTransaction(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in closure #1 in AlwaysOnBridge.configureTransaction(_:);
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_45;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  v10 = MEMORY[0x1E69E7F60];
  type metadata accessor for [UIViewController & _UIBacklightEnvironmentObserver](0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &lazy cache variable for type metadata for [DispatchWorkItemFlags], v10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x18D00DA20](0, v7, v4, v9);
  _Block_release(v9);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

uint64_t AlwaysOnBridge.__ivar_destroyer()
{
  MEMORY[0x18D011290](v0 + 16);
}

uint64_t protocol witness for Rule.value.getter in conformance AlwaysOnTimelinePreferenceWriter@<X0>(uint64_t *a1@<X8>)
{
  result = AlwaysOnTimelinePreferenceWriter.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t TableRowContent.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return ModifiedContent.init(content:modifier:)();
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance OnDeleteTableRowModifier@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnDeletecdF0V_Tt3B5(v8, a2, a3);
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA021_TypeSelectEquivalentcdF0V_Tt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v33 = *(a1 + 128);
  v34 = *(a1 + 144);
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v7;
  v8 = *(a1 + 16);
  v25 = *a1;
  v26 = v8;
  v15 = v35;
  LOBYTE(v16) = v36;
  DWORD1(v16) = DWORD1(v36);
  outlined init with copy of _TableRowInputs(a1, &v35);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_TypeSelectEquivalentTableRowModifier>, lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<_TypeSelectEquivalentTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_TypeSelectEquivalentTableRowModifier>, lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v9 = v36;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v35 = v25;
  v36 = v26;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA23TypeSelectEquivalentKeyV_Tt3B5(v14, &v35, a2);
  v10 = v15;
  v11 = DWORD2(v15);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TypeSelectEquivalentKey>, &type metadata for TypeSelectEquivalentKey, &protocol witness table for TypeSelectEquivalentKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  outlined destroy of _TableRowInputs(&v15);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA014DeleteDisabledcdF0V_Tt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v33 = *(a1 + 128);
  v34 = *(a1 + 144);
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v7;
  v8 = *(a1 + 16);
  v25 = *a1;
  v26 = v8;
  v15 = v35;
  LOBYTE(v16) = v36;
  DWORD1(v16) = DWORD1(v36);
  outlined init with copy of _TableRowInputs(a1, &v35);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DeleteDisabledTableRowModifier>, lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<DeleteDisabledTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DeleteDisabledTableRowModifier>, lazy protocol witness table accessor for type DeleteDisabledTableRowModifier and conformance DeleteDisabledTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v9 = v36;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v35 = v25;
  v36 = v26;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA016IsDeleteDisabledC3KeyV_Tt3B5(v14, &v35, a2);
  v10 = v15;
  v11 = DWORD2(v15);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  outlined destroy of _TableRowInputs(&v15);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA012ItemProvidercdF0V_Tt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v33 = *(a1 + 128);
  v34 = *(a1 + 144);
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v7;
  v8 = *(a1 + 16);
  v25 = *a1;
  v26 = v8;
  v15 = v35;
  LOBYTE(v16) = v36;
  DWORD1(v16) = DWORD1(v36);
  outlined init with copy of _TableRowInputs(a1, &v35);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<ItemProviderTableRowModifier>, lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<ItemProviderTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<ItemProviderTableRowModifier>, lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v9 = v36;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v35 = v25;
  v36 = v26;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA012ItemProviderC3KeyV_Tt3B5(v14, &v35, a2);
  v10 = v15;
  v11 = DWORD2(v15);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<ItemProviderTraitKey>, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  outlined destroy of _TableRowInputs(&v15);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnInsertcdF0V_Tt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v33 = *(a1 + 128);
  v34 = *(a1 + 144);
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v7;
  v8 = *(a1 + 16);
  v25 = *a1;
  v26 = v8;
  v15 = v35;
  LOBYTE(v16) = v36;
  DWORD1(v16) = DWORD1(v36);
  outlined init with copy of _TableRowInputs(a1, &v35);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnInsertTableRowModifier>, lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<OnInsertTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnInsertTableRowModifier>, lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v9 = v36;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v35 = v25;
  v36 = v26;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08OnInsertC3KeyV_Tt3B5(v14, &v35, a2);
  v10 = v15;
  v11 = DWORD2(v15);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnInsertTraitKey>, &type metadata for OnInsertTraitKey, &protocol witness table for OnInsertTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  outlined destroy of _TableRowInputs(&v15);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnDeletecdF0V_Tt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v33 = *(a1 + 128);
  v34 = *(a1 + 144);
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v7;
  v8 = *(a1 + 16);
  v25 = *a1;
  v26 = v8;
  v15 = v35;
  LOBYTE(v16) = v36;
  DWORD1(v16) = DWORD1(v36);
  outlined init with copy of _TableRowInputs(a1, &v35);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnDeleteTableRowModifier>, lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<OnDeleteTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<OnDeleteTableRowModifier>, lazy protocol witness table accessor for type OnDeleteTableRowModifier and conformance OnDeleteTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v9 = v36;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v35 = v25;
  v36 = v26;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08OnDeleteC3KeyV_Tt3B5(v14, &v35, a2);
  v10 = v15;
  v11 = DWORD2(v15);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnDeleteTraitKey>, &type metadata for OnDeleteTraitKey, &protocol witness table for OnDeleteTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  outlined destroy of _TableRowInputs(&v15);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08DropOntocdF0V_Tt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v33 = *(a1 + 128);
  v34 = *(a1 + 144);
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v7;
  v8 = *(a1 + 16);
  v25 = *a1;
  v26 = v8;
  v15 = v35;
  LOBYTE(v16) = v36;
  DWORD1(v16) = DWORD1(v36);
  outlined init with copy of _TableRowInputs(a1, &v35);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>, lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>, lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v9 = v36;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v35 = v25;
  v36 = v26;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08DropOntoC3KeyV_Tt3B5(v14, &v35, a2);
  v10 = v15;
  v11 = DWORD2(v15);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<DropOntoTraitKey>, &type metadata for DropOntoTraitKey, &protocol witness table for DropOntoTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  outlined destroy of _TableRowInputs(&v15);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA06_HovercdF0V_Tt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v33 = *(a1 + 128);
  v34 = *(a1 + 144);
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v7;
  v8 = *(a1 + 16);
  v25 = *a1;
  v26 = v8;
  v15 = v35;
  LOBYTE(v16) = v36;
  DWORD1(v16) = DWORD1(v36);
  outlined init with copy of _TableRowInputs(a1, &v35);
  type metadata accessor for TableRowContentModifierBodyAccessor<DropOntoTableRowModifier>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_HoverTableRowModifier>, lazy protocol witness table accessor for type _HoverTableRowModifier and conformance _HoverTableRowModifier);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<DropOntoTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>(&lazy protocol witness table cache variable for type TableRowContentModifierBodyAccessor<_HoverTableRowModifier> and conformance TableRowContentModifierBodyAccessor<A>, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<_HoverTableRowModifier>, lazy protocol witness table accessor for type _HoverTableRowModifier and conformance _HoverTableRowModifier);
  BodyAccessor.makeBody(container:inputs:fields:)();
  v9 = v36;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v35 = v25;
  v36 = v26;
  _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA0ef11HoverActionC3KeyV_Tt3B5(v14, &v35, a2);
  v10 = v15;
  v11 = DWORD2(v15);
  if ((v9 & 1) == 0)
  {
    type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TableRowHoverActionTraitKey>, &type metadata for TableRowHoverActionTraitKey, &protocol witness table for TableRowHoverActionTraitKey, type metadata accessor for _TraitWritingTableRowModifier);
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  outlined destroy of _TableRowInputs(&v15);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZs5NeverO_Tt3B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x1E69E73E0];
  static DynamicPropertyCache.fields(of:)();
  v7 = *(a1 + 112);
  v34 = *(a1 + 96);
  v35 = v7;
  v36 = *(a1 + 128);
  v37 = *(a1 + 144);
  v8 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v8;
  v9 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v9;
  v10 = *(a1 + 16);
  v28 = *a1;
  v29 = v10;
  v18 = v38;
  LOBYTE(v19) = v39;
  DWORD1(v19) = DWORD1(v39);
  outlined init with copy of _TableRowInputs(a1, &v38);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for TableRowContentModifierBodyAccessor<Never>, v6, &protocol witness table for Never, type metadata accessor for TableRowContentModifierBodyAccessor);
  lazy protocol witness table accessor for type TableRowContentModifierBodyAccessor<Never> and conformance TableRowContentModifierBodyAccessor<A>();
  BodyAccessor.makeBody(container:inputs:fields:)();
  v11 = v39;
  v44 = v34;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v38 = v28;
  v39 = v29;
  outlined init with copy of _TableRowInputs(&v38, &v18);
  _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZs5NeverO_Tt3B5(&v18, v17, &v38, a2, a3);
  outlined destroy of _TableRowInputs(&v38);
  v12 = v18;
  v13 = DWORD2(v18);
  if ((v11 & 1) == 0)
  {
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v18 = v28;
  v19 = v29;
  outlined destroy of _TableRowInputs(&v18);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a4 = v12;
  *(a4 + 8) = v13;
  return result;
}

uint64_t static _TableRowContentModifier._makeRows(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = a2[7];
  v59 = a2[6];
  v60 = v7;
  v61 = a2[8];
  v62 = *(a2 + 18);
  v8 = a2[3];
  v55 = a2[2];
  v56 = v8;
  v9 = a2[5];
  v57 = a2[4];
  v58 = v9;
  v10 = a2[1];
  v53 = *a2;
  v54 = v10;
  static DynamicPropertyCache.fields(of:)();
  v11 = *(&v73 + 1);
  v12 = v74;
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v43 = v53;
  v44 = v54;
  LODWORD(v27) = v6;
  v25 = v73;
  v63 = v73;
  LOBYTE(v64) = v74;
  v23 = DWORD1(v74);
  DWORD1(v64) = DWORD1(v74);
  outlined init with copy of _TableRowInputs(&v53, &v73);
  type metadata accessor for TableRowContentModifierBodyAccessor();
  swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)();
  v13 = v33;
  v14 = *(&v73 + 1);
  v22 = v73;
  v15 = v74;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = v49;
  v70 = v50;
  v71 = v51;
  v65 = v45;
  v66 = v46;
  v67 = v47;
  v68 = v48;
  v63 = v43;
  v64 = v44;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v72 = v52;
  LODWORD(v32[0]) = v33;
  v42 = v52;
  v33 = v43;
  v34 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _TableRowInputs(&v63, &v73);
  v18(&v27, v32, &v33, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  v79 = v39;
  v80 = v40;
  v81 = v41;
  v82 = v42;
  v75 = v35;
  v76 = v36;
  v77 = v37;
  v78 = v38;
  v73 = v33;
  v74 = v34;
  outlined destroy of _TableRowInputs(&v73);
  v19 = v27;
  v20 = v28;
  if ((v15 & 1) == 0)
  {
    v32[0] = v22;
    v32[1] = v14;
    v31 = v13;
    v27 = v25;
    v28 = v11;
    v29 = v12;
    v30 = v23;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v39 = v49;
  v40 = v50;
  v41 = v51;
  v42 = v52;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v33 = v43;
  v34 = v44;
  outlined destroy of _TableRowInputs(&v33);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a5 = v19;
  *(a5 + 8) = v20;
  return result;
}

uint64_t static _TableRowContentModifier._tableRowCount(inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v5;
  v12[8] = *(a1 + 128);
  v13 = *(a1 + 144);
  v6 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v6;
  v7 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v7;
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v12, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance DeleteDisabledTableRowModifier@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA014DeleteDisabledcdF0V_Tt3B5(v8, a2, a3);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance ItemProviderTableRowModifier@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA012ItemProvidercdF0V_Tt3B5(v8, a2, a3);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance OnInsertTableRowModifier@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08OnInsertcdF0V_Tt3B5(v8, a2, a3);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance DropOntoTableRowModifier@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA08DropOntocdF0V_Tt3B5(v8, a2, a3);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance _TypeSelectEquivalentTableRowModifier@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA021_TypeSelectEquivalentcdF0V_Tt3B5(v8, a2, a3);
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance _HoverTableRowModifier@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZAA06_HovercdF0V_Tt3B5(v8, a2, a3);
}

uint64_t protocol witness for static _TableRowContentModifier._tableRowCount(inputs:body:) in conformance OnDeleteTableRowModifier(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v2;
  v7[8] = *(a1 + 128);
  v8 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v3;
  v4 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v4;
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return a2(v7);
}

uint64_t TableRowContentModifierBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for TableRowContentModifierBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t protocol witness for static _TableRowContentModifier._makeRows(modifier:inputs:body:) in conformance Never@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v9[8] = *(a1 + 128);
  v10 = *(a1 + 144);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return _s7SwiftUI24_TableRowContentModifierPAAE9_makeRows8modifier6inputs4bodyAA01_cD7OutputsVAA11_GraphValueVyxG_AA01_cD6InputsVAiA01_M0V_ANtctFZs5NeverO_Tt3B5(v9, a2, a3, a4);
}

uint64_t static ModifiedContent<>._makeRows(content:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v19[8] = *(a2 + 128);
  v20 = *(a2 + 144);
  v12 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v12;
  v13 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v13;
  v14 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v14;
  v18 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = v10;
  (*(a6 + 32))(v17, v19, partial apply for closure #2 in static ModifiedContent<>._makeRows(content:inputs:), v15, a4, a6);
}

uint64_t closure #1 in static ModifiedContent<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 + 36);
  v10[2] = v5;
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, closure #1 in static PointerOffset.of(_:)partial apply, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #2 in static ModifiedContent<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v8;
  v15[8] = *(a2 + 128);
  v16 = *(a2 + 144);
  v9 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v9;
  v10 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v10;
  v11 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v11;
  v14 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 48))(v13, v15, a4, a6);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeRows(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ModifiedContent();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static ModifiedContent<>._tableRowCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v9;
  v16[8] = *(a1 + 128);
  v17 = *(a1 + 144);
  v10 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v10;
  v11 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v11;
  v12 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v12;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v14 = (*(a5 + 40))(v16, partial apply for closure #1 in static ModifiedContent<>._tableRowCount(inputs:), v13, a3, a5);

  return v14;
}

uint64_t partial apply for closure #1 in static ModifiedContent<>._tableRowCount(inputs:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(v2 + 56))(v8);
}

uint64_t static ModifiedContent<>._containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v9[8] = *(a1 + 128);
  v10 = *(a1 + 144);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return (*(a4 + 64))(v9) & 1;
}

uint64_t instantiation function for generic protocol witness table for <> ModifiedContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _TraitWritingTableRowModifier()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TraitWritingTableRowModifier(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

uint64_t destroy for _TraitWritingTableRowModifier(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for _TraitWritingTableRowModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for _TraitWritingTableRowModifier(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void storeEnumTagSinglePayload for _TraitWritingTableRowModifier(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA23TypeSelectEquivalentKeyV_Tt3B5(unsigned int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 148);
  v39 = *(a2 + 144);
  v6 = *(a2 + 112);
  v36 = *(a2 + 96);
  v37 = v6;
  v38 = *(a2 + 128);
  v7 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v7;
  v8 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35 = v8;
  v9 = *(a2 + 16);
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TypeSelectEquivalentKey>.AddTrait, &type metadata for TypeSelectEquivalentKey, &protocol witness table for TypeSelectEquivalentKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<TypeSelectEquivalentKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<TypeSelectEquivalentKey>.AddTrait, &type metadata for TypeSelectEquivalentKey, &protocol witness table for TypeSelectEquivalentKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA016IsDeleteDisabledC3KeyV_Tt3B5(unsigned int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 148);
  v39 = *(a2 + 144);
  v6 = *(a2 + 112);
  v36 = *(a2 + 96);
  v37 = v6;
  v38 = *(a2 + 128);
  v7 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v7;
  v8 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35 = v8;
  v9 = *(a2 + 16);
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>.AddTrait, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<IsDeleteDisabledTraitKey>.AddTrait, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA012ItemProviderC3KeyV_Tt3B5(unsigned int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 148);
  v39 = *(a2 + 144);
  v6 = *(a2 + 112);
  v36 = *(a2 + 96);
  v37 = v6;
  v38 = *(a2 + 128);
  v7 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v7;
  v8 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35 = v8;
  v9 = *(a2 + 16);
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<ItemProviderTraitKey>.AddTrait, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<ItemProviderTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<ItemProviderTraitKey>.AddTrait, &type metadata for ItemProviderTraitKey, &protocol witness table for ItemProviderTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}

uint64_t _s7SwiftUI29_TraitWritingTableRowModifierV9_makeRows8modifier6inputs4bodyAA01_eF7OutputsVAA11_GraphValueVyACyxGG_AA01_eF6InputsVAiA01_N0V_AOtctFZAA08OnInsertC3KeyV_Tt3B5(unsigned int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 148);
  v39 = *(a2 + 144);
  v6 = *(a2 + 112);
  v36 = *(a2 + 96);
  v37 = v6;
  v38 = *(a2 + 128);
  v7 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v7;
  v8 = *(a2 + 80);
  v34 = *(a2 + 64);
  v35 = v8;
  v9 = *(a2 + 16);
  v30 = *a2;
  v31 = v9;
  *&v25[0] = __PAIR64__(v5, a1);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _TableRowInputs(v4, v27);
  type metadata accessor for _TraitWritingTableRowModifier<DropOntoTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnInsertTraitKey>.AddTrait, &type metadata for OnInsertTraitKey, &protocol witness table for OnInsertTraitKey, type metadata accessor for _TraitWritingTableRowModifier.AddTrait);
  lazy protocol witness table accessor for type _TraitWritingTableRowModifier<OnDeleteTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait(&lazy protocol witness table cache variable for type _TraitWritingTableRowModifier<OnInsertTraitKey>.AddTrait and conformance _TraitWritingTableRowModifier<A>.AddTrait, &lazy cache variable for type metadata for _TraitWritingTableRowModifier<OnInsertTraitKey>.AddTrait, &type metadata for OnInsertTraitKey, &protocol witness table for OnInsertTraitKey);
  v10 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v4) = v10;
  v23[6] = v36;
  v23[7] = v37;
  v23[8] = v38;
  v23[2] = v32;
  v23[3] = v33;
  v23[4] = v34;
  v23[5] = v35;
  v23[0] = v30;
  v23[1] = v31;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v24 = __PAIR64__(v10, v39);
  v22 = __PAIR64__(v10, v39);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v13 = v30;
  v14 = v31;
  v11 = outlined init with copy of _TableRowInputs(v23, v27);
  a3(v11, &v13);
  v25[6] = v19;
  v25[7] = v20;
  v25[8] = v21;
  v26 = v22;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v25[0] = v13;
  v25[1] = v14;
  outlined destroy of _TableRowInputs(v25);
  v27[6] = v36;
  v27[7] = v37;
  v27[8] = v38;
  v27[2] = v32;
  v27[3] = v33;
  v27[4] = v34;
  v27[5] = v35;
  v27[0] = v30;
  v27[1] = v31;
  v28 = v39;
  v29 = v4;
  return outlined destroy of _TableRowInputs(v27);
}